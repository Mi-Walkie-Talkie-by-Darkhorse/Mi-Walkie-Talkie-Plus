package org.bouncycastle.crypto.modes;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;

public class OldCTSBlockCipher extends BufferedBlockCipher {
    private int blockSize;

    public OldCTSBlockCipher(BlockCipher blockCipher) {
        if ((blockCipher instanceof OFBBlockCipher) || (blockCipher instanceof CFBBlockCipher)) {
            throw new IllegalArgumentException("CTSBlockCipher can only accept ECB, or CBC ciphers");
        }
        this.cipher = blockCipher;
        this.blockSize = blockCipher.getBlockSize();
        this.buf = new byte[(this.blockSize * 2)];
        this.bufOff = 0;
    }

    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        if (this.bufOff + i > bArr.length) {
            throw new DataLengthException("output buffer to small in doFinal");
        }
        int blockSize2 = this.cipher.getBlockSize();
        int i2 = this.bufOff - blockSize2;
        byte[] bArr2 = new byte[blockSize2];
        if (this.forEncryption) {
            this.cipher.processBlock(this.buf, 0, bArr2, 0);
            if (this.bufOff < blockSize2) {
                throw new DataLengthException("need at least one block of input for CTS");
            }
            for (int i3 = this.bufOff; i3 != this.buf.length; i3++) {
                this.buf[i3] = bArr2[i3 - blockSize2];
            }
            for (int i4 = blockSize2; i4 != this.bufOff; i4++) {
                byte[] bArr3 = this.buf;
                bArr3[i4] = (byte) (bArr3[i4] ^ bArr2[i4 - blockSize2]);
            }
            if (this.cipher instanceof CBCBlockCipher) {
                ((CBCBlockCipher) this.cipher).getUnderlyingCipher().processBlock(this.buf, blockSize2, bArr, i);
            } else {
                this.cipher.processBlock(this.buf, blockSize2, bArr, i);
            }
            System.arraycopy(bArr2, 0, bArr, i + blockSize2, i2);
        } else {
            byte[] bArr4 = new byte[blockSize2];
            if (this.cipher instanceof CBCBlockCipher) {
                ((CBCBlockCipher) this.cipher).getUnderlyingCipher().processBlock(this.buf, 0, bArr2, 0);
            } else {
                this.cipher.processBlock(this.buf, 0, bArr2, 0);
            }
            for (int i5 = blockSize2; i5 != this.bufOff; i5++) {
                bArr4[i5 - blockSize2] = (byte) (bArr2[i5 - blockSize2] ^ this.buf[i5]);
            }
            System.arraycopy(this.buf, blockSize2, bArr2, 0, i2);
            this.cipher.processBlock(bArr2, 0, bArr, i);
            System.arraycopy(bArr4, 0, bArr, i + blockSize2, i2);
        }
        int i6 = this.bufOff;
        reset();
        return i6;
    }

    public int getOutputSize(int i) {
        return this.bufOff + i;
    }

    public int getUpdateOutputSize(int i) {
        int i2 = this.bufOff + i;
        int length = i2 % this.buf.length;
        return length == 0 ? i2 - this.buf.length : i2 - length;
    }

    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        int i2;
        if (this.bufOff == this.buf.length) {
            i2 = this.cipher.processBlock(this.buf, 0, bArr, i);
            System.arraycopy(this.buf, this.blockSize, this.buf, 0, this.blockSize);
            this.bufOff = this.blockSize;
        } else {
            i2 = 0;
        }
        byte[] bArr2 = this.buf;
        int i3 = this.bufOff;
        this.bufOff = i3 + 1;
        bArr2[i3] = b;
        return i2;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException, IllegalStateException {
        int i4;
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize2 = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(i2);
        if (updateOutputSize <= 0 || updateOutputSize + i3 <= bArr2.length) {
            int length = this.buf.length - this.bufOff;
            if (i2 > length) {
                System.arraycopy(bArr, i, this.buf, this.bufOff, length);
                i4 = this.cipher.processBlock(this.buf, 0, bArr2, i3) + 0;
                System.arraycopy(this.buf, blockSize2, this.buf, 0, blockSize2);
                this.bufOff = blockSize2;
                i2 -= length;
                i += length;
                while (i2 > blockSize2) {
                    System.arraycopy(bArr, i, this.buf, this.bufOff, blockSize2);
                    i4 += this.cipher.processBlock(this.buf, 0, bArr2, i3 + i4);
                    System.arraycopy(this.buf, blockSize2, this.buf, 0, blockSize2);
                    i2 -= blockSize2;
                    i += blockSize2;
                }
            } else {
                i4 = 0;
            }
            System.arraycopy(bArr, i, this.buf, this.bufOff, i2);
            this.bufOff += i2;
            return i4;
        }
        throw new DataLengthException("output buffer too short");
    }
}
