package org.bouncycastle.crypto.engines;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.BufferedBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.EphemeralKeyPair;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.KeyParser;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.IESParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.params.KDFParameters;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Pack;

public class IESEngine {
    private byte[] IV;
    byte[] V;
    BasicAgreement agree;
    BufferedBlockCipher cipher;
    boolean forEncryption;
    DerivationFunction kdf;
    private EphemeralKeyPairGenerator keyPairGenerator;
    private KeyParser keyParser;
    Mac mac;
    byte[] macBuf;
    IESParameters param;
    CipherParameters privParam;
    CipherParameters pubParam;

    public IESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac2) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac2;
        this.macBuf = new byte[mac2.getMacSize()];
        this.cipher = null;
    }

    public IESEngine(BasicAgreement basicAgreement, DerivationFunction derivationFunction, Mac mac2, BufferedBlockCipher bufferedBlockCipher) {
        this.agree = basicAgreement;
        this.kdf = derivationFunction;
        this.mac = mac2;
        this.macBuf = new byte[mac2.getMacSize()];
        this.cipher = bufferedBlockCipher;
    }

    private byte[] decryptBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2;
        int doFinal;
        byte[] bArr3;
        if (i2 < this.V.length + this.mac.getMacSize()) {
            throw new InvalidCipherTextException("Length of input must be greater than the MAC and V combined");
        }
        if (this.cipher == null) {
            byte[] bArr4 = new byte[((i2 - this.V.length) - this.mac.getMacSize())];
            bArr3 = new byte[(this.param.getMacKeySize() / 8)];
            byte[] bArr5 = new byte[(bArr4.length + bArr3.length)];
            this.kdf.generateBytes(bArr5, 0, bArr5.length);
            if (this.V.length != 0) {
                System.arraycopy(bArr5, 0, bArr3, 0, bArr3.length);
                System.arraycopy(bArr5, bArr3.length, bArr4, 0, bArr4.length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, bArr4.length);
                System.arraycopy(bArr5, bArr4.length, bArr3, 0, bArr3.length);
            }
            bArr2 = new byte[bArr4.length];
            for (int i3 = 0; i3 != bArr4.length; i3++) {
                bArr2[i3] = (byte) (bArr[(this.V.length + i) + i3] ^ bArr4[i3]);
            }
            doFinal = bArr4.length;
        } else {
            byte[] bArr6 = new byte[(((IESWithCipherParameters) this.param).getCipherKeySize() / 8)];
            byte[] bArr7 = new byte[(this.param.getMacKeySize() / 8)];
            byte[] bArr8 = new byte[(bArr6.length + bArr7.length)];
            this.kdf.generateBytes(bArr8, 0, bArr8.length);
            System.arraycopy(bArr8, 0, bArr6, 0, bArr6.length);
            System.arraycopy(bArr8, bArr6.length, bArr7, 0, bArr7.length);
            if (this.IV != null) {
                this.cipher.init(false, new ParametersWithIV(new KeyParameter(bArr6), this.IV));
            } else {
                this.cipher.init(false, new KeyParameter(bArr6));
            }
            bArr2 = new byte[this.cipher.getOutputSize((i2 - this.V.length) - this.mac.getMacSize())];
            int processBytes = this.cipher.processBytes(bArr, i + this.V.length, (i2 - this.V.length) - this.mac.getMacSize(), bArr2, 0);
            doFinal = processBytes + this.cipher.doFinal(bArr2, processBytes);
            bArr3 = bArr7;
        }
        byte[] encodingV = this.param.getEncodingV();
        byte[] bArr9 = null;
        if (this.V.length != 0) {
            bArr9 = getLengthTag(encodingV);
        }
        int i4 = i + i2;
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i4 - this.mac.getMacSize(), i4);
        byte[] bArr10 = new byte[copyOfRange.length];
        this.mac.init(new KeyParameter(bArr3));
        this.mac.update(bArr, this.V.length + i, (i2 - this.V.length) - bArr10.length);
        if (encodingV != null) {
            this.mac.update(encodingV, 0, encodingV.length);
        }
        if (this.V.length != 0) {
            this.mac.update(bArr9, 0, bArr9.length);
        }
        this.mac.doFinal(bArr10, 0);
        if (Arrays.constantTimeAreEqual(copyOfRange, bArr10)) {
            return Arrays.copyOfRange(bArr2, 0, doFinal);
        }
        throw new InvalidCipherTextException("Invalid MAC.");
    }

    private byte[] encryptBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        byte[] bArr2;
        byte[] bArr3;
        if (this.cipher == null) {
            byte[] bArr4 = new byte[i2];
            bArr3 = new byte[(this.param.getMacKeySize() / 8)];
            byte[] bArr5 = new byte[(bArr4.length + bArr3.length)];
            this.kdf.generateBytes(bArr5, 0, bArr5.length);
            if (this.V.length != 0) {
                System.arraycopy(bArr5, 0, bArr3, 0, bArr3.length);
                System.arraycopy(bArr5, bArr3.length, bArr4, 0, bArr4.length);
            } else {
                System.arraycopy(bArr5, 0, bArr4, 0, bArr4.length);
                System.arraycopy(bArr5, i2, bArr3, 0, bArr3.length);
            }
            bArr2 = new byte[i2];
            for (int i3 = 0; i3 != i2; i3++) {
                bArr2[i3] = (byte) (bArr[i + i3] ^ bArr4[i3]);
            }
        } else {
            byte[] bArr6 = new byte[(((IESWithCipherParameters) this.param).getCipherKeySize() / 8)];
            byte[] bArr7 = new byte[(this.param.getMacKeySize() / 8)];
            byte[] bArr8 = new byte[(bArr6.length + bArr7.length)];
            this.kdf.generateBytes(bArr8, 0, bArr8.length);
            System.arraycopy(bArr8, 0, bArr6, 0, bArr6.length);
            System.arraycopy(bArr8, bArr6.length, bArr7, 0, bArr7.length);
            if (this.IV != null) {
                this.cipher.init(true, new ParametersWithIV(new KeyParameter(bArr6), this.IV));
            } else {
                this.cipher.init(true, new KeyParameter(bArr6));
            }
            bArr2 = new byte[this.cipher.getOutputSize(i2)];
            int processBytes = this.cipher.processBytes(bArr, i, i2, bArr2, 0);
            i2 = processBytes + this.cipher.doFinal(bArr2, processBytes);
            bArr3 = bArr7;
        }
        byte[] encodingV = this.param.getEncodingV();
        byte[] bArr9 = null;
        if (this.V.length != 0) {
            bArr9 = getLengthTag(encodingV);
        }
        byte[] bArr10 = new byte[this.mac.getMacSize()];
        this.mac.init(new KeyParameter(bArr3));
        this.mac.update(bArr2, 0, bArr2.length);
        if (encodingV != null) {
            this.mac.update(encodingV, 0, encodingV.length);
        }
        if (this.V.length != 0) {
            this.mac.update(bArr9, 0, bArr9.length);
        }
        this.mac.doFinal(bArr10, 0);
        byte[] bArr11 = new byte[(this.V.length + i2 + bArr10.length)];
        System.arraycopy(this.V, 0, bArr11, 0, this.V.length);
        System.arraycopy(bArr2, 0, bArr11, this.V.length, i2);
        System.arraycopy(bArr10, 0, bArr11, this.V.length + i2, bArr10.length);
        return bArr11;
    }

    private void extractParams(CipherParameters cipherParameters) {
        if (cipherParameters instanceof ParametersWithIV) {
            this.IV = ((ParametersWithIV) cipherParameters).getIV();
            this.param = (IESParameters) ((ParametersWithIV) cipherParameters).getParameters();
            return;
        }
        this.IV = null;
        this.param = (IESParameters) cipherParameters;
    }

    public BufferedBlockCipher getCipher() {
        return this.cipher;
    }

    /* access modifiers changed from: protected */
    public byte[] getLengthTag(byte[] bArr) {
        byte[] bArr2 = new byte[8];
        if (bArr != null) {
            Pack.longToBigEndian(((long) bArr.length) * 8, bArr2, 0);
        }
        return bArr2;
    }

    public Mac getMac() {
        return this.mac;
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, KeyParser keyParser2) {
        this.forEncryption = false;
        this.privParam = asymmetricKeyParameter;
        this.keyParser = keyParser2;
        extractParams(cipherParameters);
    }

    public void init(AsymmetricKeyParameter asymmetricKeyParameter, CipherParameters cipherParameters, EphemeralKeyPairGenerator ephemeralKeyPairGenerator) {
        this.forEncryption = true;
        this.pubParam = asymmetricKeyParameter;
        this.keyPairGenerator = ephemeralKeyPairGenerator;
        extractParams(cipherParameters);
    }

    public void init(boolean z, CipherParameters cipherParameters, CipherParameters cipherParameters2, CipherParameters cipherParameters3) {
        this.forEncryption = z;
        this.privParam = cipherParameters;
        this.pubParam = cipherParameters2;
        this.V = new byte[0];
        extractParams(cipherParameters3);
    }

    public byte[] processBlock(byte[] bArr, int i, int i2) throws InvalidCipherTextException {
        if (this.forEncryption) {
            if (this.keyPairGenerator != null) {
                EphemeralKeyPair generate = this.keyPairGenerator.generate();
                this.privParam = generate.getKeyPair().getPrivate();
                this.V = generate.getEncodedPublicKey();
            }
        } else if (this.keyParser != null) {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr, i, i2);
            try {
                this.pubParam = this.keyParser.readKey(byteArrayInputStream);
                this.V = Arrays.copyOfRange(bArr, i, (i2 - byteArrayInputStream.available()) + i);
            } catch (IOException e) {
                throw new InvalidCipherTextException("unable to recover ephemeral public key: " + e.getMessage(), e);
            }
        }
        this.agree.init(this.privParam);
        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(this.agree.getFieldSize(), this.agree.calculateAgreement(this.pubParam));
        if (this.V.length != 0) {
            byte[] concatenate = Arrays.concatenate(this.V, asUnsignedByteArray);
            Arrays.fill(asUnsignedByteArray, 0);
            asUnsignedByteArray = concatenate;
        }
        try {
            this.kdf.init(new KDFParameters(asUnsignedByteArray, this.param.getDerivationV()));
            return this.forEncryption ? encryptBlock(bArr, i, i2) : decryptBlock(bArr, i, i2);
        } finally {
            Arrays.fill(asUnsignedByteArray, 0);
        }
    }
}
