package org.bouncycastle.crypto.generators;

import com.autonavi.ae.gmap.utils.GLMapStaticValue;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.bouncycastle.crypto.params.GOST3410Parameters;
import org.bouncycastle.crypto.params.GOST3410ValidationParameters;

public class GOST3410ParametersGenerator {
    private static final BigInteger ONE = BigInteger.valueOf(1);
    private static final BigInteger TWO = BigInteger.valueOf(2);
    private SecureRandom init_random;
    private int size;
    private int typeproc;

    private int procedure_A(int i, int i2, BigInteger[] bigIntegerArr, int i3) {
        while (true) {
            if (i >= 0 && i <= 65536) {
                break;
            }
            i = this.init_random.nextInt() / 32768;
        }
        while (true) {
            if (i2 >= 0 && i2 <= 65536 && i2 / 2 != 0) {
                break;
            }
            i2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger bigInteger = new BigInteger(Integer.toString(i2));
        BigInteger bigInteger2 = new BigInteger("19381");
        BigInteger[] bigIntegerArr2 = {new BigInteger(Integer.toString(i))};
        int[] iArr = {i3};
        int i4 = 0;
        for (int i5 = 0; iArr[i5] >= 17; i5++) {
            int[] iArr2 = new int[(iArr.length + 1)];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            iArr[i5 + 1] = iArr[i5] / 2;
            i4 = i5 + 1;
        }
        BigInteger[] bigIntegerArr3 = new BigInteger[(i4 + 1)];
        bigIntegerArr3[i4] = new BigInteger("8003", 16);
        int i6 = 0;
        int i7 = i4 - 1;
        BigInteger[] bigIntegerArr4 = bigIntegerArr2;
        while (i6 < i4) {
            int i8 = iArr[i7] / 16;
            while (true) {
                BigInteger[] bigIntegerArr5 = new BigInteger[bigIntegerArr4.length];
                System.arraycopy(bigIntegerArr4, 0, bigIntegerArr5, 0, bigIntegerArr4.length);
                bigIntegerArr4 = new BigInteger[(i8 + 1)];
                System.arraycopy(bigIntegerArr5, 0, bigIntegerArr4, 0, bigIntegerArr5.length);
                for (int i9 = 0; i9 < i8; i9++) {
                    bigIntegerArr4[i9 + 1] = bigIntegerArr4[i9].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
                }
                BigInteger bigInteger3 = new BigInteger("0");
                for (int i10 = 0; i10 < i8; i10++) {
                    bigInteger3 = bigInteger3.add(bigIntegerArr4[i10].multiply(TWO.pow(i10 * 16)));
                }
                bigIntegerArr4[0] = bigIntegerArr4[i8];
                BigInteger add = TWO.pow(iArr[i7] - 1).divide(bigIntegerArr3[i7 + 1]).add(TWO.pow(iArr[i7] - 1).multiply(bigInteger3).divide(bigIntegerArr3[i7 + 1].multiply(TWO.pow(i8 * 16))));
                if (add.mod(TWO).compareTo(ONE) == 0) {
                    add = add.add(ONE);
                }
                int i11 = 0;
                while (true) {
                    bigIntegerArr3[i7] = bigIntegerArr3[i7 + 1].multiply(add.add(BigInteger.valueOf((long) i11))).add(ONE);
                    if (bigIntegerArr3[i7].compareTo(TWO.pow(iArr[i7])) != 1) {
                        if (TWO.modPow(bigIntegerArr3[i7 + 1].multiply(add.add(BigInteger.valueOf((long) i11))), bigIntegerArr3[i7]).compareTo(ONE) == 0 && TWO.modPow(add.add(BigInteger.valueOf((long) i11)), bigIntegerArr3[i7]).compareTo(ONE) != 0) {
                            break;
                        }
                        i11 += 2;
                    }
                }
            }
            int i12 = i7 - 1;
            if (i12 >= 0) {
                i6++;
                i7 = i12;
            } else {
                bigIntegerArr[0] = bigIntegerArr3[0];
                bigIntegerArr[1] = bigIntegerArr3[1];
                return bigIntegerArr4[0].intValue();
            }
        }
        return bigIntegerArr4[0].intValue();
    }

    private long procedure_Aa(long j, long j2, BigInteger[] bigIntegerArr, int i) {
        while (true) {
            if (j >= 0 && j <= 4294967296L) {
                break;
            }
            j = (long) (this.init_random.nextInt() * 2);
        }
        while (true) {
            if (j2 >= 0 && j2 <= 4294967296L && j2 / 2 != 0) {
                break;
            }
            j2 = (long) ((this.init_random.nextInt() * 2) + 1);
        }
        BigInteger bigInteger = new BigInteger(Long.toString(j2));
        BigInteger bigInteger2 = new BigInteger("97781173");
        BigInteger[] bigIntegerArr2 = {new BigInteger(Long.toString(j))};
        int[] iArr = {i};
        int i2 = 0;
        for (int i3 = 0; iArr[i3] >= 33; i3++) {
            int[] iArr2 = new int[(iArr.length + 1)];
            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
            iArr = new int[iArr2.length];
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            iArr[i3 + 1] = iArr[i3] / 2;
            i2 = i3 + 1;
        }
        BigInteger[] bigIntegerArr3 = new BigInteger[(i2 + 1)];
        bigIntegerArr3[i2] = new BigInteger("8000000B", 16);
        int i4 = 0;
        int i5 = i2 - 1;
        BigInteger[] bigIntegerArr4 = bigIntegerArr2;
        while (i4 < i2) {
            int i6 = iArr[i5] / 32;
            while (true) {
                BigInteger[] bigIntegerArr5 = new BigInteger[bigIntegerArr4.length];
                System.arraycopy(bigIntegerArr4, 0, bigIntegerArr5, 0, bigIntegerArr4.length);
                bigIntegerArr4 = new BigInteger[(i6 + 1)];
                System.arraycopy(bigIntegerArr5, 0, bigIntegerArr4, 0, bigIntegerArr5.length);
                for (int i7 = 0; i7 < i6; i7++) {
                    bigIntegerArr4[i7 + 1] = bigIntegerArr4[i7].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
                }
                BigInteger bigInteger3 = new BigInteger("0");
                for (int i8 = 0; i8 < i6; i8++) {
                    bigInteger3 = bigInteger3.add(bigIntegerArr4[i8].multiply(TWO.pow(i8 * 32)));
                }
                bigIntegerArr4[0] = bigIntegerArr4[i6];
                BigInteger add = TWO.pow(iArr[i5] - 1).divide(bigIntegerArr3[i5 + 1]).add(TWO.pow(iArr[i5] - 1).multiply(bigInteger3).divide(bigIntegerArr3[i5 + 1].multiply(TWO.pow(i6 * 32))));
                if (add.mod(TWO).compareTo(ONE) == 0) {
                    add = add.add(ONE);
                }
                int i9 = 0;
                while (true) {
                    bigIntegerArr3[i5] = bigIntegerArr3[i5 + 1].multiply(add.add(BigInteger.valueOf((long) i9))).add(ONE);
                    if (bigIntegerArr3[i5].compareTo(TWO.pow(iArr[i5])) != 1) {
                        if (TWO.modPow(bigIntegerArr3[i5 + 1].multiply(add.add(BigInteger.valueOf((long) i9))), bigIntegerArr3[i5]).compareTo(ONE) == 0 && TWO.modPow(add.add(BigInteger.valueOf((long) i9)), bigIntegerArr3[i5]).compareTo(ONE) != 0) {
                            break;
                        }
                        i9 += 2;
                    }
                }
            }
            int i10 = i5 - 1;
            if (i10 >= 0) {
                i4++;
                i5 = i10;
            } else {
                bigIntegerArr[0] = bigIntegerArr3[0];
                bigIntegerArr[1] = bigIntegerArr3[1];
                return bigIntegerArr4[0].longValue();
            }
        }
        return bigIntegerArr4[0].longValue();
    }

    private void procedure_B(int i, int i2, BigInteger[] bigIntegerArr) {
        while (true) {
            if (i >= 0 && i <= 65536) {
                break;
            }
            i = this.init_random.nextInt() / 32768;
        }
        while (true) {
            if (i2 >= 0 && i2 <= 65536 && i2 / 2 != 0) {
                break;
            }
            i2 = (this.init_random.nextInt() / 32768) + 1;
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Integer.toString(i2));
        BigInteger bigInteger2 = new BigInteger("19381");
        int procedure_A = procedure_A(i, i2, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        int procedure_A2 = procedure_A(procedure_A, i2, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[65];
        bigIntegerArr3[0] = new BigInteger(Integer.toString(procedure_A2));
        while (true) {
            for (int i3 = 0; i3 < 64; i3++) {
                bigIntegerArr3[i3 + 1] = bigIntegerArr3[i3].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(16));
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i4 = 0; i4 < 64; i4++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i4].multiply(TWO.pow(i4 * 16)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[64];
            BigInteger add = TWO.pow(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW).divide(bigInteger3.multiply(bigInteger4)).add(TWO.pow(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(TWO.pow(1024))));
            if (add.mod(TWO).compareTo(ONE) == 0) {
                add = add.add(ONE);
            }
            int i5 = 0;
            while (true) {
                BigInteger add2 = bigInteger3.multiply(bigInteger4).multiply(add.add(BigInteger.valueOf((long) i5))).add(ONE);
                if (add2.compareTo(TWO.pow(1024)) != 1) {
                    if (TWO.modPow(bigInteger3.multiply(bigInteger4).multiply(add.add(BigInteger.valueOf((long) i5))), add2).compareTo(ONE) != 0 || TWO.modPow(bigInteger3.multiply(add.add(BigInteger.valueOf((long) i5))), add2).compareTo(ONE) == 0) {
                        i5 += 2;
                    } else {
                        bigIntegerArr[0] = add2;
                        bigIntegerArr[1] = bigInteger3;
                        return;
                    }
                }
            }
        }
    }

    private void procedure_Bb(long j, long j2, BigInteger[] bigIntegerArr) {
        long j3 = j;
        while (true) {
            if (j3 >= 0 && j3 <= 4294967296L) {
                break;
            }
            j3 = (long) (this.init_random.nextInt() * 2);
        }
        long j4 = j2;
        while (true) {
            if (j4 >= 0 && j4 <= 4294967296L && j4 / 2 != 0) {
                break;
            }
            j4 = (long) ((this.init_random.nextInt() * 2) + 1);
        }
        BigInteger[] bigIntegerArr2 = new BigInteger[2];
        BigInteger bigInteger = new BigInteger(Long.toString(j4));
        BigInteger bigInteger2 = new BigInteger("97781173");
        long procedure_Aa = procedure_Aa(j3, j4, bigIntegerArr2, 256);
        BigInteger bigInteger3 = bigIntegerArr2[0];
        long procedure_Aa2 = procedure_Aa(procedure_Aa, j4, bigIntegerArr2, 512);
        BigInteger bigInteger4 = bigIntegerArr2[0];
        BigInteger[] bigIntegerArr3 = new BigInteger[33];
        bigIntegerArr3[0] = new BigInteger(Long.toString(procedure_Aa2));
        while (true) {
            for (int i = 0; i < 32; i++) {
                bigIntegerArr3[i + 1] = bigIntegerArr3[i].multiply(bigInteger2).add(bigInteger).mod(TWO.pow(32));
            }
            BigInteger bigInteger5 = new BigInteger("0");
            for (int i2 = 0; i2 < 32; i2++) {
                bigInteger5 = bigInteger5.add(bigIntegerArr3[i2].multiply(TWO.pow(i2 * 32)));
            }
            bigIntegerArr3[0] = bigIntegerArr3[32];
            BigInteger add = TWO.pow(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW).divide(bigInteger3.multiply(bigInteger4)).add(TWO.pow(GLMapStaticValue.AM_PARAMETERNAME_PROCESS_ROADARROW).multiply(bigInteger5).divide(bigInteger3.multiply(bigInteger4).multiply(TWO.pow(1024))));
            if (add.mod(TWO).compareTo(ONE) == 0) {
                add = add.add(ONE);
            }
            int i3 = 0;
            while (true) {
                BigInteger add2 = bigInteger3.multiply(bigInteger4).multiply(add.add(BigInteger.valueOf((long) i3))).add(ONE);
                if (add2.compareTo(TWO.pow(1024)) != 1) {
                    if (TWO.modPow(bigInteger3.multiply(bigInteger4).multiply(add.add(BigInteger.valueOf((long) i3))), add2).compareTo(ONE) != 0 || TWO.modPow(bigInteger3.multiply(add.add(BigInteger.valueOf((long) i3))), add2).compareTo(ONE) == 0) {
                        i3 += 2;
                    } else {
                        bigIntegerArr[0] = add2;
                        bigIntegerArr[1] = bigInteger3;
                        return;
                    }
                }
            }
        }
    }

    private BigInteger procedure_C(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger subtract = bigInteger.subtract(ONE);
        BigInteger divide = subtract.divide(bigInteger2);
        int bitLength = bigInteger.bitLength();
        while (true) {
            BigInteger bigInteger3 = new BigInteger(bitLength, this.init_random);
            if (bigInteger3.compareTo(ONE) > 0 && bigInteger3.compareTo(subtract) < 0) {
                BigInteger modPow = bigInteger3.modPow(divide, bigInteger);
                if (modPow.compareTo(ONE) != 0) {
                    return modPow;
                }
            }
        }
    }

    public GOST3410Parameters generateParameters() {
        BigInteger[] bigIntegerArr = new BigInteger[2];
        if (this.typeproc == 1) {
            int nextInt = this.init_random.nextInt();
            int nextInt2 = this.init_random.nextInt();
            switch (this.size) {
                case 512:
                    procedure_A(nextInt, nextInt2, bigIntegerArr, 512);
                    break;
                case 1024:
                    procedure_B(nextInt, nextInt2, bigIntegerArr);
                    break;
                default:
                    throw new IllegalArgumentException("Ooops! key size 512 or 1024 bit.");
            }
            BigInteger bigInteger = bigIntegerArr[0];
            BigInteger bigInteger2 = bigIntegerArr[1];
            return new GOST3410Parameters(bigInteger, bigInteger2, procedure_C(bigInteger, bigInteger2), new GOST3410ValidationParameters(nextInt, nextInt2));
        }
        long nextLong = this.init_random.nextLong();
        long nextLong2 = this.init_random.nextLong();
        switch (this.size) {
            case 512:
                procedure_Aa(nextLong, nextLong2, bigIntegerArr, 512);
                break;
            case 1024:
                procedure_Bb(nextLong, nextLong2, bigIntegerArr);
                break;
            default:
                throw new IllegalStateException("Ooops! key size 512 or 1024 bit.");
        }
        BigInteger bigInteger3 = bigIntegerArr[0];
        BigInteger bigInteger4 = bigIntegerArr[1];
        return new GOST3410Parameters(bigInteger3, bigInteger4, procedure_C(bigInteger3, bigInteger4), new GOST3410ValidationParameters(nextLong, nextLong2));
    }

    public void init(int i, int i2, SecureRandom secureRandom) {
        this.size = i;
        this.typeproc = i2;
        this.init_random = secureRandom;
    }
}
