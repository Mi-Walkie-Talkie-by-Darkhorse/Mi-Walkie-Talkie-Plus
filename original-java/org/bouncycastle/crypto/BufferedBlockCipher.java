package org.bouncycastle.crypto;

public class BufferedBlockCipher {
    protected byte[] buf;
    protected int bufOff;
    protected BlockCipher cipher;
    protected boolean forEncryption;
    protected boolean partialBlockOkay;
    protected boolean pgpCFB;

    protected BufferedBlockCipher() {
    }

    public BufferedBlockCipher(BlockCipher blockCipher) {
        boolean z = true;
        this.cipher = blockCipher;
        this.buf = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
        String algorithmName = blockCipher.getAlgorithmName();
        int indexOf = algorithmName.indexOf(47) + 1;
        this.pgpCFB = indexOf > 0 && algorithmName.startsWith("PGP", indexOf);
        if (this.pgpCFB || (blockCipher instanceof StreamCipher)) {
            this.partialBlockOkay = true;
            return;
        }
        if (indexOf <= 0 || !algorithmName.startsWith("OpenPGP", indexOf)) {
            z = false;
        }
        this.partialBlockOkay = z;
    }

    public int doFinal(byte[] bArr, int i) throws DataLengthException, IllegalStateException, InvalidCipherTextException {
        int i2 = 0;
        try {
            if (this.bufOff + i > bArr.length) {
                throw new OutputLengthException("output buffer too short for doFinal()");
            }
            if (this.bufOff != 0) {
                if (!this.partialBlockOkay) {
                    throw new DataLengthException("data not block size aligned");
                }
                this.cipher.processBlock(this.buf, 0, this.buf, 0);
                i2 = this.bufOff;
                this.bufOff = 0;
                System.arraycopy(this.buf, 0, bArr, i, i2);
            }
            return i2;
        } finally {
            reset();
        }
    }

    public int getBlockSize() {
        return this.cipher.getBlockSize();
    }

    public int getOutputSize(int i) {
        return this.bufOff + i;
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public int getUpdateOutputSize(int i) {
        int i2 = i + this.bufOff;
        int length = this.pgpCFB ? this.forEncryption ? (i2 % this.buf.length) - (this.cipher.getBlockSize() + 2) : i2 % this.buf.length : i2 % this.buf.length;
        return i2 - length;
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.forEncryption = z;
        reset();
        this.cipher.init(z, cipherParameters);
    }

    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        byte[] bArr2 = this.buf;
        int i2 = this.bufOff;
        this.bufOff = i2 + 1;
        bArr2[i2] = b;
        if (this.bufOff != this.buf.length) {
            return 0;
        }
        int processBlock = this.cipher.processBlock(this.buf, 0, bArr, i);
        this.bufOff = 0;
        return processBlock;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException, IllegalStateException {
        int i4;
        int i5;
        int i6;
        if (i2 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = getBlockSize();
        int updateOutputSize = getUpdateOutputSize(i2);
        if (updateOutputSize <= 0 || updateOutputSize + i3 <= bArr2.length) {
            int length = this.buf.length - this.bufOff;
            if (i2 > length) {
                System.arraycopy(bArr, i, this.buf, this.bufOff, length);
                i6 = this.cipher.processBlock(this.buf, 0, bArr2, i3) + 0;
                this.bufOff = 0;
                i5 = i2 - length;
                i4 = length + i;
                while (i5 > this.buf.length) {
                    i6 += this.cipher.processBlock(bArr, i4, bArr2, i3 + i6);
                    i5 -= blockSize;
                    i4 += blockSize;
                }
            } else {
                i6 = 0;
                i5 = i2;
                i4 = i;
            }
            System.arraycopy(bArr, i4, this.buf, this.bufOff, i5);
            this.bufOff = i5 + this.bufOff;
            if (this.bufOff != this.buf.length) {
                return i6;
            }
            int processBlock = i6 + this.cipher.processBlock(this.buf, 0, bArr2, i3 + i6);
            this.bufOff = 0;
            return processBlock;
        }
        throw new OutputLengthException("output buffer too short");
    }

    public void reset() {
        for (int i = 0; i < this.buf.length; i++) {
            this.buf[i] = 0;
        }
        this.bufOff = 0;
        this.cipher.reset();
    }
}
