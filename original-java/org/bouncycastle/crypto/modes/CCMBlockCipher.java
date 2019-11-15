package org.bouncycastle.crypto.modes;

import java.io.ByteArrayOutputStream;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.macs.CBCBlockCipherMac;
import org.bouncycastle.crypto.params.AEADParameters;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;

public class CCMBlockCipher implements AEADBlockCipher {
    private ExposedByteArrayOutputStream associatedText = new ExposedByteArrayOutputStream();
    private int blockSize;
    private BlockCipher cipher;
    private ExposedByteArrayOutputStream data = new ExposedByteArrayOutputStream();
    private boolean forEncryption;
    private byte[] initialAssociatedText;
    private CipherParameters keyParam;
    private byte[] macBlock;
    private int macSize;
    private byte[] nonce;

    private class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        public ExposedByteArrayOutputStream() {
        }

        public byte[] getBuffer() {
            return this.buf;
        }
    }

    public CCMBlockCipher(BlockCipher blockCipher) {
        this.cipher = blockCipher;
        this.blockSize = blockCipher.getBlockSize();
        this.macBlock = new byte[this.blockSize];
        if (this.blockSize != 16) {
            throw new IllegalArgumentException("cipher required with a block size of 16.");
        }
    }

    private int calculateMac(byte[] bArr, int i, int i2, byte[] bArr2) {
        int i3;
        int i4 = 1;
        CBCBlockCipherMac cBCBlockCipherMac = new CBCBlockCipherMac(this.cipher, this.macSize * 8);
        cBCBlockCipherMac.init(this.keyParam);
        byte[] bArr3 = new byte[16];
        if (hasAssociatedText()) {
            bArr3[0] = (byte) (bArr3[0] | 64);
        }
        bArr3[0] = (byte) (bArr3[0] | ((((cBCBlockCipherMac.getMacSize() - 2) / 2) & 7) << 3));
        bArr3[0] = (byte) (bArr3[0] | (((15 - this.nonce.length) - 1) & 7));
        System.arraycopy(this.nonce, 0, bArr3, 1, this.nonce.length);
        int i5 = i2;
        while (i5 > 0) {
            bArr3[bArr3.length - i4] = (byte) (i5 & 255);
            i5 >>>= 8;
            i4++;
        }
        cBCBlockCipherMac.update(bArr3, 0, bArr3.length);
        if (hasAssociatedText()) {
            int associatedTextLength = getAssociatedTextLength();
            if (associatedTextLength < 65280) {
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 8));
                cBCBlockCipherMac.update((byte) associatedTextLength);
                i3 = 2;
            } else {
                cBCBlockCipherMac.update(-1);
                cBCBlockCipherMac.update(-2);
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 24));
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 16));
                cBCBlockCipherMac.update((byte) (associatedTextLength >> 8));
                cBCBlockCipherMac.update((byte) associatedTextLength);
                i3 = 6;
            }
            if (this.initialAssociatedText != null) {
                cBCBlockCipherMac.update(this.initialAssociatedText, 0, this.initialAssociatedText.length);
            }
            if (this.associatedText.size() > 0) {
                cBCBlockCipherMac.update(this.associatedText.getBuffer(), 0, this.associatedText.size());
            }
            int i6 = (i3 + associatedTextLength) % 16;
            if (i6 != 0) {
                while (i6 != 16) {
                    cBCBlockCipherMac.update(0);
                    i6++;
                }
            }
        }
        cBCBlockCipherMac.update(bArr, i, i2);
        return cBCBlockCipherMac.doFinal(bArr2, 0);
    }

    private int getAssociatedTextLength() {
        return (this.initialAssociatedText == null ? 0 : this.initialAssociatedText.length) + this.associatedText.size();
    }

    private boolean hasAssociatedText() {
        return getAssociatedTextLength() > 0;
    }

    public int doFinal(byte[] bArr, int i) throws IllegalStateException, InvalidCipherTextException {
        int processPacket = processPacket(this.data.getBuffer(), 0, this.data.size(), bArr, i);
        reset();
        return processPacket;
    }

    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/CCM";
    }

    public byte[] getMac() {
        byte[] bArr = new byte[this.macSize];
        System.arraycopy(this.macBlock, 0, bArr, 0, bArr.length);
        return bArr;
    }

    public int getOutputSize(int i) {
        int size = this.data.size() + i;
        if (this.forEncryption) {
            return size + this.macSize;
        }
        if (size < this.macSize) {
            return 0;
        }
        return size - this.macSize;
    }

    public BlockCipher getUnderlyingCipher() {
        return this.cipher;
    }

    public int getUpdateOutputSize(int i) {
        return 0;
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        CipherParameters parameters;
        this.forEncryption = z;
        if (cipherParameters instanceof AEADParameters) {
            AEADParameters aEADParameters = (AEADParameters) cipherParameters;
            this.nonce = aEADParameters.getNonce();
            this.initialAssociatedText = aEADParameters.getAssociatedText();
            this.macSize = aEADParameters.getMacSize() / 8;
            parameters = aEADParameters.getKey();
        } else if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            this.nonce = parametersWithIV.getIV();
            this.initialAssociatedText = null;
            this.macSize = this.macBlock.length / 2;
            parameters = parametersWithIV.getParameters();
        } else {
            throw new IllegalArgumentException("invalid parameters passed to CCM: " + cipherParameters.getClass().getName());
        }
        if (parameters != null) {
            this.keyParam = parameters;
        }
        if (this.nonce == null || this.nonce.length < 7 || this.nonce.length > 13) {
            throw new IllegalArgumentException("nonce must have length from 7 to 13 octets");
        }
        reset();
    }

    public void processAADByte(byte b) {
        this.associatedText.write(b);
    }

    public void processAADBytes(byte[] bArr, int i, int i2) {
        this.associatedText.write(bArr, i, i2);
    }

    public int processByte(byte b, byte[] bArr, int i) throws DataLengthException, IllegalStateException {
        this.data.write(b);
        return 0;
    }

    public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException, IllegalStateException {
        if (bArr.length < i + i2) {
            throw new DataLengthException("Input buffer too short");
        }
        this.data.write(bArr, i, i2);
        return 0;
    }

    public int processPacket(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalStateException, InvalidCipherTextException, DataLengthException {
        if (this.keyParam == null) {
            throw new IllegalStateException("CCM cipher unitialized.");
        }
        int length = 15 - this.nonce.length;
        if (length >= 4 || i2 < (1 << (length * 8))) {
            byte[] bArr3 = new byte[this.blockSize];
            bArr3[0] = (byte) ((length - 1) & 7);
            System.arraycopy(this.nonce, 0, bArr3, 1, this.nonce.length);
            SICBlockCipher sICBlockCipher = new SICBlockCipher(this.cipher);
            sICBlockCipher.init(this.forEncryption, new ParametersWithIV(this.keyParam, bArr3));
            if (this.forEncryption) {
                int i4 = i2 + this.macSize;
                if (bArr2.length < i4 + i3) {
                    throw new OutputLengthException("Output buffer too short.");
                }
                calculateMac(bArr, i, i2, this.macBlock);
                byte[] bArr4 = new byte[this.blockSize];
                sICBlockCipher.processBlock(this.macBlock, 0, bArr4, 0);
                int i5 = i3;
                int i6 = i;
                while (i6 < (i + i2) - this.blockSize) {
                    sICBlockCipher.processBlock(bArr, i6, bArr2, i5);
                    i5 += this.blockSize;
                    i6 += this.blockSize;
                }
                byte[] bArr5 = new byte[this.blockSize];
                System.arraycopy(bArr, i6, bArr5, 0, (i2 + i) - i6);
                sICBlockCipher.processBlock(bArr5, 0, bArr5, 0);
                System.arraycopy(bArr5, 0, bArr2, i5, (i2 + i) - i6);
                System.arraycopy(bArr4, 0, bArr2, i3 + i2, this.macSize);
                return i4;
            } else if (i2 < this.macSize) {
                throw new InvalidCipherTextException("data too short");
            } else {
                int i7 = i2 - this.macSize;
                if (bArr2.length < i7 + i3) {
                    throw new OutputLengthException("Output buffer too short.");
                }
                System.arraycopy(bArr, i + i7, this.macBlock, 0, this.macSize);
                sICBlockCipher.processBlock(this.macBlock, 0, this.macBlock, 0);
                for (int i8 = this.macSize; i8 != this.macBlock.length; i8++) {
                    this.macBlock[i8] = 0;
                }
                int i9 = i3;
                int i10 = i;
                while (i10 < (i + i7) - this.blockSize) {
                    sICBlockCipher.processBlock(bArr, i10, bArr2, i9);
                    i9 += this.blockSize;
                    i10 += this.blockSize;
                }
                byte[] bArr6 = new byte[this.blockSize];
                System.arraycopy(bArr, i10, bArr6, 0, i7 - (i10 - i));
                sICBlockCipher.processBlock(bArr6, 0, bArr6, 0);
                System.arraycopy(bArr6, 0, bArr2, i9, i7 - (i10 - i));
                byte[] bArr7 = new byte[this.blockSize];
                calculateMac(bArr2, i3, i7, bArr7);
                if (Arrays.constantTimeAreEqual(this.macBlock, bArr7)) {
                    return i7;
                }
                throw new InvalidCipherTextException("mac check in CCM failed");
            }
        } else {
            throw new IllegalStateException("CCM packet too large for choice of q.");
        }
    }

    public byte[] processPacket(byte[] bArr, int i, int i2) throws IllegalStateException, InvalidCipherTextException {
        byte[] bArr2;
        if (this.forEncryption) {
            bArr2 = new byte[(this.macSize + i2)];
        } else if (i2 < this.macSize) {
            throw new InvalidCipherTextException("data too short");
        } else {
            bArr2 = new byte[(i2 - this.macSize)];
        }
        processPacket(bArr, i, i2, bArr2, 0);
        return bArr2;
    }

    public void reset() {
        this.cipher.reset();
        this.associatedText.reset();
        this.data.reset();
    }
}
