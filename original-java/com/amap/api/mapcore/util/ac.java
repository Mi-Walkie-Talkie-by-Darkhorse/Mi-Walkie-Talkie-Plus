package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.maps.model.LatLng;
import com.autonavi.amap.mapcore.DPoint;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.math.BigDecimal;

/* compiled from: OffsetUtil */
public class ac {
    static double a = 3.141592653589793d;
    private static boolean b = false;

    public static LatLng a(Context context, LatLng latLng) {
        if (context == null) {
            return null;
        }
        String a2 = fw.a(context, "libwgs2gcj.so");
        if (!TextUtils.isEmpty(a2) && new File(a2).exists() && !b) {
            try {
                System.load(a2);
                b = true;
            } catch (Throwable th) {
            }
        }
        DPoint a3 = a(DPoint.obtain(latLng.longitude, latLng.latitude), b);
        LatLng latLng2 = new LatLng(a3.y, a3.x, false);
        a3.recycle();
        return latLng2;
    }

    /* JADX WARNING: No exception handlers in catch block: Catch:{  } */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.autonavi.amap.mapcore.DPoint a(com.autonavi.amap.mapcore.DPoint r6, boolean r7) {
        /*
            double r0 = r6.y     // Catch:{ Throwable -> 0x004e }
            double r2 = r6.x     // Catch:{ Throwable -> 0x004e }
            boolean r0 = com.amap.api.mapcore.util.dy.a(r0, r2)     // Catch:{ Throwable -> 0x004e }
            if (r0 == 0) goto L_0x0037
            r0 = 2
            double[] r0 = new double[r0]     // Catch:{ Throwable -> 0x004e }
            if (r7 == 0) goto L_0x0045
            r1 = 2
            double[] r1 = new double[r1]     // Catch:{ Throwable -> 0x004e }
            r2 = 0
            double r4 = r6.x     // Catch:{ Throwable -> 0x004e }
            r1[r2] = r4     // Catch:{ Throwable -> 0x004e }
            r2 = 1
            double r4 = r6.y     // Catch:{ Throwable -> 0x004e }
            r1[r2] = r4     // Catch:{ Throwable -> 0x004e }
            int r1 = com.autonavi.amap.mapcore.CoordUtil.convertToGcj(r1, r0)     // Catch:{ Throwable -> 0x0038 }
            if (r1 == 0) goto L_0x002a
            double r0 = r6.x     // Catch:{ Throwable -> 0x0038 }
            double r2 = r6.y     // Catch:{ Throwable -> 0x0038 }
            double[] r0 = com.amap.api.mapcore.util.ig.a(r0, r2)     // Catch:{ Throwable -> 0x0038 }
        L_0x002a:
            r6.recycle()     // Catch:{ Throwable -> 0x004e }
            r1 = 0
            r2 = r0[r1]     // Catch:{ Throwable -> 0x004e }
            r1 = 1
            r0 = r0[r1]     // Catch:{ Throwable -> 0x004e }
            com.autonavi.amap.mapcore.DPoint r6 = com.autonavi.amap.mapcore.DPoint.obtain(r2, r0)     // Catch:{ Throwable -> 0x004e }
        L_0x0037:
            return r6
        L_0x0038:
            r0 = move-exception
            com.google.devtools.build.android.desugar.runtime.ThrowableExtension.printStackTrace(r0)     // Catch:{ Throwable -> 0x004e }
            double r0 = r6.x     // Catch:{ Throwable -> 0x004e }
            double r2 = r6.y     // Catch:{ Throwable -> 0x004e }
            double[] r0 = com.amap.api.mapcore.util.ig.a(r0, r2)     // Catch:{ Throwable -> 0x004e }
            goto L_0x002a
        L_0x0045:
            double r0 = r6.x     // Catch:{ Throwable -> 0x004e }
            double r2 = r6.y     // Catch:{ Throwable -> 0x004e }
            double[] r0 = com.amap.api.mapcore.util.ig.a(r0, r2)     // Catch:{ Throwable -> 0x004e }
            goto L_0x002a
        L_0x004e:
            r0 = move-exception
            goto L_0x0037
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.ac.a(com.autonavi.amap.mapcore.DPoint, boolean):com.autonavi.amap.mapcore.DPoint");
    }

    public static LatLng b(Context context, LatLng latLng) {
        try {
            DPoint c = c(latLng.longitude, latLng.latitude);
            LatLng a2 = a(context, new LatLng(c.y, c.x, false));
            c.recycle();
            return a2;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
            return latLng;
        }
    }

    public static double a(double d, double d2) {
        return (Math.cos(d2 / 100000.0d) * (d / 18000.0d)) + (Math.sin(d / 100000.0d) * (d2 / 9000.0d));
    }

    public static double b(double d, double d2) {
        return (Math.sin(d2 / 100000.0d) * (d / 18000.0d)) + (Math.cos(d / 100000.0d) * (d2 / 9000.0d));
    }

    private static DPoint c(double d, double d2) {
        double d3 = (double) (((long) (100000.0d * d)) % 36000000);
        double d4 = (double) (((long) (100000.0d * d2)) % 36000000);
        int i = (int) ((-b(d3, d4)) + d4);
        int i2 = (int) (((double) (d3 > 0.0d ? 1 : -1)) + (-a((double) ((int) ((-a(d3, d4)) + d3)), (double) i)) + d3);
        return DPoint.obtain(((double) i2) / 100000.0d, ((double) ((int) (((double) (d4 > 0.0d ? 1 : -1)) + ((-b((double) i2, (double) i)) + d4)))) / 100000.0d);
    }

    public static LatLng a(LatLng latLng) {
        if (latLng != null) {
            try {
                DPoint a2 = a(latLng.longitude, latLng.latitude, 2);
                LatLng latLng2 = new LatLng(a2.y, a2.x, false);
                a2.recycle();
                return latLng2;
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        return latLng;
    }

    private static double a(double d) {
        return Math.sin(3000.0d * d * (a / 180.0d)) * 2.0E-5d;
    }

    private static double b(double d) {
        return Math.cos(3000.0d * d * (a / 180.0d)) * 3.0E-6d;
    }

    private static DPoint d(double d, double d2) {
        DPoint obtain = DPoint.obtain();
        double sin = (Math.sin(b(d) + Math.atan2(d2, d)) * (a(d2) + Math.sqrt((d * d) + (d2 * d2)))) + 0.006d;
        obtain.x = a((Math.cos(b(d) + Math.atan2(d2, d)) * (a(d2) + Math.sqrt((d * d) + (d2 * d2)))) + 0.0065d, 8);
        obtain.y = a(sin, 8);
        return obtain;
    }

    private static double a(double d, int i) {
        return new BigDecimal(d).setScale(i, 4).doubleValue();
    }

    private static DPoint a(double d, double d2, int i) {
        double d3 = 0.006401062d;
        double d4 = 0.0060424805d;
        int i2 = 0;
        DPoint dPoint = null;
        while (i2 < i) {
            DPoint a2 = a(d, d2, d3, d4);
            d3 = d - a2.x;
            d4 = d2 - a2.y;
            i2++;
            dPoint = a2;
        }
        return dPoint;
    }

    private static DPoint a(double d, double d2, double d3, double d4) {
        DPoint obtain = DPoint.obtain();
        double d5 = d - d3;
        double d6 = d2 - d4;
        DPoint d7 = d(d5, d6);
        obtain.x = a((d5 + d) - d7.x, 8);
        obtain.y = a((d2 + d6) - d7.y, 8);
        return obtain;
    }
}
