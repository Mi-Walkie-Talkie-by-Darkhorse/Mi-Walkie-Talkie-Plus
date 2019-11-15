package com.amap.api.col.sl;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.location.CoordUtil;
import com.amap.api.location.DPoint;
import java.io.File;
import java.math.BigDecimal;

/* compiled from: OffsetUtil */
public final class fr {
    static double a = 3.141592653589793d;

    public static DPoint a(Context context, DPoint dPoint) {
        if (context == null) {
            return null;
        }
        String a2 = bt.a(context, "libwgs2gcj.so");
        if (!TextUtils.isEmpty(a2) && new File(a2).exists() && !CoordUtil.isLoadedSo()) {
            try {
                System.load(a2);
                CoordUtil.setLoadedSo(true);
            } catch (UnsatisfiedLinkError e) {
            } catch (Throwable th) {
                fq.a(th, "OffsetUtil", "offset");
            }
        }
        return a(dPoint, CoordUtil.isLoadedSo());
    }

    public static DPoint a(Context context, double d, double d2) {
        if (context == null) {
            return null;
        }
        return a(context, new DPoint(d2, d));
    }

    private static DPoint a(DPoint dPoint, boolean z) {
        double[] a2;
        try {
            if (!fq.a(dPoint.getLatitude(), dPoint.getLongitude())) {
                return dPoint;
            }
            double[] dArr = new double[2];
            if (z) {
                if (CoordUtil.convertToGcj(new double[]{dPoint.getLongitude(), dPoint.getLatitude()}, dArr) != 0) {
                    a2 = fz.a(dPoint.getLongitude(), dPoint.getLatitude());
                } else {
                    a2 = dArr;
                }
            } else {
                a2 = fz.a(dPoint.getLongitude(), dPoint.getLatitude());
            }
            return new DPoint(a2[1], a2[0]);
        } catch (Throwable th) {
            fq.a(th, "OffsetUtil", "cover part2");
            return dPoint;
        }
    }

    public static DPoint b(Context context, DPoint dPoint) {
        try {
            double longitude = (double) (((long) (dPoint.getLongitude() * 100000.0d)) % 36000000);
            double latitude = (double) (((long) (dPoint.getLatitude() * 100000.0d)) % 36000000);
            int i = (int) ((-b(longitude, latitude)) + latitude);
            int i2 = (int) (((double) (longitude > 0.0d ? 1 : -1)) + (-a((double) ((int) ((-a(longitude, latitude)) + longitude)), (double) i)) + longitude);
            return a(context, new DPoint(((double) ((int) (((double) (latitude > 0.0d ? 1 : -1)) + ((-b((double) i2, (double) i)) + latitude)))) / 100000.0d, ((double) i2) / 100000.0d));
        } catch (Throwable th) {
            fq.a(th, "OffsetUtil", "marbar2G");
            return dPoint;
        }
    }

    private static double a(double d, double d2) {
        return (Math.cos(d2 / 100000.0d) * (d / 18000.0d)) + (Math.sin(d / 100000.0d) * (d2 / 9000.0d));
    }

    private static double b(double d, double d2) {
        return (Math.sin(d2 / 100000.0d) * (d / 18000.0d)) + (Math.cos(d / 100000.0d) * (d2 / 9000.0d));
    }

    public static DPoint a(DPoint dPoint) {
        if (dPoint == null) {
            return dPoint;
        }
        int i = 0;
        double d = 0.0060424805d;
        DPoint dPoint2 = null;
        double d2 = 0.006401062d;
        while (i < 2) {
            try {
                double longitude = dPoint.getLongitude();
                double latitude = dPoint.getLatitude();
                DPoint dPoint3 = new DPoint();
                double d3 = longitude - d2;
                double d4 = latitude - d;
                DPoint dPoint4 = new DPoint();
                double sin = (Math.sin(b(d3) + Math.atan2(d4, d3)) * (a(d4) + Math.sqrt((d3 * d3) + (d4 * d4)))) + 0.006d;
                dPoint4.setLongitude(c((Math.cos(b(d3) + Math.atan2(d4, d3)) * (a(d4) + Math.sqrt((d3 * d3) + (d4 * d4)))) + 0.0065d));
                dPoint4.setLatitude(c(sin));
                dPoint3.setLongitude(c((longitude + d3) - dPoint4.getLongitude()));
                dPoint3.setLatitude(c((latitude + d4) - dPoint4.getLatitude()));
                i++;
                d2 = dPoint.getLongitude() - dPoint3.getLongitude();
                d = dPoint.getLatitude() - dPoint3.getLatitude();
                dPoint2 = dPoint3;
            } catch (Throwable th) {
                fq.a(th, "OffsetUtil", "B2G");
                return dPoint;
            }
        }
        return dPoint2;
    }

    private static double a(double d) {
        return Math.sin(3000.0d * d * (a / 180.0d)) * 2.0E-5d;
    }

    private static double b(double d) {
        return Math.cos(3000.0d * d * (a / 180.0d)) * 3.0E-6d;
    }

    private static double c(double d) {
        return new BigDecimal(d).setScale(8, 4).doubleValue();
    }
}
