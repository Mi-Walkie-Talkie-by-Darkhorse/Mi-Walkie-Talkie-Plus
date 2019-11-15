package org.bouncycastle.pqc.jcajce.provider.mceliece;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.pqc.crypto.mceliece.McElieceCCA2KeyGenerationParameters;
import org.bouncycastle.pqc.crypto.mceliece.McElieceCCA2KeyPairGenerator;
import org.bouncycastle.pqc.crypto.mceliece.McElieceCCA2Parameters;
import org.bouncycastle.pqc.crypto.mceliece.McElieceCCA2PrivateKeyParameters;
import org.bouncycastle.pqc.crypto.mceliece.McElieceCCA2PublicKeyParameters;
import org.bouncycastle.pqc.crypto.mceliece.McElieceKeyGenerationParameters;
import org.bouncycastle.pqc.crypto.mceliece.McElieceKeyPairGenerator;
import org.bouncycastle.pqc.crypto.mceliece.McElieceParameters;
import org.bouncycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;
import org.bouncycastle.pqc.crypto.mceliece.McEliecePublicKeyParameters;
import org.bouncycastle.pqc.jcajce.spec.ECCKeyGenParameterSpec;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2ParameterSpec;

public abstract class McElieceKeyPairGeneratorSpi extends KeyPairGenerator {

    public static class McEliece extends McElieceKeyPairGeneratorSpi {
        McElieceKeyPairGenerator kpg;

        public McEliece() {
            super("McEliece");
        }

        public KeyPair generateKeyPair() {
            AsymmetricCipherKeyPair generateKeyPair = this.kpg.generateKeyPair();
            return new KeyPair(new BCMcEliecePublicKey((McEliecePublicKeyParameters) generateKeyPair.getPublic()), new BCMcEliecePrivateKey((McEliecePrivateKeyParameters) generateKeyPair.getPrivate()));
        }

        public void initialize(int i, SecureRandom secureRandom) {
            try {
                initialize(new ECCKeyGenParameterSpec());
            } catch (InvalidAlgorithmParameterException e) {
            }
        }

        public void initialize(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
            this.kpg = new McElieceKeyPairGenerator();
            McElieceKeyPairGeneratorSpi.super.initialize(algorithmParameterSpec);
            ECCKeyGenParameterSpec eCCKeyGenParameterSpec = (ECCKeyGenParameterSpec) algorithmParameterSpec;
            this.kpg.init(new McElieceKeyGenerationParameters(new SecureRandom(), new McElieceParameters(eCCKeyGenParameterSpec.getM(), eCCKeyGenParameterSpec.getT())));
        }
    }

    public static class McElieceCCA2 extends McElieceKeyPairGeneratorSpi {
        McElieceCCA2KeyPairGenerator kpg;

        public McElieceCCA2() {
            super("McElieceCCA-2");
        }

        public McElieceCCA2(String str) {
            super(str);
        }

        public KeyPair generateKeyPair() {
            AsymmetricCipherKeyPair generateKeyPair = this.kpg.generateKeyPair();
            return new KeyPair(new BCMcElieceCCA2PublicKey((McElieceCCA2PublicKeyParameters) generateKeyPair.getPublic()), new BCMcElieceCCA2PrivateKey((McElieceCCA2PrivateKeyParameters) generateKeyPair.getPrivate()));
        }

        public void initialize(int i, SecureRandom secureRandom) {
            try {
                initialize(new McElieceCCA2ParameterSpec());
            } catch (InvalidAlgorithmParameterException e) {
            }
        }

        public void initialize(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidAlgorithmParameterException {
            this.kpg = new McElieceCCA2KeyPairGenerator();
            McElieceKeyPairGeneratorSpi.super.initialize(algorithmParameterSpec);
            ECCKeyGenParameterSpec eCCKeyGenParameterSpec = (ECCKeyGenParameterSpec) algorithmParameterSpec;
            this.kpg.init(new McElieceCCA2KeyGenerationParameters(new SecureRandom(), new McElieceCCA2Parameters(eCCKeyGenParameterSpec.getM(), eCCKeyGenParameterSpec.getT())));
        }
    }

    public McElieceKeyPairGeneratorSpi(String str) {
        super(str);
    }
}
