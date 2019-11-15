package org.osmdroid.views.util;

import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import java.util.Iterator;
import java.util.List;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.TileSystem;
import org.osmdroid.views.Projection;

public class PathProjection {
    public static Path toPixels(Projection projection, List<? extends GeoPoint> list, Path path) {
        return toPixels(projection, list, path, true);
    }

    public static Path toPixels(Projection projection, List<? extends GeoPoint> list, Path path, boolean z) throws IllegalArgumentException {
        PointF relativePositionOfGeoPointInBoundingBoxWithLinearInterpolation;
        if (list.size() < 2) {
            throw new IllegalArgumentException("List of GeoPoints needs to be at least 2.");
        }
        if (path == null) {
            path = new Path();
        }
        path.incReserve(list.size());
        boolean z2 = true;
        Iterator it = list.iterator();
        while (true) {
            boolean z3 = z2;
            if (!it.hasNext()) {
                return path;
            }
            GeoPoint geoPoint = (GeoPoint) it.next();
            Point LatLongToPixelXY = TileSystem.LatLongToPixelXY(geoPoint.getLatitude(), geoPoint.getLongitude(), projection.getZoomLevel(), null);
            TileSystem.PixelXYToTileXY(LatLongToPixelXY.x, LatLongToPixelXY.y, LatLongToPixelXY);
            Point TileXYToPixelXY = TileSystem.TileXYToPixelXY(LatLongToPixelXY.x, LatLongToPixelXY.y, null);
            Point TileXYToPixelXY2 = TileSystem.TileXYToPixelXY(LatLongToPixelXY.x + TileSystem.getTileSize(), LatLongToPixelXY.y + TileSystem.getTileSize(), null);
            GeoPoint PixelXYToLatLong = TileSystem.PixelXYToLatLong(TileXYToPixelXY.x, TileXYToPixelXY.y, projection.getZoomLevel(), null);
            GeoPoint PixelXYToLatLong2 = TileSystem.PixelXYToLatLong(TileXYToPixelXY2.x, TileXYToPixelXY2.y, projection.getZoomLevel(), null);
            BoundingBox boundingBox = new BoundingBox(PixelXYToLatLong.getLatitude(), PixelXYToLatLong.getLongitude(), PixelXYToLatLong2.getLatitude(), PixelXYToLatLong2.getLongitude());
            if (!z || projection.getZoomLevel() >= 7) {
                relativePositionOfGeoPointInBoundingBoxWithLinearInterpolation = boundingBox.getRelativePositionOfGeoPointInBoundingBoxWithLinearInterpolation(geoPoint.getLatitude(), geoPoint.getLongitude(), null);
            } else {
                relativePositionOfGeoPointInBoundingBoxWithLinearInterpolation = boundingBox.getRelativePositionOfGeoPointInBoundingBoxWithExactGudermannInterpolation(geoPoint.getLatitude(), geoPoint.getLongitude(), null);
            }
            Rect screenRect = projection.getScreenRect();
            Point PixelXYToTileXY = TileSystem.PixelXYToTileXY(screenRect.centerX(), screenRect.centerY(), null);
            Point TileXYToPixelXY3 = TileSystem.TileXYToPixelXY(PixelXYToTileXY.x, PixelXYToTileXY.y, null);
            int i = PixelXYToTileXY.x - LatLongToPixelXY.x;
            int tileSize = TileXYToPixelXY3.y - ((PixelXYToTileXY.y - LatLongToPixelXY.y) * TileSystem.getTileSize());
            int tileSize2 = ((int) (relativePositionOfGeoPointInBoundingBoxWithLinearInterpolation.x * ((float) TileSystem.getTileSize()))) + (TileXYToPixelXY3.x - (i * TileSystem.getTileSize()));
            int tileSize3 = ((int) (relativePositionOfGeoPointInBoundingBoxWithLinearInterpolation.y * ((float) TileSystem.getTileSize()))) + tileSize;
            if (z3) {
                path.moveTo((float) tileSize2, (float) tileSize3);
            } else {
                path.lineTo((float) tileSize2, (float) tileSize3);
            }
            z2 = false;
        }
    }
}
