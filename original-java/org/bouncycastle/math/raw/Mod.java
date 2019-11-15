package org.bouncycastle.math.raw;

import java.util.Random;

public abstract class Mod {
    public static void add(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int length = iArr.length;
        if (Nat.add(length, iArr2, iArr3, iArr4) != 0) {
            Nat.subFrom(length, iArr, iArr4);
        }
    }

    private static int getTrailingZeroes(int i) {
        int i2 = 0;
        while ((i & 1) == 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    public static int inverse32(int i) {
        int i2 = (2 - (i * i)) * i;
        int i3 = i2 * (2 - (i * i2));
        int i4 = i3 * (2 - (i * i3));
        return i4 * (2 - (i * i4));
    }

    private static void inversionResult(int[] iArr, int i, int[] iArr2, int[] iArr3) {
        if (i < 0) {
            Nat.add(iArr.length, iArr2, iArr, iArr3);
        } else {
            System.arraycopy(iArr2, 0, iArr3, 0, iArr.length);
        }
    }

    private static int inversionStep(int[] iArr, int[] iArr2, int i, int[] iArr3, int i2) {
        int length = iArr.length;
        int i3 = 0;
        while (iArr2[0] == 0) {
            Nat.shiftDownWord(i, iArr2, 0);
            i3 += 32;
        }
        int trailingZeroes = getTrailingZeroes(iArr2[0]);
        if (trailingZeroes > 0) {
            Nat.shiftDownBits(i, iArr2, trailingZeroes, 0);
            i3 += trailingZeroes;
        }
        int i4 = i2;
        for (int i5 = 0; i5 < i3; i5++) {
            if ((iArr3[0] & 1) != 0) {
                i4 = i4 < 0 ? i4 + Nat.addTo(length, iArr, iArr3) : i4 + Nat.subFrom(length, iArr, iArr3);
            }
            Nat.shiftDownBit(length, iArr3, i4);
        }
        return i4;
    }

    public static void invert(int[] iArr, int[] iArr2, int[] iArr3) {
        int i = 0;
        int length = iArr.length;
        if (Nat.isZero(length, iArr2)) {
            throw new IllegalArgumentException("'x' cannot be 0");
        } else if (Nat.isOne(length, iArr2)) {
            System.arraycopy(iArr2, 0, iArr3, 0, length);
        } else {
            int[] copy = Nat.copy(length, iArr2);
            int[] create = Nat.create(length);
            create[0] = 1;
            int i2 = (copy[0] & 1) == 0 ? inversionStep(iArr, copy, length, create, 0) : 0;
            if (Nat.isOne(length, copy)) {
                inversionResult(iArr, i2, create, iArr3);
                return;
            }
            int[] copy2 = Nat.copy(length, iArr);
            int[] create2 = Nat.create(length);
            int i3 = i2;
            int i4 = length;
            while (true) {
                if (copy[i4 - 1] == 0 && copy2[i4 - 1] == 0) {
                    i4--;
                } else if (Nat.gte(i4, copy, copy2)) {
                    Nat.subFrom(i4, copy2, copy);
                    i3 = inversionStep(iArr, copy, i4, create, i3 + (Nat.subFrom(length, create2, create) - i));
                    if (Nat.isOne(i4, copy)) {
                        inversionResult(iArr, i3, create, iArr3);
                        return;
                    }
                } else {
                    Nat.subFrom(i4, copy, copy2);
                    i = inversionStep(iArr, copy2, i4, create2, i + (Nat.subFrom(length, create, create2) - i3));
                    if (Nat.isOne(i4, copy2)) {
                        inversionResult(iArr, i, create2, iArr3);
                        return;
                    }
                }
            }
        }
    }

    public static int[] random(int[] iArr) {
        int length = iArr.length;
        Random random = new Random();
        int[] create = Nat.create(length);
        int i = iArr[length - 1];
        int i2 = i | (i >>> 1);
        int i3 = i2 | (i2 >>> 2);
        int i4 = i3 | (i3 >>> 4);
        int i5 = i4 | (i4 >>> 8);
        int i6 = (i5 >>> 16) | i5;
        do {
            for (int i7 = 0; i7 != length; i7++) {
                create[i7] = random.nextInt();
            }
            int i8 = length - 1;
            create[i8] = create[i8] & i6;
        } while (Nat.gte(length, create, iArr));
        return create;
    }

    public static void subtract(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4) {
        int length = iArr.length;
        if (Nat.sub(length, iArr2, iArr3, iArr4) != 0) {
            Nat.addTo(length, iArr, iArr4);
        }
    }
}
