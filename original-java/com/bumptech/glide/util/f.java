package com.bumptech.glide.util;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: MarkEnforcingInputStream */
public class f extends FilterInputStream {
    private int a = Integer.MIN_VALUE;

    public f(InputStream inputStream) {
        super(inputStream);
    }

    public void mark(int i) {
        super.mark(i);
        this.a = i;
    }

    public int read() throws IOException {
        if (a(1) == -1) {
            return -1;
        }
        int read = super.read();
        b(1);
        return read;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int a2 = (int) a((long) i2);
        if (a2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i, a2);
        b((long) read);
        return read;
    }

    public void reset() throws IOException {
        super.reset();
        this.a = Integer.MIN_VALUE;
    }

    public long skip(long j) throws IOException {
        long a2 = a(j);
        if (a2 == -1) {
            return -1;
        }
        long skip = super.skip(a2);
        b(skip);
        return skip;
    }

    public int available() throws IOException {
        if (this.a == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(this.a, super.available());
    }

    private long a(long j) {
        if (this.a == 0) {
            return -1;
        }
        if (this.a == Integer.MIN_VALUE || j <= ((long) this.a)) {
            return j;
        }
        return (long) this.a;
    }

    private void b(long j) {
        if (this.a != Integer.MIN_VALUE && j != -1) {
            this.a = (int) (((long) this.a) - j);
        }
    }
}
