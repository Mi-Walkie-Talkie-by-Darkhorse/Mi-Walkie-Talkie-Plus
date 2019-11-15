package com.bumptech.glide.load.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ExifOrientationStream */
public final class e extends FilterInputStream {
    private static final byte[] a = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
    private static final int b = a.length;
    private static final int c = (b + 2);
    private final byte d;
    private int e;

    public e(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
        }
        this.d = (byte) i;
    }

    public boolean markSupported() {
        return false;
    }

    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    public int read() throws IOException {
        int i;
        if (this.e < 2 || this.e > c) {
            i = super.read();
        } else if (this.e == c) {
            i = this.d;
        } else {
            i = a[this.e - 2] & 255;
        }
        if (i != -1) {
            this.e++;
        }
        return i;
    }

    public int read(byte[] bArr, int i, int i2) throws IOException {
        int min;
        if (this.e > c) {
            min = super.read(bArr, i, i2);
        } else if (this.e == c) {
            bArr[i] = this.d;
            min = 1;
        } else if (this.e < 2) {
            min = super.read(bArr, i, 2 - this.e);
        } else {
            min = Math.min(c - this.e, i2);
            System.arraycopy(a, this.e - 2, bArr, i, min);
        }
        if (min > 0) {
            this.e += min;
        }
        return min;
    }

    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.e = (int) (((long) this.e) + skip);
        }
        return skip;
    }

    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }
}
