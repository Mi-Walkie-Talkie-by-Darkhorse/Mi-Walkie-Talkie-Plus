package org.osmdroid.util;

import org.osmdroid.views.util.constants.MathConstants;

public class MyMath implements MathConstants {
    private MyMath() {
    }

    public static double gudermannInverse(double d) {
        return Math.log(Math.tan(0.7853981852531433d + ((0.01745329238474369d * d) / 2.0d)));
    }

    public static double gudermann(double d) {
        return 57.295780181884766d * Math.atan(Math.sinh(d));
    }

    public static int mod(int i, int i2) {
        if (i > 0) {
            return i % i2;
        }
        int i3 = i;
        while (i3 < 0) {
            i3 += i2;
        }
        return i3;
    }
}
