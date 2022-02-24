package com.ifengyu.intercom.lite.utils;

/* compiled from: LiteSortUtil.java */
/* loaded from: classes2.dex */
public class g {
    private static int a(Integer[] numArr, int i, int i2, int i3, int i4) {
        if (i <= 0 || i2 < 0 || i3 >= i) {
            return -1;
        }
        int i5 = i2 - 1;
        while (i2 <= i3) {
            if (numArr[i2].intValue() <= i4 && (i5 = i5 + 1) != i2) {
                b(numArr, i2, i5);
            }
            i2++;
        }
        return i5;
    }

    private static void b(Integer[] numArr, int i, int i2) {
        int intValue = numArr[i].intValue();
        numArr[i] = numArr[i2];
        numArr[i2] = Integer.valueOf(intValue);
    }

    public static int a(Integer[] numArr, int i, int i2) {
        while (i < i2) {
            int i3 = (i + i2) / 2;
            int a2 = a(numArr, numArr.length, i, i2, i3);
            if (a2 == i3) {
                i = a2 + 1;
            } else {
                i2 = a2;
            }
        }
        if (i == numArr[i].intValue()) {
            return i + 1;
        }
        if (numArr[i].intValue() > i) {
            return i;
        }
        return -1;
    }
}
