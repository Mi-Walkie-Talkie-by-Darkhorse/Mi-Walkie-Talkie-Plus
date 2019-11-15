package microsoft.mappoint;

import android.graphics.Point;
import org.osmdroid.util.GeoPoint;

public final class TileSystem {
    private static final double EarthRadius = 6378137.0d;
    private static final double MaxLatitude = 85.05112878d;
    private static final double MaxLongitude = 180.0d;
    private static final double MinLatitude = -85.05112878d;
    private static final double MinLongitude = -180.0d;
    private static int mMaxZoomLevel = 22;
    protected static int mTileSize = 256;

    public static void setTileSize(int i) {
        mMaxZoomLevel = (31 - ((int) (Math.log((double) i) / Math.log(2.0d)))) - 1;
        mTileSize = i;
    }

    public static int getTileSize() {
        return mTileSize;
    }

    public static int getMaximumZoomLevel() {
        return mMaxZoomLevel;
    }

    private static double Clip(double d, double d2, double d3) {
        return Math.min(Math.max(d, d2), d3);
    }

    public static int MapSize(int i) {
        int i2 = mTileSize;
        if (i >= getMaximumZoomLevel()) {
            i = getMaximumZoomLevel();
        }
        return i2 << i;
    }

    public static double GroundResolution(double d, int i) {
        return (((Math.cos((Clip(d, MinLatitude, MaxLatitude) * 3.141592653589793d) / 180.0d) * 2.0d) * 3.141592653589793d) * EarthRadius) / ((double) MapSize(i));
    }

    public static double MapScale(double d, int i, int i2) {
        return (GroundResolution(d, i) * ((double) i2)) / 0.0254d;
    }

    public static Point LatLongToPixelXY(double d, double d2, int i, Point point) {
        if (point == null) {
            point = new Point();
        }
        double Clip = (Clip(d2, -180.0d, 180.0d) + 180.0d) / 360.0d;
        double sin = Math.sin((3.141592653589793d * Clip(d, MinLatitude, MaxLatitude)) / 180.0d);
        double log = 0.5d - (Math.log((1.0d + sin) / (1.0d - sin)) / 12.566370614359172d);
        int MapSize = MapSize(i);
        point.x = (int) Clip((Clip * ((double) MapSize)) + 0.5d, 0.0d, (double) (MapSize - 1));
        point.y = (int) Clip((((double) MapSize) * log) + 0.5d, 0.0d, (double) (MapSize - 1));
        return point;
    }

    public static GeoPoint PixelXYToLatLong(int i, int i2, int i3, GeoPoint geoPoint) {
        if (geoPoint == null) {
            geoPoint = new GeoPoint(0, 0);
        }
        double MapSize = (double) MapSize(i3);
        double Clip = 360.0d * ((Clip((double) i, 0.0d, MapSize - 1.0d) / MapSize) - 0.5d);
        geoPoint.setLatitude(90.0d - ((Math.atan(Math.exp(((-(0.5d - (Clip((double) i2, 0.0d, MapSize - 1.0d) / MapSize))) * 2.0d) * 3.141592653589793d)) * 360.0d) / 3.141592653589793d));
        geoPoint.setLongitude(Clip);
        return geoPoint;
    }

    public static Point PixelXYToTileXY(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        point.x = i / mTileSize;
        point.y = i2 / mTileSize;
        return point;
    }

    public static Point TileXYToPixelXY(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        point.x = mTileSize * i;
        point.y = mTileSize * i2;
        return point;
    }

    public static String TileXYToQuadKey(int i, int i2, int i3) {
        StringBuilder sb = new StringBuilder();
        while (i3 > 0) {
            char c = '0';
            int i4 = 1 << (i3 - 1);
            if ((i & i4) != 0) {
                c = (char) 49;
            }
            if ((i4 & i2) != 0) {
                c = (char) (((char) (c + 1)) + 1);
            }
            sb.append(c);
            i3--;
        }
        return sb.toString();
    }

    public static Point QuadKeyToTileXY(String str, Point point) {
        int i = 0;
        if (point == null) {
            point = new Point();
        }
        int length = str.length();
        int i2 = 0;
        for (int i3 = length; i3 > 0; i3--) {
            int i4 = 1 << (i3 - 1);
            switch (str.charAt(length - i3)) {
                case '0':
                    break;
                case '1':
                    i2 |= i4;
                    break;
                case '2':
                    i |= i4;
                    break;
                case '3':
                    i2 |= i4;
                    i |= i4;
                    break;
                default:
                    throw new IllegalArgumentException("Invalid QuadKey digit sequence.");
            }
        }
        point.set(i2, i);
        return point;
    }
}
