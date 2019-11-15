package org.bouncycastle.crypto.digests;

import org.bouncycastle.util.Memoable;
import org.bouncycastle.util.Pack;

public class SHA256Digest extends GeneralDigest implements EncodableDigest {
    private static final int DIGEST_LENGTH = 32;
    static final int[] K = {1116352408, 1899447441, -1245643825, -373957723, 961987163, 1508970993, -1841331548, -1424204075, -670586216, 310598401, 607225278, 1426881987, 1925078388, -2132889090, -1680079193, -1046744716, -459576895, -272742522, 264347078, 604807628, 770255983, 1249150122, 1555081692, 1996064986, -1740746414, -1473132947, -1341970488, -1084653625, -958395405, -710438585, 113926993, 338241895, 666307205, 773529912, 1294757372, 1396182291, 1695183700, 1986661051, -2117940946, -1838011259, -1564481375, -1474664885, -1035236496, -949202525, -778901479, -694614492, -200395387, 275423344, 430227734, 506948616, 659060556, 883997877, 958139571, 1322822218, 1537002063, 1747873779, 1955562222, 2024104815, -2067236844, -1933114872, -1866530822, -1538233109, -1090935817, -965641998};
    private int H1;
    private int H2;
    private int H3;
    private int H4;
    private int H5;
    private int H6;
    private int H7;
    private int H8;
    private int[] X = new int[64];
    private int xOff;

    public SHA256Digest() {
        reset();
    }

    public SHA256Digest(SHA256Digest sHA256Digest) {
        super((GeneralDigest) sHA256Digest);
        copyIn(sHA256Digest);
    }

    public SHA256Digest(byte[] bArr) {
        super(bArr);
        this.H1 = Pack.bigEndianToInt(bArr, 16);
        this.H2 = Pack.bigEndianToInt(bArr, 20);
        this.H3 = Pack.bigEndianToInt(bArr, 24);
        this.H4 = Pack.bigEndianToInt(bArr, 28);
        this.H5 = Pack.bigEndianToInt(bArr, 32);
        this.H6 = Pack.bigEndianToInt(bArr, 36);
        this.H7 = Pack.bigEndianToInt(bArr, 40);
        this.H8 = Pack.bigEndianToInt(bArr, 44);
        this.xOff = Pack.bigEndianToInt(bArr, 48);
        for (int i = 0; i != this.xOff; i++) {
            this.X[i] = Pack.bigEndianToInt(bArr, (i * 4) + 52);
        }
    }

    private int Ch(int i, int i2, int i3) {
        return (i & i2) ^ ((i ^ -1) & i3);
    }

    private int Maj(int i, int i2, int i3) {
        return ((i & i2) ^ (i & i3)) ^ (i2 & i3);
    }

    private int Sum0(int i) {
        return (((i >>> 2) | (i << 30)) ^ ((i >>> 13) | (i << 19))) ^ ((i >>> 22) | (i << 10));
    }

    private int Sum1(int i) {
        return (((i >>> 6) | (i << 26)) ^ ((i >>> 11) | (i << 21))) ^ ((i >>> 25) | (i << 7));
    }

    private int Theta0(int i) {
        return (((i >>> 7) | (i << 25)) ^ ((i >>> 18) | (i << 14))) ^ (i >>> 3);
    }

    private int Theta1(int i) {
        return (((i >>> 17) | (i << 15)) ^ ((i >>> 19) | (i << 13))) ^ (i >>> 10);
    }

    private void copyIn(SHA256Digest sHA256Digest) {
        super.copyIn(sHA256Digest);
        this.H1 = sHA256Digest.H1;
        this.H2 = sHA256Digest.H2;
        this.H3 = sHA256Digest.H3;
        this.H4 = sHA256Digest.H4;
        this.H5 = sHA256Digest.H5;
        this.H6 = sHA256Digest.H6;
        this.H7 = sHA256Digest.H7;
        this.H8 = sHA256Digest.H8;
        System.arraycopy(sHA256Digest.X, 0, this.X, 0, sHA256Digest.X.length);
        this.xOff = sHA256Digest.xOff;
    }

    public Memoable copy() {
        return new SHA256Digest(this);
    }

    public int doFinal(byte[] bArr, int i) {
        finish();
        Pack.intToBigEndian(this.H1, bArr, i);
        Pack.intToBigEndian(this.H2, bArr, i + 4);
        Pack.intToBigEndian(this.H3, bArr, i + 8);
        Pack.intToBigEndian(this.H4, bArr, i + 12);
        Pack.intToBigEndian(this.H5, bArr, i + 16);
        Pack.intToBigEndian(this.H6, bArr, i + 20);
        Pack.intToBigEndian(this.H7, bArr, i + 24);
        Pack.intToBigEndian(this.H8, bArr, i + 28);
        reset();
        return 32;
    }

    public String getAlgorithmName() {
        return "SHA-256";
    }

    public int getDigestSize() {
        return 32;
    }

    public byte[] getEncodedState() {
        byte[] bArr = new byte[((this.xOff * 4) + 52)];
        super.populateState(bArr);
        Pack.intToBigEndian(this.H1, bArr, 16);
        Pack.intToBigEndian(this.H2, bArr, 20);
        Pack.intToBigEndian(this.H3, bArr, 24);
        Pack.intToBigEndian(this.H4, bArr, 28);
        Pack.intToBigEndian(this.H5, bArr, 32);
        Pack.intToBigEndian(this.H6, bArr, 36);
        Pack.intToBigEndian(this.H7, bArr, 40);
        Pack.intToBigEndian(this.H8, bArr, 44);
        Pack.intToBigEndian(this.xOff, bArr, 48);
        for (int i = 0; i != this.xOff; i++) {
            Pack.intToBigEndian(this.X[i], bArr, (i * 4) + 52);
        }
        return bArr;
    }

    /* access modifiers changed from: protected */
    public void processBlock() {
        for (int i = 16; i <= 63; i++) {
            this.X[i] = Theta1(this.X[i - 2]) + this.X[i - 7] + Theta0(this.X[i - 15]) + this.X[i - 16];
        }
        int i2 = this.H1;
        int i3 = this.H2;
        int i4 = this.H3;
        int i5 = this.H4;
        int i6 = this.H5;
        int i7 = this.H6;
        int i8 = this.H7;
        int i9 = i3;
        int i10 = i2;
        int i11 = i5;
        int i12 = i4;
        int i13 = i7;
        int i14 = i6;
        int i15 = this.H8;
        int i16 = i8;
        int i17 = 0;
        for (int i18 = 0; i18 < 8; i18++) {
            int Sum1 = i15 + Sum1(i14) + Ch(i14, i13, i16) + K[i17] + this.X[i17];
            int i19 = i11 + Sum1;
            int Sum0 = Sum1 + Sum0(i10) + Maj(i10, i9, i12);
            int i20 = i17 + 1;
            int Sum12 = i16 + Sum1(i19) + Ch(i19, i14, i13) + K[i20] + this.X[i20];
            int i21 = i12 + Sum12;
            int Sum02 = Sum12 + Sum0(Sum0) + Maj(Sum0, i10, i9);
            int i22 = i20 + 1;
            int Sum13 = i13 + Sum1(i21) + Ch(i21, i19, i14) + K[i22] + this.X[i22];
            int i23 = i9 + Sum13;
            int Sum03 = Sum13 + Sum0(Sum02) + Maj(Sum02, Sum0, i10);
            int i24 = i22 + 1;
            int Sum14 = i14 + Sum1(i23) + Ch(i23, i21, i19) + K[i24] + this.X[i24];
            int i25 = i10 + Sum14;
            int Sum04 = Sum14 + Sum0(Sum03) + Maj(Sum03, Sum02, Sum0);
            int i26 = i24 + 1;
            int Sum15 = i19 + Sum1(i25) + Ch(i25, i23, i21) + K[i26] + this.X[i26];
            i15 = Sum0 + Sum15;
            i11 = Sum15 + Sum0(Sum04) + Maj(Sum04, Sum03, Sum02);
            int i27 = i26 + 1;
            int Sum16 = i21 + Sum1(i15) + Ch(i15, i25, i23) + K[i27] + this.X[i27];
            i16 = Sum02 + Sum16;
            i12 = Sum16 + Sum0(i11) + Maj(i11, Sum04, Sum03);
            int i28 = i27 + 1;
            int Sum17 = i23 + Sum1(i16) + Ch(i16, i15, i25) + K[i28] + this.X[i28];
            i13 = Sum03 + Sum17;
            i9 = Sum17 + Sum0(i12) + Maj(i12, i11, Sum04);
            int i29 = i28 + 1;
            int Sum18 = i25 + Sum1(i13) + Ch(i13, i16, i15) + K[i29] + this.X[i29];
            i14 = Sum04 + Sum18;
            i10 = Sum18 + Sum0(i9) + Maj(i9, i12, i11);
            i17 = i29 + 1;
        }
        this.H1 += i10;
        this.H2 += i9;
        this.H3 += i12;
        this.H4 += i11;
        this.H5 += i14;
        this.H6 += i13;
        this.H7 += i16;
        this.H8 += i15;
        this.xOff = 0;
        for (int i30 = 0; i30 < 16; i30++) {
            this.X[i30] = 0;
        }
    }

    /* access modifiers changed from: protected */
    public void processLength(long j) {
        if (this.xOff > 14) {
            processBlock();
        }
        this.X[14] = (int) (j >>> 32);
        this.X[15] = (int) (-1 & j);
    }

    /* access modifiers changed from: protected */
    public void processWord(byte[] bArr, int i) {
        int i2 = i + 1;
        int i3 = i2 + 1;
        this.X[this.xOff] = (bArr[i] << 24) | ((bArr[i2] & 255) << Tnaf.POW_2_WIDTH) | ((bArr[i3] & 255) << 8) | (bArr[i3 + 1] & 255);
        int i4 = this.xOff + 1;
        this.xOff = i4;
        if (i4 == 16) {
            processBlock();
        }
    }

    public void reset() {
        super.reset();
        this.H1 = 1779033703;
        this.H2 = -1150833019;
        this.H3 = 1013904242;
        this.H4 = -1521486534;
        this.H5 = 1359893119;
        this.H6 = -1694144372;
        this.H7 = 528734635;
        this.H8 = 1541459225;
        this.xOff = 0;
        for (int i = 0; i != this.X.length; i++) {
            this.X[i] = 0;
        }
    }

    public void reset(Memoable memoable) {
        copyIn((SHA256Digest) memoable);
    }
}
