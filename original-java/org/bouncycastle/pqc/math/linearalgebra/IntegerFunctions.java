package org.bouncycastle.pqc.math.linearalgebra;

import android.support.v4.view.PointerIconCompat;
import com.amap.api.services.core.AMapException;
import com.google.zxing.pdf417.PDF417Common;
import com.ifengyu.im.protobuf.IMBaseDefine.FileCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.GroupCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import com.mi.milinkforgame.sdk.data.Const.ServerPort;
import com.mi.milinkforgame.sdk.data.Error;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.math.Primes;

public final class IntegerFunctions {
    private static final BigInteger FOUR = BigInteger.valueOf(4);
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final int[] SMALL_PRIMES = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41};
    private static final long SMALL_PRIME_PRODUCT = 152125131763605L;
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private static final BigInteger ZERO = BigInteger.valueOf(0);
    private static final int[] jacobiTable = {0, 1, 0, -1, 0, -1, 0, 1};
    private static SecureRandom sr = null;

    private IntegerFunctions() {
    }

    public static BigInteger binomial(int i, int i2) {
        BigInteger bigInteger = ONE;
        if (i == 0) {
            return i2 == 0 ? bigInteger : ZERO;
        }
        if (i2 > (i >>> 1)) {
            i2 = i - i2;
        }
        int i3 = 1;
        while (i3 <= i2) {
            BigInteger divide = bigInteger.multiply(BigInteger.valueOf((long) (i - (i3 - 1)))).divide(BigInteger.valueOf((long) i3));
            i3++;
            bigInteger = divide;
        }
        return bigInteger;
    }

    public static int bitCount(int i) {
        int i2 = 0;
        while (i != 0) {
            i2 += i & 1;
            i >>>= 1;
        }
        return i2;
    }

    public static int ceilLog(int i) {
        int i2 = 0;
        int i3 = 1;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    public static int ceilLog(BigInteger bigInteger) {
        int i = 0;
        for (BigInteger bigInteger2 = ONE; bigInteger2.compareTo(bigInteger) < 0; bigInteger2 = bigInteger2.shiftLeft(1)) {
            i++;
        }
        return i;
    }

    public static int ceilLog256(int i) {
        if (i == 0) {
            return 1;
        }
        if (i < 0) {
            i = -i;
        }
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 8;
        }
        return i2;
    }

    public static int ceilLog256(long j) {
        if (j == 0) {
            return 1;
        }
        if (j < 0) {
            j = -j;
        }
        int i = 0;
        while (j > 0) {
            i++;
            j >>>= 8;
        }
        return i;
    }

    public static BigInteger divideAndRound(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.signum() < 0 ? divideAndRound(bigInteger.negate(), bigInteger2).negate() : bigInteger2.signum() < 0 ? divideAndRound(bigInteger, bigInteger2.negate()).negate() : bigInteger.shiftLeft(1).add(bigInteger2).divide(bigInteger2.shiftLeft(1));
    }

    public static BigInteger[] divideAndRound(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        BigInteger[] bigIntegerArr2 = new BigInteger[bigIntegerArr.length];
        for (int i = 0; i < bigIntegerArr.length; i++) {
            bigIntegerArr2[i] = divideAndRound(bigIntegerArr[i], bigInteger);
        }
        return bigIntegerArr2;
    }

    public static int[] extGCD(int i, int i2) {
        BigInteger[] extgcd = extgcd(BigInteger.valueOf((long) i), BigInteger.valueOf((long) i2));
        return new int[]{extgcd[0].intValue(), extgcd[1].intValue(), extgcd[2].intValue()};
    }

    public static BigInteger[] extgcd(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3;
        BigInteger bigInteger4;
        BigInteger bigInteger5 = ONE;
        BigInteger bigInteger6 = ZERO;
        if (bigInteger2.signum() != 0) {
            bigInteger3 = bigInteger;
            bigInteger4 = bigInteger5;
            BigInteger bigInteger7 = ZERO;
            BigInteger bigInteger8 = bigInteger2;
            while (bigInteger8.signum() != 0) {
                BigInteger[] divideAndRemainder = bigInteger3.divideAndRemainder(bigInteger8);
                BigInteger bigInteger9 = divideAndRemainder[0];
                BigInteger bigInteger10 = divideAndRemainder[1];
                bigInteger3 = bigInteger8;
                bigInteger8 = bigInteger10;
                BigInteger subtract = bigInteger4.subtract(bigInteger9.multiply(bigInteger7));
                bigInteger4 = bigInteger7;
                bigInteger7 = subtract;
            }
            bigInteger6 = bigInteger3.subtract(bigInteger.multiply(bigInteger4)).divide(bigInteger2);
        } else {
            bigInteger3 = bigInteger;
            bigInteger4 = bigInteger5;
        }
        return new BigInteger[]{bigInteger3, bigInteger4, bigInteger6};
    }

    public static float floatPow(float f, int i) {
        float f2 = 1.0f;
        while (i > 0) {
            f2 *= f;
            i--;
        }
        return f2;
    }

    public static int floorLog(int i) {
        if (i <= 0) {
            return -1;
        }
        int i2 = 0;
        int i3 = i >>> 1;
        while (i3 > 0) {
            i3 >>>= 1;
            i2++;
        }
        return i2;
    }

    public static int floorLog(BigInteger bigInteger) {
        int i = -1;
        for (BigInteger bigInteger2 = ONE; bigInteger2.compareTo(bigInteger) <= 0; bigInteger2 = bigInteger2.shiftLeft(1)) {
            i++;
        }
        return i;
    }

    public static int gcd(int i, int i2) {
        return BigInteger.valueOf((long) i).gcd(BigInteger.valueOf((long) i2)).intValue();
    }

    public static float intRoot(int i, int i2) {
        float f = (float) (i / i2);
        float f2 = 0.0f;
        int i3 = 0;
        while (((double) Math.abs(f2 - f)) > 1.0E-4d) {
            float floatPow = floatPow(f, i2);
            while (Float.isInfinite(floatPow)) {
                float f3 = (f + f2) / 2.0f;
                f = f3;
                floatPow = floatPow(f3, i2);
            }
            i3++;
            float f4 = f;
            f -= (floatPow - ((float) i)) / (((float) i2) * floatPow(f, i2 - 1));
            f2 = f4;
        }
        return f;
    }

    public static byte[] integerToOctets(BigInteger bigInteger) {
        byte[] byteArray = bigInteger.abs().toByteArray();
        if ((bigInteger.bitLength() & 7) != 0) {
            return byteArray;
        }
        byte[] bArr = new byte[(bigInteger.bitLength() >> 3)];
        System.arraycopy(byteArray, 1, bArr, 0, bArr.length);
        return bArr;
    }

    public static boolean isIncreasing(int[] iArr) {
        for (int i = 1; i < iArr.length; i++) {
            if (iArr[i - 1] >= iArr[i]) {
                System.out.println("a[" + (i - 1) + "] = " + iArr[i - 1] + " >= " + iArr[i] + " = a[" + i + "]");
                return false;
            }
        }
        return true;
    }

    public static int isPower(int i, int i2) {
        if (i <= 0) {
            return -1;
        }
        int i3 = 0;
        while (i > 1) {
            if (i % i2 != 0) {
                return -1;
            }
            i /= i2;
            i3++;
        }
        return i3;
    }

    public static boolean isPrime(int i) {
        if (i < 2) {
            return false;
        }
        if (i == 2) {
            return true;
        }
        if ((i & 1) == 0) {
            return false;
        }
        if (i < 42) {
            for (int i2 : SMALL_PRIMES) {
                if (i == i2) {
                    return true;
                }
            }
        }
        if (i % 3 == 0 || i % 5 == 0 || i % 7 == 0 || i % 11 == 0 || i % 13 == 0 || i % 17 == 0 || i % 19 == 0 || i % 23 == 0 || i % 29 == 0 || i % 31 == 0 || i % 37 == 0 || i % 41 == 0) {
            return false;
        }
        return BigInteger.valueOf((long) i).isProbablePrime(20);
    }

    public static int jacobi(BigInteger bigInteger, BigInteger bigInteger2) {
        int i = 1;
        long j = 1;
        if (bigInteger2.equals(ZERO)) {
            if (!bigInteger.abs().equals(ONE)) {
                i = 0;
            }
            return i;
        } else if (!bigInteger.testBit(0) && !bigInteger2.testBit(0)) {
            return 0;
        } else {
            if (bigInteger2.signum() == -1) {
                bigInteger2 = bigInteger2.negate();
                if (bigInteger.signum() == -1) {
                    j = -1;
                }
            }
            BigInteger bigInteger3 = ZERO;
            while (!bigInteger2.testBit(0)) {
                bigInteger3 = bigInteger3.add(ONE);
                bigInteger2 = bigInteger2.divide(TWO);
            }
            if (bigInteger3.testBit(0)) {
                j *= (long) jacobiTable[bigInteger.intValue() & 7];
            }
            if (bigInteger.signum() < 0) {
                if (bigInteger2.testBit(1)) {
                    j = -j;
                }
                bigInteger = bigInteger.negate();
            }
            while (bigInteger.signum() != 0) {
                BigInteger bigInteger4 = ZERO;
                while (!bigInteger.testBit(0)) {
                    bigInteger4 = bigInteger4.add(ONE);
                    bigInteger = bigInteger.divide(TWO);
                }
                if (bigInteger4.testBit(0)) {
                    j *= (long) jacobiTable[bigInteger2.intValue() & 7];
                }
                if (bigInteger.compareTo(bigInteger2) < 0) {
                    if (!bigInteger2.testBit(1) || !bigInteger.testBit(1)) {
                        BigInteger bigInteger5 = bigInteger;
                        bigInteger = bigInteger2;
                        bigInteger2 = bigInteger5;
                    } else {
                        j = -j;
                        BigInteger bigInteger6 = bigInteger;
                        bigInteger = bigInteger2;
                        bigInteger2 = bigInteger6;
                    }
                }
                bigInteger = bigInteger.subtract(bigInteger2);
            }
            if (bigInteger2.equals(ONE)) {
                return (int) j;
            }
            return 0;
        }
    }

    public static BigInteger leastCommonMultiple(BigInteger[] bigIntegerArr) {
        int length = bigIntegerArr.length;
        BigInteger bigInteger = bigIntegerArr[0];
        for (int i = 1; i < length; i++) {
            bigInteger = bigInteger.multiply(bigIntegerArr[i]).divide(bigInteger.gcd(bigIntegerArr[i]));
        }
        return bigInteger;
    }

    public static int leastDiv(int i) {
        int i2 = i < 0 ? -i : i;
        if (i2 == 0) {
            return 1;
        }
        if ((i2 & 1) == 0) {
            return 2;
        }
        for (int i3 = 3; i3 <= i2 / i3; i3 += 2) {
            if (i2 % i3 == 0) {
                return i3;
            }
        }
        return i2;
    }

    public static double log(double d) {
        if (d > 0.0d && d < 1.0d) {
            return -log(1.0d / d);
        }
        int i = 0;
        double d2 = 1.0d;
        double d3 = d;
        while (d3 > 2.0d) {
            d3 /= 2.0d;
            i++;
            d2 *= 2.0d;
        }
        return logBKM(d / d2) + ((double) i);
    }

    public static double log(long j) {
        int floorLog = floorLog(BigInteger.valueOf(j));
        return ((double) floorLog) + logBKM(((double) j) / ((double) ((long) (1 << floorLog))));
    }

    private static double logBKM(double d) {
        double[] dArr = {1.0d, 0.5849625007211562d, 0.32192809488736235d, 0.16992500144231237d, 0.0874628412503394d, 0.044394119358453436d, 0.02236781302845451d, 0.01122725542325412d, 0.005624549193878107d, 0.0028150156070540383d, 0.0014081943928083889d, 7.042690112466433E-4d, 3.5217748030102726E-4d, 1.7609948644250602E-4d, 8.80524301221769E-5d, 4.4026886827316716E-5d, 2.2013611360340496E-5d, 1.1006847667481442E-5d, 5.503434330648604E-6d, 2.751719789561283E-6d, 1.375860550841138E-6d, 6.879304394358497E-7d, 3.4396526072176454E-7d, 1.7198264061184464E-7d, 8.599132286866321E-8d, 4.299566207501687E-8d, 2.1497831197679756E-8d, 1.0748915638882709E-8d, 5.374457829452062E-9d, 2.687228917228708E-9d, 1.3436144592400231E-9d, 6.718072297764289E-10d, 3.3590361492731876E-10d, 1.6795180747343547E-10d, 8.397590373916176E-11d, 4.1987951870191886E-11d, 2.0993975935248694E-11d, 1.0496987967662534E-11d, 5.2484939838408146E-12d, 2.624246991922794E-12d, 1.3121234959619935E-12d, 6.56061747981146E-13d, 3.2803087399061026E-13d, 1.6401543699531447E-13d, 8.200771849765956E-14d, 4.1003859248830365E-14d, 2.0501929624415328E-14d, 1.02509648122077E-14d, 5.1254824061038595E-15d, 2.5627412030519317E-15d, 1.2813706015259665E-15d, 6.406853007629834E-16d, 3.203426503814917E-16d, 1.6017132519074588E-16d, 8.008566259537294E-17d, 4.004283129768647E-17d, 2.0021415648843235E-17d, 1.0010707824421618E-17d, 5.005353912210809E-18d, 2.5026769561054044E-18d, 1.2513384780527022E-18d, 6.256692390263511E-19d, 3.1283461951317555E-19d, 1.5641730975658778E-19d, 7.820865487829389E-20d, 3.9104327439146944E-20d, 1.9552163719573472E-20d, 9.776081859786736E-21d, 4.888040929893368E-21d, 2.444020464946684E-21d, 1.222010232473342E-21d, 6.11005116236671E-22d, 3.055025581183355E-22d, 1.5275127905916775E-22d, 7.637563952958387E-23d, 3.818781976479194E-23d, 1.909390988239597E-23d, 9.546954941197984E-24d, 4.773477470598992E-24d, 2.386738735299496E-24d, 1.193369367649748E-24d, 5.96684683824874E-25d, 2.98342341912437E-25d, 1.491711709562185E-25d, 7.458558547810925E-26d, 3.7292792739054626E-26d, 1.8646396369527313E-26d, 9.323198184763657E-27d, 4.661599092381828E-27d, 2.330799546190914E-27d, 1.165399773095457E-27d, 5.826998865477285E-28d, 2.9134994327386427E-28d, 1.4567497163693213E-28d, 7.283748581846607E-29d, 3.6418742909233034E-29d, 1.8209371454616517E-29d, 9.104685727308258E-30d, 4.552342863654129E-30d, 2.2761714318270646E-30d};
        int i = 0;
        double d2 = 1.0d;
        double d3 = 0.0d;
        double d4 = 1.0d;
        while (i < 53) {
            double d5 = (d4 * d2) + d4;
            if (d5 <= d) {
                d3 += dArr[i];
            } else {
                d5 = d4;
            }
            d2 *= 0.5d;
            i++;
            d4 = d5;
        }
        return d3;
    }

    public static int maxPower(int i) {
        int i2 = 0;
        if (i != 0) {
            int i3 = 1;
            while ((i & i3) == 0) {
                i3 <<= 1;
                i2++;
            }
        }
        return i2;
    }

    public static long mod(long j, long j2) {
        long j3 = j % j2;
        return j3 < 0 ? j3 + j2 : j3;
    }

    public static int modInverse(int i, int i2) {
        return BigInteger.valueOf((long) i).modInverse(BigInteger.valueOf((long) i2)).intValue();
    }

    public static long modInverse(long j, long j2) {
        return BigInteger.valueOf(j).modInverse(BigInteger.valueOf(j2)).longValue();
    }

    public static int modPow(int i, int i2, int i3) {
        if (i3 <= 0 || i3 * i3 > Integer.MAX_VALUE || i2 < 0) {
            return 0;
        }
        int i4 = ((i % i3) + i3) % i3;
        int i5 = 1;
        while (i2 > 0) {
            if ((i2 & 1) == 1) {
                i5 = (i5 * i4) % i3;
            }
            i4 = (i4 * i4) % i3;
            i2 >>>= 1;
        }
        return i5;
    }

    public static BigInteger nextPrime(long j) {
        boolean z;
        long j2;
        boolean z2 = false;
        long j3 = 0;
        if (j <= 1) {
            return BigInteger.valueOf(2);
        }
        if (j == 2) {
            return BigInteger.valueOf(3);
        }
        long j4 = (1 & j) + 1 + j;
        while (j4 <= (j << 1) && !z2) {
            boolean z3 = z2;
            for (long j5 = 3; j5 <= (j4 >> 1) && !z3; j5 += 2) {
                if (j4 % j5 == 0) {
                    z3 = true;
                }
            }
            if (z3) {
                long j6 = j3;
                z = false;
                j2 = j6;
            } else {
                z = true;
                j2 = j4;
            }
            j4 += 2;
            z2 = z;
            j3 = j2;
        }
        return BigInteger.valueOf(j3);
    }

    public static BigInteger nextProbablePrime(BigInteger bigInteger) {
        return nextProbablePrime(bigInteger, 20);
    }

    public static BigInteger nextProbablePrime(BigInteger bigInteger, int i) {
        BigInteger bigInteger2;
        if (bigInteger.signum() < 0 || bigInteger.signum() == 0 || bigInteger.equals(ONE)) {
            return TWO;
        }
        BigInteger add = bigInteger.add(ONE);
        if (!add.testBit(0)) {
            add = add.add(ONE);
        }
        while (true) {
            if (bigInteger2.bitLength() > 6) {
                long longValue = bigInteger2.remainder(BigInteger.valueOf(SMALL_PRIME_PRODUCT)).longValue();
                if (longValue % 3 == 0 || longValue % 5 == 0 || longValue % 7 == 0 || longValue % 11 == 0 || longValue % 13 == 0 || longValue % 17 == 0 || longValue % 19 == 0 || longValue % 23 == 0 || longValue % 29 == 0 || longValue % 31 == 0 || longValue % 37 == 0 || longValue % 41 == 0) {
                    bigInteger2 = bigInteger2.add(TWO);
                }
            }
            if (bigInteger2.bitLength() < 4 || bigInteger2.isProbablePrime(i)) {
                return bigInteger2;
            }
            bigInteger2 = bigInteger2.add(TWO);
        }
    }

    public static int nextSmallerPrime(int i) {
        if (i <= 2) {
            return 1;
        }
        if (i == 3) {
            return 2;
        }
        int i2 = (i & 1) == 0 ? i - 1 : i - 2;
        while (true) {
            if (!(i2 > 3) || !(!isPrime(i2))) {
                return i2;
            }
            i2 -= 2;
        }
    }

    public static BigInteger octetsToInteger(byte[] bArr) {
        return octetsToInteger(bArr, 0, bArr.length);
    }

    public static BigInteger octetsToInteger(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[(i2 + 1)];
        bArr2[0] = 0;
        System.arraycopy(bArr, i, bArr2, 1, i2);
        return new BigInteger(bArr2);
    }

    public static int order(int i, int i2) {
        int i3 = i % i2;
        if (i3 == 0) {
            throw new IllegalArgumentException(i + " is not an element of Z/(" + i2 + "Z)^*; it is not meaningful to compute its order.");
        }
        int i4 = 1;
        while (i3 != 1) {
            i3 = (i3 * i) % i2;
            if (i3 < 0) {
                i3 += i2;
            }
            i4++;
        }
        return i4;
    }

    public static boolean passesSmallPrimeTest(BigInteger bigInteger) {
        int[] iArr = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, 163, CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, 199, Primes.SMALL_FACTOR_LIMIT, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, Error.E_WTSDK_TLV_DECRYPT, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, HttpStatus.SC_UNAUTHORIZED, HttpStatus.SC_CONFLICT, HttpStatus.SC_INSUFFICIENT_SPACE_ON_RESOURCE, 421, 431, 433, 439, ServerPort.PORT_443, 449, 457, 461, 463, 467, 479, 487, 491, 499, HttpStatus.SC_SERVICE_UNAVAILABLE, 509, 521, 523, Error.MNS_OPTI_IP_SESSION, Error.MNS_HEART_BEAT_PUSH, Error.IP_ADDRESS_NULL, Error.NOT_SUPPORT_SHORT_COMMAND, Error.MNS_OPEN_SESSION_FAILED_WIFI_REDIRECT_IN_POWERSAVING, Error.MNS_SCORE_IP_SUCCESS, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, MessageCmdID.CID_MSG_DATA_VALUE, MessageCmdID.CID_MSG_TIME_REQUEST_VALUE, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, PDF417Common.NUMBER_OF_CODEWORDS, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, PointerIconCompat.TYPE_ZOOM_OUT, 1021, GroupCmdID.CID_GROUP_CREATE_REQUEST_VALUE, GroupCmdID.CID_GROUP_CHANGE_MEMBER_REQUEST_VALUE, GroupCmdID.CID_GROUP_JUDGE_IN_GROUP_RESPONSE_VALUE, GroupCmdID.CID_GROUP_APPLY_JOIN_GROUP_TOAPPLICANT_NOTIFY_VALUE, GroupCmdID.CID_GROUP_INVITE_USER_JOIN_GROUP_REQ_ACK_VALUE, GroupCmdID.CID_GROUP_JOIN_CONFERENCE_REQUEST_VALUE, GroupCmdID.CID_GROUP_LEAVE_CONFERENCE_REQUEST_VALUE, GroupCmdID.CID_GROUP_LEAVE_GROUP_REQUEST_VALUE, 1087, 1091, 1093, 1097, AMapException.CODE_AMAP_ENGINE_RETURN_TIMEOUT, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, AMapException.CODE_AMAP_SERVICE_MISSING_REQUIRED_PARAMS, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, FileCmdID.CID_FILE_STATE_VALUE, FileCmdID.CID_FILE_HAS_OFFLINE_REQ_VALUE, FileCmdID.CID_FILE_ADD_OFFLINE_REQ_VALUE, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481, 1483, 1487, 1489, 1493, 1499};
        for (int i : iArr) {
            if (bigInteger.mod(BigInteger.valueOf((long) i)).equals(ZERO)) {
                return false;
            }
        }
        return true;
    }

    public static int pow(int i, int i2) {
        int i3 = 1;
        while (i2 > 0) {
            if ((i2 & 1) == 1) {
                i3 *= i;
            }
            i *= i;
            i2 >>>= 1;
        }
        return i3;
    }

    public static long pow(long j, int i) {
        long j2 = 1;
        while (i > 0) {
            if ((i & 1) == 1) {
                j2 *= j;
            }
            j *= j;
            i >>>= 1;
        }
        return j2;
    }

    public static BigInteger randomize(BigInteger bigInteger) {
        if (sr == null) {
            sr = new SecureRandom();
        }
        return randomize(bigInteger, sr);
    }

    public static BigInteger randomize(BigInteger bigInteger, SecureRandom secureRandom) {
        int bitLength = bigInteger.bitLength();
        BigInteger valueOf = BigInteger.valueOf(0);
        SecureRandom secureRandom2 = secureRandom == null ? sr != null ? sr : new SecureRandom() : secureRandom;
        BigInteger bigInteger2 = valueOf;
        for (int i = 0; i < 20; i++) {
            bigInteger2 = new BigInteger(bitLength, secureRandom2);
            if (bigInteger2.compareTo(bigInteger) < 0) {
                return bigInteger2;
            }
        }
        return bigInteger2.mod(bigInteger);
    }

    public static BigInteger reduceInto(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return bigInteger.subtract(bigInteger2).mod(bigInteger3.subtract(bigInteger2)).add(bigInteger2);
    }

    public static BigInteger ressol(BigInteger bigInteger, BigInteger bigInteger2) throws IllegalArgumentException {
        if (bigInteger.compareTo(ZERO) < 0) {
            bigInteger = bigInteger.add(bigInteger2);
        }
        if (bigInteger.equals(ZERO)) {
            return ZERO;
        }
        if (bigInteger2.equals(TWO)) {
            return bigInteger;
        }
        if (!bigInteger2.testBit(0) || !bigInteger2.testBit(1)) {
            BigInteger subtract = bigInteger2.subtract(ONE);
            long j = 0;
            while (!subtract.testBit(0)) {
                j++;
                subtract = subtract.shiftRight(1);
            }
            BigInteger shiftRight = subtract.subtract(ONE).shiftRight(1);
            BigInteger modPow = bigInteger.modPow(shiftRight, bigInteger2);
            BigInteger remainder = modPow.multiply(modPow).remainder(bigInteger2).multiply(bigInteger).remainder(bigInteger2);
            BigInteger remainder2 = modPow.multiply(bigInteger).remainder(bigInteger2);
            if (remainder.equals(ONE)) {
                return remainder2;
            }
            BigInteger bigInteger3 = TWO;
            while (jacobi(bigInteger3, bigInteger2) == 1) {
                bigInteger3 = bigInteger3.add(ONE);
            }
            BigInteger modPow2 = bigInteger3.modPow(shiftRight.multiply(TWO).add(ONE), bigInteger2);
            BigInteger bigInteger4 = remainder2;
            long j2 = j;
            BigInteger bigInteger5 = modPow2;
            BigInteger bigInteger6 = remainder;
            while (bigInteger6.compareTo(ONE) == 1) {
                long j3 = 0;
                BigInteger bigInteger7 = bigInteger6;
                while (!bigInteger7.equals(ONE)) {
                    bigInteger7 = bigInteger7.multiply(bigInteger7).mod(bigInteger2);
                    j3++;
                }
                long j4 = j2 - j3;
                if (j4 == 0) {
                    throw new IllegalArgumentException("No quadratic residue: " + bigInteger + ", " + bigInteger2);
                }
                BigInteger bigInteger8 = ONE;
                for (long j5 = 0; j5 < j4 - 1; j5++) {
                    bigInteger8 = bigInteger8.shiftLeft(1);
                }
                BigInteger modPow3 = bigInteger5.modPow(bigInteger8, bigInteger2);
                bigInteger4 = bigInteger4.multiply(modPow3).remainder(bigInteger2);
                bigInteger5 = modPow3.multiply(modPow3).remainder(bigInteger2);
                bigInteger6 = bigInteger6.multiply(bigInteger5).mod(bigInteger2);
                j2 = j3;
            }
            return bigInteger4;
        } else if (jacobi(bigInteger, bigInteger2) == 1) {
            return bigInteger.modPow(bigInteger2.add(ONE).shiftRight(2), bigInteger2);
        } else {
            throw new IllegalArgumentException("No quadratic residue: " + bigInteger + ", " + bigInteger2);
        }
    }

    public static BigInteger squareRoot(BigInteger bigInteger) {
        BigInteger bigInteger2;
        int i;
        BigInteger bigInteger3;
        int i2;
        if (bigInteger.compareTo(ZERO) < 0) {
            throw new ArithmeticException("cannot extract root of negative number" + bigInteger + ".");
        }
        int bitLength = bigInteger.bitLength();
        BigInteger bigInteger4 = ZERO;
        BigInteger bigInteger5 = ZERO;
        if ((bitLength & 1) != 0) {
            BigInteger add = bigInteger4.add(ONE);
            i = bitLength - 1;
            bigInteger2 = add;
        } else {
            BigInteger bigInteger6 = bigInteger4;
            i = bitLength;
            bigInteger2 = bigInteger6;
        }
        while (i > 0) {
            int i3 = i - 1;
            int i4 = i3 - 1;
            bigInteger5 = bigInteger5.multiply(FOUR).add(BigInteger.valueOf((long) ((bigInteger.testBit(i3) ? 2 : 0) + (bigInteger.testBit(i4) ? 1 : 0))));
            BigInteger add2 = bigInteger2.multiply(FOUR).add(ONE);
            BigInteger multiply = bigInteger2.multiply(TWO);
            if (bigInteger5.compareTo(add2) != -1) {
                BigInteger add3 = multiply.add(ONE);
                bigInteger5 = bigInteger5.subtract(add2);
                bigInteger3 = add3;
                i2 = i4;
            } else {
                bigInteger3 = multiply;
                i2 = i4;
            }
        }
        return bigInteger2;
    }
}
