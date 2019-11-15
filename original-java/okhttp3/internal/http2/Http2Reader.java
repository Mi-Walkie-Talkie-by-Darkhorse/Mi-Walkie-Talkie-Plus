package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jboss.netty.handler.codec.http.HttpConstants;

final class Http2Reader implements Closeable {
    static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private final ContinuationSource continuation = new ContinuationSource(this.source);
    final Reader hpackReader = new Reader(4096, this.continuation);
    private final BufferedSource source;

    static final class ContinuationSource implements Source {
        byte flags;
        int left;
        int length;
        short padding;
        private final BufferedSource source;
        int streamId;

        ContinuationSource(BufferedSource bufferedSource) {
            this.source = bufferedSource;
        }

        public long read(Buffer buffer, long j) throws IOException {
            while (this.left == 0) {
                this.source.skip((long) this.padding);
                this.padding = 0;
                if ((this.flags & 4) != 0) {
                    return -1;
                }
                readContinuationHeader();
            }
            long read = this.source.read(buffer, Math.min(j, (long) this.left));
            if (read == -1) {
                return -1;
            }
            this.left = (int) (((long) this.left) - read);
            return read;
        }

        public Timeout timeout() {
            return this.source.timeout();
        }

        public void close() throws IOException {
        }

        private void readContinuationHeader() throws IOException {
            int i = this.streamId;
            int readMedium = Http2Reader.readMedium(this.source);
            this.left = readMedium;
            this.length = readMedium;
            byte readByte = (byte) (this.source.readByte() & 255);
            this.flags = (byte) (this.source.readByte() & 255);
            if (Http2Reader.logger.isLoggable(Level.FINE)) {
                Http2Reader.logger.fine(Http2.frameLog(true, this.streamId, this.length, readByte, this.flags));
            }
            this.streamId = this.source.readInt() & Integer.MAX_VALUE;
            if (readByte != 9) {
                throw Http2.ioException("%s != TYPE_CONTINUATION", Byte.valueOf(readByte));
            } else if (this.streamId != i) {
                throw Http2.ioException("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }
    }

    interface Handler {
        void ackSettings();

        void alternateService(int i, String str, ByteString byteString, String str2, int i2, long j);

        void data(boolean z, int i, BufferedSource bufferedSource, int i2) throws IOException;

        void goAway(int i, ErrorCode errorCode, ByteString byteString);

        void headers(boolean z, int i, int i2, List<Header> list);

        void ping(boolean z, int i, int i2);

        void priority(int i, int i2, int i3, boolean z);

        void pushPromise(int i, int i2, List<Header> list) throws IOException;

        void rstStream(int i, ErrorCode errorCode);

        void settings(boolean z, Settings settings);

        void windowUpdate(int i, long j);
    }

    Http2Reader(BufferedSource bufferedSource, boolean z) {
        this.source = bufferedSource;
        this.client = z;
    }

    public void readConnectionPreface(Handler handler) throws IOException {
        if (!this.client) {
            ByteString readByteString = this.source.readByteString((long) Http2.CONNECTION_PREFACE.size());
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Util.format("<< CONNECTION %s", readByteString.hex()));
            }
            if (!Http2.CONNECTION_PREFACE.equals(readByteString)) {
                throw Http2.ioException("Expected a connection header but was %s", readByteString.utf8());
            }
        } else if (!nextFrame(true, handler)) {
            throw Http2.ioException("Required SETTINGS preface not received", new Object[0]);
        }
    }

    public boolean nextFrame(boolean z, Handler handler) throws IOException {
        try {
            this.source.require(9);
            int readMedium = readMedium(this.source);
            if (readMedium < 0 || readMedium > 16384) {
                throw Http2.ioException("FRAME_SIZE_ERROR: %s", Integer.valueOf(readMedium));
            }
            byte readByte = (byte) (this.source.readByte() & 255);
            if (!z || readByte == 4) {
                byte readByte2 = (byte) (this.source.readByte() & 255);
                int readInt = this.source.readInt() & Integer.MAX_VALUE;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(Http2.frameLog(true, readInt, readMedium, readByte, readByte2));
                }
                switch (readByte) {
                    case 0:
                        readData(handler, readMedium, readByte2, readInt);
                        return true;
                    case 1:
                        readHeaders(handler, readMedium, readByte2, readInt);
                        return true;
                    case 2:
                        readPriority(handler, readMedium, readByte2, readInt);
                        return true;
                    case 3:
                        readRstStream(handler, readMedium, readByte2, readInt);
                        return true;
                    case 4:
                        readSettings(handler, readMedium, readByte2, readInt);
                        return true;
                    case 5:
                        readPushPromise(handler, readMedium, readByte2, readInt);
                        return true;
                    case 6:
                        readPing(handler, readMedium, readByte2, readInt);
                        return true;
                    case 7:
                        readGoAway(handler, readMedium, readByte2, readInt);
                        return true;
                    case 8:
                        readWindowUpdate(handler, readMedium, readByte2, readInt);
                        return true;
                    default:
                        this.source.skip((long) readMedium);
                        return true;
                }
            } else {
                throw Http2.ioException("Expected a SETTINGS frame but was %s", Byte.valueOf(readByte));
            }
        } catch (IOException e) {
            return false;
        }
    }

    private void readHeaders(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z = (b & 1) != 0;
        if ((b & 8) != 0) {
            s = (short) (this.source.readByte() & 255);
        }
        if ((b & HttpConstants.SP) != 0) {
            readPriority(handler, i2);
            i -= 5;
        }
        handler.headers(z, i2, -1, readHeaderBlock(lengthWithoutPadding(i, b, s), s, b, i2));
    }

    private List<Header> readHeaderBlock(int i, short s, byte b, int i2) throws IOException {
        ContinuationSource continuationSource = this.continuation;
        this.continuation.left = i;
        continuationSource.length = i;
        this.continuation.padding = s;
        this.continuation.flags = b;
        this.continuation.streamId = i2;
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private void readData(Handler handler, int i, byte b, int i2) throws IOException {
        boolean z;
        boolean z2 = true;
        short s = 0;
        if (i2 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        if ((b & 1) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((b & HttpConstants.SP) == 0) {
            z2 = false;
        }
        if (z2) {
            throw Http2.ioException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        if ((b & 8) != 0) {
            s = (short) (this.source.readByte() & 255);
        }
        handler.data(z, i2, this.source, lengthWithoutPadding(i, b, s));
        this.source.skip((long) s);
    }

    private void readPriority(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 5) {
            throw Http2.ioException("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i));
        } else if (i2 == 0) {
            throw Http2.ioException("TYPE_PRIORITY streamId == 0", new Object[0]);
        } else {
            readPriority(handler, i2);
        }
    }

    private void readPriority(Handler handler, int i) throws IOException {
        int readInt = this.source.readInt();
        handler.priority(i, readInt & Integer.MAX_VALUE, (this.source.readByte() & 255) + 1, (Integer.MIN_VALUE & readInt) != 0);
    }

    private void readRstStream(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw Http2.ioException("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i));
        } else if (i2 == 0) {
            throw Http2.ioException("TYPE_RST_STREAM streamId == 0", new Object[0]);
        } else {
            int readInt = this.source.readInt();
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt);
            if (fromHttp2 == null) {
                throw Http2.ioException("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(readInt));
            } else {
                handler.rstStream(i2, fromHttp2);
            }
        }
    }

    private void readSettings(Handler handler, int i, byte b, int i2) throws IOException {
        if (i2 != 0) {
            throw Http2.ioException("TYPE_SETTINGS streamId != 0", new Object[0]);
        } else if ((b & 1) != 0) {
            if (i != 0) {
                throw Http2.ioException("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            handler.ackSettings();
        } else if (i % 6 != 0) {
            throw Http2.ioException("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i));
        } else {
            Settings settings = new Settings();
            for (int i3 = 0; i3 < i; i3 += 6) {
                short readShort = this.source.readShort();
                int readInt = this.source.readInt();
                switch (readShort) {
                    case 2:
                        if (!(readInt == 0 || readInt == 1)) {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                        }
                    case 3:
                        readShort = 4;
                        break;
                    case 4:
                        readShort = 7;
                        if (readInt >= 0) {
                            break;
                        } else {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                        }
                    case 5:
                        if (readInt >= 16384 && readInt <= 16777215) {
                            break;
                        } else {
                            throw Http2.ioException("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(readInt));
                        }
                }
                settings.set(readShort, readInt);
            }
            handler.settings(false, settings);
        }
    }

    private void readPushPromise(Handler handler, int i, byte b, int i2) throws IOException {
        short s = 0;
        if (i2 == 0) {
            throw Http2.ioException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        if ((b & 8) != 0) {
            s = (short) (this.source.readByte() & 255);
        }
        handler.pushPromise(i2, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(lengthWithoutPadding(i - 4, b, s), s, b, i2));
    }

    private void readPing(Handler handler, int i, byte b, int i2) throws IOException {
        boolean z = true;
        if (i != 8) {
            throw Http2.ioException("TYPE_PING length != 8: %s", Integer.valueOf(i));
        } else if (i2 != 0) {
            throw Http2.ioException("TYPE_PING streamId != 0", new Object[0]);
        } else {
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            if ((b & 1) == 0) {
                z = false;
            }
            handler.ping(z, readInt, readInt2);
        }
    }

    private void readGoAway(Handler handler, int i, byte b, int i2) throws IOException {
        if (i < 8) {
            throw Http2.ioException("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i));
        } else if (i2 != 0) {
            throw Http2.ioException("TYPE_GOAWAY streamId != 0", new Object[0]);
        } else {
            int readInt = this.source.readInt();
            int readInt2 = this.source.readInt();
            int i3 = i - 8;
            ErrorCode fromHttp2 = ErrorCode.fromHttp2(readInt2);
            if (fromHttp2 == null) {
                throw Http2.ioException("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(readInt2));
            }
            ByteString byteString = ByteString.EMPTY;
            if (i3 > 0) {
                byteString = this.source.readByteString((long) i3);
            }
            handler.goAway(readInt, fromHttp2, byteString);
        }
    }

    private void readWindowUpdate(Handler handler, int i, byte b, int i2) throws IOException {
        if (i != 4) {
            throw Http2.ioException("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i));
        }
        long readInt = ((long) this.source.readInt()) & 2147483647L;
        if (readInt == 0) {
            throw Http2.ioException("windowSizeIncrement was 0", Long.valueOf(readInt));
        } else {
            handler.windowUpdate(i2, readInt);
        }
    }

    public void close() throws IOException {
        this.source.close();
    }

    static int readMedium(BufferedSource bufferedSource) throws IOException {
        return ((bufferedSource.readByte() & 255) << Tnaf.POW_2_WIDTH) | ((bufferedSource.readByte() & 255) << 8) | (bufferedSource.readByte() & 255);
    }

    static int lengthWithoutPadding(int i, byte b, short s) throws IOException {
        if ((b & 8) != 0) {
            i--;
        }
        if (s <= i) {
            return (short) (i - s);
        }
        throw Http2.ioException("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s), Integer.valueOf(i));
    }
}
