package org.osmdroid.util;

import android.graphics.Point;
import android.graphics.Rect;

public class GeometryMath {
    public static final double DEG2RAD = 0.017453292519943295d;
    public static final double RAD2DEG = 57.29577951308232d;

    public static final Rect getBoundingBoxForRotatatedRectangle(Rect rect, float f, Rect rect2) {
        return getBoundingBoxForRotatatedRectangle(rect, rect.centerX(), rect.centerY(), f, rect2);
    }

    public static final Rect getBoundingBoxForRotatatedRectangle(Rect rect, Point point, float f, Rect rect2) {
        return getBoundingBoxForRotatatedRectangle(rect, point.x, point.y, f, rect2);
    }

    public static final Rect getBoundingBoxForRotatatedRectangle(Rect rect, int i, int i2, float f, Rect rect2) {
        if (rect2 == null) {
            rect2 = new Rect();
        }
        double d = ((double) f) * 0.017453292519943295d;
        double sin = Math.sin(d);
        double cos = Math.cos(d);
        double d2 = (double) (rect.left - i);
        double d3 = (double) (rect.top - i2);
        double d4 = (((double) i) - (d2 * cos)) + (d3 * sin);
        double d5 = (((double) i2) - (d2 * sin)) - (d3 * cos);
        double d6 = (double) (rect.right - i);
        double d7 = (double) (rect.top - i2);
        double d8 = (((double) i) - (d6 * cos)) + (d7 * sin);
        double d9 = (((double) i2) - (d6 * sin)) - (d7 * cos);
        double d10 = (double) (rect.left - i);
        double d11 = (double) (rect.bottom - i2);
        double d12 = (((double) i) - (d10 * cos)) + (d11 * sin);
        double d13 = (((double) i2) - (d10 * sin)) - (d11 * cos);
        double d14 = (double) (rect.right - i);
        double d15 = (double) (rect.bottom - i2);
        double d16 = (((double) i) - (d14 * cos)) + (d15 * sin);
        double d17 = (((double) i2) - (sin * d14)) - (cos * d15);
        rect2.set((int) Min4(d4, d8, d12, d16), (int) Min4(d5, d9, d13, d17), (int) Max4(d4, d8, d12, d16), (int) Max4(d5, d9, d13, d17));
        return rect2;
    }

    private static double Min4(double d, double d2, double d3, double d4) {
        return Math.floor(Math.min(Math.min(d, d2), Math.min(d3, d4)));
    }

    private static double Max4(double d, double d2, double d3, double d4) {
        return Math.ceil(Math.max(Math.max(d, d2), Math.max(d3, d4)));
    }
}
