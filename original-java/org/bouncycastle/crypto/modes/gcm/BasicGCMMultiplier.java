package org.bouncycastle.crypto.modes.gcm;

public class BasicGCMMultiplier implements GCMMultiplier {
    private int[] H;

    public void init(byte[] bArr) {
        this.H = GCMUtil.asInts(bArr);
    }

    public void multiplyH(byte[] bArr) {
        int[] asInts = GCMUtil.asInts(bArr);
        GCMUtil.multiply(asInts, this.H);
        GCMUtil.asBytes(asInts, bArr);
    }
}
