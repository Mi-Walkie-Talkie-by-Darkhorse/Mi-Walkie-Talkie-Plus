package org.bouncycastle.jcajce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.asn1.x9.X9IntegerConverter;
import org.bouncycastle.crypto.BasicAgreement;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DerivationFunction;
import org.bouncycastle.crypto.agreement.ECDHBasicAgreement;
import org.bouncycastle.crypto.agreement.ECDHCBasicAgreement;
import org.bouncycastle.crypto.agreement.ECMQVBasicAgreement;
import org.bouncycastle.crypto.agreement.kdf.ConcatenationKDFGenerator;
import org.bouncycastle.crypto.digests.SHA1Digest;
import org.bouncycastle.crypto.digests.SHA224Digest;
import org.bouncycastle.crypto.digests.SHA256Digest;
import org.bouncycastle.crypto.digests.SHA384Digest;
import org.bouncycastle.crypto.digests.SHA512Digest;
import org.bouncycastle.crypto.generators.KDF2BytesGenerator;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.MQVPublicParameters;
import org.bouncycastle.jcajce.provider.asymmetric.util.BaseAgreementSpi;
import org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.bouncycastle.jcajce.spec.MQVParameterSpec;
import org.bouncycastle.jcajce.spec.UserKeyingMaterialSpec;
import org.bouncycastle.jce.interfaces.ECPublicKey;
import org.bouncycastle.jce.interfaces.MQVPublicKey;

public class KeyAgreementSpi extends BaseAgreementSpi {
    private static final X9IntegerConverter converter = new X9IntegerConverter();
    private BasicAgreement agreement;
    private String kaAlgorithm;
    private MQVParameterSpec mqvParameters;
    private ECDomainParameters parameters;

    public static class CDHwithSHA1KDFAndSharedInfo extends KeyAgreementSpi {
        public CDHwithSHA1KDFAndSharedInfo() {
            super("ECCDHwithSHA1KDF", new ECDHCBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()));
        }
    }

    public static class CDHwithSHA224KDFAndSharedInfo extends KeyAgreementSpi {
        public CDHwithSHA224KDFAndSharedInfo() {
            super("ECCDHwithSHA224KDF", new ECDHCBasicAgreement(), new KDF2BytesGenerator(new SHA224Digest()));
        }
    }

    public static class CDHwithSHA256KDFAndSharedInfo extends KeyAgreementSpi {
        public CDHwithSHA256KDFAndSharedInfo() {
            super("ECCDHwithSHA256KDF", new ECDHCBasicAgreement(), new KDF2BytesGenerator(new SHA256Digest()));
        }
    }

    public static class CDHwithSHA384KDFAndSharedInfo extends KeyAgreementSpi {
        public CDHwithSHA384KDFAndSharedInfo() {
            super("ECCDHwithSHA384KDF", new ECDHCBasicAgreement(), new KDF2BytesGenerator(new SHA384Digest()));
        }
    }

    public static class CDHwithSHA512KDFAndSharedInfo extends KeyAgreementSpi {
        public CDHwithSHA512KDFAndSharedInfo() {
            super("ECCDHwithSHA512KDF", new ECDHCBasicAgreement(), new KDF2BytesGenerator(new SHA512Digest()));
        }
    }

    public static class DH extends KeyAgreementSpi {
        public DH() {
            super("ECDH", new ECDHBasicAgreement(), null);
        }
    }

    public static class DHC extends KeyAgreementSpi {
        public DHC() {
            super("ECDHC", new ECDHCBasicAgreement(), null);
        }
    }

    public static class DHwithSHA1CKDF extends KeyAgreementSpi {
        public DHwithSHA1CKDF() {
            super("ECDHwithSHA1CKDF", new ECDHCBasicAgreement(), new ConcatenationKDFGenerator(new SHA1Digest()));
        }
    }

    public static class DHwithSHA1KDF extends KeyAgreementSpi {
        public DHwithSHA1KDF() {
            super("ECDHwithSHA1KDF", new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()));
        }
    }

    public static class DHwithSHA1KDFAndSharedInfo extends KeyAgreementSpi {
        public DHwithSHA1KDFAndSharedInfo() {
            super("ECDHwithSHA1KDF", new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()));
        }
    }

    public static class DHwithSHA224KDFAndSharedInfo extends KeyAgreementSpi {
        public DHwithSHA224KDFAndSharedInfo() {
            super("ECDHwithSHA224KDF", new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA224Digest()));
        }
    }

    public static class DHwithSHA256CKDF extends KeyAgreementSpi {
        public DHwithSHA256CKDF() {
            super("ECDHwithSHA256CKDF", new ECDHCBasicAgreement(), new ConcatenationKDFGenerator(new SHA256Digest()));
        }
    }

    public static class DHwithSHA256KDFAndSharedInfo extends KeyAgreementSpi {
        public DHwithSHA256KDFAndSharedInfo() {
            super("ECDHwithSHA256KDF", new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA256Digest()));
        }
    }

    public static class DHwithSHA384CKDF extends KeyAgreementSpi {
        public DHwithSHA384CKDF() {
            super("ECDHwithSHA384CKDF", new ECDHCBasicAgreement(), new ConcatenationKDFGenerator(new SHA384Digest()));
        }
    }

    public static class DHwithSHA384KDFAndSharedInfo extends KeyAgreementSpi {
        public DHwithSHA384KDFAndSharedInfo() {
            super("ECDHwithSHA384KDF", new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA384Digest()));
        }
    }

    public static class DHwithSHA512CKDF extends KeyAgreementSpi {
        public DHwithSHA512CKDF() {
            super("ECDHwithSHA512CKDF", new ECDHCBasicAgreement(), new ConcatenationKDFGenerator(new SHA512Digest()));
        }
    }

    public static class DHwithSHA512KDFAndSharedInfo extends KeyAgreementSpi {
        public DHwithSHA512KDFAndSharedInfo() {
            super("ECDHwithSHA512KDF", new ECDHBasicAgreement(), new KDF2BytesGenerator(new SHA512Digest()));
        }
    }

    public static class MQV extends KeyAgreementSpi {
        public MQV() {
            super("ECMQV", new ECMQVBasicAgreement(), null);
        }
    }

    public static class MQVwithSHA1CKDF extends KeyAgreementSpi {
        public MQVwithSHA1CKDF() {
            super("ECMQVwithSHA1CKDF", new ECMQVBasicAgreement(), new ConcatenationKDFGenerator(new SHA1Digest()));
        }
    }

    public static class MQVwithSHA1KDFAndSharedInfo extends KeyAgreementSpi {
        public MQVwithSHA1KDFAndSharedInfo() {
            super("ECMQVwithSHA1KDF", new ECMQVBasicAgreement(), new KDF2BytesGenerator(new SHA1Digest()));
        }
    }

    public static class MQVwithSHA224CKDF extends KeyAgreementSpi {
        public MQVwithSHA224CKDF() {
            super("ECMQVwithSHA224CKDF", new ECMQVBasicAgreement(), new ConcatenationKDFGenerator(new SHA224Digest()));
        }
    }

    public static class MQVwithSHA224KDFAndSharedInfo extends KeyAgreementSpi {
        public MQVwithSHA224KDFAndSharedInfo() {
            super("ECMQVwithSHA224KDF", new ECMQVBasicAgreement(), new KDF2BytesGenerator(new SHA224Digest()));
        }
    }

    public static class MQVwithSHA256CKDF extends KeyAgreementSpi {
        public MQVwithSHA256CKDF() {
            super("ECMQVwithSHA256CKDF", new ECMQVBasicAgreement(), new ConcatenationKDFGenerator(new SHA256Digest()));
        }
    }

    public static class MQVwithSHA256KDFAndSharedInfo extends KeyAgreementSpi {
        public MQVwithSHA256KDFAndSharedInfo() {
            super("ECMQVwithSHA256KDF", new ECMQVBasicAgreement(), new KDF2BytesGenerator(new SHA256Digest()));
        }
    }

    public static class MQVwithSHA384CKDF extends KeyAgreementSpi {
        public MQVwithSHA384CKDF() {
            super("ECMQVwithSHA384CKDF", new ECMQVBasicAgreement(), new ConcatenationKDFGenerator(new SHA384Digest()));
        }
    }

    public static class MQVwithSHA384KDFAndSharedInfo extends KeyAgreementSpi {
        public MQVwithSHA384KDFAndSharedInfo() {
            super("ECMQVwithSHA384KDF", new ECMQVBasicAgreement(), new KDF2BytesGenerator(new SHA384Digest()));
        }
    }

    public static class MQVwithSHA512CKDF extends KeyAgreementSpi {
        public MQVwithSHA512CKDF() {
            super("ECMQVwithSHA512CKDF", new ECMQVBasicAgreement(), new ConcatenationKDFGenerator(new SHA512Digest()));
        }
    }

    public static class MQVwithSHA512KDFAndSharedInfo extends KeyAgreementSpi {
        public MQVwithSHA512KDFAndSharedInfo() {
            super("ECMQVwithSHA512KDF", new ECMQVBasicAgreement(), new KDF2BytesGenerator(new SHA512Digest()));
        }
    }

    protected KeyAgreementSpi(String str, BasicAgreement basicAgreement, DerivationFunction derivationFunction) {
        super(str, derivationFunction);
        this.kaAlgorithm = str;
        this.agreement = basicAgreement;
    }

    private static String getSimpleName(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r2v1, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r2v2, types: [byte[]] */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v11, types: [org.bouncycastle.crypto.params.ECPublicKeyParameters] */
    /* JADX WARNING: type inference failed for: r2v12, types: [org.bouncycastle.crypto.params.ECPublicKeyParameters] */
    /* JADX WARNING: type inference failed for: r2v15, types: [org.bouncycastle.crypto.params.ECPublicKeyParameters] */
    /* JADX WARNING: type inference failed for: r2v21 */
    /* JADX WARNING: type inference failed for: r2v22 */
    /* JADX WARNING: type inference failed for: r2v23 */
    /* JADX WARNING: type inference failed for: r2v24 */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r2v0
  assigns: [?[int, float, boolean, short, byte, char, OBJECT, ARRAY], byte[], org.bouncycastle.crypto.params.ECPublicKeyParameters]
  uses: [byte[], org.bouncycastle.crypto.params.ECPublicKeyParameters]
  mth insns count: 89
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void initFromKey(java.security.Key r5, java.security.spec.AlgorithmParameterSpec r6) throws java.security.InvalidKeyException {
        /*
            r4 = this;
            r2 = 0
            org.bouncycastle.crypto.BasicAgreement r0 = r4.agreement
            boolean r0 = r0 instanceof org.bouncycastle.crypto.agreement.ECMQVBasicAgreement
            if (r0 == 0) goto L_0x00a4
            r4.mqvParameters = r2
            boolean r0 = r5 instanceof org.bouncycastle.jce.interfaces.MQVPrivateKey
            if (r0 != 0) goto L_0x003c
            boolean r0 = r6 instanceof org.bouncycastle.jcajce.spec.MQVParameterSpec
            if (r0 != 0) goto L_0x003c
            java.security.InvalidKeyException r0 = new java.security.InvalidKeyException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r4.kaAlgorithm
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " key agreement requires "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.Class<org.bouncycastle.jcajce.spec.MQVParameterSpec> r2 = org.bouncycastle.jcajce.spec.MQVParameterSpec.class
            java.lang.String r2 = getSimpleName(r2)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " for initialisation"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x003c:
            boolean r0 = r5 instanceof org.bouncycastle.jce.interfaces.MQVPrivateKey
            if (r0 == 0) goto L_0x0077
            org.bouncycastle.jce.interfaces.MQVPrivateKey r5 = (org.bouncycastle.jce.interfaces.MQVPrivateKey) r5
            java.security.PrivateKey r0 = r5.getStaticPrivateKey()
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r0 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePrivateKeyParameter(r0)
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r0 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r0
            java.security.PrivateKey r1 = r5.getEphemeralPrivateKey()
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r1 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePrivateKeyParameter(r1)
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r1 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r1
            java.security.PublicKey r3 = r5.getEphemeralPublicKey()
            if (r3 == 0) goto L_0x0066
            java.security.PublicKey r2 = r5.getEphemeralPublicKey()
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r2 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePublicKeyParameter(r2)
            org.bouncycastle.crypto.params.ECPublicKeyParameters r2 = (org.bouncycastle.crypto.params.ECPublicKeyParameters) r2
        L_0x0066:
            org.bouncycastle.crypto.params.MQVPrivateParameters r3 = new org.bouncycastle.crypto.params.MQVPrivateParameters
            r3.<init>(r0, r1, r2)
            org.bouncycastle.crypto.params.ECDomainParameters r0 = r0.getParameters()
            r4.parameters = r0
            org.bouncycastle.crypto.BasicAgreement r0 = r4.agreement
            r0.init(r3)
        L_0x0076:
            return
        L_0x0077:
            org.bouncycastle.jcajce.spec.MQVParameterSpec r6 = (org.bouncycastle.jcajce.spec.MQVParameterSpec) r6
            java.security.PrivateKey r5 = (java.security.PrivateKey) r5
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r0 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePrivateKeyParameter(r5)
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r0 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r0
            java.security.PrivateKey r1 = r6.getEphemeralPrivateKey()
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r1 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePrivateKeyParameter(r1)
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r1 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r1
            java.security.PublicKey r3 = r6.getEphemeralPublicKey()
            if (r3 == 0) goto L_0x009b
            java.security.PublicKey r2 = r6.getEphemeralPublicKey()
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r2 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePublicKeyParameter(r2)
            org.bouncycastle.crypto.params.ECPublicKeyParameters r2 = (org.bouncycastle.crypto.params.ECPublicKeyParameters) r2
        L_0x009b:
            r4.mqvParameters = r6
            byte[] r3 = r6.getUserKeyingMaterial()
            r4.ukmParameters = r3
            goto L_0x0066
        L_0x00a4:
            boolean r0 = r5 instanceof java.security.PrivateKey
            if (r0 != 0) goto L_0x00d3
            java.security.InvalidKeyException r0 = new java.security.InvalidKeyException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = r4.kaAlgorithm
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " key agreement requires "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.Class<org.bouncycastle.jce.interfaces.ECPrivateKey> r2 = org.bouncycastle.jce.interfaces.ECPrivateKey.class
            java.lang.String r2 = getSimpleName(r2)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " for initialisation"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L_0x00d3:
            java.security.PrivateKey r5 = (java.security.PrivateKey) r5
            org.bouncycastle.crypto.params.AsymmetricKeyParameter r0 = org.bouncycastle.jcajce.provider.asymmetric.util.ECUtil.generatePrivateKeyParameter(r5)
            org.bouncycastle.crypto.params.ECPrivateKeyParameters r0 = (org.bouncycastle.crypto.params.ECPrivateKeyParameters) r0
            org.bouncycastle.crypto.params.ECDomainParameters r1 = r0.getParameters()
            r4.parameters = r1
            boolean r1 = r6 instanceof org.bouncycastle.jcajce.spec.UserKeyingMaterialSpec
            if (r1 == 0) goto L_0x00eb
            org.bouncycastle.jcajce.spec.UserKeyingMaterialSpec r6 = (org.bouncycastle.jcajce.spec.UserKeyingMaterialSpec) r6
            byte[] r2 = r6.getUserKeyingMaterial()
        L_0x00eb:
            r4.ukmParameters = r2
            org.bouncycastle.crypto.BasicAgreement r1 = r4.agreement
            r1.init(r0)
            goto L_0x0076
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.jcajce.provider.asymmetric.ec.KeyAgreementSpi.initFromKey(java.security.Key, java.security.spec.AlgorithmParameterSpec):void");
    }

    /* access modifiers changed from: protected */
    public byte[] bigIntToBytes(BigInteger bigInteger) {
        return converter.integerToBytes(bigInteger, converter.getByteLength(this.parameters.getCurve()));
    }

    /* access modifiers changed from: protected */
    public Key engineDoPhase(Key key, boolean z) throws InvalidKeyException, IllegalStateException {
        CipherParameters generatePublicKeyParameter;
        if (this.parameters == null) {
            throw new IllegalStateException(this.kaAlgorithm + " not initialised.");
        } else if (!z) {
            throw new IllegalStateException(this.kaAlgorithm + " can only be between two parties.");
        } else {
            if (this.agreement instanceof ECMQVBasicAgreement) {
                if (!(key instanceof MQVPublicKey)) {
                    generatePublicKeyParameter = new MQVPublicParameters((ECPublicKeyParameters) ECUtil.generatePublicKeyParameter((PublicKey) key), (ECPublicKeyParameters) ECUtil.generatePublicKeyParameter(this.mqvParameters.getOtherPartyEphemeralKey()));
                } else {
                    MQVPublicKey mQVPublicKey = (MQVPublicKey) key;
                    generatePublicKeyParameter = new MQVPublicParameters((ECPublicKeyParameters) ECUtil.generatePublicKeyParameter(mQVPublicKey.getStaticKey()), (ECPublicKeyParameters) ECUtil.generatePublicKeyParameter(mQVPublicKey.getEphemeralKey()));
                }
            } else if (!(key instanceof PublicKey)) {
                throw new InvalidKeyException(this.kaAlgorithm + " key agreement requires " + getSimpleName(ECPublicKey.class) + " for doPhase");
            } else {
                generatePublicKeyParameter = ECUtil.generatePublicKeyParameter((PublicKey) key);
            }
            this.result = this.agreement.calculateAgreement(generatePublicKeyParameter);
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        initFromKey(key, null);
    }

    /* access modifiers changed from: protected */
    public void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec == null || (algorithmParameterSpec instanceof MQVParameterSpec) || (algorithmParameterSpec instanceof UserKeyingMaterialSpec)) {
            initFromKey(key, algorithmParameterSpec);
            return;
        }
        throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
    }
}
