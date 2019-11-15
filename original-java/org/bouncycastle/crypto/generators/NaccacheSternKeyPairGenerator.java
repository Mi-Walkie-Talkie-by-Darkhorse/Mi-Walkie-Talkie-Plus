package org.bouncycastle.crypto.generators;

import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.mi.milinkforgame.sdk.data.Error;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Vector;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.AsymmetricCipherKeyPair;
import org.bouncycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.bouncycastle.crypto.KeyGenerationParameters;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.params.NaccacheSternKeyGenerationParameters;
import org.bouncycastle.crypto.params.NaccacheSternKeyParameters;
import org.bouncycastle.crypto.params.NaccacheSternPrivateKeyParameters;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.math.Primes;

public class NaccacheSternKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static int[] smallPrimes = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, 163, CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, 199, Primes.SMALL_FACTOR_LIMIT, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, Error.E_WTSDK_TLV_DECRYPT, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, HttpStatus.SC_UNAUTHORIZED, HttpStatus.SC_CONFLICT, HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE, 421, 431, 433, 439, ServerPort.PORT_443, 449, 457, 461, 463, 467, 479, 487, 491, 499, HttpStatus.SC_SERVICE_UNAVAILABLE, 509, 521, 523, Error.MNS_OPTI_IP_SESSION, Error.MNS_HEART_BEAT_PUSH, Error.IP_ADDRESS_NULL};
    private NaccacheSternKeyGenerationParameters param;

    private static Vector findFirstPrimes(int i) {
        Vector vector = new Vector(i);
        for (int i2 = 0; i2 != i; i2++) {
            vector.addElement(BigInteger.valueOf((long) smallPrimes[i2]));
        }
        return vector;
    }

    private static BigInteger generatePrime(int i, int i2, SecureRandom secureRandom) {
        BigInteger bigInteger = new BigInteger(i, i2, secureRandom);
        while (bigInteger.bitLength() != i) {
            bigInteger = new BigInteger(i, i2, secureRandom);
        }
        return bigInteger;
    }

    private static int getInt(SecureRandom secureRandom, int i) {
        int nextInt;
        int i2;
        if (((-i) & i) == i) {
            return (int) ((((long) i) * ((long) (secureRandom.nextInt() & Integer.MAX_VALUE))) >> 31);
        }
        do {
            nextInt = secureRandom.nextInt() & Integer.MAX_VALUE;
            i2 = nextInt % i;
        } while ((nextInt - i2) + (i - 1) < 0);
        return i2;
    }

    private static Vector permuteList(Vector vector, SecureRandom secureRandom) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i = 0; i < vector.size(); i++) {
            vector3.addElement(vector.elementAt(i));
        }
        vector2.addElement(vector3.elementAt(0));
        vector3.removeElementAt(0);
        while (vector3.size() != 0) {
            vector2.insertElementAt(vector3.elementAt(0), getInt(secureRandom, vector2.size() + 1));
            vector3.removeElementAt(0);
        }
        return vector2;
    }

    public AsymmetricCipherKeyPair generateKeyPair() {
        BigInteger generatePrime;
        BigInteger add;
        BigInteger generatePrime2;
        BigInteger add2;
        long j;
        BigInteger bigInteger;
        boolean z;
        BigInteger bigInteger2;
        int strength = this.param.getStrength();
        SecureRandom random = this.param.getRandom();
        int certainty = this.param.getCertainty();
        boolean isDebug = this.param.isDebug();
        if (isDebug) {
            System.out.println("Fetching first " + this.param.getCntSmallPrimes() + " primes.");
        }
        Vector permuteList = permuteList(findFirstPrimes(this.param.getCntSmallPrimes()), random);
        BigInteger bigInteger3 = ONE;
        BigInteger bigInteger4 = ONE;
        int i = 0;
        BigInteger bigInteger5 = bigInteger3;
        while (true) {
            int i2 = i;
            if (i2 >= permuteList.size() / 2) {
                break;
            }
            bigInteger5 = bigInteger5.multiply((BigInteger) permuteList.elementAt(i2));
            i = i2 + 1;
        }
        int size = permuteList.size() / 2;
        while (true) {
            int i3 = size;
            if (i3 >= permuteList.size()) {
                break;
            }
            bigInteger4 = bigInteger4.multiply((BigInteger) permuteList.elementAt(i3));
            size = i3 + 1;
        }
        BigInteger multiply = bigInteger5.multiply(bigInteger4);
        int bitLength = (strength - multiply.bitLength()) - 48;
        BigInteger generatePrime3 = generatePrime((bitLength / 2) + 1, certainty, random);
        BigInteger generatePrime4 = generatePrime((bitLength / 2) + 1, certainty, random);
        long j2 = 0;
        if (isDebug) {
            System.out.println("generating p and q");
        }
        BigInteger shiftLeft = generatePrime3.multiply(bigInteger5).shiftLeft(1);
        BigInteger shiftLeft2 = generatePrime4.multiply(bigInteger4).shiftLeft(1);
        while (true) {
            j2++;
            generatePrime = generatePrime(24, certainty, random);
            add = generatePrime.multiply(shiftLeft).add(ONE);
            if (add.isProbablePrime(certainty)) {
                while (true) {
                    generatePrime2 = generatePrime(24, certainty, random);
                    if (!generatePrime.equals(generatePrime2)) {
                        add2 = generatePrime2.multiply(shiftLeft2).add(ONE);
                        if (add2.isProbablePrime(certainty)) {
                            break;
                        }
                    }
                }
                if (multiply.gcd(generatePrime.multiply(generatePrime2)).equals(ONE)) {
                    if (add.multiply(add2).bitLength() >= strength) {
                        break;
                    } else if (isDebug) {
                        System.out.println("key size too small. Should be " + strength + " but is actually " + add.multiply(add2).bitLength());
                    }
                } else {
                    continue;
                }
            }
        }
        if (isDebug) {
            System.out.println("needed " + j2 + " tries to generate p and q.");
        }
        BigInteger multiply2 = add.multiply(add2);
        BigInteger multiply3 = add.subtract(ONE).multiply(add2.subtract(ONE));
        long j3 = 0;
        if (isDebug) {
            System.out.println("generating g");
        }
        while (true) {
            Vector vector = new Vector();
            j = j3;
            for (int i4 = 0; i4 != permuteList.size(); i4++) {
                BigInteger divide = multiply3.divide((BigInteger) permuteList.elementAt(i4));
                do {
                    j++;
                    bigInteger2 = new BigInteger(strength, certainty, random);
                } while (bigInteger2.modPow(divide, multiply2).equals(ONE));
                vector.addElement(bigInteger2);
            }
            bigInteger = ONE;
            int i5 = 0;
            while (true) {
                int i6 = i5;
                if (i6 >= permuteList.size()) {
                    break;
                }
                bigInteger = bigInteger.multiply(((BigInteger) vector.elementAt(i6)).modPow(multiply.divide((BigInteger) permuteList.elementAt(i6)), multiply2)).mod(multiply2);
                i5 = i6 + 1;
            }
            int i7 = 0;
            while (true) {
                int i8 = i7;
                if (i8 >= permuteList.size()) {
                    z = false;
                    break;
                } else if (bigInteger.modPow(multiply3.divide((BigInteger) permuteList.elementAt(i8)), multiply2).equals(ONE)) {
                    if (isDebug) {
                        System.out.println("g has order phi(n)/" + permuteList.elementAt(i8) + "\n g: " + bigInteger);
                    }
                    z = true;
                } else {
                    i7 = i8 + 1;
                }
            }
            if (z) {
                j3 = j;
            } else {
                if (!bigInteger.modPow(multiply3.divide(BigInteger.valueOf(4)), multiply2).equals(ONE)) {
                    if (!bigInteger.modPow(multiply3.divide(generatePrime), multiply2).equals(ONE)) {
                        if (!bigInteger.modPow(multiply3.divide(generatePrime2), multiply2).equals(ONE)) {
                            if (!bigInteger.modPow(multiply3.divide(generatePrime3), multiply2).equals(ONE)) {
                                if (!bigInteger.modPow(multiply3.divide(generatePrime4), multiply2).equals(ONE)) {
                                    break;
                                } else if (isDebug) {
                                    System.out.println("g has order phi(n)/b\n g: " + bigInteger);
                                    j3 = j;
                                }
                            } else if (isDebug) {
                                System.out.println("g has order phi(n)/a\n g: " + bigInteger);
                                j3 = j;
                            }
                        } else if (isDebug) {
                            System.out.println("g has order phi(n)/q'\n g: " + bigInteger);
                            j3 = j;
                        }
                    } else if (isDebug) {
                        System.out.println("g has order phi(n)/p'\n g: " + bigInteger);
                        j3 = j;
                    }
                } else if (isDebug) {
                    System.out.println("g has order phi(n)/4\n g:" + bigInteger);
                    j3 = j;
                }
                j3 = j;
            }
        }
        if (isDebug) {
            System.out.println("needed " + j + " tries to generate g");
            System.out.println();
            System.out.println("found new NaccacheStern cipher variables:");
            System.out.println("smallPrimes: " + permuteList);
            System.out.println("sigma:...... " + multiply + " (" + multiply.bitLength() + " bits)");
            System.out.println("a:.......... " + generatePrime3);
            System.out.println("b:.......... " + generatePrime4);
            System.out.println("p':......... " + generatePrime);
            System.out.println("q':......... " + generatePrime2);
            System.out.println("p:.......... " + add);
            System.out.println("q:.......... " + add2);
            System.out.println("n:.......... " + multiply2);
            System.out.println("phi(n):..... " + multiply3);
            System.out.println("g:.......... " + bigInteger);
            System.out.println();
        }
        return new AsymmetricCipherKeyPair((AsymmetricKeyParameter) new NaccacheSternKeyParameters(false, bigInteger, multiply2, multiply.bitLength()), (AsymmetricKeyParameter) new NaccacheSternPrivateKeyParameters(bigInteger, multiply2, multiply.bitLength(), permuteList, multiply3));
    }

    public void init(KeyGenerationParameters keyGenerationParameters) {
        this.param = (NaccacheSternKeyGenerationParameters) keyGenerationParameters;
    }
}
