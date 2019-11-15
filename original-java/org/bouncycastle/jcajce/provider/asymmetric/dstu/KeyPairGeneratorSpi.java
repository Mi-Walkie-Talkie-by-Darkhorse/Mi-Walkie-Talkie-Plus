package org.bouncycastle.jcajce.provider.asymmetric.dstu;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ua.DSTU4145NamedCurves;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.DSTU4145KeyPairGenerator;
import org.bouncycastle.crypto.generators.ECKeyPairGenerator;
import org.bouncycastle.crypto.params.ECDomainParameters;
import org.bouncycastle.crypto.params.ECKeyGenerationParameters;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.jce.spec.ECNamedCurveGenParameterSpec;
import org.bouncycastle.jce.spec.ECNamedCurveSpec;
import org.bouncycastle.jce.spec.ECParameterSpec;
import org.bouncycastle.math.ec.ECCurve;

public class KeyPairGeneratorSpi extends KeyPairGenerator {
    String algorithm = "DSTU4145";
    Object ecParams = null;
    ECKeyPairGenerator engine = new DSTU4145KeyPairGenerator();
    boolean initialised = false;
    ECKeyGenerationParameters param;
    SecureRandom random = null;

    public KeyPairGeneratorSpi() {
        super("DSTU4145");
    }

    public KeyPair generateKeyPair() {
        if (!this.initialised) {
            throw new IllegalStateException("DSTU Key Pair Generator not initialised");
        }
        AsymmetricCipherKeyPair generateKeyPair = this.engine.generateKeyPair();
        ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) generateKeyPair.getPublic();
        ECPrivateKeyParameters eCPrivateKeyParameters = (ECPrivateKeyParameters) generateKeyPair.getPrivate();
        if (this.ecParams instanceof ECParameterSpec) {
            ECParameterSpec eCParameterSpec = (ECParameterSpec) this.ecParams;
            BCDSTU4145PublicKey bCDSTU4145PublicKey = new BCDSTU4145PublicKey(this.algorithm, eCPublicKeyParameters, eCParameterSpec);
            return new KeyPair(bCDSTU4145PublicKey, new BCDSTU4145PrivateKey(this.algorithm, eCPrivateKeyParameters, bCDSTU4145PublicKey, eCParameterSpec));
        } else if (this.ecParams == null) {
            return new KeyPair(new BCDSTU4145PublicKey(this.algorithm, eCPublicKeyParameters), new BCDSTU4145PrivateKey(this.algorithm, eCPrivateKeyParameters));
        } else {
            java.security.spec.ECParameterSpec eCParameterSpec2 = (java.security.spec.ECParameterSpec) this.ecParams;
            BCDSTU4145PublicKey bCDSTU4145PublicKey2 = new BCDSTU4145PublicKey(this.algorithm, eCPublicKeyParameters, eCParameterSpec2);
            return new KeyPair(bCDSTU4145PublicKey2, new BCDSTU4145PrivateKey(this.algorithm, eCPrivateKeyParameters, bCDSTU4145PublicKey2, eCParameterSpec2));
        }
    }

    public void initialize(int i, SecureRandom secureRandom) {
        this.random = secureRandom;
        if (this.ecParams != null) {
            try {
                initialize((AlgorithmParameterSpec) (ECGenParameterSpec) this.ecParams, secureRandom);
            } catch (InvalidAlgorithmParameterException e) {
                throw new InvalidParameterException("key size not configurable.");
            }
        } else {
            throw new InvalidParameterException("unknown key size.");
        }
    }

    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (algorithmParameterSpec instanceof ECParameterSpec) {
            ECParameterSpec eCParameterSpec = (ECParameterSpec) algorithmParameterSpec;
            this.ecParams = algorithmParameterSpec;
            this.param = new ECKeyGenerationParameters(new ECDomainParameters(eCParameterSpec.getCurve(), eCParameterSpec.getG(), eCParameterSpec.getN()), secureRandom);
            this.engine.init(this.param);
            this.initialised = true;
        } else if (algorithmParameterSpec instanceof java.security.spec.ECParameterSpec) {
            java.security.spec.ECParameterSpec eCParameterSpec2 = (java.security.spec.ECParameterSpec) algorithmParameterSpec;
            this.ecParams = algorithmParameterSpec;
            ECCurve convertCurve = EC5Util.convertCurve(eCParameterSpec2.getCurve());
            this.param = new ECKeyGenerationParameters(new ECDomainParameters(convertCurve, EC5Util.convertPoint(convertCurve, eCParameterSpec2.getGenerator(), false), eCParameterSpec2.getOrder(), BigInteger.valueOf((long) eCParameterSpec2.getCofactor())), secureRandom);
            this.engine.init(this.param);
            this.initialised = true;
        } else if ((algorithmParameterSpec instanceof ECGenParameterSpec) || (algorithmParameterSpec instanceof ECNamedCurveGenParameterSpec)) {
            String name = algorithmParameterSpec instanceof ECGenParameterSpec ? ((ECGenParameterSpec) algorithmParameterSpec).getName() : ((ECNamedCurveGenParameterSpec) algorithmParameterSpec).getName();
            ECDomainParameters byOID = DSTU4145NamedCurves.getByOID(new ASN1ObjectIdentifier(name));
            if (byOID == null) {
                throw new InvalidAlgorithmParameterException("unknown curve name: " + name);
            }
            this.ecParams = new ECNamedCurveSpec(name, byOID.getCurve(), byOID.getG(), byOID.getN(), byOID.getH(), byOID.getSeed());
            java.security.spec.ECParameterSpec eCParameterSpec3 = (java.security.spec.ECParameterSpec) this.ecParams;
            ECCurve convertCurve2 = EC5Util.convertCurve(eCParameterSpec3.getCurve());
            this.param = new ECKeyGenerationParameters(new ECDomainParameters(convertCurve2, EC5Util.convertPoint(convertCurve2, eCParameterSpec3.getGenerator(), false), eCParameterSpec3.getOrder(), BigInteger.valueOf((long) eCParameterSpec3.getCofactor())), secureRandom);
            this.engine.init(this.param);
            this.initialised = true;
        } else if (algorithmParameterSpec == null && BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa() != null) {
            ECParameterSpec ecImplicitlyCa = BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa();
            this.ecParams = algorithmParameterSpec;
            this.param = new ECKeyGenerationParameters(new ECDomainParameters(ecImplicitlyCa.getCurve(), ecImplicitlyCa.getG(), ecImplicitlyCa.getN()), secureRandom);
            this.engine.init(this.param);
            this.initialised = true;
        } else if (algorithmParameterSpec == null && BouncyCastleProvider.CONFIGURATION.getEcImplicitlyCa() == null) {
            throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
        } else {
            throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec: " + algorithmParameterSpec.getClass().getName());
        }
    }
}
