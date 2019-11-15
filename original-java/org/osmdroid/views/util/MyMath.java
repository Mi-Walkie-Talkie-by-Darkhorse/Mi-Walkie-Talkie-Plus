package org.osmdroid.views.util;

public class MyMath {
    private MyMath() {
    }

    public static int getNextSquareNumberAbove(float f) {
        int i = 1;
        int i2 = 0;
        int i3 = 1;
        while (((float) i3) <= f) {
            i3 *= 2;
            i2 = i;
            i++;
        }
        return i2;
    }
}
