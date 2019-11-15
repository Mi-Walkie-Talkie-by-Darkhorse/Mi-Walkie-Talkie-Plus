package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;

final class Http2Writer implements Closeable {
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;
    private final Buffer hpackBuffer = new Buffer();
    final Writer hpackWriter = new Writer(this.hpackBuffer);
    private int maxFrameSize = 16384;
    private final BufferedSink sink;

    Http2Writer(BufferedSink bufferedSink, boolean z) {
        this.sink = bufferedSink;
        this.client = z;
    }

    public synchronized void connectionPreface() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        } else if (this.client) {
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(Util.format(">> CONNECTION %s", Http2.CONNECTION_PREFACE.hex()));
            }
            this.sink.write(Http2.CONNECTION_PREFACE.toByteArray());
            this.sink.flush();
        }
    }

    public synchronized void applyAndAckSettings(Settings settings) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.maxFrameSize = settings.getMaxFrameSize(this.maxFrameSize);
        if (settings.getHeaderTableSize() != -1) {
            this.hpackWriter.setHeaderTableSizeSetting(settings.getHeaderTableSize());
        }
        frameHeader(0, 0, 4, 1);
        this.sink.flush();
    }

    public synchronized void pushPromise(int i, int i2, List<Header> list) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long size = this.hpackBuffer.size();
        int min = (int) Math.min((long) (this.maxFrameSize - 4), size);
        frameHeader(i, min + 4, 5, size == ((long) min) ? (byte) 4 : 0);
        this.sink.writeInt(Integer.MAX_VALUE & i2);
        this.sink.write(this.hpackBuffer, (long) min);
        if (size > ((long) min)) {
            writeContinuationFrames(i, size - ((long) min));
        }
    }

    public synchronized void flush() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.sink.flush();
    }

    public synchronized void synStream(boolean z, int i, int i2, List<Header> list) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        headers(z, i, list);
    }

    public synchronized void synReply(boolean z, int i, List<Header> list) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        headers(z, i, list);
    }

    public synchronized void headers(int i, List<Header> list) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        headers(false, i, list);
    }

    public synchronized void rstStream(int i, ErrorCode errorCode) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        } else if (errorCode.httpCode == -1) {
            throw new IllegalArgumentException();
        } else {
            frameHeader(i, 4, 3, 0);
            this.sink.writeInt(errorCode.httpCode);
            this.sink.flush();
        }
    }

    public int maxDataLength() {
        return this.maxFrameSize;
    }

    public synchronized void data(boolean z, int i, Buffer buffer, int i2) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        byte b = 0;
        if (z) {
            b = (byte) 1;
        }
        dataFrame(i, b, buffer, i2);
    }

    /* access modifiers changed from: 0000 */
    public void dataFrame(int i, byte b, Buffer buffer, int i2) throws IOException {
        frameHeader(i, i2, 0, b);
        if (i2 > 0) {
            this.sink.write(buffer, (long) i2);
        }
    }

    public synchronized void settings(Settings settings) throws IOException {
        int i;
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            frameHeader(0, settings.size() * 6, 4, 0);
            for (int i2 = 0; i2 < 10; i2++) {
                if (settings.isSet(i2)) {
                    if (i2 == 4) {
                        i = 3;
                    } else if (i2 == 7) {
                        i = 4;
                    } else {
                        i = i2;
                    }
                    this.sink.writeShort(i);
                    this.sink.writeInt(settings.get(i2));
                }
            }
            this.sink.flush();
        }
    }

    public synchronized void ping(boolean z, int i, int i2) throws IOException {
        byte b = 0;
        synchronized (this) {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (z) {
                b = 1;
            }
            frameHeader(0, 8, 6, b);
            this.sink.writeInt(i);
            this.sink.writeInt(i2);
            this.sink.flush();
        }
    }

    public synchronized void goAway(int i, ErrorCode errorCode, byte[] bArr) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        } else if (errorCode.httpCode == -1) {
            throw Http2.illegalArgument("errorCode.httpCode == -1", new Object[0]);
        } else {
            frameHeader(0, bArr.length + 8, 7, 0);
            this.sink.writeInt(i);
            this.sink.writeInt(errorCode.httpCode);
            if (bArr.length > 0) {
                this.sink.write(bArr);
            }
            this.sink.flush();
        }
    }

    public synchronized void windowUpdate(int i, long j) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        } else if (j == 0 || j > 2147483647L) {
            throw Http2.illegalArgument("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j));
        } else {
            frameHeader(i, 4, 8, 0);
            this.sink.writeInt((int) j);
            this.sink.flush();
        }
    }

    public void frameHeader(int i, int i2, byte b, byte b2) throws IOException {
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(Http2.frameLog(false, i, i2, b, b2));
        }
        if (i2 > this.maxFrameSize) {
            throw Http2.illegalArgument("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(this.maxFrameSize), Integer.valueOf(i2));
        } else if ((Integer.MIN_VALUE & i) != 0) {
            throw Http2.illegalArgument("reserved bit set: %s", Integer.valueOf(i));
        } else {
            writeMedium(this.sink, i2);
            this.sink.writeByte(b & 255);
            this.sink.writeByte(b2 & 255);
            this.sink.writeInt(Integer.MAX_VALUE & i);
        }
    }

    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    private static void writeMedium(BufferedSink bufferedSink, int i) throws IOException {
        bufferedSink.writeByte((i >>> 16) & 255);
        bufferedSink.writeByte((i >>> 8) & 255);
        bufferedSink.writeByte(i & 255);
    }

    private void writeContinuationFrames(int i, long j) throws IOException {
        while (j > 0) {
            int min = (int) Math.min((long) this.maxFrameSize, j);
            j -= (long) min;
            frameHeader(i, min, 9, j == 0 ? (byte) 4 : 0);
            this.sink.write(this.hpackBuffer, (long) min);
        }
    }

    /* access modifiers changed from: 0000 */
    public void headers(boolean z, int i, List<Header> list) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(list);
        long size = this.hpackBuffer.size();
        int min = (int) Math.min((long) this.maxFrameSize, size);
        byte b = size == ((long) min) ? (byte) 4 : 0;
        if (z) {
            b = (byte) (b | 1);
        }
        frameHeader(i, min, 1, b);
        this.sink.write(this.hpackBuffer, (long) min);
        if (size > ((long) min)) {
            writeContinuationFrames(i, size - ((long) min));
        }
    }
}
