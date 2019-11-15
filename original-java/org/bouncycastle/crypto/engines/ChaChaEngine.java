package org.bouncycastle.crypto.engines;

import org.bouncycastle.util.Pack;

public class ChaChaEngine extends Salsa20Engine {
    public ChaChaEngine() {
    }

    public ChaChaEngine(int i) {
        super(i);
    }

    public static void chachaCore(int i, int[] iArr, int[] iArr2) {
        if (iArr.length != 16) {
            throw new IllegalArgumentException();
        } else if (iArr2.length != 16) {
            throw new IllegalArgumentException();
        } else if (i % 2 != 0) {
            throw new IllegalArgumentException("Number of rounds must be even");
        } else {
            int i2 = iArr[0];
            int i3 = iArr[1];
            int i4 = iArr[2];
            int i5 = iArr[3];
            int i6 = iArr[4];
            int i7 = iArr[5];
            int i8 = iArr[6];
            int i9 = iArr[7];
            int i10 = iArr[8];
            int i11 = iArr[9];
            int i12 = iArr[10];
            int i13 = iArr[11];
            int i14 = iArr[12];
            int i15 = iArr[13];
            int i16 = iArr[14];
            int i17 = iArr[15];
            while (i > 0) {
                int i18 = i2 + i6;
                int rotl = rotl(i14 ^ i18, 16);
                int i19 = i10 + rotl;
                int rotl2 = rotl(i6 ^ i19, 12);
                int i20 = i18 + rotl2;
                int rotl3 = rotl(rotl ^ i20, 8);
                int i21 = i19 + rotl3;
                int rotl4 = rotl(rotl2 ^ i21, 7);
                int i22 = i3 + i7;
                int rotl5 = rotl(i15 ^ i22, 16);
                int i23 = i11 + rotl5;
                int rotl6 = rotl(i7 ^ i23, 12);
                int i24 = i22 + rotl6;
                int rotl7 = rotl(rotl5 ^ i24, 8);
                int i25 = i23 + rotl7;
                int rotl8 = rotl(rotl6 ^ i25, 7);
                int i26 = i4 + i8;
                int rotl9 = rotl(i16 ^ i26, 16);
                int i27 = i12 + rotl9;
                int rotl10 = rotl(i8 ^ i27, 12);
                int i28 = i26 + rotl10;
                int rotl11 = rotl(rotl9 ^ i28, 8);
                int i29 = i27 + rotl11;
                int rotl12 = rotl(rotl10 ^ i29, 7);
                int i30 = i5 + i9;
                int rotl13 = rotl(i17 ^ i30, 16);
                int i31 = i13 + rotl13;
                int rotl14 = rotl(i9 ^ i31, 12);
                int i32 = i30 + rotl14;
                int rotl15 = rotl(rotl13 ^ i32, 8);
                int i33 = i31 + rotl15;
                int rotl16 = rotl(rotl14 ^ i33, 7);
                int i34 = i20 + rotl8;
                int rotl17 = rotl(rotl15 ^ i34, 16);
                int i35 = i29 + rotl17;
                int rotl18 = rotl(rotl8 ^ i35, 12);
                i2 = i34 + rotl18;
                i17 = rotl(rotl17 ^ i2, 8);
                i12 = i35 + i17;
                i7 = rotl(rotl18 ^ i12, 7);
                int i36 = i24 + rotl12;
                int rotl19 = rotl(rotl3 ^ i36, 16);
                int i37 = i33 + rotl19;
                int rotl20 = rotl(rotl12 ^ i37, 12);
                i3 = i36 + rotl20;
                i14 = rotl(rotl19 ^ i3, 8);
                i13 = i37 + i14;
                i8 = rotl(rotl20 ^ i13, 7);
                int i38 = i28 + rotl16;
                int rotl21 = rotl(rotl7 ^ i38, 16);
                int i39 = i21 + rotl21;
                int rotl22 = rotl(rotl16 ^ i39, 12);
                i4 = i38 + rotl22;
                i15 = rotl(rotl21 ^ i4, 8);
                i10 = i39 + i15;
                i9 = rotl(rotl22 ^ i10, 7);
                int i40 = i32 + rotl4;
                int rotl23 = rotl(rotl11 ^ i40, 16);
                int i41 = i25 + rotl23;
                int rotl24 = rotl(rotl4 ^ i41, 12);
                i5 = i40 + rotl24;
                i16 = rotl(rotl23 ^ i5, 8);
                i11 = i41 + i16;
                i6 = rotl(rotl24 ^ i11, 7);
                i -= 2;
            }
            iArr2[0] = i2 + iArr[0];
            iArr2[1] = i3 + iArr[1];
            iArr2[2] = i4 + iArr[2];
            iArr2[3] = i5 + iArr[3];
            iArr2[4] = i6 + iArr[4];
            iArr2[5] = i7 + iArr[5];
            iArr2[6] = i8 + iArr[6];
            iArr2[7] = i9 + iArr[7];
            iArr2[8] = i10 + iArr[8];
            iArr2[9] = i11 + iArr[9];
            iArr2[10] = i12 + iArr[10];
            iArr2[11] = i13 + iArr[11];
            iArr2[12] = i14 + iArr[12];
            iArr2[13] = i15 + iArr[13];
            iArr2[14] = i16 + iArr[14];
            iArr2[15] = i17 + iArr[15];
        }
    }

    /* access modifiers changed from: protected */
    public void advanceCounter() {
        int[] iArr = this.engineState;
        int i = iArr[12] + 1;
        iArr[12] = i;
        if (i == 0) {
            int[] iArr2 = this.engineState;
            iArr2[13] = iArr2[13] + 1;
        }
    }

    /* access modifiers changed from: protected */
    public void advanceCounter(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i > 0) {
            int[] iArr = this.engineState;
            iArr[13] = i + iArr[13];
        }
        int i3 = this.engineState[12];
        int[] iArr2 = this.engineState;
        iArr2[12] = i2 + iArr2[12];
        if (i3 != 0 && this.engineState[12] < i3) {
            int[] iArr3 = this.engineState;
            iArr3[13] = iArr3[13] + 1;
        }
    }

    /* access modifiers changed from: protected */
    public void generateKeyStream(byte[] bArr) {
        chachaCore(this.rounds, this.engineState, this.x);
        Pack.intToLittleEndian(this.x, bArr, 0);
    }

    public String getAlgorithmName() {
        return "ChaCha" + this.rounds;
    }

    /* access modifiers changed from: protected */
    public long getCounter() {
        return (((long) this.engineState[13]) << 32) | (((long) this.engineState[12]) & 4294967295L);
    }

    /* access modifiers changed from: protected */
    public void resetCounter() {
        int[] iArr = this.engineState;
        this.engineState[13] = 0;
        iArr[12] = 0;
    }

    /* access modifiers changed from: protected */
    public void retreatCounter() {
        if (this.engineState[12] == 0 && this.engineState[13] == 0) {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
        int[] iArr = this.engineState;
        int i = iArr[12] - 1;
        iArr[12] = i;
        if (i == -1) {
            int[] iArr2 = this.engineState;
            iArr2[13] = iArr2[13] - 1;
        }
    }

    /* access modifiers changed from: protected */
    public void retreatCounter(long j) {
        int i = (int) (j >>> 32);
        int i2 = (int) j;
        if (i != 0) {
            if ((((long) this.engineState[13]) & 4294967295L) >= (((long) i) & 4294967295L)) {
                int[] iArr = this.engineState;
                iArr[13] = iArr[13] - i;
            } else {
                throw new IllegalStateException("attempt to reduce counter past zero.");
            }
        }
        if ((((long) this.engineState[12]) & 4294967295L) >= (((long) i2) & 4294967295L)) {
            int[] iArr2 = this.engineState;
            iArr2[12] = iArr2[12] - i2;
        } else if (this.engineState[13] != 0) {
            int[] iArr3 = this.engineState;
            iArr3[13] = iArr3[13] - 1;
            int[] iArr4 = this.engineState;
            iArr4[12] = iArr4[12] - i2;
        } else {
            throw new IllegalStateException("attempt to reduce counter past zero.");
        }
    }

    /* access modifiers changed from: protected */
    public void setKey(byte[] bArr, byte[] bArr2) {
        byte[] bArr3;
        int i = 16;
        if (bArr != null) {
            if (bArr.length == 16 || bArr.length == 32) {
                this.engineState[4] = Pack.littleEndianToInt(bArr, 0);
                this.engineState[5] = Pack.littleEndianToInt(bArr, 4);
                this.engineState[6] = Pack.littleEndianToInt(bArr, 8);
                this.engineState[7] = Pack.littleEndianToInt(bArr, 12);
                if (bArr.length == 32) {
                    bArr3 = sigma;
                } else {
                    bArr3 = tau;
                    i = 0;
                }
                this.engineState[8] = Pack.littleEndianToInt(bArr, i);
                this.engineState[9] = Pack.littleEndianToInt(bArr, i + 4);
                this.engineState[10] = Pack.littleEndianToInt(bArr, i + 8);
                this.engineState[11] = Pack.littleEndianToInt(bArr, i + 12);
                this.engineState[0] = Pack.littleEndianToInt(bArr3, 0);
                this.engineState[1] = Pack.littleEndianToInt(bArr3, 4);
                this.engineState[2] = Pack.littleEndianToInt(bArr3, 8);
                this.engineState[3] = Pack.littleEndianToInt(bArr3, 12);
            } else {
                throw new IllegalArgumentException(getAlgorithmName() + " requires 128 bit or 256 bit key");
            }
        }
        this.engineState[14] = Pack.littleEndianToInt(bArr2, 0);
        this.engineState[15] = Pack.littleEndianToInt(bArr2, 4);
    }
}
