package org.bouncycastle.pqc.jcajce.provider.mceliece;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.ByteArrayOutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.ParametersWithRandom;
import org.bouncycastle.pqc.crypto.mceliece.McElieceCCA2KeyParameters;
import org.bouncycastle.pqc.crypto.mceliece.McElieceKobaraImaiCipher;
import org.bouncycastle.pqc.jcajce.provider.util.AsymmetricHybridCipher;

public class McElieceKobaraImaiCipherSpi extends AsymmetricHybridCipher implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    private ByteArrayOutputStream buf;
    private McElieceKobaraImaiCipher cipher;
    private Digest digest;

    public static class McElieceKobaraImai extends McElieceKobaraImaiCipherSpi {
        public McElieceKobaraImai() {
            super(new SHA1Digest(), new McElieceKobaraImaiCipher());
        }
    }

    public static class McElieceKobaraImai224 extends McElieceKobaraImaiCipherSpi {
        public McElieceKobaraImai224() {
            super(new SHA224Digest(), new McElieceKobaraImaiCipher());
        }
    }

    public static class McElieceKobaraImai256 extends McElieceKobaraImaiCipherSpi {
        public McElieceKobaraImai256() {
            super(new SHA256Digest(), new McElieceKobaraImaiCipher());
        }
    }

    public static class McElieceKobaraImai384 extends McElieceKobaraImaiCipherSpi {
        public McElieceKobaraImai384() {
            super(new SHA384Digest(), new McElieceKobaraImaiCipher());
        }
    }

    public static class McElieceKobaraImai512 extends McElieceKobaraImaiCipherSpi {
        public McElieceKobaraImai512() {
            super(new SHA512Digest(), new McElieceKobaraImaiCipher());
        }
    }

    public McElieceKobaraImaiCipherSpi() {
        this.buf = new ByteArrayOutputStream();
        this.buf = new ByteArrayOutputStream();
    }

    protected McElieceKobaraImaiCipherSpi(Digest digest2, McElieceKobaraImaiCipher mcElieceKobaraImaiCipher) {
        this.buf = new ByteArrayOutputStream();
        this.digest = digest2;
        this.cipher = mcElieceKobaraImaiCipher;
        this.buf = new ByteArrayOutputStream();
    }

    private byte[] pad() {
        this.buf.write(1);
        byte[] byteArray = this.buf.toByteArray();
        this.buf.reset();
        return byteArray;
    }

    private byte[] unpad(byte[] bArr) throws BadPaddingException {
        int length = bArr.length - 1;
        while (length >= 0 && bArr[length] == 0) {
            length--;
        }
        if (bArr[length] != 1) {
            throw new BadPaddingException("invalid ciphertext");
        }
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    /* access modifiers changed from: protected */
    public int decryptOutputSize(int i) {
        return 0;
    }

    public byte[] doFinal(byte[] bArr, int i, int i2) throws BadPaddingException {
        update(bArr, i, i2);
        if (this.opMode == 1) {
            try {
                return this.cipher.messageEncrypt(pad());
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        } else {
            if (this.opMode == 2) {
                byte[] byteArray = this.buf.toByteArray();
                this.buf.reset();
                try {
                    return unpad(this.cipher.messageDecrypt(byteArray));
                } catch (Exception e2) {
                    ThrowableExtension.printStackTrace(e2);
                }
            }
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public int encryptOutputSize(int i) {
        return 0;
    }

    public int getKeySize(Key key) throws InvalidKeyException {
        if (key instanceof PublicKey) {
            return this.cipher.getKeySize((McElieceCCA2KeyParameters) McElieceCCA2KeysToParams.generatePublicKeyParameter((PublicKey) key));
        } else if (key instanceof PrivateKey) {
            return this.cipher.getKeySize((McElieceCCA2KeyParameters) McElieceCCA2KeysToParams.generatePrivateKeyParameter((PrivateKey) key));
        } else {
            throw new InvalidKeyException();
        }
    }

    public String getName() {
        return "McElieceKobaraImaiCipher";
    }

    /* access modifiers changed from: protected */
    public void initCipherDecrypt(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.buf.reset();
        AsymmetricKeyParameter generatePrivateKeyParameter = McElieceCCA2KeysToParams.generatePrivateKeyParameter((PrivateKey) key);
        this.digest.reset();
        this.cipher.init(false, generatePrivateKeyParameter);
    }

    /* access modifiers changed from: protected */
    public void initCipherEncrypt(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        this.buf.reset();
        ParametersWithRandom parametersWithRandom = new ParametersWithRandom(McElieceCCA2KeysToParams.generatePublicKeyParameter((PublicKey) key), secureRandom);
        this.digest.reset();
        this.cipher.init(true, parametersWithRandom);
    }

    public byte[] messageDecrypt() throws IllegalBlockSizeException, BadPaddingException, NoSuchAlgorithmException {
        boolean z = false;
        byte[] byteArray = this.buf.toByteArray();
        this.buf.reset();
        try {
            return unpad(this.cipher.messageDecrypt(byteArray));
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return z;
        }
    }

    public byte[] messageEncrypt() throws IllegalBlockSizeException, BadPaddingException, NoSuchAlgorithmException {
        boolean z = false;
        try {
            return this.cipher.messageEncrypt(pad());
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return z;
        }
    }

    public byte[] update(byte[] bArr, int i, int i2) {
        this.buf.write(bArr, i, i2);
        return new byte[0];
    }
}
