package com.autonavi.amap.mapcore;

import android.graphics.Point;

public class VirtualEarthProjection {
    public static final double EarthCircumferenceInMeters = 4.007501668557849E7d;
    public static final int EarthRadiusInMeters = 6378137;
    public static final int MAXZOOMLEVEL = 20;
    public static final double MaxLatitude = 85.0511287798d;
    public static final double MaxLongitude = 180.0d;
    public static final double MinLatitude = -85.0511287798d;
    public static final double MinLongitude = -180.0d;
    public static final int PixelsPerTile = 256;
    public static final int TileSplitLevel = 0;

    public static double Clip(double d, double d2, double d3) {
        return Math.min(Math.max(d, d2), d3);
    }

    public static Point LatLongToPixels(int i, int i2, int i3) {
        return LatLongToPixels(((double) i2) / 3600000.0d, ((double) i) / 3600000.0d, i3);
    }

    public static Point LatLongToPixels(double d, double d2, int i) {
        Point point = new Point();
        double Clip = (Clip(d2, -180.0d, 180.0d) * 3.141592653589793d) / 180.0d;
        double sin = Math.sin((Clip(d, -85.0511287798d, 85.0511287798d) * 3.141592653589793d) / 180.0d);
        double log = 3189068.0d * Math.log((1.0d + sin) / (1.0d - sin));
        long j = 256 << i;
        double d3 = 4.007501668557849E7d / ((double) j);
        point.x = (int) Clip((((Clip * 6378137.0d) + 2.0037508342789244E7d) / d3) + 0.5d, 0.0d, (double) (j - 1));
        point.y = (int) Clip((((double) ((long) (2.0037508342789244E7d - log))) / d3) + 0.5d, 0.0d, (double) (j - 1));
        return point;
    }

    public static DPoint PixelsToLatLong(long j, long j2, int i) {
        DPoint obtain = DPoint.obtain();
        double d = 4.007501668557849E7d / ((double) ((1 << i) * 256));
        double d2 = (((double) j) * d) - 2.0037508342789244E7d;
        obtain.y = 1.5707963267948966d - (Math.atan(Math.exp((-(2.0037508342789244E7d - (d * ((double) j2)))) / 6378137.0d)) * 2.0d);
        obtain.y *= 57.29577951308232d;
        obtain.x = d2 / 6378137.0d;
        obtain.x *= 57.29577951308232d;
        return obtain;
    }
}
