package org.bouncycastle.jcajce.provider.asymmetric.dh;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.generators.DHBasicKeyPairGenerator;
import org.bouncycastle.crypto.generators.DHParametersGenerator;
import org.bouncycastle.crypto.params.DHKeyGenerationParameters;
import org.bouncycastle.crypto.params.DHParameters;
import org.bouncycastle.crypto.params.DHPrivateKeyParameters;
import org.bouncycastle.crypto.params.DHPublicKeyParameters;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.util.Integers;

public class KeyPairGeneratorSpi extends KeyPairGenerator {
    private static Object lock = new Object();
    private static Hashtable params = new Hashtable();
    int certainty = 20;
    DHBasicKeyPairGenerator engine = new DHBasicKeyPairGenerator();
    boolean initialised = false;
    DHKeyGenerationParameters param;
    SecureRandom random = new SecureRandom();
    int strength = 1024;

    public KeyPairGeneratorSpi() {
        super("DH");
    }

    public KeyPair generateKeyPair() {
        if (!this.initialised) {
            Integer valueOf = Integers.valueOf(this.strength);
            if (params.containsKey(valueOf)) {
                this.param = (DHKeyGenerationParameters) params.get(valueOf);
            } else {
                DHParameterSpec dHDefaultParameters = BouncyCastleProvider.CONFIGURATION.getDHDefaultParameters(this.strength);
                if (dHDefaultParameters != null) {
                    this.param = new DHKeyGenerationParameters(this.random, new DHParameters(dHDefaultParameters.getP(), dHDefaultParameters.getG(), null, dHDefaultParameters.getL()));
                } else {
                    synchronized (lock) {
                        if (params.containsKey(valueOf)) {
                            this.param = (DHKeyGenerationParameters) params.get(valueOf);
                        } else {
                            DHParametersGenerator dHParametersGenerator = new DHParametersGenerator();
                            dHParametersGenerator.init(this.strength, this.certainty, this.random);
                            this.param = new DHKeyGenerationParameters(this.random, dHParametersGenerator.generateParameters());
                            params.put(valueOf, this.param);
                        }
                    }
                }
            }
            this.engine.init(this.param);
            this.initialised = true;
        }
        AsymmetricCipherKeyPair generateKeyPair = this.engine.generateKeyPair();
        return new KeyPair(new BCDHPublicKey((DHPublicKeyParameters) generateKeyPair.getPublic()), new BCDHPrivateKey((DHPrivateKeyParameters) generateKeyPair.getPrivate()));
    }

    public void initialize(int i, SecureRandom secureRandom) {
        this.strength = i;
        this.random = secureRandom;
    }

    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (!(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec");
        }
        DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
        this.param = new DHKeyGenerationParameters(secureRandom, new DHParameters(dHParameterSpec.getP(), dHParameterSpec.getG(), null, dHParameterSpec.getL()));
        this.engine.init(this.param);
        this.initialised = true;
    }
}
