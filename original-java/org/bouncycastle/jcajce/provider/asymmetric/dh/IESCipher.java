package org.bouncycastle.jcajce.provider.asymmetric.dh;

import java.io.ByteArrayOutputStream;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.CipherSpi;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.DHKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.InvalidCipherTextException;
import org.bouncycastle.crypto.KeyEncoder;
import org.bouncycastle.crypto.KeyParser;
import org.bouncycastle.crypto.agreement.DHBasicAgreement;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.engines.DESedeEngine;
import org.bouncycastle.crypto.engines.IESEngine;
import org.bouncycastle.crypto.engines.OldIESEngine;
import org.bouncycastle.crypto.generators.DHKeyPairGenerator;
import org.bouncycastle.crypto.generators.EphemeralKeyPairGenerator;
import org.bouncycastle.crypto.generators.KDF2BytesGenerator;
import org.bouncycastle.crypto.macs.HMac;
import org.bouncycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHKeyParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.crypto.params.IESWithCipherParameters;
import org.bouncycastle.crypto.parsers.DHIESPublicKeyParser;
import org.bouncycastle.jcajce.provider.asymmetric.util.DHUtil;
import org.bouncycastle.jcajce.provider.asymmetric.util.IESUtil;
import org.bouncycastle.jcajce.util.BCJcaJceHelper;
import org.bouncycastle.jcajce.util.JcaJceHelper;
import org.bouncycastle.jce.interfaces.IESKey;
import org.bouncycastle.jce.spec.IESParameterSpec;
import org.bouncycastle.util.BigIntegers;
import org.bouncycastle.util.Strings;

public class IESCipher extends CipherSpi {
    private ByteArrayOutputStream buffer = new ByteArrayOutputStream();
    private boolean dhaesMode = false;
    private IESEngine engine;
    private AlgorithmParameters engineParam = null;
    private IESParameterSpec engineSpec = null;
    private final JcaJceHelper helper = new BCJcaJceHelper();
    private AsymmetricKeyParameter key;
    private AsymmetricKeyParameter otherKeyParameter = null;
    private SecureRandom random;
    private int state = -1;

    public static class IES extends IESCipher {
        public IES() {
            super(new IESEngine(new DHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest())));
        }
    }

    public static class IESwithAES extends IESCipher {
        public IESwithAES() {
            super(new IESEngine(new DHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(new AESEngine())));
        }
    }

    public static class IESwithDESede extends IESCipher {
        public IESwithDESede() {
            super(new IESEngine(new DHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(new DESedeEngine())));
        }
    }

    public static class OldIES extends IESCipher {
        public OldIES() {
            super(new OldIESEngine(new DHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest())));
        }
    }

    public static class OldIESwithAES extends OldIESwithCipher {
        public OldIESwithAES() {
            super(new AESEngine());
        }
    }

    public static class OldIESwithCipher extends IESCipher {
        public OldIESwithCipher(BlockCipher blockCipher) {
            super(new OldIESEngine(new DHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()), new HMac(new SHA1Digest()), new PaddedBufferedBlockCipher(blockCipher)));
        }
    }

    public static class OldIESwithDESede extends OldIESwithCipher {
        public OldIESwithDESede() {
            super(new DESedeEngine());
        }
    }

    public IESCipher(IESEngine iESEngine) {
        this.engine = iESEngine;
    }

    public IESCipher(OldIESEngine oldIESEngine) {
        this.engine = oldIESEngine;
    }

    public int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException, IllegalBlockSizeException, BadPaddingException {
        byte[] engineDoFinal = engineDoFinal(bArr, i, i2);
        System.arraycopy(engineDoFinal, 0, bArr2, i3, engineDoFinal.length);
        return engineDoFinal.length;
    }

    public byte[] engineDoFinal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        if (i2 != 0) {
            this.buffer.write(bArr, i, i2);
        }
        byte[] byteArray = this.buffer.toByteArray();
        this.buffer.reset();
        IESWithCipherParameters iESWithCipherParameters = new IESWithCipherParameters(this.engineSpec.getDerivationV(), this.engineSpec.getEncodingV(), this.engineSpec.getMacKeySize(), this.engineSpec.getCipherKeySize());
        DHParameters parameters = ((DHKeyParameters) this.key).getParameters();
        if (this.otherKeyParameter != null) {
            try {
                if (this.state == 1 || this.state == 3) {
                    this.engine.init(true, this.otherKeyParameter, this.key, iESWithCipherParameters);
                } else {
                    this.engine.init(false, this.key, this.otherKeyParameter, iESWithCipherParameters);
                }
                return this.engine.processBlock(byteArray, 0, byteArray.length);
            } catch (Exception e) {
                throw new BadPaddingException(e.getMessage());
            }
        } else if (this.state == 1 || this.state == 3) {
            DHKeyPairGenerator dHKeyPairGenerator = new DHKeyPairGenerator();
            dHKeyPairGenerator.init(new DHKeyGenerationParameters(this.random, parameters));
            try {
                this.engine.init(this.key, (CipherParameters) iESWithCipherParameters, new EphemeralKeyPairGenerator(dHKeyPairGenerator, new KeyEncoder() {
                    public byte[] getEncoded(AsymmetricKeyParameter asymmetricKeyParameter) {
                        byte[] bArr = new byte[((((DHKeyParameters) asymmetricKeyParameter).getParameters().getP().bitLength() + 7) / 8)];
                        byte[] asUnsignedByteArray = BigIntegers.asUnsignedByteArray(((DHPublicKeyParameters) asymmetricKeyParameter).getY());
                        if (asUnsignedByteArray.length > bArr.length) {
                            throw new IllegalArgumentException("Senders's public key longer than expected.");
                        }
                        System.arraycopy(asUnsignedByteArray, 0, bArr, bArr.length - asUnsignedByteArray.length, asUnsignedByteArray.length);
                        return bArr;
                    }
                }));
                return this.engine.processBlock(byteArray, 0, byteArray.length);
            } catch (Exception e2) {
                throw new BadPaddingException(e2.getMessage());
            }
        } else if (this.state == 2 || this.state == 4) {
            try {
                this.engine.init(this.key, (CipherParameters) iESWithCipherParameters, (KeyParser) new DHIESPublicKeyParser(((DHKeyParameters) this.key).getParameters()));
                return this.engine.processBlock(byteArray, 0, byteArray.length);
            } catch (InvalidCipherTextException e3) {
                throw new BadPaddingException(e3.getMessage());
            }
        } else {
            throw new IllegalStateException("IESCipher not initialised");
        }
    }

    public int engineGetBlockSize() {
        if (this.engine.getCipher() != null) {
            return this.engine.getCipher().getBlockSize();
        }
        return 0;
    }

    public byte[] engineGetIV() {
        return null;
    }

    public int engineGetKeySize(Key key2) {
        if (key2 instanceof DHKey) {
            return ((DHKey) key2).getParams().getP().bitLength();
        }
        throw new IllegalArgumentException("not a DH key");
    }

    public int engineGetOutputSize(int i) {
        if (this.key == null) {
            throw new IllegalStateException("cipher not initialised");
        }
        int macSize = this.engine.getMac().getMacSize();
        int i2 = this.otherKeyParameter == null ? (((((DHKeyParameters) this.key).getParameters().getP().bitLength() + 7) * 2) / 8) + 1 : 0;
        if (this.engine.getCipher() != null) {
            if (this.state == 1 || this.state == 3) {
                i = this.engine.getCipher().getOutputSize(i);
            } else if (this.state == 2 || this.state == 4) {
                i = this.engine.getCipher().getOutputSize((i - macSize) - i2);
            } else {
                throw new IllegalStateException("cipher not initialised");
            }
        }
        if (this.state == 1 || this.state == 3) {
            return i2 + macSize + this.buffer.size() + i;
        }
        if (this.state == 2 || this.state == 4) {
            return ((this.buffer.size() - macSize) - i2) + i;
        }
        throw new IllegalStateException("IESCipher not initialised");
    }

    public AlgorithmParameters engineGetParameters() {
        if (this.engineParam == null && this.engineSpec != null) {
            try {
                this.engineParam = this.helper.createAlgorithmParameters("IES");
                this.engineParam.init(this.engineSpec);
            } catch (Exception e) {
                throw new RuntimeException(e.toString());
            }
        }
        return this.engineParam;
    }

    public void engineInit(int i, Key key2, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec = null;
        if (algorithmParameters != null) {
            try {
                algorithmParameterSpec = algorithmParameters.getParameterSpec(IESParameterSpec.class);
            } catch (Exception e) {
                throw new InvalidAlgorithmParameterException("cannot recognise parameters: " + e.toString());
            }
        }
        this.engineParam = algorithmParameters;
        engineInit(i, key2, algorithmParameterSpec, secureRandom);
    }

    public void engineInit(int i, Key key2, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key2, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new IllegalArgumentException("can't handle supplied parameter spec");
        }
    }

    public void engineInit(int i, Key key2, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException, InvalidKeyException {
        if (algorithmParameterSpec == null) {
            this.engineSpec = IESUtil.guessParameterSpec(this.engine.getCipher());
        } else if (algorithmParameterSpec instanceof IESParameterSpec) {
            this.engineSpec = (IESParameterSpec) algorithmParameterSpec;
        } else {
            throw new InvalidAlgorithmParameterException("must be passed IES parameters");
        }
        if (i == 1 || i == 3) {
            if (key2 instanceof DHPublicKey) {
                this.key = DHUtil.generatePublicKeyParameter((PublicKey) key2);
            } else if (key2 instanceof IESKey) {
                IESKey iESKey = (IESKey) key2;
                this.key = DHUtil.generatePublicKeyParameter(iESKey.getPublic());
                this.otherKeyParameter = DHUtil.generatePrivateKeyParameter(iESKey.getPrivate());
            } else {
                throw new InvalidKeyException("must be passed recipient's public DH key for encryption");
            }
        } else if (i != 2 && i != 4) {
            throw new InvalidKeyException("must be passed EC key");
        } else if (key2 instanceof DHPrivateKey) {
            this.key = DHUtil.generatePrivateKeyParameter((PrivateKey) key2);
        } else if (key2 instanceof IESKey) {
            IESKey iESKey2 = (IESKey) key2;
            this.otherKeyParameter = DHUtil.generatePublicKeyParameter(iESKey2.getPublic());
            this.key = DHUtil.generatePrivateKeyParameter(iESKey2.getPrivate());
        } else {
            throw new InvalidKeyException("must be passed recipient's private DH key for decryption");
        }
        this.random = secureRandom;
        this.state = i;
        this.buffer.reset();
    }

    public void engineSetMode(String str) throws NoSuchAlgorithmException {
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NONE")) {
            this.dhaesMode = false;
        } else if (upperCase.equals("DHAES")) {
            this.dhaesMode = true;
        } else {
            throw new IllegalArgumentException("can't support mode " + str);
        }
    }

    public void engineSetPadding(String str) throws NoSuchPaddingException {
        String upperCase = Strings.toUpperCase(str);
        if (!upperCase.equals("NOPADDING") && !upperCase.equals("PKCS5PADDING") && !upperCase.equals("PKCS7PADDING")) {
            throw new NoSuchPaddingException("padding not available with IESCipher");
        }
    }

    public int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        this.buffer.write(bArr, i, i2);
        return 0;
    }

    public byte[] engineUpdate(byte[] bArr, int i, int i2) {
        this.buffer.write(bArr, i, i2);
        return null;
    }
}
