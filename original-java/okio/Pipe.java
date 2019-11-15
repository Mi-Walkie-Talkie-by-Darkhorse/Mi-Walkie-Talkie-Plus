package okio;

import java.io.IOException;

public final class Pipe {
    final Buffer buffer = new Buffer();
    final long maxBufferSize;
    private final Sink sink = new PipeSink();
    boolean sinkClosed;
    private final Source source = new PipeSource();
    boolean sourceClosed;

    final class PipeSink implements Sink {
        final Timeout timeout = new Timeout();

        PipeSink() {
        }

        /* JADX WARNING: CFG modification limit reached, blocks count: 127 */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void write(okio.Buffer r9, long r10) throws java.io.IOException {
            /*
                r8 = this;
                r6 = 0
                okio.Pipe r0 = okio.Pipe.this
                okio.Buffer r1 = r0.buffer
                monitor-enter(r1)
                okio.Pipe r0 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                boolean r0 = r0.sinkClosed     // Catch:{ all -> 0x0015 }
                if (r0 == 0) goto L_0x0032
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch:{ all -> 0x0015 }
                java.lang.String r2 = "closed"
                r0.<init>(r2)     // Catch:{ all -> 0x0015 }
                throw r0     // Catch:{ all -> 0x0015 }
            L_0x0015:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0015 }
                throw r0
            L_0x0018:
                okio.Pipe r0 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                long r2 = r0.maxBufferSize     // Catch:{ all -> 0x0015 }
                okio.Pipe r0 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x0015 }
                long r4 = r0.size()     // Catch:{ all -> 0x0015 }
                long r2 = r2 - r4
                int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
                if (r0 != 0) goto L_0x0044
                okio.Timeout r0 = r8.timeout     // Catch:{ all -> 0x0015 }
                okio.Pipe r2 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                okio.Buffer r2 = r2.buffer     // Catch:{ all -> 0x0015 }
                r0.waitUntilNotified(r2)     // Catch:{ all -> 0x0015 }
            L_0x0032:
                int r0 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
                if (r0 <= 0) goto L_0x0058
                okio.Pipe r0 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                boolean r0 = r0.sourceClosed     // Catch:{ all -> 0x0015 }
                if (r0 == 0) goto L_0x0018
                java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0015 }
                java.lang.String r2 = "source is closed"
                r0.<init>(r2)     // Catch:{ all -> 0x0015 }
                throw r0     // Catch:{ all -> 0x0015 }
            L_0x0044:
                long r2 = java.lang.Math.min(r2, r10)     // Catch:{ all -> 0x0015 }
                okio.Pipe r0 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x0015 }
                r0.write(r9, r2)     // Catch:{ all -> 0x0015 }
                long r10 = r10 - r2
                okio.Pipe r0 = okio.Pipe.this     // Catch:{ all -> 0x0015 }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x0015 }
                r0.notifyAll()     // Catch:{ all -> 0x0015 }
                goto L_0x0032
            L_0x0058:
                monitor-exit(r1)     // Catch:{ all -> 0x0015 }
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Pipe.PipeSink.write(okio.Buffer, long):void");
        }

        public void flush() throws IOException {
            synchronized (Pipe.this.buffer) {
                if (Pipe.this.sinkClosed) {
                    throw new IllegalStateException("closed");
                } else if (Pipe.this.sourceClosed && Pipe.this.buffer.size() > 0) {
                    throw new IOException("source is closed");
                }
            }
        }

        public void close() throws IOException {
            synchronized (Pipe.this.buffer) {
                if (!Pipe.this.sinkClosed) {
                    if (!Pipe.this.sourceClosed || Pipe.this.buffer.size() <= 0) {
                        Pipe.this.sinkClosed = true;
                        Pipe.this.buffer.notifyAll();
                        return;
                    }
                    throw new IOException("source is closed");
                }
            }
        }

        public Timeout timeout() {
            return this.timeout;
        }
    }

    final class PipeSource implements Source {
        final Timeout timeout = new Timeout();

        PipeSource() {
        }

        public long read(Buffer buffer, long j) throws IOException {
            long read;
            synchronized (Pipe.this.buffer) {
                if (!Pipe.this.sourceClosed) {
                    while (true) {
                        if (Pipe.this.buffer.size() != 0) {
                            read = Pipe.this.buffer.read(buffer, j);
                            Pipe.this.buffer.notifyAll();
                            break;
                        } else if (Pipe.this.sinkClosed) {
                            read = -1;
                            break;
                        } else {
                            this.timeout.waitUntilNotified(Pipe.this.buffer);
                        }
                    }
                } else {
                    throw new IllegalStateException("closed");
                }
            }
            return read;
        }

        public void close() throws IOException {
            synchronized (Pipe.this.buffer) {
                Pipe.this.sourceClosed = true;
                Pipe.this.buffer.notifyAll();
            }
        }

        public Timeout timeout() {
            return this.timeout;
        }
    }

    public Pipe(long j) {
        if (j < 1) {
            throw new IllegalArgumentException("maxBufferSize < 1: " + j);
        }
        this.maxBufferSize = j;
    }

    public Source source() {
        return this.source;
    }

    public Sink sink() {
        return this.sink;
    }
}
