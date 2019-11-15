package org.osmdroid.util;

import android.graphics.Point;

public final class TileSystem {
    public static void setTileSize(int i) {
        microsoft.mappoint.TileSystem.setTileSize(i);
    }

    public static int getTileSize() {
        return microsoft.mappoint.TileSystem.getTileSize();
    }

    public static int MapSize(int i) {
        return microsoft.mappoint.TileSystem.MapSize(i);
    }

    public static double GroundResolution(double d, int i) {
        return microsoft.mappoint.TileSystem.GroundResolution(wrap(d, -90.0d, 90.0d, 180.0d), i);
    }

    public static double MapScale(double d, int i, int i2) {
        return microsoft.mappoint.TileSystem.MapScale(d, i, i2);
    }

    public static Point LatLongToPixelXY(double d, double d2, int i, Point point) {
        return microsoft.mappoint.TileSystem.LatLongToPixelXY(wrap(d, -90.0d, 90.0d, 180.0d), wrap(d2, -180.0d, 180.0d, 360.0d), i, point);
    }

    public static GeoPoint PixelXYToLatLong(int i, int i2, int i3, GeoPoint geoPoint) {
        int MapSize = MapSize(i3);
        return microsoft.mappoint.TileSystem.PixelXYToLatLong((int) wrap((double) i, 0.0d, (double) (MapSize - 1), (double) MapSize), (int) wrap((double) i2, 0.0d, (double) (MapSize - 1), (double) MapSize), i3, geoPoint);
    }

    public static Point PixelXYToTileXY(int i, int i2, Point point) {
        return microsoft.mappoint.TileSystem.PixelXYToTileXY(i, i2, point);
    }

    public static Point TileXYToPixelXY(int i, int i2, Point point) {
        return microsoft.mappoint.TileSystem.TileXYToPixelXY(i, i2, point);
    }

    public static String TileXYToQuadKey(int i, int i2, int i3) {
        return microsoft.mappoint.TileSystem.TileXYToQuadKey(i, i2, i3);
    }

    public static Point QuadKeyToTileXY(String str, Point point) {
        return microsoft.mappoint.TileSystem.QuadKeyToTileXY(str, point);
    }

    private static double wrap(double d, double d2, double d3, double d4) {
        if (d2 > d3) {
            throw new IllegalArgumentException("minValue must be smaller than maxValue: " + d2 + ">" + d3);
        } else if (d4 > (d3 - d2) + 1.0d) {
            throw new IllegalArgumentException("interval must be equal or smaller than maxValue-minValue: min: " + d2 + " max:" + d3 + " int:" + d4);
        } else {
            double d5 = d;
            while (d5 < d2) {
                d5 += d4;
            }
            while (d5 > d3) {
                d5 -= d4;
            }
            return d5;
        }
    }
}
