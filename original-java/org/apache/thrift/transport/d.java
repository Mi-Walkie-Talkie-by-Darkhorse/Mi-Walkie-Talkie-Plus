package org.apache.thrift.transport;

public abstract class d {
    public abstract int a(byte[] bArr, int i, int i2);

    public void a(int i) {
    }

    public byte[] a() {
        return null;
    }

    public int b() {
        return 0;
    }

    public abstract void b(byte[] bArr, int i, int i2);

    public int c() {
        return -1;
    }

    public int d(byte[] bArr, int i, int i2) {
        int i3 = 0;
        while (i3 < i2) {
            int a = a(bArr, i + i3, i2 - i3);
            if (a <= 0) {
                throw new e("Cannot read. Remote side has closed. Tried to read " + i2 + " bytes, but only got " + i3 + " bytes.");
            }
            i3 += a;
        }
        return i3;
    }
}
