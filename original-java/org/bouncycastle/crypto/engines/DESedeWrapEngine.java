package org.bouncycastle.crypto.engines;

import java.security.SecureRandom;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.util.Arrays;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class DESedeWrapEngine implements Wrapper {
    private static final byte[] IV2 = {74, -35, -94, HttpConstants.COMMA, 121, -24, 33, 5};
    byte[] digest = new byte[20];
    private CBCBlockCipher engine;
    private boolean forWrapping;
    private byte[] iv;
    private KeyParameter param;
    private ParametersWithIV paramPlusIV;
    Digest sha1 = new SHA1Digest();

    private byte[] calculateCMSKeyChecksum(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        this.sha1.update(bArr, 0, bArr.length);
        this.sha1.doFinal(this.digest, 0);
        System.arraycopy(this.digest, 0, bArr2, 0, 8);
        return bArr2;
    }

    private boolean checkCMSKeyChecksum(byte[] bArr, byte[] bArr2) {
        return Arrays.constantTimeAreEqual(calculateCMSKeyChecksum(bArr), bArr2);
    }

    private static byte[] reverse(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            bArr2[i] = bArr[bArr.length - (i + 1)];
        }
        return bArr2;
    }

    public String getAlgorithmName() {
        return "DESede";
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        CipherParameters cipherParameters2;
        this.forWrapping = z;
        this.engine = new CBCBlockCipher(new DESedeEngine());
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            CipherParameters parameters = parametersWithRandom.getParameters();
            cipherParameters2 = parameters;
            secureRandom = parametersWithRandom.getRandom();
        } else {
            secureRandom = new SecureRandom();
            cipherParameters2 = cipherParameters;
        }
        if (cipherParameters2 instanceof KeyParameter) {
            this.param = (KeyParameter) cipherParameters2;
            if (this.forWrapping) {
                this.iv = new byte[8];
                secureRandom.nextBytes(this.iv);
                this.paramPlusIV = new ParametersWithIV(this.param, this.iv);
            }
        } else if (cipherParameters2 instanceof ParametersWithIV) {
            this.paramPlusIV = (ParametersWithIV) cipherParameters2;
            this.iv = this.paramPlusIV.getIV();
            this.param = (KeyParameter) this.paramPlusIV.getParameters();
            if (!this.forWrapping) {
                throw new IllegalArgumentException("You should not supply an IV for unwrapping");
            } else if (this.iv == null || this.iv.length != 8) {
                throw new IllegalArgumentException("IV is not 8 octets");
            }
        }
    }

    public byte[] unwrap(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.forWrapping) {
            throw new IllegalStateException("Not set for unwrapping");
        } else if (bArr == null) {
            throw new InvalidCipherTextException("Null pointer as ciphertext");
        } else {
            int blockSize = this.engine.getBlockSize();
            if (i2 % blockSize != 0) {
                throw new InvalidCipherTextException("Ciphertext not multiple of " + blockSize);
            }
            this.engine.init(false, new ParametersWithIV(this.param, IV2));
            byte[] bArr2 = new byte[i2];
            for (int i3 = 0; i3 != i2; i3 += blockSize) {
                this.engine.processBlock(bArr, i + i3, bArr2, i3);
            }
            byte[] reverse = reverse(bArr2);
            this.iv = new byte[8];
            byte[] bArr3 = new byte[(reverse.length - 8)];
            System.arraycopy(reverse, 0, this.iv, 0, 8);
            System.arraycopy(reverse, 8, bArr3, 0, reverse.length - 8);
            this.paramPlusIV = new ParametersWithIV(this.param, this.iv);
            this.engine.init(false, this.paramPlusIV);
            byte[] bArr4 = new byte[bArr3.length];
            for (int i4 = 0; i4 != bArr4.length; i4 += blockSize) {
                this.engine.processBlock(bArr3, i4, bArr4, i4);
            }
            byte[] bArr5 = new byte[(bArr4.length - 8)];
            byte[] bArr6 = new byte[8];
            System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length - 8);
            System.arraycopy(bArr4, bArr4.length - 8, bArr6, 0, 8);
            if (checkCMSKeyChecksum(bArr5, bArr6)) {
                return bArr5;
            }
            throw new InvalidCipherTextException("Checksum inside ciphertext is corrupted");
        }
    }

    public byte[] wrap(byte[] bArr, int i, int i2) {
        if (!this.forWrapping) {
            throw new IllegalStateException("Not initialized for wrapping");
        }
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        byte[] calculateCMSKeyChecksum = calculateCMSKeyChecksum(bArr2);
        byte[] bArr3 = new byte[(bArr2.length + calculateCMSKeyChecksum.length)];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(calculateCMSKeyChecksum, 0, bArr3, bArr2.length, calculateCMSKeyChecksum.length);
        int blockSize = this.engine.getBlockSize();
        if (bArr3.length % blockSize != 0) {
            throw new IllegalStateException("Not multiple of block length");
        }
        this.engine.init(true, this.paramPlusIV);
        byte[] bArr4 = new byte[bArr3.length];
        for (int i3 = 0; i3 != bArr3.length; i3 += blockSize) {
            this.engine.processBlock(bArr3, i3, bArr4, i3);
        }
        byte[] bArr5 = new byte[(this.iv.length + bArr4.length)];
        System.arraycopy(this.iv, 0, bArr5, 0, this.iv.length);
        System.arraycopy(bArr4, 0, bArr5, this.iv.length, bArr4.length);
        byte[] reverse = reverse(bArr5);
        this.engine.init(true, new ParametersWithIV(this.param, IV2));
        for (int i4 = 0; i4 != reverse.length; i4 += blockSize) {
            this.engine.processBlock(reverse, i4, reverse, i4);
        }
        return reverse;
    }
}
