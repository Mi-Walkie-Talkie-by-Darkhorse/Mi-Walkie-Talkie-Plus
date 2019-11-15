package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

public abstract class Nat160 {
    private static final long M = 4294967295L;

    public static int add(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0 + (((long) iArr[0]) & M) + (((long) iArr2[0]) & M);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + (((long) iArr2[1]) & M);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & M) + (((long) iArr2[2]) & M);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & M) + (((long) iArr2[3]) & M);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & M) + (((long) iArr2[4]) & M);
        iArr3[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addBothTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0 + (((long) iArr[0]) & M) + (((long) iArr2[0]) & M) + (((long) iArr3[0]) & M);
        iArr3[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + (((long) iArr2[1]) & M) + (((long) iArr3[1]) & M);
        iArr3[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & M) + (((long) iArr2[2]) & M) + (((long) iArr3[2]) & M);
        iArr3[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & M) + (((long) iArr2[3]) & M) + (((long) iArr3[3]) & M);
        iArr3[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & M) + (((long) iArr2[4]) & M) + (((long) iArr3[4]) & M);
        iArr3[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addTo(int[] iArr, int i, int[] iArr2, int i2, int i3) {
        long j = (((long) i3) & M) + (((long) iArr[i + 0]) & M) + (((long) iArr2[i2 + 0]) & M);
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i + 1]) & M) + (((long) iArr2[i2 + 1]) & M);
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[i + 2]) & M) + (((long) iArr2[i2 + 2]) & M);
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[i + 3]) & M) + (((long) iArr2[i2 + 3]) & M);
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[i + 4]) & M) + (((long) iArr2[i2 + 4]) & M);
        iArr2[i2 + 4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addTo(int[] iArr, int[] iArr2) {
        long j = 0 + (((long) iArr[0]) & M) + (((long) iArr2[0]) & M);
        iArr2[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + (((long) iArr2[1]) & M);
        iArr2[1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[2]) & M) + (((long) iArr2[2]) & M);
        iArr2[2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[3]) & M) + (((long) iArr2[3]) & M);
        iArr2[3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[4]) & M) + (((long) iArr2[4]) & M);
        iArr2[4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static int addToEachOther(int[] iArr, int i, int[] iArr2, int i2) {
        long j = 0 + (((long) iArr[i + 0]) & M) + (((long) iArr2[i2 + 0]) & M);
        iArr[i + 0] = (int) j;
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i + 1]) & M) + (((long) iArr2[i2 + 1]) & M);
        iArr[i + 1] = (int) j2;
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[i + 2]) & M) + (((long) iArr2[i2 + 2]) & M);
        iArr[i + 2] = (int) j3;
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[i + 3]) & M) + (((long) iArr2[i2 + 3]) & M);
        iArr[i + 3] = (int) j4;
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[i + 4]) & M) + (((long) iArr2[i2 + 4]) & M);
        iArr[i + 4] = (int) j5;
        iArr2[i2 + 4] = (int) j5;
        return (int) (j5 >>> 32);
    }

    public static void copy(int[] iArr, int[] iArr2) {
        iArr2[0] = iArr[0];
        iArr2[1] = iArr[1];
        iArr2[2] = iArr[2];
        iArr2[3] = iArr[3];
        iArr2[4] = iArr[4];
    }

    public static int[] create() {
        return new int[5];
    }

    public static int[] createExt() {
        return new int[10];
    }

    public static boolean diff(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        boolean gte = gte(iArr, i, iArr2, i2);
        if (gte) {
            sub(iArr, i, iArr2, i2, iArr3, i3);
        } else {
            sub(iArr2, i2, iArr, i, iArr3, i3);
        }
        return gte;
    }

    public static boolean eq(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            if (iArr[i] != iArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] create = create();
        int i = 0;
        while (bigInteger.signum() != 0) {
            int i2 = i + 1;
            create[i] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i = i2;
        }
        return create;
    }

    public static int getBit(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= 5) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean gte(int[] iArr, int i, int[] iArr2, int i2) {
        for (int i3 = 4; i3 >= 0; i3--) {
            int i4 = iArr[i + i3] ^ Integer.MIN_VALUE;
            int i5 = iArr2[i2 + i3] ^ Integer.MIN_VALUE;
            if (i4 < i5) {
                return false;
            }
            if (i4 > i5) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int[] iArr, int[] iArr2) {
        for (int i = 4; i >= 0; i--) {
            int i2 = iArr[i] ^ Integer.MIN_VALUE;
            int i3 = iArr2[i] ^ Integer.MIN_VALUE;
            if (i2 < i3) {
                return false;
            }
            if (i2 > i3) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i = 1; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] iArr) {
        for (int i = 0; i < 5; i++) {
            if (iArr[i] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = M & ((long) iArr2[i2 + 0]);
        long j2 = M & ((long) iArr2[i2 + 1]);
        long j3 = M & ((long) iArr2[i2 + 2]);
        long j4 = M & ((long) iArr2[i2 + 3]);
        long j5 = M & ((long) iArr2[i2 + 4]);
        long j6 = ((long) iArr[i + 0]) & M;
        long j7 = 0 + (j6 * j);
        iArr3[i3 + 0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        iArr3[i3 + 1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[i3 + 2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[i3 + 3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[i3 + 4] = (int) j11;
        iArr3[i3 + 5] = (int) (j11 >>> 32);
        for (int i4 = 1; i4 < 5; i4++) {
            i3++;
            long j12 = ((long) iArr[i + i4]) & M;
            long j13 = 0 + (j12 * j) + (((long) iArr3[i3 + 0]) & M);
            iArr3[i3 + 0] = (int) j13;
            long j14 = (j13 >>> 32) + (j12 * j2) + (((long) iArr3[i3 + 1]) & M);
            iArr3[i3 + 1] = (int) j14;
            long j15 = (j14 >>> 32) + (j12 * j3) + (((long) iArr3[i3 + 2]) & M);
            iArr3[i3 + 2] = (int) j15;
            long j16 = (j15 >>> 32) + (j12 * j4) + (((long) iArr3[i3 + 3]) & M);
            iArr3[i3 + 3] = (int) j16;
            long j17 = (j16 >>> 32) + (j12 * j5) + (((long) iArr3[i3 + 4]) & M);
            iArr3[i3 + 4] = (int) j17;
            iArr3[i3 + 5] = (int) (j17 >>> 32);
        }
    }

    public static void mul(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = M & ((long) iArr2[0]);
        long j2 = M & ((long) iArr2[1]);
        long j3 = M & ((long) iArr2[2]);
        long j4 = M & ((long) iArr2[3]);
        long j5 = M & ((long) iArr2[4]);
        long j6 = ((long) iArr[0]) & M;
        long j7 = 0 + (j6 * j);
        iArr3[0] = (int) j7;
        long j8 = (j7 >>> 32) + (j6 * j2);
        iArr3[1] = (int) j8;
        long j9 = (j8 >>> 32) + (j6 * j3);
        iArr3[2] = (int) j9;
        long j10 = (j9 >>> 32) + (j6 * j4);
        iArr3[3] = (int) j10;
        long j11 = (j10 >>> 32) + (j6 * j5);
        iArr3[4] = (int) j11;
        iArr3[5] = (int) (j11 >>> 32);
        for (int i = 1; i < 5; i++) {
            long j12 = ((long) iArr[i]) & M;
            long j13 = 0 + (j12 * j) + (((long) iArr3[i + 0]) & M);
            iArr3[i + 0] = (int) j13;
            long j14 = (j13 >>> 32) + (j12 * j2) + (((long) iArr3[i + 1]) & M);
            iArr3[i + 1] = (int) j14;
            long j15 = (j14 >>> 32) + (j12 * j3) + (((long) iArr3[i + 2]) & M);
            iArr3[i + 2] = (int) j15;
            long j16 = (j15 >>> 32) + (j12 * j4) + (((long) iArr3[i + 3]) & M);
            iArr3[i + 3] = (int) j16;
            long j17 = (j16 >>> 32) + (j12 * j5) + (((long) iArr3[i + 4]) & M);
            iArr3[i + 4] = (int) j17;
            iArr3[i + 5] = (int) (j17 >>> 32);
        }
    }

    public static long mul33Add(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = ((long) i) & M;
        long j2 = ((long) iArr[i2 + 0]) & M;
        long j3 = 0 + (j * j2) + (((long) iArr2[i3 + 0]) & M);
        iArr3[i4 + 0] = (int) j3;
        long j4 = ((long) iArr[i2 + 1]) & M;
        long j5 = (j3 >>> 32) + j2 + (j * j4) + (((long) iArr2[i3 + 1]) & M);
        iArr3[i4 + 1] = (int) j5;
        long j6 = ((long) iArr[i2 + 2]) & M;
        long j7 = (j5 >>> 32) + j4 + (j * j6) + (((long) iArr2[i3 + 2]) & M);
        iArr3[i4 + 2] = (int) j7;
        long j8 = ((long) iArr[i2 + 3]) & M;
        long j9 = (j7 >>> 32) + j6 + (j * j8) + (((long) iArr2[i3 + 3]) & M);
        iArr3[i4 + 3] = (int) j9;
        long j10 = ((long) iArr[i2 + 4]) & M;
        long j11 = (j9 >>> 32) + (j * j10) + j8 + (((long) iArr2[i3 + 4]) & M);
        iArr3[i4 + 4] = (int) j11;
        return (j11 >>> 32) + j10;
    }

    public static int mul33DWordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = ((long) i) & M;
        long j3 = M & j;
        long j4 = 0 + (j2 * j3) + (((long) iArr[i2 + 0]) & M);
        iArr[i2 + 0] = (int) j4;
        long j5 = j >>> 32;
        long j6 = (j4 >>> 32) + (j2 * j5) + j3 + (((long) iArr[i2 + 1]) & M);
        iArr[i2 + 1] = (int) j6;
        long j7 = (j6 >>> 32) + (((long) iArr[i2 + 2]) & M) + j5;
        iArr[i2 + 2] = (int) j7;
        long j8 = (j7 >>> 32) + (((long) iArr[i2 + 3]) & M);
        iArr[i2 + 3] = (int) j8;
        if ((j8 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i2, 4);
    }

    public static int mul33WordAdd(int i, int i2, int[] iArr, int i3) {
        long j = ((long) i2) & M;
        long j2 = ((((long) i) & M) * j) + (((long) iArr[i3 + 0]) & M) + 0;
        iArr[i3 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + j + (((long) iArr[i3 + 1]) & M);
        iArr[i3 + 1] = (int) j3;
        long j4 = (j3 >>> 32) + (((long) iArr[i3 + 2]) & M);
        iArr[i3 + 2] = (int) j4;
        if ((j4 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i3, 3);
    }

    public static int mulAddTo(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = ((long) iArr2[i2 + 0]) & M;
        long j2 = ((long) iArr2[i2 + 1]) & M;
        long j3 = ((long) iArr2[i2 + 2]) & M;
        long j4 = ((long) iArr2[i2 + 3]) & M;
        long j5 = ((long) iArr2[i2 + 4]) & M;
        long j6 = 0;
        for (int i4 = 0; i4 < 5; i4++) {
            long j7 = ((long) iArr[i + i4]) & M;
            long j8 = 0 + (j7 * j) + (((long) iArr3[i3 + 0]) & M);
            iArr3[i3 + 0] = (int) j8;
            long j9 = (j8 >>> 32) + (j7 * j2) + (((long) iArr3[i3 + 1]) & M);
            iArr3[i3 + 1] = (int) j9;
            long j10 = (j9 >>> 32) + (j7 * j3) + (((long) iArr3[i3 + 2]) & M);
            iArr3[i3 + 2] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * j4) + (((long) iArr3[i3 + 3]) & M);
            iArr3[i3 + 3] = (int) j11;
            long j12 = (j11 >>> 32) + (j7 * j5) + (((long) iArr3[i3 + 4]) & M);
            iArr3[i3 + 4] = (int) j12;
            long j13 = j6 + (((long) iArr3[i3 + 5]) & M) + (j12 >>> 32);
            iArr3[i3 + 5] = (int) j13;
            j6 = j13 >>> 32;
            i3++;
        }
        return (int) j6;
    }

    public static int mulAddTo(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = ((long) iArr2[0]) & M;
        long j2 = ((long) iArr2[1]) & M;
        long j3 = ((long) iArr2[2]) & M;
        long j4 = ((long) iArr2[3]) & M;
        long j5 = ((long) iArr2[4]) & M;
        long j6 = 0;
        for (int i = 0; i < 5; i++) {
            long j7 = ((long) iArr[i]) & M;
            long j8 = 0 + (j7 * j) + (((long) iArr3[i + 0]) & M);
            iArr3[i + 0] = (int) j8;
            long j9 = (j8 >>> 32) + (j7 * j2) + (((long) iArr3[i + 1]) & M);
            iArr3[i + 1] = (int) j9;
            long j10 = (j9 >>> 32) + (j7 * j3) + (((long) iArr3[i + 2]) & M);
            iArr3[i + 2] = (int) j10;
            long j11 = (j10 >>> 32) + (j7 * j4) + (((long) iArr3[i + 3]) & M);
            iArr3[i + 3] = (int) j11;
            long j12 = (j11 >>> 32) + (j7 * j5) + (((long) iArr3[i + 4]) & M);
            iArr3[i + 4] = (int) j12;
            long j13 = j6 + (((long) iArr3[i + 5]) & M) + (j12 >>> 32);
            iArr3[i + 5] = (int) j13;
            j6 = j13 >>> 32;
        }
        return (int) j6;
    }

    public static int mulWord(int i, int[] iArr, int[] iArr2, int i2) {
        long j = 0;
        long j2 = ((long) i) & M;
        int i3 = 0;
        do {
            long j3 = j + ((((long) iArr[i3]) & M) * j2);
            iArr2[i2 + i3] = (int) j3;
            j = j3 >>> 32;
            i3++;
        } while (i3 < 5);
        return (int) j;
    }

    public static int mulWordAddExt(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = ((long) i) & M;
        long j2 = 0 + ((((long) iArr[i2 + 0]) & M) * j) + (((long) iArr2[i3 + 0]) & M);
        iArr2[i3 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + ((((long) iArr[i2 + 1]) & M) * j) + (((long) iArr2[i3 + 1]) & M);
        iArr2[i3 + 1] = (int) j3;
        long j4 = (j3 >>> 32) + ((((long) iArr[i2 + 2]) & M) * j) + (((long) iArr2[i3 + 2]) & M);
        iArr2[i3 + 2] = (int) j4;
        long j5 = (j4 >>> 32) + ((((long) iArr[i2 + 3]) & M) * j) + (((long) iArr2[i3 + 3]) & M);
        iArr2[i3 + 3] = (int) j5;
        long j6 = (j5 >>> 32) + (j * (((long) iArr[i2 + 4]) & M)) + (((long) iArr2[i3 + 4]) & M);
        iArr2[i3 + 4] = (int) j6;
        return (int) (j6 >>> 32);
    }

    public static int mulWordDwordAdd(int i, long j, int[] iArr, int i2) {
        long j2 = ((long) i) & M;
        long j3 = 0 + ((M & j) * j2) + (((long) iArr[i2 + 0]) & M);
        iArr[i2 + 0] = (int) j3;
        long j4 = (j3 >>> 32) + (j2 * (j >>> 32)) + (((long) iArr[i2 + 1]) & M);
        iArr[i2 + 1] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[i2 + 2]) & M);
        iArr[i2 + 2] = (int) j5;
        if ((j5 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i2, 3);
    }

    public static int mulWordsAdd(int i, int i2, int[] iArr, int i3) {
        long j = ((((long) i) & M) * (((long) i2) & M)) + (((long) iArr[i3 + 0]) & M) + 0;
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i3 + 1]) & M);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, iArr, i3, 2);
    }

    public static void square(int[] iArr, int i, int[] iArr2, int i2) {
        long j = ((long) iArr[i + 0]) & M;
        int i3 = 4;
        int i4 = 10;
        int i5 = 0;
        while (true) {
            int i6 = i3 - 1;
            long j2 = ((long) iArr[i3 + i]) & M;
            long j3 = j2 * j2;
            int i7 = i4 - 1;
            iArr2[i2 + i7] = (i5 << 31) | ((int) (j3 >>> 33));
            i4 = i7 - 1;
            iArr2[i2 + i4] = (int) (j3 >>> 1);
            int i8 = (int) j3;
            if (i6 <= 0) {
                long j4 = j * j;
                long j5 = (((long) (i8 << 31)) & M) | (j4 >>> 33);
                iArr2[i2 + 0] = (int) j4;
                long j6 = ((long) iArr[i + 1]) & M;
                long j7 = ((long) iArr2[i2 + 2]) & M;
                long j8 = j5 + (j6 * j);
                int i9 = (int) j8;
                iArr2[i2 + 1] = (((int) (j4 >>> 32)) & 1) | (i9 << 1);
                int i10 = i9 >>> 31;
                long j9 = (j8 >>> 32) + j7;
                long j10 = ((long) iArr[i + 2]) & M;
                long j11 = ((long) iArr2[i2 + 3]) & M;
                long j12 = ((long) iArr2[i2 + 4]) & M;
                long j13 = j9 + (j10 * j);
                int i11 = (int) j13;
                iArr2[i2 + 2] = i10 | (i11 << 1);
                int i12 = i11 >>> 31;
                long j14 = (j13 >>> 32) + (j10 * j6) + j11;
                long j15 = (j14 >>> 32) + j12;
                long j16 = ((long) iArr[i + 3]) & M;
                long j17 = ((long) iArr2[i2 + 5]) & M;
                long j18 = ((long) iArr2[i2 + 6]) & M;
                long j19 = (j14 & M) + (j16 * j);
                int i13 = (int) j19;
                iArr2[i2 + 3] = i12 | (i13 << 1);
                int i14 = i13 >>> 31;
                long j20 = (j19 >>> 32) + (j16 * j6) + j15;
                long j21 = (j20 >>> 32) + (j16 * j10) + j17;
                long j22 = (j21 >>> 32) + j18;
                long j23 = j21 & M;
                long j24 = ((long) iArr[i + 4]) & M;
                long j25 = ((long) iArr2[i2 + 7]) & M;
                long j26 = ((long) iArr2[i2 + 8]) & M;
                long j27 = (j20 & M) + (j * j24);
                int i15 = (int) j27;
                iArr2[i2 + 4] = i14 | (i15 << 1);
                long j28 = (j27 >>> 32) + (j24 * j6) + j23;
                long j29 = (j28 >>> 32) + (j24 * j10) + j22;
                long j30 = (j29 >>> 32) + (j24 * j16) + j25;
                long j31 = (j30 >>> 32) + j26;
                int i16 = (int) j28;
                iArr2[i2 + 5] = (i15 >>> 31) | (i16 << 1);
                int i17 = (int) j29;
                iArr2[i2 + 6] = (i16 >>> 31) | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = (int) j30;
                iArr2[i2 + 7] = i18 | (i19 << 1);
                int i20 = i19 >>> 31;
                int i21 = (int) j31;
                iArr2[i2 + 8] = i20 | (i21 << 1);
                iArr2[i2 + 9] = (i21 >>> 31) | ((iArr2[i2 + 9] + ((int) (j31 >> 32))) << 1);
                return;
            }
            i5 = i8;
            i3 = i6;
        }
    }

    public static void square(int[] iArr, int[] iArr2) {
        long j = ((long) iArr[0]) & M;
        int i = 4;
        int i2 = 10;
        int i3 = 0;
        while (true) {
            int i4 = i - 1;
            long j2 = ((long) iArr[i]) & M;
            long j3 = j2 * j2;
            int i5 = i2 - 1;
            iArr2[i5] = (i3 << 31) | ((int) (j3 >>> 33));
            i2 = i5 - 1;
            iArr2[i2] = (int) (j3 >>> 1);
            int i6 = (int) j3;
            if (i4 <= 0) {
                long j4 = j * j;
                long j5 = (((long) (i6 << 31)) & M) | (j4 >>> 33);
                iArr2[0] = (int) j4;
                long j6 = ((long) iArr[1]) & M;
                long j7 = ((long) iArr2[2]) & M;
                long j8 = j5 + (j6 * j);
                int i7 = (int) j8;
                iArr2[1] = (((int) (j4 >>> 32)) & 1) | (i7 << 1);
                int i8 = i7 >>> 31;
                long j9 = (j8 >>> 32) + j7;
                long j10 = ((long) iArr[2]) & M;
                long j11 = ((long) iArr2[3]) & M;
                long j12 = ((long) iArr2[4]) & M;
                long j13 = j9 + (j10 * j);
                int i9 = (int) j13;
                iArr2[2] = i8 | (i9 << 1);
                int i10 = i9 >>> 31;
                long j14 = (j13 >>> 32) + (j10 * j6) + j11;
                long j15 = (j14 >>> 32) + j12;
                long j16 = ((long) iArr[3]) & M;
                long j17 = ((long) iArr2[5]) & M;
                long j18 = ((long) iArr2[6]) & M;
                long j19 = (j14 & M) + (j16 * j);
                int i11 = (int) j19;
                iArr2[3] = i10 | (i11 << 1);
                int i12 = i11 >>> 31;
                long j20 = (j19 >>> 32) + (j16 * j6) + j15;
                long j21 = (j20 >>> 32) + (j16 * j10) + j17;
                long j22 = (j21 >>> 32) + j18;
                long j23 = j21 & M;
                long j24 = ((long) iArr[4]) & M;
                long j25 = ((long) iArr2[7]) & M;
                long j26 = ((long) iArr2[8]) & M;
                long j27 = (j20 & M) + (j * j24);
                int i13 = (int) j27;
                iArr2[4] = i12 | (i13 << 1);
                long j28 = (j27 >>> 32) + (j24 * j6) + j23;
                long j29 = (j28 >>> 32) + (j24 * j10) + j22;
                long j30 = (j29 >>> 32) + (j24 * j16) + j25;
                long j31 = (j30 >>> 32) + j26;
                int i14 = (int) j28;
                iArr2[5] = (i13 >>> 31) | (i14 << 1);
                int i15 = (int) j29;
                iArr2[6] = (i14 >>> 31) | (i15 << 1);
                int i16 = i15 >>> 31;
                int i17 = (int) j30;
                iArr2[7] = i16 | (i17 << 1);
                int i18 = i17 >>> 31;
                int i19 = (int) j31;
                iArr2[8] = i18 | (i19 << 1);
                iArr2[9] = (i19 >>> 31) | ((iArr2[9] + ((int) (j31 >> 32))) << 1);
                return;
            }
            i3 = i6;
            i = i4;
        }
    }

    public static int sub(int[] iArr, int i, int[] iArr2, int i2, int[] iArr3, int i3) {
        long j = 0 + ((((long) iArr[i + 0]) & M) - (((long) iArr2[i2 + 0]) & M));
        iArr3[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[i + 1]) & M) - (((long) iArr2[i2 + 1]) & M));
        iArr3[i3 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[i + 2]) & M) - (((long) iArr2[i2 + 2]) & M));
        iArr3[i3 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[i + 3]) & M) - (((long) iArr2[i2 + 3]) & M));
        iArr3[i3 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[i + 4]) & M) - (((long) iArr2[i2 + 4]) & M));
        iArr3[i3 + 4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int sub(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0 + ((((long) iArr[0]) & M) - (((long) iArr2[0]) & M));
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[1]) & M) - (((long) iArr2[1]) & M));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[2]) & M) - (((long) iArr2[2]) & M));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr[3]) & M) - (((long) iArr2[3]) & M));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr[4]) & M) - (((long) iArr2[4]) & M));
        iArr3[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int subBothFrom(int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0 + (((((long) iArr3[0]) & M) - (((long) iArr[0]) & M)) - (((long) iArr2[0]) & M));
        iArr3[0] = (int) j;
        long j2 = (j >> 32) + (((((long) iArr3[1]) & M) - (((long) iArr[1]) & M)) - (((long) iArr2[1]) & M));
        iArr3[1] = (int) j2;
        long j3 = (j2 >> 32) + (((((long) iArr3[2]) & M) - (((long) iArr[2]) & M)) - (((long) iArr2[2]) & M));
        iArr3[2] = (int) j3;
        long j4 = (j3 >> 32) + (((((long) iArr3[3]) & M) - (((long) iArr[3]) & M)) - (((long) iArr2[3]) & M));
        iArr3[3] = (int) j4;
        long j5 = (j4 >> 32) + (((((long) iArr3[4]) & M) - (((long) iArr[4]) & M)) - (((long) iArr2[4]) & M));
        iArr3[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int subFrom(int[] iArr, int i, int[] iArr2, int i2) {
        long j = 0 + ((((long) iArr2[i2 + 0]) & M) - (((long) iArr[i + 0]) & M));
        iArr2[i2 + 0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr2[i2 + 1]) & M) - (((long) iArr[i + 1]) & M));
        iArr2[i2 + 1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr2[i2 + 2]) & M) - (((long) iArr[i + 2]) & M));
        iArr2[i2 + 2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr2[i2 + 3]) & M) - (((long) iArr[i + 3]) & M));
        iArr2[i2 + 3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr2[i2 + 4]) & M) - (((long) iArr[i + 4]) & M));
        iArr2[i2 + 4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static int subFrom(int[] iArr, int[] iArr2) {
        long j = 0 + ((((long) iArr2[0]) & M) - (((long) iArr[0]) & M));
        iArr2[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr2[1]) & M) - (((long) iArr[1]) & M));
        iArr2[1] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr2[2]) & M) - (((long) iArr[2]) & M));
        iArr2[2] = (int) j3;
        long j4 = (j3 >> 32) + ((((long) iArr2[3]) & M) - (((long) iArr[3]) & M));
        iArr2[3] = (int) j4;
        long j5 = (j4 >> 32) + ((((long) iArr2[4]) & M) - (((long) iArr[4]) & M));
        iArr2[4] = (int) j5;
        return (int) (j5 >> 32);
    }

    public static BigInteger toBigInteger(int[] iArr) {
        byte[] bArr = new byte[20];
        for (int i = 0; i < 5; i++) {
            int i2 = iArr[i];
            if (i2 != 0) {
                Pack.intToBigEndian(i2, bArr, (4 - i) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] iArr) {
        iArr[0] = 0;
        iArr[1] = 0;
        iArr[2] = 0;
        iArr[3] = 0;
        iArr[4] = 0;
    }
}
