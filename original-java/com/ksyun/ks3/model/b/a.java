package com.ksyun.ks3.model.b;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: InputSubStream */
public class a extends FilterInputStream {
    private long a = 0;
    private final long b;
    private final long c;
    private final boolean d;
    private long e = 0;

    public a(InputStream inputStream, long j, long j2, boolean z) {
        super(inputStream);
        this.c = j2;
        this.b = j;
        this.d = z;
    }

    public int read() throws IOException {
        byte[] bArr = new byte[1];
        int read = read(bArr, 0, 1);
        return read == -1 ? read : bArr[0];
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        while (this.a < this.b) {
            this.a = super.skip(this.b - this.a) + this.a;
        }
        long j = (this.c + this.b) - this.a;
        if (j <= 0) {
            return -1;
        }
        int read = super.read(bArr, i, (int) Math.min((long) i2, j));
        this.a += (long) read;
        return read;
    }

    public synchronized void mark(int i) {
        this.e = this.a;
        super.mark(i);
    }

    public synchronized void reset() throws IOException {
        this.a = this.e;
        super.reset();
    }

    public void close() throws IOException {
        if (this.d) {
            super.close();
        }
    }

    public int available() throws IOException {
        long j;
        if (this.a < this.b) {
            j = this.c;
        } else {
            j = (this.c + this.b) - this.a;
        }
        return (int) Math.min(j, (long) super.available());
    }
}
