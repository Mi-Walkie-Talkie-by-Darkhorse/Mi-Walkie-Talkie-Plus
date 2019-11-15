package org.bouncycastle.crypto.engines;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;

public class RFC3394WrapEngine implements Wrapper {
    private BlockCipher engine;
    private boolean forWrapping;
    private byte[] iv;
    private KeyParameter param;
    private boolean wrapCipherMode;

    public RFC3394WrapEngine(BlockCipher blockCipher) {
        this(blockCipher, false);
    }

    public RFC3394WrapEngine(BlockCipher blockCipher, boolean z) {
        this.iv = new byte[]{-90, -90, -90, -90, -90, -90, -90, -90};
        this.engine = blockCipher;
        this.wrapCipherMode = !z;
    }

    public String getAlgorithmName() {
        return this.engine.getAlgorithmName();
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        this.forWrapping = z;
        CipherParameters cipherParameters2 = cipherParameters instanceof ParametersWithRandom ? ((ParametersWithRandom) cipherParameters).getParameters() : cipherParameters;
        if (cipherParameters2 instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters2;
        } else if (cipherParameters2 instanceof ParametersWithIV) {
            this.iv = ((ParametersWithIV) cipherParameters2).getIV();
            this.param = (KeyParameter) ((ParametersWithIV) cipherParameters2).getParameters();
            if (this.iv.length != 8) {
                throw new IllegalArgumentException("IV not equal to 8");
            }
        }
    }

    public byte[] unwrap(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.forWrapping) {
            throw new IllegalStateException("not set for unwrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new InvalidCipherTextException("unwrap data must be a multiple of 8 bytes");
        }
        byte[] bArr2 = new byte[(i2 - this.iv.length)];
        byte[] bArr3 = new byte[this.iv.length];
        byte[] bArr4 = new byte[(this.iv.length + 8)];
        System.arraycopy(bArr, i, bArr3, 0, this.iv.length);
        System.arraycopy(bArr, this.iv.length + i, bArr2, 0, i2 - this.iv.length);
        this.engine.init(!this.wrapCipherMode, this.param);
        int i4 = i3 - 1;
        for (int i5 = 5; i5 >= 0; i5--) {
            for (int i6 = i4; i6 >= 1; i6--) {
                System.arraycopy(bArr3, 0, bArr4, 0, this.iv.length);
                System.arraycopy(bArr2, (i6 - 1) * 8, bArr4, this.iv.length, 8);
                int i7 = (i4 * i5) + i6;
                int i8 = 1;
                while (i7 != 0) {
                    int length = this.iv.length - i8;
                    bArr4[length] = (byte) (((byte) i7) ^ bArr4[length]);
                    i7 >>>= 8;
                    i8++;
                }
                this.engine.processBlock(bArr4, 0, bArr4, 0);
                System.arraycopy(bArr4, 0, bArr3, 0, 8);
                System.arraycopy(bArr4, 8, bArr2, (i6 - 1) * 8, 8);
            }
        }
        if (Arrays.constantTimeAreEqual(bArr3, this.iv)) {
            return bArr2;
        }
        throw new InvalidCipherTextException("checksum failed");
    }

    public byte[] wrap(byte[] bArr, int i, int i2) {
        if (!this.forWrapping) {
            throw new IllegalStateException("not set for wrapping");
        }
        int i3 = i2 / 8;
        if (i3 * 8 != i2) {
            throw new DataLengthException("wrap data must be a multiple of 8 bytes");
        }
        byte[] bArr2 = new byte[(this.iv.length + i2)];
        byte[] bArr3 = new byte[(this.iv.length + 8)];
        System.arraycopy(this.iv, 0, bArr2, 0, this.iv.length);
        System.arraycopy(bArr, i, bArr2, this.iv.length, i2);
        this.engine.init(this.wrapCipherMode, this.param);
        int i4 = 0;
        while (true) {
            int i5 = i4;
            if (i5 == 6) {
                return bArr2;
            }
            for (int i6 = 1; i6 <= i3; i6++) {
                System.arraycopy(bArr2, 0, bArr3, 0, this.iv.length);
                System.arraycopy(bArr2, i6 * 8, bArr3, this.iv.length, 8);
                this.engine.processBlock(bArr3, 0, bArr3, 0);
                int i7 = (i3 * i5) + i6;
                int i8 = 1;
                while (i7 != 0) {
                    int length = this.iv.length - i8;
                    bArr3[length] = (byte) (((byte) i7) ^ bArr3[length]);
                    i7 >>>= 8;
                    i8++;
                }
                System.arraycopy(bArr3, 0, bArr2, 0, 8);
                System.arraycopy(bArr3, 8, bArr2, i6 * 8, 8);
            }
            i4 = i5 + 1;
        }
    }
}
