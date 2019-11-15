package com.amap.api.location;

public class CoordUtil {
    private static boolean a = false;

    public static native int convertToGcj(double[] dArr, double[] dArr2);

    public static boolean isLoadedSo() {
        return a;
    }

    public static void setLoadedSo(boolean z) {
        a = z;
    }
}
