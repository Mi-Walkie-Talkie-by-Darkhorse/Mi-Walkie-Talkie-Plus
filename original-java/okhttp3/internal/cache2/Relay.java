package okhttp3.internal.cache2;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    static final ByteString PREFIX_CLEAN = ByteString.encodeUtf8("OkHttp cache v1\n");
    static final ByteString PREFIX_DIRTY = ByteString.encodeUtf8("OkHttp DIRTY :(\n");
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    final Buffer buffer = new Buffer();
    final long bufferMaxSize;
    boolean complete;
    RandomAccessFile file;
    private final ByteString metadata;
    int sourceCount;
    Source upstream;
    final Buffer upstreamBuffer = new Buffer();
    long upstreamPos;
    Thread upstreamReader;

    class RelaySource implements Source {
        private FileOperator fileOperator = new FileOperator(Relay.this.file.getChannel());
        private long sourcePos;
        private final Timeout timeout = new Timeout();

        RelaySource() {
        }

        /* JADX INFO: finally extract failed */
        /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
            r12.this$0.upstreamReader = java.lang.Thread.currentThread();
            r0 = 1;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
            r2 = r8 - r12.this$0.buffer.size();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:27:0x0069, code lost:
            if (r12.sourcePos >= r2) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:28:0x006b, code lost:
            r0 = 2;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:31:0x006e, code lost:
            r4 = java.lang.Math.min(r14, r8 - r12.sourcePos);
            r12.this$0.buffer.copyTo(r13, r12.sourcePos - r2, r4);
            r12.sourcePos += r4;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:90:?, code lost:
            return r4;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public long read(okio.Buffer r13, long r14) throws java.io.IOException {
            /*
                r12 = this;
                okhttp3.internal.cache2.FileOperator r0 = r12.fileOperator
                if (r0 != 0) goto L_0x000c
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                java.lang.String r1 = "closed"
                r0.<init>(r1)
                throw r0
            L_0x000c:
                okhttp3.internal.cache2.Relay r6 = okhttp3.internal.cache2.Relay.this
                monitor-enter(r6)
            L_0x000f:
                long r0 = r12.sourcePos     // Catch:{ all -> 0x0031 }
                okhttp3.internal.cache2.Relay r2 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                long r8 = r2.upstreamPos     // Catch:{ all -> 0x0031 }
                int r0 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
                if (r0 != 0) goto L_0x005b
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                boolean r0 = r0.complete     // Catch:{ all -> 0x0031 }
                if (r0 == 0) goto L_0x0023
                r4 = -1
                monitor-exit(r6)     // Catch:{ all -> 0x0031 }
            L_0x0022:
                return r4
            L_0x0023:
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                java.lang.Thread r0 = r0.upstreamReader     // Catch:{ all -> 0x0031 }
                if (r0 == 0) goto L_0x0034
                okio.Timeout r0 = r12.timeout     // Catch:{ all -> 0x0031 }
                okhttp3.internal.cache2.Relay r1 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                r0.waitUntilNotified(r1)     // Catch:{ all -> 0x0031 }
                goto L_0x000f
            L_0x0031:
                r0 = move-exception
                monitor-exit(r6)     // Catch:{ all -> 0x0031 }
                throw r0
            L_0x0034:
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0031 }
                r0.upstreamReader = r1     // Catch:{ all -> 0x0031 }
                r0 = 1
                monitor-exit(r6)     // Catch:{ all -> 0x0031 }
            L_0x003e:
                r1 = 2
                if (r0 != r1) goto L_0x0089
                long r0 = r12.sourcePos
                long r0 = r8 - r0
                long r4 = java.lang.Math.min(r14, r0)
                okhttp3.internal.cache2.FileOperator r0 = r12.fileOperator
                r2 = 32
                long r6 = r12.sourcePos
                long r1 = r2 + r6
                r3 = r13
                r0.read(r1, r3, r4)
                long r0 = r12.sourcePos
                long r0 = r0 + r4
                r12.sourcePos = r0
                goto L_0x0022
            L_0x005b:
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x0031 }
                long r0 = r0.size()     // Catch:{ all -> 0x0031 }
                long r2 = r8 - r0
                long r0 = r12.sourcePos     // Catch:{ all -> 0x0031 }
                int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
                if (r0 >= 0) goto L_0x006e
                r0 = 2
                monitor-exit(r6)     // Catch:{ all -> 0x0031 }
                goto L_0x003e
            L_0x006e:
                long r0 = r12.sourcePos     // Catch:{ all -> 0x0031 }
                long r0 = r8 - r0
                long r4 = java.lang.Math.min(r14, r0)     // Catch:{ all -> 0x0031 }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0031 }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x0031 }
                long r8 = r12.sourcePos     // Catch:{ all -> 0x0031 }
                long r2 = r8 - r2
                r1 = r13
                r0.copyTo(r1, r2, r4)     // Catch:{ all -> 0x0031 }
                long r0 = r12.sourcePos     // Catch:{ all -> 0x0031 }
                long r0 = r0 + r4
                r12.sourcePos = r0     // Catch:{ all -> 0x0031 }
                monitor-exit(r6)     // Catch:{ all -> 0x0031 }
                goto L_0x0022
            L_0x0089:
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                okio.Source r0 = r0.upstream     // Catch:{ all -> 0x012d }
                okhttp3.internal.cache2.Relay r1 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                okio.Buffer r1 = r1.upstreamBuffer     // Catch:{ all -> 0x012d }
                okhttp3.internal.cache2.Relay r2 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                long r2 = r2.bufferMaxSize     // Catch:{ all -> 0x012d }
                long r10 = r0.read(r1, r2)     // Catch:{ all -> 0x012d }
                r0 = -1
                int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
                if (r0 != 0) goto L_0x00b9
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                r0.commit(r8)     // Catch:{ all -> 0x012d }
                r4 = -1
                okhttp3.internal.cache2.Relay r1 = okhttp3.internal.cache2.Relay.this
                monitor-enter(r1)
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x00b6 }
                r2 = 0
                r0.upstreamReader = r2     // Catch:{ all -> 0x00b6 }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x00b6 }
                r0.notifyAll()     // Catch:{ all -> 0x00b6 }
                monitor-exit(r1)     // Catch:{ all -> 0x00b6 }
                goto L_0x0022
            L_0x00b6:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x00b6 }
                throw r0
            L_0x00b9:
                long r4 = java.lang.Math.min(r10, r14)     // Catch:{ all -> 0x012d }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                okio.Buffer r0 = r0.upstreamBuffer     // Catch:{ all -> 0x012d }
                r2 = 0
                r1 = r13
                r0.copyTo(r1, r2, r4)     // Catch:{ all -> 0x012d }
                long r0 = r12.sourcePos     // Catch:{ all -> 0x012d }
                long r0 = r0 + r4
                r12.sourcePos = r0     // Catch:{ all -> 0x012d }
                okhttp3.internal.cache2.FileOperator r6 = r12.fileOperator     // Catch:{ all -> 0x012d }
                r0 = 32
                long r7 = r0 + r8
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                okio.Buffer r0 = r0.upstreamBuffer     // Catch:{ all -> 0x012d }
                okio.Buffer r9 = r0.clone()     // Catch:{ all -> 0x012d }
                r6.write(r7, r9, r10)     // Catch:{ all -> 0x012d }
                okhttp3.internal.cache2.Relay r1 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012d }
                monitor-enter(r1)     // Catch:{ all -> 0x012d }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x012a }
                okhttp3.internal.cache2.Relay r2 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                okio.Buffer r2 = r2.upstreamBuffer     // Catch:{ all -> 0x012a }
                r0.write(r2, r10)     // Catch:{ all -> 0x012a }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x012a }
                long r2 = r0.size()     // Catch:{ all -> 0x012a }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                long r6 = r0.bufferMaxSize     // Catch:{ all -> 0x012a }
                int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
                if (r0 <= 0) goto L_0x010f
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                okio.Buffer r0 = r0.buffer     // Catch:{ all -> 0x012a }
                okhttp3.internal.cache2.Relay r2 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                okio.Buffer r2 = r2.buffer     // Catch:{ all -> 0x012a }
                long r2 = r2.size()     // Catch:{ all -> 0x012a }
                okhttp3.internal.cache2.Relay r6 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                long r6 = r6.bufferMaxSize     // Catch:{ all -> 0x012a }
                long r2 = r2 - r6
                r0.skip(r2)     // Catch:{ all -> 0x012a }
            L_0x010f:
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x012a }
                long r2 = r0.upstreamPos     // Catch:{ all -> 0x012a }
                long r2 = r2 + r10
                r0.upstreamPos = r2     // Catch:{ all -> 0x012a }
                monitor-exit(r1)     // Catch:{ all -> 0x012a }
                okhttp3.internal.cache2.Relay r1 = okhttp3.internal.cache2.Relay.this
                monitor-enter(r1)
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0127 }
                r2 = 0
                r0.upstreamReader = r2     // Catch:{ all -> 0x0127 }
                okhttp3.internal.cache2.Relay r0 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x0127 }
                r0.notifyAll()     // Catch:{ all -> 0x0127 }
                monitor-exit(r1)     // Catch:{ all -> 0x0127 }
                goto L_0x0022
            L_0x0127:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x0127 }
                throw r0
            L_0x012a:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x012a }
                throw r0     // Catch:{ all -> 0x012d }
            L_0x012d:
                r0 = move-exception
                okhttp3.internal.cache2.Relay r1 = okhttp3.internal.cache2.Relay.this
                monitor-enter(r1)
                okhttp3.internal.cache2.Relay r2 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x013d }
                r3 = 0
                r2.upstreamReader = r3     // Catch:{ all -> 0x013d }
                okhttp3.internal.cache2.Relay r2 = okhttp3.internal.cache2.Relay.this     // Catch:{ all -> 0x013d }
                r2.notifyAll()     // Catch:{ all -> 0x013d }
                monitor-exit(r1)     // Catch:{ all -> 0x013d }
                throw r0
            L_0x013d:
                r0 = move-exception
                monitor-exit(r1)     // Catch:{ all -> 0x013d }
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.Relay.RelaySource.read(okio.Buffer, long):long");
        }

        public Timeout timeout() {
            return this.timeout;
        }

        public void close() throws IOException {
            RandomAccessFile randomAccessFile = null;
            if (this.fileOperator != null) {
                this.fileOperator = null;
                synchronized (Relay.this) {
                    Relay.this.sourceCount--;
                    if (Relay.this.sourceCount == 0) {
                        randomAccessFile = Relay.this.file;
                        Relay.this.file = null;
                    }
                }
                if (randomAccessFile != null) {
                    Util.closeQuietly((Closeable) randomAccessFile);
                }
            }
        }
    }

    private Relay(RandomAccessFile randomAccessFile, Source source, long j, ByteString byteString, long j2) {
        this.file = randomAccessFile;
        this.upstream = source;
        this.complete = source == null;
        this.upstreamPos = j;
        this.metadata = byteString;
        this.bufferMaxSize = j2;
    }

    public static Relay edit(File file2, Source source, ByteString byteString, long j) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
        Relay relay = new Relay(randomAccessFile, source, 0, byteString, j);
        randomAccessFile.setLength(0);
        relay.writeHeader(PREFIX_DIRTY, -1, -1);
        return relay;
    }

    public static Relay read(File file2) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
        FileOperator fileOperator = new FileOperator(randomAccessFile.getChannel());
        Buffer buffer2 = new Buffer();
        fileOperator.read(0, buffer2, 32);
        if (!buffer2.readByteString((long) PREFIX_CLEAN.size()).equals(PREFIX_CLEAN)) {
            throw new IOException("unreadable cache file");
        }
        long readLong = buffer2.readLong();
        long readLong2 = buffer2.readLong();
        Buffer buffer3 = new Buffer();
        fileOperator.read(32 + readLong, buffer3, readLong2);
        return new Relay(randomAccessFile, null, readLong, buffer3.readByteString(), 0);
    }

    private void writeHeader(ByteString byteString, long j, long j2) throws IOException {
        Buffer buffer2 = new Buffer();
        buffer2.write(byteString);
        buffer2.writeLong(j);
        buffer2.writeLong(j2);
        if (buffer2.size() != 32) {
            throw new IllegalArgumentException();
        }
        new FileOperator(this.file.getChannel()).write(0, buffer2, 32);
    }

    private void writeMetadata(long j) throws IOException {
        Buffer buffer2 = new Buffer();
        buffer2.write(this.metadata);
        new FileOperator(this.file.getChannel()).write(32 + j, buffer2, (long) this.metadata.size());
    }

    /* access modifiers changed from: 0000 */
    public void commit(long j) throws IOException {
        writeMetadata(j);
        this.file.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j, (long) this.metadata.size());
        this.file.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        Util.closeQuietly((Closeable) this.upstream);
        this.upstream = null;
    }

    /* access modifiers changed from: 0000 */
    public boolean isClosed() {
        return this.file == null;
    }

    public ByteString metadata() {
        return this.metadata;
    }

    public Source newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }
}
