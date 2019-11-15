package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.params.KeyParameter;

public class RC6Engine implements BlockCipher {
    private static final int LGW = 5;
    private static final int P32 = -1209970333;
    private static final int Q32 = -1640531527;
    private static final int _noRounds = 20;
    private static final int bytesPerWord = 4;
    private static final int wordSize = 32;
    private int[] _S = null;
    private boolean forEncryption;

    private int bytesToWord(byte[] bArr, int i) {
        int i2 = 0;
        for (int i3 = 3; i3 >= 0; i3--) {
            i2 = (i2 << 8) + (bArr[i3 + i] & 255);
        }
        return i2;
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int bytesToWord = bytesToWord(bArr, i);
        int bytesToWord2 = bytesToWord(bArr, i + 4);
        int bytesToWord3 = bytesToWord(bArr, i + 8);
        int bytesToWord4 = bytesToWord(bArr, i + 12);
        int i3 = bytesToWord3 - this._S[43];
        int i4 = bytesToWord - this._S[42];
        int i5 = 20;
        while (i5 >= 1) {
            int rotateLeft = rotateLeft(((i4 * 2) + 1) * i4, 5);
            int rotateLeft2 = rotateLeft(((i3 * 2) + 1) * i3, 5);
            int rotateRight = rotateRight(bytesToWord2 - this._S[(i5 * 2) + 1], rotateLeft) ^ rotateLeft2;
            i5--;
            int i6 = i3;
            i3 = rotateRight;
            bytesToWord2 = i4;
            i4 = rotateRight(bytesToWord4 - this._S[i5 * 2], rotateLeft2) ^ rotateLeft;
            bytesToWord4 = i6;
        }
        int i7 = bytesToWord4 - this._S[1];
        int i8 = bytesToWord2 - this._S[0];
        wordToBytes(i4, bArr2, i2);
        wordToBytes(i8, bArr2, i2 + 4);
        wordToBytes(i3, bArr2, i2 + 8);
        wordToBytes(i7, bArr2, i2 + 12);
        return 16;
    }

    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = 1;
        int bytesToWord = bytesToWord(bArr, i);
        int bytesToWord2 = bytesToWord(bArr, i + 4);
        int bytesToWord3 = bytesToWord(bArr, i + 8);
        int i4 = this._S[0] + bytesToWord2;
        int bytesToWord4 = this._S[1] + bytesToWord(bArr, i + 12);
        int i5 = bytesToWord3;
        int i6 = bytesToWord;
        int i7 = i4;
        int i8 = i5;
        while (i3 <= 20) {
            int rotateLeft = rotateLeft(((i7 * 2) + 1) * i7, 5);
            int rotateLeft2 = rotateLeft(((bytesToWord4 * 2) + 1) * bytesToWord4, 5);
            int rotateLeft3 = rotateLeft(i6 ^ rotateLeft, rotateLeft2) + this._S[i3 * 2];
            i3++;
            int i9 = rotateLeft3;
            i6 = i7;
            i7 = rotateLeft(i8 ^ rotateLeft2, rotateLeft) + this._S[(i3 * 2) + 1];
            i8 = bytesToWord4;
            bytesToWord4 = i9;
        }
        int i10 = this._S[42] + i6;
        int i11 = this._S[43] + i8;
        wordToBytes(i10, bArr2, i2);
        wordToBytes(i7, bArr2, i2 + 4);
        wordToBytes(i11, bArr2, i2 + 8);
        wordToBytes(bytesToWord4, bArr2, i2 + 12);
        return 16;
    }

    private int rotateLeft(int i, int i2) {
        return (i << i2) | (i >>> (-i2));
    }

    private int rotateRight(int i, int i2) {
        return (i >>> i2) | (i << (-i2));
    }

    private void setKey(byte[] bArr) {
        if ((bArr.length + 3) / 4 == 0) {
        }
        int[] iArr = new int[(((bArr.length + 4) - 1) / 4)];
        for (int length = bArr.length - 1; length >= 0; length--) {
            iArr[length / 4] = (iArr[length / 4] << 8) + (bArr[length] & 255);
        }
        this._S = new int[44];
        this._S[0] = P32;
        for (int i = 1; i < this._S.length; i++) {
            this._S[i] = this._S[i - 1] + Q32;
        }
        int length2 = iArr.length > this._S.length ? iArr.length * 3 : this._S.length * 3;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < length2; i6++) {
            int[] iArr2 = this._S;
            i5 = rotateLeft(i5 + this._S[i3] + i4, 3);
            iArr2[i3] = i5;
            i4 = rotateLeft(iArr[i2] + i5 + i4, i4 + i5);
            iArr[i2] = i4;
            i3 = (i3 + 1) % this._S.length;
            i2 = (i2 + 1) % iArr.length;
        }
    }

    private void wordToBytes(int i, byte[] bArr, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[i3 + i2] = (byte) i;
            i >>>= 8;
        }
    }

    public String getAlgorithmName() {
        return "RC6";
    }

    public int getBlockSize() {
        return 16;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("invalid parameter passed to RC6 init - " + cipherParameters.getClass().getName());
        }
        KeyParameter keyParameter = (KeyParameter) cipherParameters;
        this.forEncryption = z;
        setKey(keyParameter.getKey());
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int blockSize = getBlockSize();
        if (this._S == null) {
            throw new IllegalStateException("RC6 engine not initialised");
        } else if (i + blockSize > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (blockSize + i2 <= bArr2.length) {
            return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
        } else {
            throw new OutputLengthException("output buffer too short");
        }
    }

    public void reset() {
    }
}
