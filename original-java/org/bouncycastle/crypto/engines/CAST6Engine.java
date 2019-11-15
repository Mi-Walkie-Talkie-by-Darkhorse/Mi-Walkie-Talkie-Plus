package org.bouncycastle.crypto.engines;

public final class CAST6Engine extends CAST5Engine {
    protected static final int BLOCK_SIZE = 16;
    protected static final int ROUNDS = 12;
    protected int[] _Km = new int[48];
    protected int[] _Kr = new int[48];
    protected int[] _Tm = new int[192];
    protected int[] _Tr = new int[192];
    private int[] _workingKey = new int[8];

    /* access modifiers changed from: protected */
    public final void CAST_Decipher(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = i4;
        int i6 = i3;
        int i7 = i2;
        int i8 = i;
        for (int i9 = 0; i9 < 6; i9++) {
            int i10 = (11 - i9) * 4;
            i6 ^= F1(i5, this._Km[i10], this._Kr[i10]);
            i7 ^= F2(i6, this._Km[i10 + 1], this._Kr[i10 + 1]);
            i8 ^= F3(i7, this._Km[i10 + 2], this._Kr[i10 + 2]);
            i5 ^= F1(i8, this._Km[i10 + 3], this._Kr[i10 + 3]);
        }
        for (int i11 = 6; i11 < 12; i11++) {
            int i12 = (11 - i11) * 4;
            i5 ^= F1(i8, this._Km[i12 + 3], this._Kr[i12 + 3]);
            i8 ^= F3(i7, this._Km[i12 + 2], this._Kr[i12 + 2]);
            i7 ^= F2(i6, this._Km[i12 + 1], this._Kr[i12 + 1]);
            i6 ^= F1(i5, this._Km[i12], this._Kr[i12]);
        }
        iArr[0] = i8;
        iArr[1] = i7;
        iArr[2] = i6;
        iArr[3] = i5;
    }

    /* access modifiers changed from: protected */
    public final void CAST_Encipher(int i, int i2, int i3, int i4, int[] iArr) {
        int i5 = i4;
        int i6 = i3;
        int i7 = i2;
        int i8 = i;
        for (int i9 = 0; i9 < 6; i9++) {
            int i10 = i9 * 4;
            i6 ^= F1(i5, this._Km[i10], this._Kr[i10]);
            i7 ^= F2(i6, this._Km[i10 + 1], this._Kr[i10 + 1]);
            i8 ^= F3(i7, this._Km[i10 + 2], this._Kr[i10 + 2]);
            i5 ^= F1(i8, this._Km[i10 + 3], this._Kr[i10 + 3]);
        }
        for (int i11 = 6; i11 < 12; i11++) {
            int i12 = i11 * 4;
            i5 ^= F1(i8, this._Km[i12 + 3], this._Kr[i12 + 3]);
            i8 ^= F3(i7, this._Km[i12 + 2], this._Kr[i12 + 2]);
            i7 ^= F2(i6, this._Km[i12 + 1], this._Kr[i12 + 1]);
            i6 ^= F1(i5, this._Km[i12], this._Kr[i12]);
        }
        iArr[0] = i8;
        iArr[1] = i7;
        iArr[2] = i6;
        iArr[3] = i5;
    }

    /* access modifiers changed from: protected */
    public int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        CAST_Decipher(BytesTo32bits(bArr, i), BytesTo32bits(bArr, i + 4), BytesTo32bits(bArr, i + 8), BytesTo32bits(bArr, i + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i2);
        Bits32ToBytes(iArr[1], bArr2, i2 + 4);
        Bits32ToBytes(iArr[2], bArr2, i2 + 8);
        Bits32ToBytes(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    /* access modifiers changed from: protected */
    public int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = new int[4];
        CAST_Encipher(BytesTo32bits(bArr, i), BytesTo32bits(bArr, i + 4), BytesTo32bits(bArr, i + 8), BytesTo32bits(bArr, i + 12), iArr);
        Bits32ToBytes(iArr[0], bArr2, i2);
        Bits32ToBytes(iArr[1], bArr2, i2 + 4);
        Bits32ToBytes(iArr[2], bArr2, i2 + 8);
        Bits32ToBytes(iArr[3], bArr2, i2 + 12);
        return 16;
    }

    public String getAlgorithmName() {
        return "CAST6";
    }

    public int getBlockSize() {
        return 16;
    }

    public void reset() {
    }

    /* access modifiers changed from: protected */
    public void setKey(byte[] bArr) {
        int i = 1518500249;
        int i2 = 19;
        int i3 = 0;
        while (i3 < 24) {
            int i4 = i;
            int i5 = i2;
            for (int i6 = 0; i6 < 8; i6++) {
                this._Tm[(i3 * 8) + i6] = i4;
                i4 += 1859775393;
                this._Tr[(i3 * 8) + i6] = i5;
                i5 = (i5 + 17) & 31;
            }
            i3++;
            i2 = i5;
            i = i4;
        }
        byte[] bArr2 = new byte[64];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        for (int i7 = 0; i7 < 8; i7++) {
            this._workingKey[i7] = BytesTo32bits(bArr2, i7 * 4);
        }
        for (int i8 = 0; i8 < 12; i8++) {
            int i9 = i8 * 2 * 8;
            int[] iArr = this._workingKey;
            iArr[6] = iArr[6] ^ F1(this._workingKey[7], this._Tm[i9], this._Tr[i9]);
            int[] iArr2 = this._workingKey;
            iArr2[5] = iArr2[5] ^ F2(this._workingKey[6], this._Tm[i9 + 1], this._Tr[i9 + 1]);
            int[] iArr3 = this._workingKey;
            iArr3[4] = iArr3[4] ^ F3(this._workingKey[5], this._Tm[i9 + 2], this._Tr[i9 + 2]);
            int[] iArr4 = this._workingKey;
            iArr4[3] = iArr4[3] ^ F1(this._workingKey[4], this._Tm[i9 + 3], this._Tr[i9 + 3]);
            int[] iArr5 = this._workingKey;
            iArr5[2] = iArr5[2] ^ F2(this._workingKey[3], this._Tm[i9 + 4], this._Tr[i9 + 4]);
            int[] iArr6 = this._workingKey;
            iArr6[1] = iArr6[1] ^ F3(this._workingKey[2], this._Tm[i9 + 5], this._Tr[i9 + 5]);
            int[] iArr7 = this._workingKey;
            iArr7[0] = iArr7[0] ^ F1(this._workingKey[1], this._Tm[i9 + 6], this._Tr[i9 + 6]);
            int[] iArr8 = this._workingKey;
            iArr8[7] = F2(this._workingKey[0], this._Tm[i9 + 7], this._Tr[i9 + 7]) ^ iArr8[7];
            int i10 = ((i8 * 2) + 1) * 8;
            int[] iArr9 = this._workingKey;
            iArr9[6] = iArr9[6] ^ F1(this._workingKey[7], this._Tm[i10], this._Tr[i10]);
            int[] iArr10 = this._workingKey;
            iArr10[5] = iArr10[5] ^ F2(this._workingKey[6], this._Tm[i10 + 1], this._Tr[i10 + 1]);
            int[] iArr11 = this._workingKey;
            iArr11[4] = iArr11[4] ^ F3(this._workingKey[5], this._Tm[i10 + 2], this._Tr[i10 + 2]);
            int[] iArr12 = this._workingKey;
            iArr12[3] = iArr12[3] ^ F1(this._workingKey[4], this._Tm[i10 + 3], this._Tr[i10 + 3]);
            int[] iArr13 = this._workingKey;
            iArr13[2] = iArr13[2] ^ F2(this._workingKey[3], this._Tm[i10 + 4], this._Tr[i10 + 4]);
            int[] iArr14 = this._workingKey;
            iArr14[1] = iArr14[1] ^ F3(this._workingKey[2], this._Tm[i10 + 5], this._Tr[i10 + 5]);
            int[] iArr15 = this._workingKey;
            iArr15[0] = iArr15[0] ^ F1(this._workingKey[1], this._Tm[i10 + 6], this._Tr[i10 + 6]);
            int[] iArr16 = this._workingKey;
            iArr16[7] = F2(this._workingKey[0], this._Tm[i10 + 7], this._Tr[i10 + 7]) ^ iArr16[7];
            this._Kr[i8 * 4] = this._workingKey[0] & 31;
            this._Kr[(i8 * 4) + 1] = this._workingKey[2] & 31;
            this._Kr[(i8 * 4) + 2] = this._workingKey[4] & 31;
            this._Kr[(i8 * 4) + 3] = this._workingKey[6] & 31;
            this._Km[i8 * 4] = this._workingKey[7];
            this._Km[(i8 * 4) + 1] = this._workingKey[5];
            this._Km[(i8 * 4) + 2] = this._workingKey[3];
            this._Km[(i8 * 4) + 3] = this._workingKey[1];
        }
    }
}
