package okhttp3.internal.http2;

import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayList;
import java.util.List;
import okio.AsyncTimeout;
import okio.Buffer;
import okio.BufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public final class Http2Stream {
    static final /* synthetic */ boolean $assertionsDisabled = (!Http2Stream.class.desiredAssertionStatus());
    long bytesLeftInWriteWindow;
    final Http2Connection connection;
    ErrorCode errorCode = null;
    private boolean hasResponseHeaders;
    final int id;
    final StreamTimeout readTimeout = new StreamTimeout();
    private final List<Header> requestHeaders;
    private List<Header> responseHeaders;
    final FramingSink sink;
    private final FramingSource source;
    long unacknowledgedBytesRead = 0;
    final StreamTimeout writeTimeout = new StreamTimeout();

    final class FramingSink implements Sink {
        static final /* synthetic */ boolean $assertionsDisabled = (!Http2Stream.class.desiredAssertionStatus());
        private static final long EMIT_BUFFER_SIZE = 16384;
        boolean closed;
        boolean finished;
        private final Buffer sendBuffer = new Buffer();

        FramingSink() {
        }

        public void write(Buffer buffer, long j) throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                this.sendBuffer.write(buffer, j);
                while (this.sendBuffer.size() >= 16384) {
                    emitFrame(false);
                }
                return;
            }
            throw new AssertionError();
        }

        private void emitFrame(boolean z) throws IOException {
            long min;
            synchronized (Http2Stream.this) {
                Http2Stream.this.writeTimeout.enter();
                while (Http2Stream.this.bytesLeftInWriteWindow <= 0 && !this.finished && !this.closed && Http2Stream.this.errorCode == null) {
                    try {
                        Http2Stream.this.waitForIo();
                    } catch (Throwable th) {
                        Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
                        throw th;
                    }
                }
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
                Http2Stream.this.checkOutNotClosed();
                min = Math.min(Http2Stream.this.bytesLeftInWriteWindow, this.sendBuffer.size());
                Http2Stream.this.bytesLeftInWriteWindow -= min;
            }
            Http2Stream.this.writeTimeout.enter();
            try {
                Http2Stream.this.connection.writeData(Http2Stream.this.id, z && min == this.sendBuffer.size(), this.sendBuffer, min);
            } finally {
                Http2Stream.this.writeTimeout.exitAndThrowIfTimedOut();
            }
        }

        public void flush() throws IOException {
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                synchronized (Http2Stream.this) {
                    Http2Stream.this.checkOutNotClosed();
                }
                while (this.sendBuffer.size() > 0) {
                    emitFrame(false);
                    Http2Stream.this.connection.flush();
                }
                return;
            }
            throw new AssertionError();
        }

        public Timeout timeout() {
            return Http2Stream.this.writeTimeout;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:14:0x0025, code lost:
            if (r6.this$0.sink.finished != false) goto L_0x004e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:16:0x002f, code lost:
            if (r6.sendBuffer.size() <= 0) goto L_0x0042;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:18:0x0039, code lost:
            if (r6.sendBuffer.size() <= 0) goto L_0x004e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:19:0x003b, code lost:
            emitFrame(true);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:24:0x0042, code lost:
            r6.this$0.connection.writeData(r6.this$0.id, true, null, 0);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:25:0x004e, code lost:
            r1 = r6.this$0;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x0050, code lost:
            monitor-enter(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:29:?, code lost:
            r6.closed = true;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:30:0x0054, code lost:
            monitor-exit(r1);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x0055, code lost:
            r6.this$0.connection.flush();
            r6.this$0.cancelStreamIfNecessary();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:44:?, code lost:
            return;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void close() throws java.io.IOException {
            /*
                r6 = this;
                r4 = 0
                r2 = 1
                boolean r0 = $assertionsDisabled
                if (r0 != 0) goto L_0x0015
                okhttp3.internal.http2.Http2Stream r0 = okhttp3.internal.http2.Http2Stream.this
                boolean r0 = java.lang.Thread.holdsLock(r0)
                if (r0 == 0) goto L_0x0015
                java.lang.AssertionError r0 = new java.lang.AssertionError
                r0.<init>()
                throw r0
            L_0x0015:
                okhttp3.internal.http2.Http2Stream r1 = okhttp3.internal.http2.Http2Stream.this
                monitor-enter(r1)
                boolean r0 = r6.closed     // Catch:{ all -> 0x003f }
                if (r0 == 0) goto L_0x001e
                monitor-exit(r1)     // Catch:{ all -> 0x003f }
            L_0x001d:
                return
            L_0x001e:
                monitor-exit(r1)     // Catch:{ all -> 0x003f }
                okhttp3.internal.http2.Http2Stream r0 = okhttp3.internal.http2.Http2Stream.this
                okhttp3.internal.http2.Http2Stream$FramingSink r0 = r0.sink
                boolean r0 = r0.finished
                if (r0 != 0) goto L_0x004e
                okio.Buffer r0 = r6.sendBuffer
                long r0 = r0.size()
                int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r0 <= 0) goto L_0x0042
            L_0x0031:
                okio.Buffer r0 = r6.sendBuffer
                long r0 = r0.size()
                int r0 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
                if (r0 <= 0) goto L_0x004e
                r6.emitFrame(r2)
                goto L_0x0031
            L_0x003f:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x003f }
                throw r0
            L_0x0042:
                okhttp3.internal.http2.Http2Stream r0 = okhttp3.internal.http2.Http2Stream.this
                okhttp3.internal.http2.Http2Connection r0 = r0.connection
                okhttp3.internal.http2.Http2Stream r1 = okhttp3.internal.http2.Http2Stream.this
                int r1 = r1.id
                r3 = 0
                r0.writeData(r1, r2, r3, r4)
            L_0x004e:
                okhttp3.internal.http2.Http2Stream r1 = okhttp3.internal.http2.Http2Stream.this
                monitor-enter(r1)
                r0 = 1
                r6.closed = r0     // Catch:{ all -> 0x0062 }
                monitor-exit(r1)     // Catch:{ all -> 0x0062 }
                okhttp3.internal.http2.Http2Stream r0 = okhttp3.internal.http2.Http2Stream.this
                okhttp3.internal.http2.Http2Connection r0 = r0.connection
                r0.flush()
                okhttp3.internal.http2.Http2Stream r0 = okhttp3.internal.http2.Http2Stream.this
                r0.cancelStreamIfNecessary()
                goto L_0x001d
            L_0x0062:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0062 }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http2.Http2Stream.FramingSink.close():void");
        }
    }

    private final class FramingSource implements Source {
        static final /* synthetic */ boolean $assertionsDisabled = (!Http2Stream.class.desiredAssertionStatus());
        boolean closed;
        boolean finished;
        private final long maxByteCount;
        private final Buffer readBuffer = new Buffer();
        private final Buffer receiveBuffer = new Buffer();

        FramingSource(long j) {
            this.maxByteCount = j;
        }

        public long read(Buffer buffer, long j) throws IOException {
            long read;
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            }
            synchronized (Http2Stream.this) {
                waitUntilReadable();
                checkNotClosed();
                if (this.readBuffer.size() == 0) {
                    read = -1;
                } else {
                    read = this.readBuffer.read(buffer, Math.min(j, this.readBuffer.size()));
                    Http2Stream.this.unacknowledgedBytesRead += read;
                    if (Http2Stream.this.unacknowledgedBytesRead >= ((long) (Http2Stream.this.connection.okHttpSettings.getInitialWindowSize() / 2))) {
                        Http2Stream.this.connection.writeWindowUpdateLater(Http2Stream.this.id, Http2Stream.this.unacknowledgedBytesRead);
                        Http2Stream.this.unacknowledgedBytesRead = 0;
                    }
                    synchronized (Http2Stream.this.connection) {
                        Http2Stream.this.connection.unacknowledgedBytesRead += read;
                        if (Http2Stream.this.connection.unacknowledgedBytesRead >= ((long) (Http2Stream.this.connection.okHttpSettings.getInitialWindowSize() / 2))) {
                            Http2Stream.this.connection.writeWindowUpdateLater(0, Http2Stream.this.connection.unacknowledgedBytesRead);
                            Http2Stream.this.connection.unacknowledgedBytesRead = 0;
                        }
                    }
                }
            }
            return read;
        }

        private void waitUntilReadable() throws IOException {
            Http2Stream.this.readTimeout.enter();
            while (this.readBuffer.size() == 0 && !this.finished && !this.closed && Http2Stream.this.errorCode == null) {
                try {
                    Http2Stream.this.waitForIo();
                } finally {
                    Http2Stream.this.readTimeout.exitAndThrowIfTimedOut();
                }
            }
        }

        /* access modifiers changed from: 0000 */
        public void receive(BufferedSource bufferedSource, long j) throws IOException {
            boolean z;
            boolean z2;
            boolean z3;
            if ($assertionsDisabled || !Thread.holdsLock(Http2Stream.this)) {
                while (j > 0) {
                    synchronized (Http2Stream.this) {
                        z = this.finished;
                        z2 = this.readBuffer.size() + j > this.maxByteCount;
                    }
                    if (z2) {
                        bufferedSource.skip(j);
                        Http2Stream.this.closeLater(ErrorCode.FLOW_CONTROL_ERROR);
                        return;
                    } else if (z) {
                        bufferedSource.skip(j);
                        return;
                    } else {
                        long read = bufferedSource.read(this.receiveBuffer, j);
                        if (read == -1) {
                            throw new EOFException();
                        }
                        j -= read;
                        synchronized (Http2Stream.this) {
                            if (this.readBuffer.size() == 0) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            this.readBuffer.writeAll(this.receiveBuffer);
                            if (z3) {
                                Http2Stream.this.notifyAll();
                            }
                        }
                    }
                }
                return;
            }
            throw new AssertionError();
        }

        public Timeout timeout() {
            return Http2Stream.this.readTimeout;
        }

        public void close() throws IOException {
            synchronized (Http2Stream.this) {
                this.closed = true;
                this.readBuffer.clear();
                Http2Stream.this.notifyAll();
            }
            Http2Stream.this.cancelStreamIfNecessary();
        }

        private void checkNotClosed() throws IOException {
            if (this.closed) {
                throw new IOException("stream closed");
            } else if (Http2Stream.this.errorCode != null) {
                throw new StreamResetException(Http2Stream.this.errorCode);
            }
        }
    }

    class StreamTimeout extends AsyncTimeout {
        StreamTimeout() {
        }

        /* access modifiers changed from: protected */
        public void timedOut() {
            Http2Stream.this.closeLater(ErrorCode.CANCEL);
        }

        /* access modifiers changed from: protected */
        public IOException newTimeoutException(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException(Values.TIMEOUT);
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        public void exitAndThrowIfTimedOut() throws IOException {
            if (exit()) {
                throw newTimeoutException(null);
            }
        }
    }

    Http2Stream(int i, Http2Connection http2Connection, boolean z, boolean z2, List<Header> list) {
        if (http2Connection == null) {
            throw new NullPointerException("connection == null");
        } else if (list == null) {
            throw new NullPointerException("requestHeaders == null");
        } else {
            this.id = i;
            this.connection = http2Connection;
            this.bytesLeftInWriteWindow = (long) http2Connection.peerSettings.getInitialWindowSize();
            this.source = new FramingSource((long) http2Connection.okHttpSettings.getInitialWindowSize());
            this.sink = new FramingSink();
            this.source.finished = z2;
            this.sink.finished = z;
            this.requestHeaders = list;
        }
    }

    public int getId() {
        return this.id;
    }

    public synchronized boolean isOpen() {
        boolean z = false;
        synchronized (this) {
            if (this.errorCode == null) {
                if ((!this.source.finished && !this.source.closed) || ((!this.sink.finished && !this.sink.closed) || !this.hasResponseHeaders)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public boolean isLocallyInitiated() {
        boolean z;
        if ((this.id & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        return this.connection.client == z;
    }

    public Http2Connection getConnection() {
        return this.connection;
    }

    public List<Header> getRequestHeaders() {
        return this.requestHeaders;
    }

    /* JADX INFO: finally extract failed */
    public synchronized List<Header> takeResponseHeaders() throws IOException {
        List<Header> list;
        if (!isLocallyInitiated()) {
            throw new IllegalStateException("servers cannot read response headers");
        }
        this.readTimeout.enter();
        while (this.responseHeaders == null && this.errorCode == null) {
            try {
                waitForIo();
            } catch (Throwable th) {
                this.readTimeout.exitAndThrowIfTimedOut();
                throw th;
            }
        }
        this.readTimeout.exitAndThrowIfTimedOut();
        list = this.responseHeaders;
        if (list != null) {
            this.responseHeaders = null;
        } else {
            throw new StreamResetException(this.errorCode);
        }
        return list;
    }

    public synchronized ErrorCode getErrorCode() {
        return this.errorCode;
    }

    public void sendResponseHeaders(List<Header> list, boolean z) throws IOException {
        boolean z2 = true;
        if (!$assertionsDisabled && Thread.holdsLock(this)) {
            throw new AssertionError();
        } else if (list == null) {
            throw new NullPointerException("responseHeaders == null");
        } else {
            synchronized (this) {
                this.hasResponseHeaders = true;
                if (!z) {
                    this.sink.finished = true;
                } else {
                    z2 = false;
                }
            }
            this.connection.writeSynReply(this.id, z2, list);
            if (z2) {
                this.connection.flush();
            }
        }
    }

    public Timeout readTimeout() {
        return this.readTimeout;
    }

    public Timeout writeTimeout() {
        return this.writeTimeout;
    }

    public Source getSource() {
        return this.source;
    }

    public Sink getSink() {
        synchronized (this) {
            if (!this.hasResponseHeaders && !isLocallyInitiated()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.sink;
    }

    public void close(ErrorCode errorCode2) throws IOException {
        if (closeInternal(errorCode2)) {
            this.connection.writeSynReset(this.id, errorCode2);
        }
    }

    public void closeLater(ErrorCode errorCode2) {
        if (closeInternal(errorCode2)) {
            this.connection.writeSynResetLater(this.id, errorCode2);
        }
    }

    private boolean closeInternal(ErrorCode errorCode2) {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                if (this.errorCode != null) {
                    return false;
                }
                if (this.source.finished && this.sink.finished) {
                    return false;
                }
                this.errorCode = errorCode2;
                notifyAll();
                this.connection.removeStream(this.id);
                return true;
            }
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    public void receiveHeaders(List<Header> list) {
        boolean z = true;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.hasResponseHeaders = true;
                if (this.responseHeaders == null) {
                    this.responseHeaders = list;
                    z = isOpen();
                    notifyAll();
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.addAll(this.responseHeaders);
                    arrayList.add(null);
                    arrayList.addAll(list);
                    this.responseHeaders = arrayList;
                }
            }
            if (!z) {
                this.connection.removeStream(this.id);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    public void receiveData(BufferedSource bufferedSource, int i) throws IOException {
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            this.source.receive(bufferedSource, (long) i);
            return;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    public void receiveFin() {
        boolean isOpen;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                this.source.finished = true;
                isOpen = isOpen();
                notifyAll();
            }
            if (!isOpen) {
                this.connection.removeStream(this.id);
                return;
            }
            return;
        }
        throw new AssertionError();
    }

    /* access modifiers changed from: 0000 */
    public synchronized void receiveRstStream(ErrorCode errorCode2) {
        if (this.errorCode == null) {
            this.errorCode = errorCode2;
            notifyAll();
        }
    }

    /* access modifiers changed from: 0000 */
    public void cancelStreamIfNecessary() throws IOException {
        boolean z;
        boolean isOpen;
        if ($assertionsDisabled || !Thread.holdsLock(this)) {
            synchronized (this) {
                z = !this.source.finished && this.source.closed && (this.sink.finished || this.sink.closed);
                isOpen = isOpen();
            }
            if (z) {
                close(ErrorCode.CANCEL);
            } else if (!isOpen) {
                this.connection.removeStream(this.id);
            }
        } else {
            throw new AssertionError();
        }
    }

    /* access modifiers changed from: 0000 */
    public void addBytesToWriteWindow(long j) {
        this.bytesLeftInWriteWindow += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* access modifiers changed from: 0000 */
    public void checkOutNotClosed() throws IOException {
        if (this.sink.closed) {
            throw new IOException("stream closed");
        } else if (this.sink.finished) {
            throw new IOException("stream finished");
        } else if (this.errorCode != null) {
            throw new StreamResetException(this.errorCode);
        }
    }

    /* access modifiers changed from: 0000 */
    public void waitForIo() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException e) {
            throw new InterruptedIOException();
        }
    }
}
