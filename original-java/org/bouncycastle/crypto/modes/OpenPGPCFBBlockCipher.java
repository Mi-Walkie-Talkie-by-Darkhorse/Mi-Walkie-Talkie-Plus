package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;

public class OpenPGPCFBBlockCipher implements BlockCipher {
    private byte[] FR = new byte[this.blockSize];
    private byte[] FRE = new byte[this.blockSize];
    private byte[] IV = new byte[this.blockSize];
    private int blockSize;
    private BlockCipher cipher;
    private int count;
    private boolean forEncryption;

    public OpenPGPCFBBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.blockSize = blockCipher.getBlockSize();
    }

    private int decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        int i3 = 2;
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.blockSize + i2 > bArr2.length) {
            throw new DataLengthException("output buffer too short");
        } else {
            if (this.count > this.blockSize) {
                byte b = bArr[i];
                this.FR[this.blockSize - 2] = b;
                bArr2[i2] = encryptByte(b, this.blockSize - 2);
                byte b2 = bArr[i + 1];
                this.FR[this.blockSize - 1] = b2;
                bArr2[i2 + 1] = encryptByte(b2, this.blockSize - 1);
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte b3 = bArr[i + i3];
                    this.FR[i3 - 2] = b3;
                    bArr2[i2 + i3] = encryptByte(b3, i3 - 2);
                    i3++;
                }
            } else if (this.count == 0) {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                for (int i4 = 0; i4 < this.blockSize; i4++) {
                    this.FR[i4] = bArr[i + i4];
                    bArr2[i4] = encryptByte(bArr[i + i4], i4);
                }
                this.count += this.blockSize;
            } else if (this.count == this.blockSize) {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                byte b4 = bArr[i];
                byte b5 = bArr[i + 1];
                bArr2[i2] = encryptByte(b4, 0);
                bArr2[i2 + 1] = encryptByte(b5, 1);
                System.arraycopy(this.FR, 2, this.FR, 0, this.blockSize - 2);
                this.FR[this.blockSize - 2] = b4;
                this.FR[this.blockSize - 1] = b5;
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte b6 = bArr[i + i3];
                    this.FR[i3 - 2] = b6;
                    bArr2[i2 + i3] = encryptByte(b6, i3 - 2);
                    i3++;
                }
                this.count += this.blockSize;
            }
            return this.blockSize;
        }
    }

    private int encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        int i3 = 2;
        if (this.blockSize + i > bArr.length) {
            throw new DataLengthException("input buffer too short");
        } else if (this.blockSize + i2 > bArr2.length) {
            throw new DataLengthException("output buffer too short");
        } else {
            if (this.count > this.blockSize) {
                byte[] bArr3 = this.FR;
                int i4 = this.blockSize - 2;
                byte encryptByte = encryptByte(bArr[i], this.blockSize - 2);
                bArr2[i2] = encryptByte;
                bArr3[i4] = encryptByte;
                byte[] bArr4 = this.FR;
                int i5 = this.blockSize - 1;
                int i6 = i2 + 1;
                byte encryptByte2 = encryptByte(bArr[i + 1], this.blockSize - 1);
                bArr2[i6] = encryptByte2;
                bArr4[i5] = encryptByte2;
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte[] bArr5 = this.FR;
                    int i7 = i3 - 2;
                    int i8 = i2 + i3;
                    byte encryptByte3 = encryptByte(bArr[i + i3], i3 - 2);
                    bArr2[i8] = encryptByte3;
                    bArr5[i7] = encryptByte3;
                    i3++;
                }
            } else if (this.count == 0) {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                for (int i9 = 0; i9 < this.blockSize; i9++) {
                    byte[] bArr6 = this.FR;
                    int i10 = i2 + i9;
                    byte encryptByte4 = encryptByte(bArr[i + i9], i9);
                    bArr2[i10] = encryptByte4;
                    bArr6[i9] = encryptByte4;
                }
                this.count += this.blockSize;
            } else if (this.count == this.blockSize) {
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                bArr2[i2] = encryptByte(bArr[i], 0);
                bArr2[i2 + 1] = encryptByte(bArr[i + 1], 1);
                System.arraycopy(this.FR, 2, this.FR, 0, this.blockSize - 2);
                System.arraycopy(bArr2, i2, this.FR, this.blockSize - 2, 2);
                this.cipher.processBlock(this.FR, 0, this.FRE, 0);
                while (i3 < this.blockSize) {
                    byte[] bArr7 = this.FR;
                    int i11 = i3 - 2;
                    int i12 = i2 + i3;
                    byte encryptByte5 = encryptByte(bArr[i + i3], i3 - 2);
                    bArr2[i12] = encryptByte5;
                    bArr7[i11] = encryptByte5;
                    i3++;
                }
                this.count += this.blockSize;
            }
            return this.blockSize;
        }
    }

    private byte encryptByte(byte b, int i) {
        return (byte) (this.FRE[i] ^ b);
    }

    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/OpenPGPCFB";
    }

    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        this.cipher.init(true, cipherParameters);
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        return this.forEncryption ? encryptBlock(bArr, i, bArr2, i2) : decryptBlock(bArr, i, bArr2, i2);
    }

    public void reset() {
        this.count = 0;
        System.arraycopy(this.IV, 0, this.FR, 0, this.FR.length);
        this.cipher.reset();
    }
}
