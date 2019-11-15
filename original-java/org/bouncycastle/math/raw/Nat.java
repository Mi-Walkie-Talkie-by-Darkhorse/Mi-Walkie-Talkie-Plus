package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Pack;

public abstract class Nat {
    private static final long M = 4294967295L;

    public static int add(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (((long) iArr[i2]) & M) + (((long) iArr2[i2]) & M);
            iArr3[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int add33At(int i, int i2, int[] iArr, int i3) {
        long j = (((long) iArr[i3 + 0]) & M) + (((long) i2) & M);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i3 + 1]) & M) + 1;
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3 + 2);
    }

    public static int add33At(int i, int i2, int[] iArr, int i3, int i4) {
        long j = (((long) iArr[i3 + i4]) & M) + (((long) i2) & M);
        iArr[i3 + i4] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i3 + i4 + 1]) & M) + 1;
        iArr[i3 + i4 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3, i4 + 2);
    }

    public static int add33To(int i, int i2, int[] iArr) {
        long j = (((long) iArr[0]) & M) + (((long) i2) & M);
        iArr[0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[1]) & M) + 1;
        iArr[1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, 2);
    }

    public static int add33To(int i, int i2, int[] iArr, int i3) {
        long j = (((long) iArr[i3 + 0]) & M) + (((long) i2) & M);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >>> 32) + (((long) iArr[i3 + 1]) & M) + 1;
        iArr[i3 + 1] = (int) j2;
        if ((j2 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3, 2);
    }

    public static int addBothTo(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + (((long) iArr[i2 + i5]) & M) + (((long) iArr2[i3 + i5]) & M) + (((long) iArr3[i4 + i5]) & M);
            iArr3[i4 + i5] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addBothTo(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (((long) iArr[i2]) & M) + (((long) iArr2[i2]) & M) + (((long) iArr3[i2]) & M);
            iArr3[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addDWordAt(int i, long j, int[] iArr, int i2) {
        long j2 = (((long) iArr[i2 + 0]) & M) + (j & M);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[i2 + 1]) & M) + (j >>> 32);
        iArr[i2 + 1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i2 + 2);
    }

    public static int addDWordAt(int i, long j, int[] iArr, int i2, int i3) {
        long j2 = (((long) iArr[i2 + i3]) & M) + (j & M);
        iArr[i2 + i3] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[i2 + i3 + 1]) & M) + (j >>> 32);
        iArr[i2 + i3 + 1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i2, i3 + 2);
    }

    public static int addDWordTo(int i, long j, int[] iArr) {
        long j2 = (((long) iArr[0]) & M) + (j & M);
        iArr[0] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[1]) & M) + (j >>> 32);
        iArr[1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, 2);
    }

    public static int addDWordTo(int i, long j, int[] iArr, int i2) {
        long j2 = (((long) iArr[i2 + 0]) & M) + (j & M);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >>> 32) + (((long) iArr[i2 + 1]) & M) + (j >>> 32);
        iArr[i2 + 1] = (int) j3;
        if ((j3 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i2, 2);
    }

    public static int addTo(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            long j2 = j + (((long) iArr[i2 + i4]) & M) + (((long) iArr2[i3 + i4]) & M);
            iArr2[i3 + i4] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addTo(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (((long) iArr[i2]) & M) + (((long) iArr2[i2]) & M);
            iArr2[i2] = (int) j2;
            j = j2 >>> 32;
        }
        return (int) j;
    }

    public static int addWordAt(int i, int i2, int[] iArr, int i3) {
        long j = (((long) i2) & M) + (((long) iArr[i3]) & M);
        iArr[i3] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3 + 1);
    }

    public static int addWordAt(int i, int i2, int[] iArr, int i3, int i4) {
        long j = (((long) i2) & M) + (((long) iArr[i3 + i4]) & M);
        iArr[i3 + i4] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3, i4 + 1);
    }

    public static int addWordTo(int i, int i2, int[] iArr) {
        long j = (((long) i2) & M) + (((long) iArr[0]) & M);
        iArr[0] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, 1);
    }

    public static int addWordTo(int i, int i2, int[] iArr, int i3) {
        long j = (((long) i2) & M) + (((long) iArr[i3]) & M);
        iArr[i3] = (int) j;
        if ((j >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3, 1);
    }

    public static void copy(int i, int[] iArr, int[] iArr2) {
        System.arraycopy(iArr, 0, iArr2, 0, i);
    }

    public static int[] copy(int i, int[] iArr) {
        int[] iArr2 = new int[i];
        System.arraycopy(iArr, 0, iArr2, 0, i);
        return iArr2;
    }

    public static int[] create(int i) {
        return new int[i];
    }

    public static long[] create64(int i) {
        return new long[i];
    }

    public static int dec(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
        }
        return -1;
    }

    public static int dec(int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2] - 1;
            iArr2[i2] = i3;
            i2++;
            if (i3 != -1) {
                for (int i4 = i2; i4 < i; i4++) {
                    iArr2[i4] = iArr[i4];
                }
                return 0;
            }
        }
        return -1;
    }

    public static int decAt(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] - 1;
            iArr[i2] = i3;
            if (i3 != -1) {
                return 0;
            }
            i2++;
        }
        return -1;
    }

    public static int decAt(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] - 1;
            iArr[i4] = i5;
            if (i5 != -1) {
                return 0;
            }
            i3++;
        }
        return -1;
    }

    public static boolean eq(int i, int[] iArr, int[] iArr2) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(int i, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
            throw new IllegalArgumentException();
        }
        int[] create = create((i + 31) >> 5);
        int i2 = 0;
        while (bigInteger.signum() != 0) {
            int i3 = i2 + 1;
            create[i2] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
            i2 = i3;
        }
        return create;
    }

    public static int getBit(int[] iArr, int i) {
        if (i == 0) {
            return iArr[0] & 1;
        }
        int i2 = i >> 5;
        if (i2 < 0 || i2 >= iArr.length) {
            return 0;
        }
        return (iArr[i2] >>> (i & 31)) & 1;
    }

    public static boolean gte(int i, int[] iArr, int[] iArr2) {
        for (int i2 = i - 1; i2 >= 0; i2--) {
            int i3 = iArr[i2] ^ Integer.MIN_VALUE;
            int i4 = iArr2[i2] ^ Integer.MIN_VALUE;
            if (i3 < i4) {
                return false;
            }
            if (i3 > i4) {
                return true;
            }
        }
        return true;
    }

    public static int inc(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int inc(int i, int[] iArr, int[] iArr2) {
        int i2 = 0;
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr2[i2] = i3;
            i2++;
            if (i3 != 0) {
                while (i2 < i) {
                    iArr2[i2] = iArr[i2];
                    i2++;
                }
                return 0;
            }
        }
        return 1;
    }

    public static int incAt(int i, int[] iArr, int i2) {
        while (i2 < i) {
            int i3 = iArr[i2] + 1;
            iArr[i2] = i3;
            if (i3 != 0) {
                return 0;
            }
            i2++;
        }
        return 1;
    }

    public static int incAt(int i, int[] iArr, int i2, int i3) {
        while (i3 < i) {
            int i4 = i2 + i3;
            int i5 = iArr[i4] + 1;
            iArr[i4] = i5;
            if (i5 != 0) {
                return 0;
            }
            i3++;
        }
        return 1;
    }

    public static boolean isOne(int i, int[] iArr) {
        if (iArr[0] != 1) {
            return false;
        }
        for (int i2 = 1; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        iArr3[i4 + i] = mulWord(i, iArr[i2], iArr2, i3, iArr3, i4);
        for (int i5 = 1; i5 < i; i5++) {
            iArr3[i4 + i5 + i] = mulWordAddTo(i, iArr[i2 + i5], iArr2, i3, iArr3, i4 + i5);
        }
    }

    public static void mul(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        iArr3[i] = mulWord(i, iArr[0], iArr2, iArr3);
        for (int i2 = 1; i2 < i; i2++) {
            iArr3[i2 + i] = mulWordAddTo(i, iArr[i2], iArr2, 0, iArr3, i2);
        }
    }

    public static int mul31BothAdd(int i, int i2, int[] iArr, int i3, int[] iArr2, int[] iArr3, int i4) {
        long j = 0;
        long j2 = M & ((long) i2);
        long j3 = M & ((long) i3);
        int i5 = 0;
        do {
            long j4 = j + ((((long) iArr[i5]) & M) * j2) + ((((long) iArr2[i5]) & M) * j3) + (((long) iArr3[i4 + i5]) & M);
            iArr3[i4 + i5] = (int) j4;
            j = j4 >>> 32;
            i5++;
        } while (i5 < i);
        return (int) j;
    }

    public static int mulAddTo(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        int i5 = 0;
        long j = 0;
        int i6 = i4;
        while (i5 < i) {
            long mulWordAddTo = (((long) mulWordAddTo(i, iArr[i2 + i5], iArr2, i3, iArr3, i6)) & M) + (((long) iArr3[i6 + i]) & M) + j;
            iArr3[i6 + i] = (int) mulWordAddTo;
            i6++;
            i5++;
            j = mulWordAddTo >>> 32;
        }
        return (int) j;
    }

    public static int mulAddTo(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        int i2 = 0;
        long j = 0;
        while (i2 < i) {
            long mulWordAddTo = (((long) mulWordAddTo(i, iArr[i2], iArr2, 0, iArr3, i2)) & M) + j + (((long) iArr3[i2 + i]) & M);
            iArr3[i2 + i] = (int) mulWordAddTo;
            i2++;
            j = mulWordAddTo >>> 32;
        }
        return (int) j;
    }

    public static int mulWord(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        long j = 0;
        long j2 = ((long) i2) & M;
        int i5 = 0;
        do {
            long j3 = j + ((((long) iArr[i3 + i5]) & M) * j2);
            iArr2[i4 + i5] = (int) j3;
            j = j3 >>> 32;
            i5++;
        } while (i5 < i);
        return (int) j;
    }

    public static int mulWord(int i, int i2, int[] iArr, int[] iArr2) {
        long j = 0;
        long j2 = ((long) i2) & M;
        int i3 = 0;
        do {
            long j3 = j + ((((long) iArr[i3]) & M) * j2);
            iArr2[i3] = (int) j3;
            j = j3 >>> 32;
            i3++;
        } while (i3 < i);
        return (int) j;
    }

    public static int mulWordAddTo(int i, int i2, int[] iArr, int i3, int[] iArr2, int i4) {
        long j = 0;
        long j2 = M & ((long) i2);
        int i5 = 0;
        do {
            long j3 = j + ((((long) iArr[i3 + i5]) & M) * j2) + (((long) iArr2[i4 + i5]) & M);
            iArr2[i4 + i5] = (int) j3;
            j = j3 >>> 32;
            i5++;
        } while (i5 < i);
        return (int) j;
    }

    public static int mulWordDwordAddAt(int i, int i2, long j, int[] iArr, int i3) {
        long j2 = ((long) i2) & M;
        long j3 = 0 + ((M & j) * j2) + (((long) iArr[i3 + 0]) & M);
        iArr[i3 + 0] = (int) j3;
        long j4 = (j3 >>> 32) + (j2 * (j >>> 32)) + (((long) iArr[i3 + 1]) & M);
        iArr[i3 + 1] = (int) j4;
        long j5 = (j4 >>> 32) + (((long) iArr[i3 + 2]) & M);
        iArr[i3 + 2] = (int) j5;
        if ((j5 >>> 32) == 0) {
            return 0;
        }
        return incAt(i, iArr, i3 + 3);
    }

    public static int shiftDownBit(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr[i] = (i3 >>> 1) | (i2 << 31);
            i2 = i3;
        }
    }

    public static int shiftDownBit(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << 31;
            }
            int i4 = iArr[i2 + i];
            iArr[i2 + i] = (i4 >>> 1) | (i3 << 31);
            i3 = i4;
        }
    }

    public static int shiftDownBit(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << 31;
            }
            int i5 = iArr[i2 + i];
            iArr2[i4 + i] = (i5 >>> 1) | (i3 << 31);
            i3 = i5;
        }
    }

    public static int shiftDownBit(int i, int[] iArr, int i2, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2 << 31;
            }
            int i3 = iArr[i];
            iArr2[i] = (i3 >>> 1) | (i2 << 31);
            i2 = i3;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr[i] = (i4 >>> i2) | (i3 << (-i2));
            i3 = i4;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3, int i4) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i5 = iArr[i2 + i];
            iArr[i2 + i] = (i5 >>> i3) | (i4 << (-i3));
            i4 = i5;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        while (true) {
            i--;
            if (i < 0) {
                return i4 << (-i3);
            }
            int i6 = iArr[i2 + i];
            iArr2[i5 + i] = (i6 >>> i3) | (i4 << (-i3));
            i4 = i6;
        }
    }

    public static int shiftDownBits(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        while (true) {
            i--;
            if (i < 0) {
                return i3 << (-i2);
            }
            int i4 = iArr[i];
            iArr2[i] = (i4 >>> i2) | (i3 << (-i2));
            i3 = i4;
        }
    }

    public static int shiftDownWord(int i, int[] iArr, int i2) {
        while (true) {
            i--;
            if (i < 0) {
                return i2;
            }
            int i3 = iArr[i];
            iArr[i] = i2;
            i2 = i3;
        }
    }

    public static int shiftUpBit(int i, int[] iArr, int i2) {
        int i3 = 0;
        while (i3 < i) {
            int i4 = iArr[i3];
            iArr[i3] = (i4 << 1) | (i2 >>> 31);
            i3++;
            i2 = i4;
        }
        return i2 >>> 31;
    }

    public static int shiftUpBit(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i2 + i4];
            iArr[i2 + i4] = (i5 << 1) | (i3 >>> 31);
            i4++;
            i3 = i5;
        }
        return i3 >>> 31;
    }

    public static int shiftUpBit(int i, int[] iArr, int i2, int i3, int[] iArr2, int i4) {
        int i5 = 0;
        while (i5 < i) {
            int i6 = iArr[i2 + i5];
            iArr2[i4 + i5] = (i6 << 1) | (i3 >>> 31);
            i5++;
            i3 = i6;
        }
        return i3 >>> 31;
    }

    public static int shiftUpBit(int i, int[] iArr, int i2, int[] iArr2) {
        int i3 = 0;
        while (i3 < i) {
            int i4 = iArr[i3];
            iArr2[i3] = (i4 << 1) | (i2 >>> 31);
            i3++;
            i2 = i4;
        }
        return i2 >>> 31;
    }

    public static long shiftUpBit64(int i, long[] jArr, int i2, long j, long[] jArr2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            long j2 = jArr[i2 + i4];
            jArr2[i3 + i4] = (j2 << 1) | (j >>> 63);
            i4++;
            j = j2;
        }
        return j >>> 63;
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i4];
            iArr[i4] = (i5 << i2) | (i3 >>> (-i2));
            i4++;
            i3 = i5;
        }
        return i3 >>> (-i2);
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3, int i4) {
        int i5 = 0;
        while (i5 < i) {
            int i6 = iArr[i2 + i5];
            iArr[i2 + i5] = (i6 << i3) | (i4 >>> (-i3));
            i5++;
            i4 = i6;
        }
        return i4 >>> (-i3);
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3, int i4, int[] iArr2, int i5) {
        int i6 = 0;
        while (i6 < i) {
            int i7 = iArr[i2 + i6];
            iArr2[i5 + i6] = (i7 << i3) | (i4 >>> (-i3));
            i6++;
            i4 = i7;
        }
        return i4 >>> (-i3);
    }

    public static int shiftUpBits(int i, int[] iArr, int i2, int i3, int[] iArr2) {
        int i4 = 0;
        while (i4 < i) {
            int i5 = iArr[i4];
            iArr2[i4] = (i5 << i2) | (i3 >>> (-i2));
            i4++;
            i3 = i5;
        }
        return i3 >>> (-i2);
    }

    public static long shiftUpBits64(int i, long[] jArr, int i2, int i3, long j) {
        int i4 = 0;
        while (i4 < i) {
            long j2 = jArr[i2 + i4];
            jArr[i2 + i4] = (j2 << i3) | (j >>> (-i3));
            i4++;
            j = j2;
        }
        return j >>> (-i3);
    }

    public static long shiftUpBits64(int i, long[] jArr, int i2, int i3, long j, long[] jArr2, int i4) {
        int i5 = 0;
        while (i5 < i) {
            long j2 = jArr[i2 + i5];
            jArr2[i4 + i5] = (j2 << i3) | (j >>> (-i3));
            i5++;
            j = j2;
        }
        return j >>> (-i3);
    }

    public static void square(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        int i4 = i << 1;
        int i5 = i;
        int i6 = 0;
        int i7 = i4;
        do {
            i5--;
            long j = ((long) iArr[i2 + i5]) & M;
            long j2 = j * j;
            int i8 = i7 - 1;
            iArr2[i3 + i8] = (i6 << 31) | ((int) (j2 >>> 33));
            i7 = i8 - 1;
            iArr2[i3 + i7] = (int) (j2 >>> 1);
            i6 = (int) j2;
        } while (i5 > 0);
        for (int i9 = 1; i9 < i; i9++) {
            addWordAt(i4, squareWordAdd(iArr, i2, i9, iArr2, i3), iArr2, i3, i9 << 1);
        }
        shiftUpBit(i4, iArr2, i3, iArr[i2] << 31);
    }

    public static void square(int i, int[] iArr, int[] iArr2) {
        int i2 = i << 1;
        int i3 = i2;
        int i4 = i;
        int i5 = 0;
        do {
            i4--;
            long j = ((long) iArr[i4]) & M;
            long j2 = j * j;
            int i6 = i3 - 1;
            iArr2[i6] = (i5 << 31) | ((int) (j2 >>> 33));
            i3 = i6 - 1;
            iArr2[i3] = (int) (j2 >>> 1);
            i5 = (int) j2;
        } while (i4 > 0);
        for (int i7 = 1; i7 < i; i7++) {
            addWordAt(i2, squareWordAdd(iArr, i7, iArr2), iArr2, i7 << 1);
        }
        shiftUpBit(i2, iArr2, iArr[0] << 31);
    }

    public static int squareWordAdd(int[] iArr, int i, int i2, int[] iArr2, int i3) {
        long j = 0;
        long j2 = M & ((long) iArr[i + i2]);
        int i4 = 0;
        do {
            long j3 = j + ((((long) iArr[i + i4]) & M) * j2) + (((long) iArr2[i2 + i3]) & M);
            iArr2[i2 + i3] = (int) j3;
            j = j3 >>> 32;
            i3++;
            i4++;
        } while (i4 < i2);
        return (int) j;
    }

    public static int squareWordAdd(int[] iArr, int i, int[] iArr2) {
        long j = 0;
        long j2 = ((long) iArr[i]) & M;
        int i2 = 0;
        do {
            long j3 = j + ((((long) iArr[i2]) & M) * j2) + (((long) iArr2[i + i2]) & M);
            iArr2[i + i2] = (int) j3;
            j = j3 >>> 32;
            i2++;
        } while (i2 < i);
        return (int) j;
    }

    public static int sub(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + ((((long) iArr[i2 + i5]) & M) - (((long) iArr2[i3 + i5]) & M));
            iArr3[i4 + i5] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int sub(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + ((((long) iArr[i2]) & M) - (((long) iArr2[i2]) & M));
            iArr3[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int sub33At(int i, int i2, int[] iArr, int i3) {
        long j = (((long) iArr[i3 + 0]) & M) - (((long) i2) & M);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[i3 + 1]) & M) - 1);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i3 + 2);
    }

    public static int sub33At(int i, int i2, int[] iArr, int i3, int i4) {
        long j = (((long) iArr[i3 + i4]) & M) - (((long) i2) & M);
        iArr[i3 + i4] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[(i3 + i4) + 1]) & M) - 1);
        iArr[i3 + i4 + 1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i3, i4 + 2);
    }

    public static int sub33From(int i, int i2, int[] iArr) {
        long j = (((long) iArr[0]) & M) - (((long) i2) & M);
        iArr[0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[1]) & M) - 1);
        iArr[1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, 2);
    }

    public static int sub33From(int i, int i2, int[] iArr, int i3) {
        long j = (((long) iArr[i3 + 0]) & M) - (((long) i2) & M);
        iArr[i3 + 0] = (int) j;
        long j2 = (j >> 32) + ((((long) iArr[i3 + 1]) & M) - 1);
        iArr[i3 + 1] = (int) j2;
        if ((j2 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i3, 2);
    }

    public static int subBothFrom(int i, int[] iArr, int i2, int[] iArr2, int i3, int[] iArr3, int i4) {
        long j = 0;
        for (int i5 = 0; i5 < i; i5++) {
            long j2 = j + (((((long) iArr3[i4 + i5]) & M) - (((long) iArr[i2 + i5]) & M)) - (((long) iArr2[i3 + i5]) & M));
            iArr3[i4 + i5] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subBothFrom(int i, int[] iArr, int[] iArr2, int[] iArr3) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + (((((long) iArr3[i2]) & M) - (((long) iArr[i2]) & M)) - (((long) iArr2[i2]) & M));
            iArr3[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subDWordAt(int i, long j, int[] iArr, int i2) {
        long j2 = (((long) iArr[i2 + 0]) & M) - (j & M);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[i2 + 1]) & M) - (j >>> 32));
        iArr[i2 + 1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i2 + 2);
    }

    public static int subDWordAt(int i, long j, int[] iArr, int i2, int i3) {
        long j2 = (((long) iArr[i2 + i3]) & M) - (j & M);
        iArr[i2 + i3] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[(i2 + i3) + 1]) & M) - (j >>> 32));
        iArr[i2 + i3 + 1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i2, i3 + 2);
    }

    public static int subDWordFrom(int i, long j, int[] iArr) {
        long j2 = (((long) iArr[0]) & M) - (j & M);
        iArr[0] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[1]) & M) - (j >>> 32));
        iArr[1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, 2);
    }

    public static int subDWordFrom(int i, long j, int[] iArr, int i2) {
        long j2 = (((long) iArr[i2 + 0]) & M) - (j & M);
        iArr[i2 + 0] = (int) j2;
        long j3 = (j2 >> 32) + ((((long) iArr[i2 + 1]) & M) - (j >>> 32));
        iArr[i2 + 1] = (int) j3;
        if ((j3 >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i2, 2);
    }

    public static int subFrom(int i, int[] iArr, int i2, int[] iArr2, int i3) {
        long j = 0;
        for (int i4 = 0; i4 < i; i4++) {
            long j2 = j + ((((long) iArr2[i3 + i4]) & M) - (((long) iArr[i2 + i4]) & M));
            iArr2[i3 + i4] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subFrom(int i, int[] iArr, int[] iArr2) {
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            long j2 = j + ((((long) iArr2[i2]) & M) - (((long) iArr[i2]) & M));
            iArr2[i2] = (int) j2;
            j = j2 >> 32;
        }
        return (int) j;
    }

    public static int subWordAt(int i, int i2, int[] iArr, int i3) {
        long j = (((long) iArr[i3]) & M) - (((long) i2) & M);
        iArr[i3] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i3 + 1);
    }

    public static int subWordAt(int i, int i2, int[] iArr, int i3, int i4) {
        long j = (((long) iArr[i3 + i4]) & M) - (((long) i2) & M);
        iArr[i3 + i4] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i3, i4 + 1);
    }

    public static int subWordFrom(int i, int i2, int[] iArr) {
        long j = (((long) iArr[0]) & M) - (((long) i2) & M);
        iArr[0] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, 1);
    }

    public static int subWordFrom(int i, int i2, int[] iArr, int i3) {
        long j = (((long) iArr[i3 + 0]) & M) - (((long) i2) & M);
        iArr[i3 + 0] = (int) j;
        if ((j >> 32) == 0) {
            return 0;
        }
        return decAt(i, iArr, i3, 1);
    }

    public static BigInteger toBigInteger(int i, int[] iArr) {
        byte[] bArr = new byte[(i << 2)];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = iArr[i2];
            if (i3 != 0) {
                Pack.intToBigEndian(i3, bArr, ((i - 1) - i2) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int i, int[] iArr) {
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = 0;
        }
    }
}
