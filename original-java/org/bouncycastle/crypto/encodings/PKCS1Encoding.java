package org.bouncycastle.crypto.encodings;

import java.security.AccessController;
import java.security.PrivilegedAction;
import java.security.SecureRandom;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;

public class PKCS1Encoding implements AsymmetricBlockCipher {
    private static final int HEADER_LENGTH = 10;
    public static final String NOT_STRICT_LENGTH_ENABLED_PROPERTY = "org.bouncycastle.pkcs1.not_strict";
    public static final String STRICT_LENGTH_ENABLED_PROPERTY = "org.bouncycastle.pkcs1.strict";
    private AsymmetricBlockCipher engine;
    private byte[] fallback = null;
    private boolean forEncryption;
    private boolean forPrivateKey;
    private int pLen = -1;
    private SecureRandom random;
    private boolean useStrictLength;

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher) {
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, int i) {
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.pLen = i;
    }

    public PKCS1Encoding(AsymmetricBlockCipher asymmetricBlockCipher, byte[] bArr) {
        this.engine = asymmetricBlockCipher;
        this.useStrictLength = useStrict();
        this.fallback = bArr;
        this.pLen = bArr.length;
    }

    private static int checkPkcs1Encoding(byte[] bArr, int i) {
        byte b = 0 | (bArr[0] ^ 2);
        int length = bArr.length - (i + 1);
        for (int i2 = 1; i2 < length; i2++) {
            byte b2 = bArr[i2];
            byte b3 = b2 | (b2 >> 1);
            byte b4 = b3 | (b3 >> 2);
            b |= ((b4 | (b4 >> 4)) & 1) - 1;
        }
        byte b5 = bArr[bArr.length - (i + 1)] | b;
        byte b6 = b5 | (b5 >> 1);
        byte b7 = b6 | (b6 >> 2);
        return (((b7 | (b7 >> 4)) & 1) - 1) ^ -1;
    }

    private byte[] decodeBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.pLen != -1) {
            return decodeBlockOrRandom(bArr, i, i2);
        }
        byte[] processBlock = this.engine.processBlock(bArr, i, i2);
        if (processBlock.length < getOutputBlockSize()) {
            throw new InvalidCipherTextException("block truncated");
        }
        byte b = processBlock[0];
        if (this.forPrivateKey) {
            if (b != 2) {
                throw new InvalidCipherTextException("unknown block type");
            }
        } else if (b != 1) {
            throw new InvalidCipherTextException("unknown block type");
        }
        if (!this.useStrictLength || processBlock.length == this.engine.getOutputBlockSize()) {
            int i3 = 1;
            while (i3 != processBlock.length) {
                byte b2 = processBlock[i3];
                if (b2 == 0) {
                    break;
                } else if (b != 1 || b2 == -1) {
                    i3++;
                } else {
                    throw new InvalidCipherTextException("block padding incorrect");
                }
            }
            int i4 = i3 + 1;
            if (i4 > processBlock.length || i4 < 10) {
                throw new InvalidCipherTextException("no data in block");
            }
            byte[] bArr2 = new byte[(processBlock.length - i4)];
            System.arraycopy(processBlock, i4, bArr2, 0, bArr2.length);
            return bArr2;
        }
        throw new InvalidCipherTextException("block incorrect size");
    }

    private byte[] decodeBlockOrRandom(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2;
        if (!this.forPrivateKey) {
            throw new InvalidCipherTextException("sorry, this method is only for decryption, not for signing");
        }
        byte[] processBlock = this.engine.processBlock(bArr, i, i2);
        if (this.fallback == null) {
            bArr2 = new byte[this.pLen];
            this.random.nextBytes(bArr2);
        } else {
            bArr2 = this.fallback;
        }
        if (processBlock.length < getOutputBlockSize()) {
            throw new InvalidCipherTextException("block truncated");
        } else if (!this.useStrictLength || processBlock.length == this.engine.getOutputBlockSize()) {
            int checkPkcs1Encoding = checkPkcs1Encoding(processBlock, this.pLen);
            byte[] bArr3 = new byte[this.pLen];
            for (int i3 = 0; i3 < this.pLen; i3++) {
                bArr3[i3] = (byte) ((processBlock[(processBlock.length - this.pLen) + i3] & (checkPkcs1Encoding ^ -1)) | (bArr2[i3] & checkPkcs1Encoding));
            }
            return bArr3;
        } else {
            throw new InvalidCipherTextException("block incorrect size");
        }
    }

    private byte[] encodeBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        int i3 = 1;
        if (i2 > getInputBlockSize()) {
            throw new IllegalArgumentException("input data too large");
        }
        byte[] bArr2 = new byte[this.engine.getInputBlockSize()];
        if (this.forPrivateKey) {
            bArr2[0] = 1;
            while (i3 != (bArr2.length - i2) - 1) {
                bArr2[i3] = -1;
                i3++;
            }
        } else {
            this.random.nextBytes(bArr2);
            bArr2[0] = 2;
            while (i3 != (bArr2.length - i2) - 1) {
                while (bArr2[i3] == 0) {
                    bArr2[i3] = (byte) this.random.nextInt();
                }
                i3++;
            }
        }
        bArr2[(bArr2.length - i2) - 1] = 0;
        System.arraycopy(bArr, i, bArr2, bArr2.length - i2, i2);
        return this.engine.processBlock(bArr2, 0, bArr2.length);
    }

    private boolean useStrict() {
        boolean z = false;
        String str = (String) AccessController.doPrivileged(new PrivilegedAction() {
            public Object run() {
                return System.getProperty(PKCS1Encoding.STRICT_LENGTH_ENABLED_PROPERTY);
            }
        });
        String str2 = (String) AccessController.doPrivileged(new PrivilegedAction() {
            public Object run() {
                return System.getProperty(PKCS1Encoding.NOT_STRICT_LENGTH_ENABLED_PROPERTY);
            }
        });
        if (str2 != null) {
            return !str2.equals("true");
        }
        if (str == null || str.equals("true")) {
            z = true;
        }
        return z;
    }

    public int getInputBlockSize() {
        int inputBlockSize = this.engine.getInputBlockSize();
        return this.forEncryption ? inputBlockSize - 10 : inputBlockSize;
    }

    public int getOutputBlockSize() {
        int outputBlockSize = this.engine.getOutputBlockSize();
        return this.forEncryption ? outputBlockSize : outputBlockSize - 10;
    }

    public AsymmetricBlockCipher getUnderlyingCipher() {
        return this.engine;
    }

    public void init(boolean z, CipherParameters cipherParameters) {
        AsymmetricKeyParameter asymmetricKeyParameter;
        if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.random = parametersWithRandom.getRandom();
            asymmetricKeyParameter = (AsymmetricKeyParameter) parametersWithRandom.getParameters();
        } else {
            asymmetricKeyParameter = (AsymmetricKeyParameter) cipherParameters;
            if (!asymmetricKeyParameter.isPrivate() && z) {
                this.random = new SecureRandom();
            }
        }
        this.engine.init(z, cipherParameters);
        this.forPrivateKey = asymmetricKeyParameter.isPrivate();
        this.forEncryption = z;
    }

    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        return this.forEncryption ? encodeBlock(bArr, i, i2) : decodeBlock(bArr, i, i2);
    }
}
