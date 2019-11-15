package org.bouncycastle.crypto.generators;

import java.math.BigInteger;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.RSAKeyGenerationParameters;
import org.bouncycastle.crypto.params.RSAKeyParameters;
import org.bouncycastle.crypto.params.RSAPrivateCrtKeyParameters;
import org.bouncycastle.math.Primes;
import org.bouncycastle.math.ec.WNafUtil;

public class RSAKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private int iterations;
    private RSAKeyGenerationParameters param;

    private static int getNumberOfIterations(int i, int i2) {
        int i3 = 5;
        if (i >= 1536) {
            if (i2 <= 100) {
                return 3;
            }
            if (i2 > 128) {
                return (((i2 - 128) + 1) / 2) + 4;
            }
            return 4;
        } else if (i >= 1024) {
            if (i2 <= 100) {
                return 4;
            }
            if (i2 <= 112) {
                return 5;
            }
            return (((i2 - 112) + 1) / 2) + 5;
        } else if (i >= 512) {
            if (i2 > 80) {
                i3 = i2 <= 100 ? 7 : (((i2 - 100) + 1) / 2) + 7;
            }
            return i3;
        } else if (i2 <= 80) {
            return 40;
        } else {
            return (((i2 - 80) + 1) / 2) + 40;
        }
    }

    /* access modifiers changed from: protected */
    public BigInteger chooseRandomPrime(int i, BigInteger bigInteger, BigInteger bigInteger2) {
        for (int i2 = 0; i2 != i * 5; i2++) {
            BigInteger bigInteger3 = new BigInteger(i, 1, this.param.getRandom());
            if (!bigInteger3.mod(bigInteger).equals(ONE) && bigInteger3.multiply(bigInteger3).compareTo(bigInteger2) >= 0 && isProbablePrime(bigInteger3) && bigInteger.gcd(bigInteger3.subtract(ONE)).equals(ONE)) {
                return bigInteger3;
            }
        }
        throw new IllegalStateException("unable to generate prime number for RSA key");
    }

    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger chooseRandomPrime;
        BigInteger multiply;
        BigInteger bigInteger;
        int strength = this.param.getStrength();
        int i = (strength + 1) / 2;
        int i2 = strength - i;
        int i3 = (strength / 2) - 100;
        int i4 = i3 < strength / 3 ? strength / 3 : i3;
        int i5 = strength >> 2;
        BigInteger pow = BigInteger.valueOf(2).pow(strength / 2);
        BigInteger shiftLeft = ONE.shiftLeft(strength - 1);
        BigInteger shiftLeft2 = ONE.shiftLeft(i4);
        boolean z = false;
        AsymmetricCipherKeyPair asymmetricCipherKeyPair = null;
        while (!z) {
            BigInteger publicExponent = this.param.getPublicExponent();
            BigInteger chooseRandomPrime2 = chooseRandomPrime(i, publicExponent, shiftLeft);
            while (true) {
                chooseRandomPrime = chooseRandomPrime(i2, publicExponent, shiftLeft);
                BigInteger abs = chooseRandomPrime.subtract(chooseRandomPrime2).abs();
                if (abs.bitLength() >= i4 && abs.compareTo(shiftLeft2) > 0) {
                    multiply = chooseRandomPrime2.multiply(chooseRandomPrime);
                    if (multiply.bitLength() == strength) {
                        if (WNafUtil.getNafWeight(multiply) >= i5) {
                            break;
                        }
                        chooseRandomPrime2 = chooseRandomPrime(i, publicExponent, shiftLeft);
                    } else {
                        chooseRandomPrime2 = chooseRandomPrime2.max(chooseRandomPrime);
                    }
                }
            }
            if (chooseRandomPrime2.compareTo(chooseRandomPrime) < 0) {
                bigInteger = chooseRandomPrime;
                chooseRandomPrime = chooseRandomPrime2;
            } else {
                bigInteger = chooseRandomPrime2;
            }
            BigInteger subtract = bigInteger.subtract(ONE);
            BigInteger subtract2 = chooseRandomPrime.subtract(ONE);
            BigInteger modInverse = publicExponent.modInverse(subtract.divide(subtract.gcd(subtract2)).multiply(subtract2));
            if (modInverse.compareTo(pow) > 0) {
                BigInteger remainder = modInverse.remainder(subtract);
                BigInteger remainder2 = modInverse.remainder(subtract2);
                BigInteger modInverse2 = chooseRandomPrime.modInverse(bigInteger);
                RSAKeyParameters rSAKeyParameters = new RSAKeyParameters(false, multiply, publicExponent);
                z = true;
                asymmetricCipherKeyPair = new AsymmetricCipherKeyPair((AsymmetricKeyParameter) rSAKeyParameters, (AsymmetricKeyParameter) new RSAPrivateCrtKeyParameters(multiply, publicExponent, modInverse, bigInteger, chooseRandomPrime, remainder, remainder2, modInverse2));
            }
        }
        return asymmetricCipherKeyPair;
    }

    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (RSAKeyGenerationParameters) keyGenerationParameters;
        this.iterations = getNumberOfIterations(this.param.getStrength(), this.param.getCertainty());
    }

    /* access modifiers changed from: protected */
    public boolean isProbablePrime(BigInteger bigInteger) {
        return !Primes.hasAnySmallFactors(bigInteger) && Primes.isMRProbablePrime(bigInteger, this.param.getRandom(), this.iterations);
    }
}
