package com.shenma.speechjni;

public class OpusEncoder {
    private long a = 0;
    private byte[] b = new byte[128];

    public OpusEncoder(int i, int i2, int i3) {
        this.a = create(i, i2, i3, 1);
    }

    protected static native long create(int i, int i2, int i3, int i4);

    protected static native int encode(long j, short[] sArr, byte[] bArr);

    public synchronized byte[] a(short[] sArr) {
        byte[] bArr;
        int encode = encode(this.a, sArr, this.b);
        if (encode < 0) {
            bArr = null;
        } else {
            bArr = new byte[encode];
            System.arraycopy(this.b, 0, bArr, 0, encode);
        }
        return bArr;
    }
}
