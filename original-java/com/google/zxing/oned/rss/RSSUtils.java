package com.google.zxing.oned.rss;

public final class RSSUtils {
    private RSSUtils() {
    }

    public static int getRSSvalue(int[] iArr, int i, boolean z) {
        int i2 = 0;
        int i3 = 0;
        while (i2 < iArr.length) {
            int i4 = iArr[i2] + i3;
            i2++;
            i3 = i4;
        }
        int length = iArr.length;
        int i5 = 0;
        int i6 = 0;
        int i7 = i3;
        int i8 = 0;
        while (i5 < length - 1) {
            int i9 = i6;
            int i10 = i8 | (1 << i5);
            int i11 = 1;
            while (i11 < iArr[i5]) {
                int combins = combins((i7 - i11) - 1, (length - i5) - 2);
                if (z && i10 == 0 && (i7 - i11) - ((length - i5) - 1) >= (length - i5) - 1) {
                    combins -= combins((i7 - i11) - (length - i5), (length - i5) - 2);
                }
                if ((length - i5) - 1 > 1) {
                    int i12 = 0;
                    for (int i13 = (i7 - i11) - ((length - i5) - 2); i13 > i; i13--) {
                        i12 += combins(((i7 - i11) - i13) - 1, (length - i5) - 3);
                    }
                    combins -= ((length - 1) - i5) * i12;
                } else if (i7 - i11 > i) {
                    combins--;
                }
                i9 += combins;
                i11++;
                i10 &= (1 << i5) ^ -1;
            }
            i5++;
            i7 -= i11;
            i8 = i10;
            i6 = i9;
        }
        return i6;
    }

    private static int combins(int i, int i2) {
        int i3;
        int i4 = 1;
        if (i - i2 > i2) {
            i3 = i - i2;
        } else {
            i3 = i2;
            i2 = i - i2;
        }
        int i5 = 1;
        while (i > i3) {
            i5 *= i;
            if (i4 <= i2) {
                i5 /= i4;
                i4++;
            }
            i--;
        }
        int i6 = i5;
        while (i4 <= i2) {
            i6 /= i4;
            i4++;
        }
        return i6;
    }
}
