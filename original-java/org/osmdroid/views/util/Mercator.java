package org.osmdroid.views.util;

import android.graphics.Point;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.util.constants.MapViewConstants;

@Deprecated
public class Mercator implements MapViewConstants {
    static final double DEG2RAD = 0.017453292519943295d;

    private Mercator() {
    }

    public static Point projectGeoPoint(IGeoPoint iGeoPoint, int i, Point point) {
        return projectGeoPoint(iGeoPoint.getLatitude(), iGeoPoint.getLongitude(), i, point);
    }

    public static Point projectGeoPoint(double d, double d2, int i, Point point) {
        if (point == null) {
            point = new Point(0, 0);
        }
        point.x = (int) Math.floor(((180.0d + d2) / 360.0d) * ((double) (1 << i)));
        point.y = (int) Math.floor(((1.0d - (Math.log(Math.tan(d * 0.017453292519943295d) + (1.0d / Math.cos(d * 0.017453292519943295d))) / 3.141592653589793d)) / 2.0d) * ((double) (1 << i)));
        return point;
    }

    public static BoundingBox getBoundingBoxFromCoords(double d, double d2, double d3, double d4, int i) {
        return new BoundingBox(tile2lat((int) d2, i), tile2lon((int) d3, i), tile2lat((int) d4, i), tile2lon((int) d, i));
    }

    public static BoundingBox getBoundingBoxFromPointInMapTile(Point point, int i) {
        return new BoundingBox(tile2lat(point.y, i), tile2lon(point.x + 1, i), tile2lat(point.y + 1, i), tile2lon(point.x, i));
    }

    public static GeoPoint projectPoint(int i, int i2, int i3) {
        return new GeoPoint(tile2lat(i2, i3), tile2lon(i, i3));
    }

    public static double tile2lon(int i, int i2) {
        return ((((double) i) / ((double) (1 << i2))) * 360.0d) - 180.0d;
    }

    public static double tile2lat(int i, int i2) {
        double d = 3.141592653589793d - ((6.283185307179586d * ((double) i)) / ((double) (1 << i2)));
        return Math.atan((Math.exp(d) - Math.exp(-d)) * 0.5d) * 57.29577951308232d;
    }
}
