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
import org.bouncycastle.pqc.crypto.mceliece.McElieceFujisakiCipher;
import org.bouncycastle.pqc.jcajce.provider.util.AsymmetricHybridCipher;

public class McElieceFujisakiCipherSpi extends AsymmetricHybridCipher implements PKCSObjectIdentifiers, X509ObjectIdentifiers {
    private ByteArrayOutputStream buf = new ByteArrayOutputStream();
    private McElieceFujisakiCipher cipher;
    private Digest digest;

    public static class McElieceFujisaki extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki() {
            super(new SHA1Digest(), new McElieceFujisakiCipher());
        }
    }

    public static class McElieceFujisaki224 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki224() {
            super(new SHA224Digest(), new McElieceFujisakiCipher());
        }
    }

    public static class McElieceFujisaki256 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki256() {
            super(new SHA256Digest(), new McElieceFujisakiCipher());
        }
    }

    public static class McElieceFujisaki384 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki384() {
            super(new SHA384Digest(), new McElieceFujisakiCipher());
        }
    }

    public static class McElieceFujisaki512 extends McElieceFujisakiCipherSpi {
        public McElieceFujisaki512() {
            super(new SHA512Digest(), new McElieceFujisakiCipher());
        }
    }

    protected McElieceFujisakiCipherSpi(Digest digest2, McElieceFujisakiCipher mcElieceFujisakiCipher) {
        this.digest = digest2;
        this.cipher = mcElieceFujisakiCipher;
    }

    /* access modifiers changed from: protected */
    public int decryptOutputSize(int i) {
        return 0;
    }

    public byte[] doFinal(byte[] bArr, int i, int i2) throws BadPaddingException {
        update(bArr, i, i2);
        byte[] byteArray = this.buf.toByteArray();
        this.buf.reset();
        if (this.opMode == 1) {
            try {
                return this.cipher.messageEncrypt(byteArray);
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        } else {
            if (this.opMode == 2) {
                try {
                    return this.cipher.messageDecrypt(byteArray);
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
        return this.cipher.getKeySize(key instanceof PublicKey ? (McElieceCCA2KeyParameters) McElieceCCA2KeysToParams.generatePublicKeyParameter((PublicKey) key) : (McElieceCCA2KeyParameters) McElieceCCA2KeysToParams.generatePrivateKeyParameter((PrivateKey) key));
    }

    public String getName() {
        return "McElieceFujisakiCipher";
    }

    /* access modifiers changed from: protected */
    public void initCipherDecrypt(Key key, AlgorithmParameterSpec algorithmParameterSpec) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AsymmetricKeyParameter generatePrivateKeyParameter = McElieceCCA2KeysToParams.generatePrivateKeyParameter((PrivateKey) key);
        this.digest.reset();
        this.cipher.init(false, generatePrivateKeyParameter);
    }

    /* access modifiers changed from: protected */
    public void initCipherEncrypt(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        ParametersWithRandom parametersWithRandom = new ParametersWithRandom(McElieceCCA2KeysToParams.generatePublicKeyParameter((PublicKey) key), secureRandom);
        this.digest.reset();
        this.cipher.init(true, parametersWithRandom);
    }

    public byte[] messageDecrypt(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException, NoSuchAlgorithmException {
        boolean z = false;
        try {
            return this.cipher.messageDecrypt(bArr);
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
            return z;
        }
    }

    public byte[] messageEncrypt(byte[] bArr) throws IllegalBlockSizeException, BadPaddingException, NoSuchAlgorithmException {
        boolean z = false;
        try {
            return this.cipher.messageEncrypt(bArr);
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
