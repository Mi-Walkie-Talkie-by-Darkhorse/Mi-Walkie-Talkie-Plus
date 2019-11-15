package org.bouncycastle.crypto.engines;

import com.mi.milinkforgame.sdk.session.util.StreamUtil;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

public class IDEAEngine implements BlockCipher {
    private static final int BASE = 65537;
    protected static final int BLOCK_SIZE = 8;
    private static final int MASK = 65535;
    private int[] workingKey = null;

    private int bytesToWord(byte[] bArr, int i) {
        return ((bArr[i] << 8) & StreamUtil.MNS_ENCODE_NONE) + (bArr[i + 1] & 255);
    }

    private int[] expandKey(byte[] bArr) {
        int[] iArr = new int[52];
        if (bArr.length < 16) {
            byte[] bArr2 = new byte[16];
            System.arraycopy(bArr, 0, bArr2, bArr2.length - bArr.length, bArr.length);
            bArr = bArr2;
        }
        for (int i = 0; i < 8; i++) {
            iArr[i] = bytesToWord(bArr, i * 2);
        }
        for (int i2 = 8; i2 < 52; i2++) {
            if ((i2 & 7) < 6) {
                iArr[i2] = (((iArr[i2 - 7] & 127) << 9) | (iArr[i2 - 6] >> 7)) & 65535;
            } else if ((i2 & 7) == 6) {
                iArr[i2] = (((iArr[i2 - 7] & 127) << 9) | (iArr[i2 - 14] >> 7)) & 65535;
            } else {
                iArr[i2] = (((iArr[i2 - 15] & 127) << 9) | (iArr[i2 - 14] >> 7)) & 65535;
            }
        }
        return iArr;
    }

    private int[] generateWorkingKey(boolean z, byte[] bArr) {
        return z ? expandKey(bArr) : invertKey(expandKey(bArr));
    }

    private void ideaFunc(int[] iArr, byte[] bArr, int i, byte[] bArr2, int i2) {
        int bytesToWord = bytesToWord(bArr, i);
        int bytesToWord2 = bytesToWord(bArr, i + 2);
        int i3 = bytesToWord;
        int i4 = bytesToWord2;
        int bytesToWord3 = bytesToWord(bArr, i + 4);
        int bytesToWord4 = bytesToWord(bArr, i + 6);
        int i5 = 0;
        for (int i6 = 0; i6 < 8; i6++) {
            int i7 = i5 + 1;
            int mul = mul(i3, iArr[i5]);
            int i8 = i7 + 1;
            int i9 = (i4 + iArr[i7]) & 65535;
            int i10 = i8 + 1;
            int i11 = (iArr[i8] + bytesToWord3) & 65535;
            int i12 = i10 + 1;
            int mul2 = mul(bytesToWord4, iArr[i10]);
            int i13 = i9 ^ mul2;
            int i14 = i12 + 1;
            int mul3 = mul(i11 ^ mul, iArr[i12]);
            i5 = i14 + 1;
            int mul4 = mul((i13 + mul3) & 65535, iArr[i14]);
            int i15 = (mul3 + mul4) & 65535;
            i3 = mul ^ mul4;
            bytesToWord4 = mul2 ^ i15;
            i4 = mul4 ^ i11;
            bytesToWord3 = i15 ^ i9;
        }
        int i16 = i5 + 1;
        wordToBytes(mul(i3, iArr[i5]), bArr2, i2);
        int i17 = i16 + 1;
        wordToBytes(iArr[i16] + bytesToWord3, bArr2, i2 + 2);
        int i18 = i17 + 1;
        wordToBytes(iArr[i17] + i4, bArr2, i2 + 4);
        wordToBytes(mul(bytesToWord4, iArr[i18]), bArr2, i2 + 6);
    }

    private int[] invertKey(int[] iArr) {
        int[] iArr2 = new int[52];
        int mulInv = mulInv(iArr[0]);
        int addInv = addInv(iArr[1]);
        int addInv2 = addInv(iArr[2]);
        int i = 4;
        iArr2[51] = mulInv(iArr[3]);
        iArr2[50] = addInv2;
        iArr2[49] = addInv;
        int i2 = 48;
        iArr2[48] = mulInv;
        for (int i3 = 1; i3 < 8; i3++) {
            int i4 = i + 1;
            int i5 = iArr[i];
            int i6 = i4 + 1;
            int i7 = i2 - 1;
            iArr2[i7] = iArr[i4];
            int i8 = i7 - 1;
            iArr2[i8] = i5;
            int i9 = i6 + 1;
            int mulInv2 = mulInv(iArr[i6]);
            int i10 = i9 + 1;
            int addInv3 = addInv(iArr[i9]);
            int i11 = i10 + 1;
            int addInv4 = addInv(iArr[i10]);
            i = i11 + 1;
            int i12 = i8 - 1;
            iArr2[i12] = mulInv(iArr[i11]);
            int i13 = i12 - 1;
            iArr2[i13] = addInv3;
            int i14 = i13 - 1;
            iArr2[i14] = addInv4;
            i2 = i14 - 1;
            iArr2[i2] = mulInv2;
        }
        int i15 = i + 1;
        int i16 = iArr[i];
        int i17 = i15 + 1;
        int i18 = i2 - 1;
        iArr2[i18] = iArr[i15];
        int i19 = i18 - 1;
        iArr2[i19] = i16;
        int i20 = i17 + 1;
        int mulInv3 = mulInv(iArr[i17]);
        int i21 = i20 + 1;
        int addInv5 = addInv(iArr[i20]);
        int i22 = i21 + 1;
        int addInv6 = addInv(iArr[i21]);
        int i23 = i19 - 1;
        iArr2[i23] = mulInv(iArr[i22]);
        int i24 = i23 - 1;
        iArr2[i24] = addInv6;
        int i25 = i24 - 1;
        iArr2[i25] = addInv5;
        iArr2[i25 - 1] = mulInv3;
        return iArr2;
    }

    private int mul(int i, int i2) {
        int i3;
        if (i == 0) {
            i3 = BASE - i2;
        } else if (i2 == 0) {
            i3 = BASE - i;
        } else {
            int i4 = i * i2;
            int i5 = i4 & 65535;
            int i6 = i4 >>> 16;
            i3 = (i5 < i6 ? 1 : 0) + (i5 - i6);
        }
        return i3 & 65535;
    }

    private int mulInv(int i) {
        if (i < 2) {
            return i;
        }
        int i2 = BASE / i;
        int i3 = BASE % i;
        int i4 = i;
        int i5 = 1;
        while (i3 != 1) {
            int i6 = i4 / i3;
            i4 %= i3;
            i5 = ((i6 * i2) + i5) & 65535;
            if (i4 == 1) {
                return i5;
            }
            int i7 = i3 / i4;
            i3 %= i4;
            i2 = (i2 + (i7 * i5)) & 65535;
        }
        return (1 - i2) & 65535;
    }

    private void wordToBytes(int i, byte[] bArr, int i2) {
        bArr[i2] = (byte) (i >>> 8);
        bArr[i2 + 1] = (byte) i;
    }

    /* access modifiers changed from: 0000 */
    public int addInv(int i) {
        return (0 - i) & 65535;
    }

    public String getAlgorithmName() {
        return "IDEA";
    }

    public int getBlockSize() {
        return 8;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (cipherParameters instanceof KeyParameter) {
            this.workingKey = generateWorkingKey(z, ((KeyParameter) cipherParameters).getKey());
            return;
        }
        throw new IllegalArgumentException("invalid parameter passed to IDEA init - " + cipherParameters.getClass().getName());
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.workingKey == null) {
            throw new IllegalStateException("IDEA engine not initialised");
        } else if (i + 8 > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (i2 + 8 > bArr2.length) {
            throw new OutputLengthException("output buffer too short");
        } else {
            ideaFunc(this.workingKey, bArr, i, bArr2, i2);
            return 8;
        }
    }

    public void reset() {
    }
}
