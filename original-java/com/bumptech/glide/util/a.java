package com.bumptech.glide.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileChannel.MapMode;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: ByteBufferUtil */
public final class a {
    private static final AtomicReference<byte[]> a = new AtomicReference<>();

    /* renamed from: com.bumptech.glide.util.a$a reason: collision with other inner class name */
    /* compiled from: ByteBufferUtil */
    private static class C0022a extends InputStream {
        private final ByteBuffer a;
        private int b = -1;

        public C0022a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
        }

        public int available() throws IOException {
            return this.a.remaining();
        }

        public int read() throws IOException {
            if (!this.a.hasRemaining()) {
                return -1;
            }
            return this.a.get();
        }

        public synchronized void mark(int i) {
            this.b = this.a.position();
        }

        public boolean markSupported() {
            return true;
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!this.a.hasRemaining()) {
                return -1;
            }
            int min = Math.min(i2, available());
            this.a.get(bArr, i, min);
            return min;
        }

        public synchronized void reset() throws IOException {
            if (this.b == -1) {
                throw new IOException("Cannot reset to unset mark position");
            }
            this.a.position(this.b);
        }

        public long skip(long j) throws IOException {
            if (!this.a.hasRemaining()) {
                return -1;
            }
            long min = Math.min(j, (long) available());
            this.a.position((int) (((long) this.a.position()) + min));
            return min;
        }
    }

    /* compiled from: ByteBufferUtil */
    static final class b {
        final int a;
        final int b;
        final byte[] c;

        public b(byte[] bArr, int i, int i2) {
            this.c = bArr;
            this.a = i;
            this.b = i2;
        }
    }

    public static ByteBuffer a(File file) throws IOException {
        RandomAccessFile randomAccessFile;
        FileChannel fileChannel = null;
        try {
            long length = file.length();
            if (length > 2147483647L) {
                throw new IOException("File too large to map into memory");
            }
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "r");
            try {
                FileChannel channel = randomAccessFile2.getChannel();
                try {
                    MappedByteBuffer load = channel.map(MapMode.READ_ONLY, 0, length).load();
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException e) {
                        }
                    }
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e2) {
                        }
                    }
                    return load;
                } catch (Throwable th) {
                    randomAccessFile = randomAccessFile2;
                    FileChannel fileChannel2 = channel;
                    th = th;
                    fileChannel = fileChannel2;
                }
            } catch (Throwable th2) {
                th = th2;
                randomAccessFile = randomAccessFile2;
            }
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
            if (fileChannel != null) {
                try {
                    fileChannel.close();
                } catch (IOException e3) {
                }
            }
            if (randomAccessFile != null) {
                try {
                    randomAccessFile.close();
                } catch (IOException e4) {
                }
            }
            throw th;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x002c A[SYNTHETIC, Splitter:B:14:0x002c] */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0031 A[SYNTHETIC, Splitter:B:17:0x0031] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(java.nio.ByteBuffer r3, java.io.File r4) throws java.io.IOException {
        /*
            r1 = 0
            r0 = 0
            r3.position(r0)
            java.io.RandomAccessFile r2 = new java.io.RandomAccessFile     // Catch:{ all -> 0x0028 }
            java.lang.String r0 = "rw"
            r2.<init>(r4, r0)     // Catch:{ all -> 0x0028 }
            java.nio.channels.FileChannel r1 = r2.getChannel()     // Catch:{ all -> 0x003d }
            r1.write(r3)     // Catch:{ all -> 0x003d }
            r0 = 0
            r1.force(r0)     // Catch:{ all -> 0x003d }
            r1.close()     // Catch:{ all -> 0x003d }
            r2.close()     // Catch:{ all -> 0x003d }
            if (r1 == 0) goto L_0x0022
            r1.close()     // Catch:{ IOException -> 0x0035 }
        L_0x0022:
            if (r2 == 0) goto L_0x0027
            r2.close()     // Catch:{ IOException -> 0x0037 }
        L_0x0027:
            return
        L_0x0028:
            r0 = move-exception
            r2 = r1
        L_0x002a:
            if (r1 == 0) goto L_0x002f
            r1.close()     // Catch:{ IOException -> 0x0039 }
        L_0x002f:
            if (r2 == 0) goto L_0x0034
            r2.close()     // Catch:{ IOException -> 0x003b }
        L_0x0034:
            throw r0
        L_0x0035:
            r0 = move-exception
            goto L_0x0022
        L_0x0037:
            r0 = move-exception
            goto L_0x0027
        L_0x0039:
            r1 = move-exception
            goto L_0x002f
        L_0x003b:
            r1 = move-exception
            goto L_0x0034
        L_0x003d:
            r0 = move-exception
            goto L_0x002a
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.util.a.a(java.nio.ByteBuffer, java.io.File):void");
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        b c = c(byteBuffer);
        if (c != null && c.a == 0 && c.b == c.c.length) {
            return byteBuffer.array();
        }
        ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        byte[] bArr = new byte[asReadOnlyBuffer.limit()];
        asReadOnlyBuffer.position(0);
        asReadOnlyBuffer.get(bArr);
        return bArr;
    }

    public static InputStream b(ByteBuffer byteBuffer) {
        return new C0022a(byteBuffer);
    }

    private static b c(ByteBuffer byteBuffer) {
        if (byteBuffer.isReadOnly() || !byteBuffer.hasArray()) {
            return null;
        }
        return new b(byteBuffer.array(), byteBuffer.arrayOffset(), byteBuffer.limit());
    }
}
