package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

public class SM3Digest extends GeneralDigest {
    private static final int BLOCK_SIZE = 16;
    private static final int DIGEST_LENGTH = 32;
    private static final int[] T = new int[64];
    private int[] V = new int[8];
    private int[] W = new int[68];
    private int[] W1 = new int[64];
    private int[] inwords = new int[16];
    private int xOff;

    static {
        for (int i = 0; i < 16; i++) {
            T[i] = (2043430169 >>> (32 - i)) | (2043430169 << i);
        }
        for (int i2 = 16; i2 < 64; i2++) {
            int i3 = i2 % 32;
            T[i2] = (2055708042 >>> (32 - i3)) | (2055708042 << i3);
        }
    }

    public SM3Digest() {
        reset();
    }

    public SM3Digest(SM3Digest sM3Digest) {
        super((GeneralDigest) sM3Digest);
        copyIn(sM3Digest);
    }

    private int FF0(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private int FF1(int i, int i2, int i3) {
        return (i & i2) | (i & i3) | (i2 & i3);
    }

    private int GG0(int i, int i2, int i3) {
        return (i ^ i2) ^ i3;
    }

    private int GG1(int i, int i2, int i3) {
        return (i & i2) | ((i ^ -1) & i3);
    }

    private int P0(int i) {
        return (((i << 9) | (i >>> 23)) ^ i) ^ ((i << 17) | (i >>> 15));
    }

    private int P1(int i) {
        return (((i << 15) | (i >>> 17)) ^ i) ^ ((i << 23) | (i >>> 9));
    }

    private void copyIn(SM3Digest sM3Digest) {
        System.arraycopy(sM3Digest.V, 0, this.V, 0, this.V.length);
        System.arraycopy(sM3Digest.inwords, 0, this.inwords, 0, this.inwords.length);
        this.xOff = sM3Digest.xOff;
    }

    public Memoable copy() {
        return new SM3Digest(this);
    }

    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.V[0], bArr, i + 0);
        Pack.intToBigEndian(this.V[1], bArr, i + 4);
        Pack.intToBigEndian(this.V[2], bArr, i + 8);
        Pack.intToBigEndian(this.V[3], bArr, i + 12);
        Pack.intToBigEndian(this.V[4], bArr, i + 16);
        Pack.intToBigEndian(this.V[5], bArr, i + 20);
        Pack.intToBigEndian(this.V[6], bArr, i + 24);
        Pack.intToBigEndian(this.V[7], bArr, i + 28);
        reset();
        return 32;
    }

    public String getAlgorithmName() {
        return "SM3";
    }

    public int getDigestSize() {
        return 32;
    }

    /* access modifiers changed from: protected */
    public void processBlock() {
        for (int i = 0; i < 16; i++) {
            this.W[i] = this.inwords[i];
        }
        for (int i2 = 16; i2 < 68; i2++) {
            int i3 = this.W[i2 - 3];
            int i4 = (i3 >>> 17) | (i3 << 15);
            int i5 = this.W[i2 - 13];
            this.W[i2] = (P1(i4 ^ (this.W[i2 - 16] ^ this.W[i2 - 9])) ^ ((i5 >>> 25) | (i5 << 7))) ^ this.W[i2 - 6];
        }
        for (int i6 = 0; i6 < 64; i6++) {
            this.W1[i6] = this.W[i6] ^ this.W[i6 + 4];
        }
        int i7 = this.V[0];
        int i8 = this.V[1];
        int i9 = this.V[2];
        int i10 = this.V[3];
        int i11 = this.V[4];
        int i12 = this.V[5];
        int i13 = this.V[6];
        int i14 = this.V[7];
        int i15 = 0;
        while (i15 < 16) {
            int i16 = (i7 << 12) | (i7 >>> 20);
            int i17 = i16 + i11 + T[i15];
            int i18 = (i17 >>> 25) | (i17 << 7);
            int FF0 = this.W1[i15] + i10 + FF0(i7, i8, i9) + (i16 ^ i18);
            int GG0 = i14 + GG0(i11, i12, i13) + i18 + this.W[i15];
            int i19 = (i8 >>> 23) | (i8 << 9);
            int i20 = (i12 << 19) | (i12 >>> 13);
            i15++;
            i8 = i7;
            i7 = FF0;
            int i21 = i11;
            i11 = P0(GG0);
            i12 = i21;
            int i22 = i9;
            i9 = i19;
            i10 = i22;
            int i23 = i13;
            i13 = i20;
            i14 = i23;
        }
        int i24 = 16;
        while (i24 < 64) {
            int i25 = (i7 << 12) | (i7 >>> 20);
            int i26 = i25 + i11 + T[i24];
            int i27 = (i26 >>> 25) | (i26 << 7);
            int FF1 = this.W1[i24] + i10 + FF1(i7, i8, i9) + (i25 ^ i27);
            int GG1 = i14 + GG1(i11, i12, i13) + i27 + this.W[i24];
            int i28 = (i8 >>> 23) | (i8 << 9);
            int i29 = (i12 << 19) | (i12 >>> 13);
            i24++;
            i8 = i7;
            i7 = FF1;
            int i30 = i11;
            i11 = P0(GG1);
            i12 = i30;
            int i31 = i9;
            i9 = i28;
            i10 = i31;
            int i32 = i13;
            i13 = i29;
            i14 = i32;
        }
        int[] iArr = this.V;
        iArr[0] = i7 ^ iArr[0];
        int[] iArr2 = this.V;
        iArr2[1] = i8 ^ iArr2[1];
        int[] iArr3 = this.V;
        iArr3[2] = i9 ^ iArr3[2];
        int[] iArr4 = this.V;
        iArr4[3] = i10 ^ iArr4[3];
        int[] iArr5 = this.V;
        iArr5[4] = i11 ^ iArr5[4];
        int[] iArr6 = this.V;
        iArr6[5] = i12 ^ iArr6[5];
        int[] iArr7 = this.V;
        iArr7[6] = i13 ^ iArr7[6];
        int[] iArr8 = this.V;
        iArr8[7] = i14 ^ iArr8[7];
        this.xOff = 0;
    }

    /* access modifiers changed from: protected */
    public void processLength(long j) {
        if (this.xOff > 14) {
            this.inwords[this.xOff] = 0;
            this.xOff++;
            processBlock();
        }
        while (this.xOff < 14) {
            this.inwords[this.xOff] = 0;
            this.xOff++;
        }
        int[] iArr = this.inwords;
        int i = this.xOff;
        this.xOff = i + 1;
        iArr[i] = (int) (j >>> 32);
        int[] iArr2 = this.inwords;
        int i2 = this.xOff;
        this.xOff = i2 + 1;
        iArr2[i2] = (int) j;
    }

    /* access modifiers changed from: protected */
    public void processWord(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        this.inwords[this.xOff] = ((bArr[i] & 255) << 24) | ((bArr[i2] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255);
        this.xOff++;
        if (this.xOff >= 16) {
            processBlock();
        }
    }

    public void reset() {
        super.reset();
        this.V[0] = 1937774191;
        this.V[1] = 1226093241;
        this.V[2] = 388252375;
        this.V[3] = -628488704;
        this.V[4] = -1452330820;
        this.V[5] = 372324522;
        this.V[6] = -477237683;
        this.V[7] = -1325724082;
        this.xOff = 0;
    }

    public void reset(Memoable memoable) {
        SM3Digest sM3Digest = (SM3Digest) memoable;
        super.copyIn(sM3Digest);
        copyIn(sM3Digest);
    }
}
