package com.ifengyu.intercom.i;

/* compiled from: GCJToWGSUtil.java */
/* loaded from: classes2.dex */
public class u {
    public static double[] a(double d, double d2) {
        double d3 = d2 - 105.0d;
        double d4 = d - 35.0d;
        double b2 = b(d3, d4);
        double c2 = c(d3, d4);
        double d5 = (d / 180.0d) * 3.141592653589793d;
        double sin = Math.sin(d5);
        double d6 = 1.0d - ((0.006693421622965943d * sin) * sin);
        double sqrt = Math.sqrt(d6);
        return new double[]{d - ((b2 * 180.0d) / ((6335552.717000426d / (d6 * sqrt)) * 3.141592653589793d)), d2 - ((c2 * 180.0d) / (((6378245.0d / sqrt) * Math.cos(d5)) * 3.141592653589793d))};
    }

    private static double b(double d, double d2) {
        double d3 = d * 2.0d;
        double d4 = d2 * 3.141592653589793d;
        return (-100.0d) + d3 + (d2 * 3.0d) + (d2 * 0.2d * d2) + (0.1d * d * d2) + (Math.sqrt(Math.abs(d)) * 0.2d) + ((((Math.sin((6.0d * d) * 3.141592653589793d) * 20.0d) + (Math.sin(d3 * 3.141592653589793d) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(d4) * 20.0d) + (Math.sin((d2 / 3.0d) * 3.141592653589793d) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * 3.141592653589793d) * 160.0d) + (Math.sin(d4 / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    private static double c(double d, double d2) {
        double d3 = d * 0.1d;
        return d + 300.0d + (d2 * 2.0d) + (d3 * d) + (d3 * d2) + (Math.sqrt(Math.abs(d)) * 0.1d) + ((((Math.sin((6.0d * d) * 3.141592653589793d) * 20.0d) + (Math.sin((d * 2.0d) * 3.141592653589793d) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(d * 3.141592653589793d) * 20.0d) + (Math.sin((d / 3.0d) * 3.141592653589793d) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d / 12.0d) * 3.141592653589793d) * 150.0d) + (Math.sin((d / 30.0d) * 3.141592653589793d) * 300.0d)) * 2.0d) / 3.0d);
    }
}
