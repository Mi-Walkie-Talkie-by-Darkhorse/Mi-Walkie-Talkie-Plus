package org.osmdroid.views;

import android.graphics.Matrix;
import android.graphics.Point;
import android.graphics.Rect;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.api.IProjection;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.BoundingBoxE6;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.TileSystem;
import org.osmdroid.views.util.constants.MapViewConstants;

public class Projection implements IProjection, MapViewConstants {
    private final BoundingBox mBoundingBoxProjection;
    private final Rect mIntrinsicScreenRectProjection;
    private final int mMapViewHeight;
    private final int mMapViewWidth;
    protected final float mMultiTouchScale;
    protected final int mOffsetX;
    protected final int mOffsetY;
    private final Matrix mRotateAndScaleMatrix = new Matrix();
    private final float[] mRotateScalePoints = new float[2];
    private final Rect mScreenRectProjection;
    private final Matrix mUnrotateAndScaleMatrix = new Matrix();
    private final int mZoomLevelProjection;
    private MapView mapView;

    Projection(MapView mapView2) {
        this.mapView = mapView2;
        this.mZoomLevelProjection = mapView2.getZoomLevel(false);
        this.mScreenRectProjection = mapView2.getScreenRect(null);
        this.mIntrinsicScreenRectProjection = mapView2.getIntrinsicScreenRect(null);
        this.mMapViewWidth = mapView2.getWidth();
        this.mMapViewHeight = mapView2.getHeight();
        this.mOffsetX = -mapView2.getScrollX();
        this.mOffsetY = -mapView2.getScrollY();
        this.mRotateAndScaleMatrix.set(mapView2.mRotateScaleMatrix);
        this.mRotateAndScaleMatrix.invert(this.mUnrotateAndScaleMatrix);
        this.mMultiTouchScale = mapView2.mMultiTouchScale;
        IGeoPoint fromPixels = fromPixels(this.mMapViewWidth, 0, null);
        IGeoPoint fromPixels2 = fromPixels(0, this.mMapViewHeight, null);
        this.mBoundingBoxProjection = new BoundingBox(fromPixels.getLatitude(), fromPixels.getLongitude(), fromPixels2.getLatitude(), fromPixels2.getLongitude());
    }

    public int getZoomLevel() {
        return this.mZoomLevelProjection;
    }

    public BoundingBox getBoundingBox() {
        return this.mBoundingBoxProjection;
    }

    @Deprecated
    public BoundingBoxE6 getBoundingBoxE6() {
        return new BoundingBoxE6(this.mBoundingBoxProjection.getLatNorth(), this.mBoundingBoxProjection.getLonEast(), this.mBoundingBoxProjection.getLatSouth(), this.mBoundingBoxProjection.getLonWest());
    }

    public Rect getScreenRect() {
        return this.mScreenRectProjection;
    }

    public Rect getIntrinsicScreenRect() {
        return this.mIntrinsicScreenRectProjection;
    }

    public float getMapOrientation() {
        return this.mapView.getMapOrientation();
    }

    public IGeoPoint fromPixels(int i, int i2) {
        return fromPixels(i, i2, null);
    }

    public IGeoPoint fromPixels(int i, int i2, GeoPoint geoPoint) {
        return TileSystem.PixelXYToLatLong(i - this.mOffsetX, i2 - this.mOffsetY, this.mZoomLevelProjection, geoPoint);
    }

    public IGeoPoint fromPixelsRotationSensitive(int i, int i2, GeoPoint geoPoint) {
        Point unrotateAndScalePoint = unrotateAndScalePoint(i, i2, null);
        return TileSystem.PixelXYToLatLong(unrotateAndScalePoint.x - this.mOffsetX, unrotateAndScalePoint.y - this.mOffsetY, this.mZoomLevelProjection, geoPoint);
    }

    public Point toPixels(IGeoPoint iGeoPoint, Point point) {
        Point LatLongToPixelXY = TileSystem.LatLongToPixelXY(iGeoPoint.getLatitude(), iGeoPoint.getLongitude(), getZoomLevel(), point);
        Point pixelsFromMercator = toPixelsFromMercator(LatLongToPixelXY.x, LatLongToPixelXY.y, LatLongToPixelXY);
        return adjustForDateLine(pixelsFromMercator.x, pixelsFromMercator.y, pixelsFromMercator);
    }

    /* access modifiers changed from: protected */
    public Point adjustForDateLine(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        point.set(i, i2);
        point.offset((-this.mMapViewWidth) / 2, (-this.mMapViewHeight) / 2);
        int MapSize = TileSystem.MapSize(getZoomLevel());
        int abs = Math.abs(point.x);
        int abs2 = Math.abs(point.y);
        int i3 = MapSize > this.mMapViewHeight ? MapSize : this.mMapViewHeight;
        if (abs > Math.abs(point.x - MapSize)) {
            point.x -= MapSize;
        }
        if (abs > Math.abs(point.x + MapSize)) {
            point.x += MapSize;
        }
        if (abs2 > Math.abs(point.y - i3) && this.mMapViewHeight / 2 < MapSize) {
            point.y -= MapSize;
        }
        if (abs2 > Math.abs(i3 + point.y) || this.mMapViewHeight / 2 >= MapSize) {
            point.y += MapSize;
        }
        point.offset(this.mMapViewWidth / 2, this.mMapViewHeight / 2);
        return point;
    }

    public Point toProjectedPixels(GeoPoint geoPoint, Point point) {
        return toProjectedPixels(geoPoint.getLatitude(), geoPoint.getLongitude(), point);
    }

    public Point toProjectedPixels(int i, int i2, Point point) {
        return TileSystem.LatLongToPixelXY(((double) i) * 1.0E-6d, ((double) i2) * 1.0E-6d, microsoft.mappoint.TileSystem.getMaximumZoomLevel(), point);
    }

    public Point toProjectedPixels(double d, double d2, Point point) {
        return TileSystem.LatLongToPixelXY(d, d2, microsoft.mappoint.TileSystem.getMaximumZoomLevel(), point);
    }

    public Point toPixelsFromProjected(Point point, Point point2) {
        if (point2 == null) {
            point2 = new Point();
        }
        int maximumZoomLevel = microsoft.mappoint.TileSystem.getMaximumZoomLevel() - getZoomLevel();
        point2.set(point.x >> maximumZoomLevel, point.y >> maximumZoomLevel);
        Point pixelsFromMercator = toPixelsFromMercator(point2.x, point2.y, point2);
        return adjustForDateLine(pixelsFromMercator.x, pixelsFromMercator.y, pixelsFromMercator);
    }

    public Point toPixelsFromMercator(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        point.set(i, i2);
        point.offset(this.mOffsetX, this.mOffsetY);
        return point;
    }

    public Point toMercatorPixels(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        point.set(i, i2);
        point.offset(-this.mOffsetX, -this.mOffsetY);
        return point;
    }

    public float metersToEquatorPixels(float f) {
        return f / ((float) TileSystem.GroundResolution(0.0d, this.mZoomLevelProjection));
    }

    public float metersToPixels(float f) {
        return f / ((float) TileSystem.GroundResolution(getBoundingBox().getCenter().getLatitude(), this.mZoomLevelProjection));
    }

    public IGeoPoint getNorthEast() {
        return fromPixels(this.mMapViewWidth, 0, null);
    }

    public IGeoPoint getSouthWest() {
        return fromPixels(0, this.mMapViewHeight, null);
    }

    public Matrix getInvertedScaleRotateCanvasMatrix() {
        return this.mUnrotateAndScaleMatrix;
    }

    public Point unrotateAndScalePoint(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        if (getMapOrientation() == 0.0f && this.mMultiTouchScale == 1.0f) {
            point.set(i, i2);
        } else {
            this.mRotateScalePoints[0] = (float) i;
            this.mRotateScalePoints[1] = (float) i2;
            this.mUnrotateAndScaleMatrix.mapPoints(this.mRotateScalePoints);
            point.set((int) this.mRotateScalePoints[0], (int) this.mRotateScalePoints[1]);
        }
        return point;
    }

    public Point rotateAndScalePoint(int i, int i2, Point point) {
        if (point == null) {
            point = new Point();
        }
        if (getMapOrientation() == 0.0f && this.mMultiTouchScale == 1.0f) {
            point.set(i, i2);
        } else {
            this.mRotateScalePoints[0] = (float) i;
            this.mRotateScalePoints[1] = (float) i2;
            this.mRotateAndScaleMatrix.mapPoints(this.mRotateScalePoints);
            point.set((int) this.mRotateScalePoints[0], (int) this.mRotateScalePoints[1]);
        }
        return point;
    }

    public void detach() {
        this.mapView = null;
    }
}
