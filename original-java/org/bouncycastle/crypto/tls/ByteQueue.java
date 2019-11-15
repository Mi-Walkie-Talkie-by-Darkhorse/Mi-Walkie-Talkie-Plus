package org.bouncycastle.crypto.tls;

public class ByteQueue {
    private static final int DEFAULT_CAPACITY = 1024;
    private int available;
    private byte[] databuf;
    private int skipped;

    public ByteQueue() {
        this(1024);
    }

    public ByteQueue(int i) {
        this.skipped = 0;
        this.available = 0;
        this.databuf = new byte[i];
    }

    public static int nextTwoPow(int i) {
        int i2 = (i >> 1) | i;
        int i3 = i2 | (i2 >> 2);
        int i4 = i3 | (i3 >> 4);
        int i5 = i4 | (i4 >> 8);
        return (i5 | (i5 >> 16)) + 1;
    }

    public void addData(byte[] bArr, int i, int i2) {
        if (this.skipped + this.available + i2 > this.databuf.length) {
            int nextTwoPow = nextTwoPow(this.available + i2);
            if (nextTwoPow > this.databuf.length) {
                byte[] bArr2 = new byte[nextTwoPow];
                System.arraycopy(this.databuf, this.skipped, bArr2, 0, this.available);
                this.databuf = bArr2;
            } else {
                System.arraycopy(this.databuf, this.skipped, this.databuf, 0, this.available);
            }
            this.skipped = 0;
        }
        System.arraycopy(bArr, i, this.databuf, this.skipped + this.available, i2);
        this.available += i2;
    }

    public int available() {
        return this.available;
    }

    public void read(byte[] bArr, int i, int i2, int i3) {
        if (bArr.length - i < i2) {
            throw new IllegalArgumentException("Buffer size of " + bArr.length + " is too small for a read of " + i2 + " bytes");
        } else if (this.available - i3 < i2) {
            throw new IllegalStateException("Not enough data to read");
        } else {
            System.arraycopy(this.databuf, this.skipped + i3, bArr, i, i2);
        }
    }

    public void removeData(int i) {
        if (i > this.available) {
            throw new IllegalStateException("Cannot remove " + i + " bytes, only got " + this.available);
        }
        this.available -= i;
        this.skipped += i;
    }

    public void removeData(byte[] bArr, int i, int i2, int i3) {
        read(bArr, i, i2, i3);
        removeData(i3 + i2);
    }

    public byte[] removeData(int i, int i2) {
        byte[] bArr = new byte[i];
        removeData(bArr, 0, i, i2);
        return bArr;
    }

    public int size() {
        return this.available;
    }
}
