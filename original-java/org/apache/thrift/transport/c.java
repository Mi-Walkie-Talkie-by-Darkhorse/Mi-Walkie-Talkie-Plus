package org.apache.thrift.transport;

public final class c extends d {
    private byte[] a;
    private int b;
    private int c;

    public int a(byte[] bArr, int i, int i2) {
        int c2 = c();
        if (i2 > c2) {
            i2 = c2;
        }
        if (i2 > 0) {
            System.arraycopy(this.a, this.b, bArr, i, i2);
            a(i2);
        }
        return i2;
    }

    public void a(int i) {
        this.b += i;
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    public byte[] a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public void b(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException("No writing allowed!");
    }

    public int c() {
        return this.c - this.b;
    }

    public void c(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.c = i + i2;
    }
}
