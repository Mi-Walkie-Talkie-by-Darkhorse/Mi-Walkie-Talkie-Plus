package com.ifengyu.intercom.p214p;

import com.ifengyu.intercom.bean.GPS;

/* renamed from: com.ifengyu.intercom.p.q */
/* loaded from: classes2.dex */
public class CoordinateTransformUtil {

    /* renamed from: a */
    private static double f14478a = 3.141592653589793d;

    /* renamed from: b */
    private static double f14479b = 6378245.0d;

    /* renamed from: c */
    private static double f14480c = 0.006693421622965943d;

    /* renamed from: a */
    private static boolean m11083a(double d, double d2) {
        return d2 < 72.004d || d2 > 137.8347d || d < 0.8293d || d > 55.8271d;
    }

    /* renamed from: b */
    private static double m11082b(double d, double d2) {
        double d3 = d * 2.0d;
        return (-100.0d) + d3 + (d2 * 3.0d) + (d2 * 0.2d * d2) + (0.1d * d * d2) + (Math.sqrt(Math.abs(d)) * 0.2d) + ((((Math.sin((d * 6.0d) * f14478a) * 20.0d) + (Math.sin(d3 * f14478a) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(f14478a * d2) * 20.0d) + (Math.sin((d2 / 3.0d) * f14478a) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d2 / 12.0d) * f14478a) * 160.0d) + (Math.sin((d2 * f14478a) / 30.0d) * 320.0d)) * 2.0d) / 3.0d);
    }

    /* renamed from: c */
    private static double m11081c(double d, double d2) {
        double d3 = d * 0.1d;
        return d + 300.0d + (d2 * 2.0d) + (d3 * d) + (d3 * d2) + (Math.sqrt(Math.abs(d)) * 0.1d) + ((((Math.sin((6.0d * d) * f14478a) * 20.0d) + (Math.sin((d * 2.0d) * f14478a) * 20.0d)) * 2.0d) / 3.0d) + ((((Math.sin(f14478a * d) * 20.0d) + (Math.sin((d / 3.0d) * f14478a) * 40.0d)) * 2.0d) / 3.0d) + ((((Math.sin((d / 12.0d) * f14478a) * 150.0d) + (Math.sin((d / 30.0d) * f14478a) * 300.0d)) * 2.0d) / 3.0d);
    }

    /* renamed from: d */
    public static GPS m11080d(double d, double d2) {
        if (m11083a(d, d2)) {
            return new GPS(d, d2);
        }
        double d3 = d2 - 105.0d;
        double d4 = d - 35.0d;
        double m11082b = m11082b(d3, d4);
        double m11081c = m11081c(d3, d4);
        double d5 = (d / 180.0d) * f14478a;
        double sin = Math.sin(d5);
        double d6 = 1.0d - ((f14480c * sin) * sin);
        double sqrt = Math.sqrt(d6);
        double d7 = f14479b;
        return new GPS(d + ((m11082b * 180.0d) / ((((1.0d - f14480c) * d7) / (d6 * sqrt)) * f14478a)), d2 + ((m11081c * 180.0d) / (((d7 / sqrt) * Math.cos(d5)) * f14478a)));
    }
}
