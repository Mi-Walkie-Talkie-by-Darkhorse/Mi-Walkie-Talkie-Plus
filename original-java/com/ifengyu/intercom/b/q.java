package com.ifengyu.intercom.b;

/* compiled from: GCJToWGSUtil */
public class q {
    public static double[] a(double d, double d2) {
        double c = c(d2 - 105.0d, d - 35.0d);
        double b = b(d2 - 105.0d, d - 35.0d);
        double d3 = (d / 180.0d) * 3.141592653589793d;
        double sin = Math.sin(d3);
        double d4 = 1.0d - (sin * (0.006693421622965943d * sin));
        double sqrt = Math.sqrt(d4);
        return new double[]{d - ((c * 180.0d) / ((((1.0d - 0.006693421622965943d) * 6378245.0d) / (d4 * sqrt)) * 3.141592653589793d)), d2 - ((180.0d * b) / (((6378245.0d / sqrt) * Math.cos(d3)) * 3.141592653589793d))};
    }

    private static double b(double d, double d2) {
        return 300.0d + d + (2.0d * d2) + (0.1d * d * d) + (0.1d * d * d2) + (0.1d * Math.sqrt(Math.abs(d))) + ((((20.0d * Math.sin((6.0d * d) * 3.141592653589793d)) + (20.0d * Math.sin((2.0d * d) * 3.141592653589793d))) * 2.0d) / 3.0d) + ((((20.0d * Math.sin(3.141592653589793d * d)) + (40.0d * Math.sin((d / 3.0d) * 3.141592653589793d))) * 2.0d) / 3.0d) + ((((150.0d * Math.sin((d / 12.0d) * 3.141592653589793d)) + (300.0d * Math.sin((d / 30.0d) * 3.141592653589793d))) * 2.0d) / 3.0d);
    }

    private static double c(double d, double d2) {
        return -100.0d + (2.0d * d) + (3.0d * d2) + (0.2d * d2 * d2) + (0.1d * d * d2) + (0.2d * Math.sqrt(Math.abs(d))) + ((((20.0d * Math.sin((6.0d * d) * 3.141592653589793d)) + (20.0d * Math.sin((2.0d * d) * 3.141592653589793d))) * 2.0d) / 3.0d) + ((((20.0d * Math.sin(3.141592653589793d * d2)) + (40.0d * Math.sin((d2 / 3.0d) * 3.141592653589793d))) * 2.0d) / 3.0d) + ((((160.0d * Math.sin((d2 / 12.0d) * 3.141592653589793d)) + (320.0d * Math.sin((3.141592653589793d * d2) / 30.0d))) * 2.0d) / 3.0d);
    }
}
