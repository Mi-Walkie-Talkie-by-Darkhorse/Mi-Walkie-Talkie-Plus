package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.Xof;

public class SHAKEDigest extends KeccakDigest implements Xof {
    public SHAKEDigest() {
        this(128);
    }

    public SHAKEDigest(int i) {
        super(checkBitLength(i));
    }

    public SHAKEDigest(SHAKEDigest sHAKEDigest) {
        super((KeccakDigest) sHAKEDigest);
    }

    private static int checkBitLength(int i) {
        switch (i) {
            case 128:
            case 256:
                return i;
            default:
                throw new IllegalArgumentException("'bitLength' " + i + " not supported for SHAKE");
        }
    }

    public int doFinal(byte[] bArr, int i) {
        return doFinal(bArr, i, getDigestSize());
    }

    /* access modifiers changed from: protected */
    public int doFinal(byte[] bArr, int i, byte b, int i2) {
        return doFinal(bArr, i, getDigestSize(), b, i2);
    }

    public int doFinal(byte[] bArr, int i, int i2) {
        absorb(new byte[]{15}, 0, 4);
        squeeze(bArr, i, ((long) i2) * 8);
        reset();
        return i2;
    }

    /* access modifiers changed from: protected */
    public int doFinal(byte[] bArr, int i, int i2, byte b, int i3) {
        if (i3 < 0 || i3 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int i4 = (15 << i3) | (((1 << i3) - 1) & b);
        int i5 = i3 + 4;
        if (i5 >= 8) {
            this.oneByte[0] = (byte) i4;
            absorb(this.oneByte, 0, 8);
            i5 -= 8;
            i4 >>>= 8;
        }
        if (i5 > 0) {
            this.oneByte[0] = (byte) i4;
            absorb(this.oneByte, 0, (long) i5);
        }
        squeeze(bArr, i, ((long) i2) * 8);
        reset();
        return i2;
    }

    public String getAlgorithmName() {
        return "SHAKE" + this.fixedOutputLength;
    }
}
