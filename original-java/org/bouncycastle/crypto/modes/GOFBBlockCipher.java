package org.bouncycastle.crypto.modes;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamBlockCipher;
import org.bouncycastle.crypto.params.ParametersWithIV;

public class GOFBBlockCipher extends StreamBlockCipher {
    static final int C1 = 16843012;
    static final int C2 = 16843009;
    private byte[] IV;
    int N3;
    int N4;
    private final int blockSize;
    private int byteCount;
    private final BlockCipher cipher;
    boolean firstStep = true;
    private byte[] ofbOutV;
    private byte[] ofbV;

    public GOFBBlockCipher(BlockCipher blockCipher) {
        super(blockCipher);
        this.cipher = blockCipher;
        this.blockSize = blockCipher.getBlockSize();
        if (this.blockSize != 8) {
            throw new IllegalArgumentException("GCTR only for 64 bit block ciphers");
        }
        this.IV = new byte[blockCipher.getBlockSize()];
        this.ofbV = new byte[blockCipher.getBlockSize()];
        this.ofbOutV = new byte[blockCipher.getBlockSize()];
    }

    private int bytesToint(byte[] bArr, int i) {
        return ((bArr[i + 3] << 24) & ViewCompat.MEASURED_STATE_MASK) + ((bArr[i + 2] << Tnaf.POW_2_WIDTH) & 16711680) + ((bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) + (bArr[i] & 255);
    }

    private void intTobytes(int i, byte[] bArr, int i2) {
        bArr[i2 + 3] = (byte) (i >>> 24);
        bArr[i2 + 2] = (byte) (i >>> 16);
        bArr[i2 + 1] = (byte) (i >>> 8);
        bArr[i2] = (byte) i;
    }

    /* access modifiers changed from: protected */
    public byte calculateByte(byte b) {
        if (this.byteCount == 0) {
            if (this.firstStep) {
                this.firstStep = false;
                this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
                this.N3 = bytesToint(this.ofbOutV, 0);
                this.N4 = bytesToint(this.ofbOutV, 4);
            }
            this.N3 += C2;
            this.N4 += C1;
            intTobytes(this.N3, this.ofbV, 0);
            intTobytes(this.N4, this.ofbV, 4);
            this.cipher.processBlock(this.ofbV, 0, this.ofbOutV, 0);
        }
        byte[] bArr = this.ofbOutV;
        int i = this.byteCount;
        this.byteCount = i + 1;
        byte b2 = (byte) (bArr[i] ^ b);
        if (this.byteCount == this.blockSize) {
            this.byteCount = 0;
            System.arraycopy(this.ofbV, this.blockSize, this.ofbV, 0, this.ofbV.length - this.blockSize);
            System.arraycopy(this.ofbOutV, 0, this.ofbV, this.ofbV.length - this.blockSize, this.blockSize);
        }
        return b2;
    }

    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName() + "/GCTR";
    }

    public int getBlockSize() {
        return this.blockSize;
    }

    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        this.firstStep = true;
        this.N3 = 0;
        this.N4 = 0;
        if (cipherParameters instanceof ParametersWithIV) {
            ParametersWithIV parametersWithIV = (ParametersWithIV) cipherParameters;
            byte[] iv = parametersWithIV.getIV();
            if (iv.length < this.IV.length) {
                System.arraycopy(iv, 0, this.IV, this.IV.length - iv.length, iv.length);
                for (int i = 0; i < this.IV.length - iv.length; i++) {
                    this.IV[i] = 0;
                }
            } else {
                System.arraycopy(iv, 0, this.IV, 0, this.IV.length);
            }
            reset();
            if (parametersWithIV.getParameters() != null) {
                this.cipher.init(true, parametersWithIV.getParameters());
                return;
            }
            return;
        }
        reset();
        if (cipherParameters != null) {
            this.cipher.init(true, cipherParameters);
        }
    }

    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        processBytes(bArr, i, this.blockSize, bArr2, i2);
        return this.blockSize;
    }

    public void reset() {
        this.firstStep = true;
        this.N3 = 0;
        this.N4 = 0;
        System.arraycopy(this.IV, 0, this.ofbV, 0, this.IV.length);
        this.byteCount = 0;
        this.cipher.reset();
    }
}
