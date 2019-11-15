package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import java.util.ArrayList;
import java.util.List;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

@Deprecated
public class PathOverlay extends Overlay {
    private final Rect mLineBounds;
    protected Paint mPaint;
    private final Path mPath;
    private ArrayList<Point> mPoints;
    private int mPointsPrecomputed;
    private final Point mTempPoint1;
    private final Point mTempPoint2;

    @Deprecated
    public PathOverlay(int i, Context context) {
        this(i);
    }

    @Deprecated
    public PathOverlay(int i, float f, Context context) {
        this(i, f);
    }

    public PathOverlay(int i) {
        this(i, 2.0f);
    }

    public PathOverlay(int i, float f) {
        this.mPaint = new Paint();
        this.mPath = new Path();
        this.mTempPoint1 = new Point();
        this.mTempPoint2 = new Point();
        this.mLineBounds = new Rect();
        this.mPaint.setColor(i);
        this.mPaint.setStrokeWidth(f);
        this.mPaint.setStyle(Style.STROKE);
        clearPath();
    }

    public void setColor(int i) {
        this.mPaint.setColor(i);
    }

    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    public void addGreatCircle(GeoPoint geoPoint, GeoPoint geoPoint2) {
        addGreatCircle(geoPoint, geoPoint2, geoPoint.distanceTo(geoPoint2) / 100000);
    }

    public void addGreatCircle(GeoPoint geoPoint, GeoPoint geoPoint2, int i) {
        double latitude = (geoPoint.getLatitude() * 3.141592653589793d) / 180.0d;
        double longitude = (geoPoint.getLongitude() * 3.141592653589793d) / 180.0d;
        double latitude2 = (geoPoint2.getLatitude() * 3.141592653589793d) / 180.0d;
        double longitude2 = (geoPoint2.getLongitude() * 3.141592653589793d) / 180.0d;
        double asin = Math.asin(Math.sqrt(Math.pow(Math.sin((latitude - latitude2) / 2.0d), 2.0d) + (Math.cos(latitude) * Math.cos(latitude2) * Math.pow(Math.sin((longitude - longitude2) / 2.0d), 2.0d)))) * 2.0d;
        double atan2 = Math.atan2(Math.sin(longitude - longitude2) * Math.cos(latitude2), (Math.cos(latitude) * Math.sin(latitude2)) - ((Math.sin(latitude) * Math.cos(latitude2)) * Math.cos(longitude - longitude2))) / -0.017453292519943295d;
        if (atan2 < 0.0d) {
            double d = atan2 + 360.0d;
        }
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            double d2 = (1.0d / ((double) i)) * ((double) i3);
            double sin = Math.sin((1.0d - d2) * asin) / Math.sin(asin);
            double sin2 = Math.sin(d2 * asin) / Math.sin(asin);
            double cos = (Math.cos(latitude) * sin * Math.cos(longitude)) + (Math.cos(latitude2) * sin2 * Math.cos(longitude2));
            double cos2 = (Math.cos(latitude) * sin * Math.sin(longitude)) + (Math.cos(latitude2) * sin2 * Math.sin(longitude2));
            addPoint(Math.atan2((sin2 * Math.sin(latitude2)) + (sin * Math.sin(latitude)), Math.sqrt(Math.pow(cos, 2.0d) + Math.pow(cos2, 2.0d))) / 0.017453292519943295d, Math.atan2(cos2, cos) / 0.017453292519943295d);
        }
    }

    public Paint getPaint() {
        return this.mPaint;
    }

    public void setPaint(Paint paint) {
        if (paint == null) {
            throw new IllegalArgumentException("pPaint argument cannot be null");
        }
        this.mPaint = paint;
    }

    public void clearPath() {
        this.mPoints = new ArrayList<>();
        this.mPointsPrecomputed = 0;
    }

    public void addPoint(IGeoPoint iGeoPoint) {
        addPoint(iGeoPoint.getLatitude(), iGeoPoint.getLongitude());
    }

    public void addPoint(double d, double d2) {
        this.mPoints.add(new Point((int) d, (int) d2));
    }

    public void addPoints(IGeoPoint... iGeoPointArr) {
        for (IGeoPoint addPoint : iGeoPointArr) {
            addPoint(addPoint);
        }
    }

    public void addPoints(List<IGeoPoint> list) {
        for (IGeoPoint addPoint : list) {
            addPoint(addPoint);
        }
    }

    public int getNumberOfPoints() {
        return this.mPoints.size();
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z) {
            int size = this.mPoints.size();
            if (size >= 2) {
                Projection projection = mapView.getProjection();
                while (this.mPointsPrecomputed < size) {
                    Point point = (Point) this.mPoints.get(this.mPointsPrecomputed);
                    projection.toProjectedPixels(point.x, point.y, point);
                    this.mPointsPrecomputed++;
                }
                BoundingBox boundingBox = projection.getBoundingBox();
                Point projectedPixels = projection.toProjectedPixels(boundingBox.getLatNorth(), boundingBox.getLonWest(), (Point) null);
                Point projectedPixels2 = projection.toProjectedPixels(boundingBox.getLatSouth(), boundingBox.getLonEast(), (Point) null);
                Rect rect = new Rect(projectedPixels.x, projectedPixels.y, projectedPixels2.x, projectedPixels2.y);
                this.mPath.rewind();
                Point point2 = (Point) this.mPoints.get(size - 1);
                this.mLineBounds.set(point2.x, point2.y, point2.x, point2.y);
                int i = size - 2;
                Point point3 = point2;
                Point point4 = null;
                while (i >= 0) {
                    Point point5 = (Point) this.mPoints.get(i);
                    this.mLineBounds.union(point5.x, point5.y);
                    if (!Rect.intersects(rect, this.mLineBounds)) {
                        point4 = null;
                    } else {
                        if (point4 == null) {
                            point4 = projection.toPixelsFromProjected(point3, this.mTempPoint1);
                            this.mPath.moveTo((float) point4.x, (float) point4.y);
                        }
                        Point pixelsFromProjected = projection.toPixelsFromProjected(point5, this.mTempPoint2);
                        if (Math.abs(pixelsFromProjected.x - point4.x) + Math.abs(pixelsFromProjected.y - point4.y) <= 1) {
                            point5 = point3;
                        } else {
                            this.mPath.lineTo((float) pixelsFromProjected.x, (float) pixelsFromProjected.y);
                            point4.x = pixelsFromProjected.x;
                            point4.y = pixelsFromProjected.y;
                            this.mLineBounds.set(point5.x, point5.y, point5.x, point5.y);
                        }
                    }
                    i--;
                    point3 = point5;
                }
                canvas.drawPath(this.mPath, this.mPaint);
            }
        }
    }
}
