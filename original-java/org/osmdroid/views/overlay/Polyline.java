package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.util.GeometryMath;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

public class Polyline extends OverlayWithIW {
    protected boolean mGeodesic;
    private final Rect mLineBounds;
    protected OnClickListener mOnClickListener;
    private double[][] mOriginalPoints;
    protected Paint mPaint;
    private final Path mPath;
    private ArrayList<Point> mPoints;
    private int mPointsPrecomputed;
    public boolean mRepeatPath;
    private final Point mTempPoint1;
    private final Point mTempPoint2;

    public interface OnClickListener {
        boolean onClick(Polyline polyline, MapView mapView, GeoPoint geoPoint);
    }

    @Deprecated
    public Polyline(Context context) {
        this();
    }

    public Polyline() {
        this.mPath = new Path();
        this.mPaint = new Paint();
        this.mRepeatPath = false;
        this.mLineBounds = new Rect();
        this.mTempPoint1 = new Point();
        this.mTempPoint2 = new Point();
        this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mPaint.setStrokeWidth(10.0f);
        this.mPaint.setStyle(Style.STROKE);
        this.mPaint.setAntiAlias(true);
        clearPath();
        this.mOriginalPoints = (double[][]) Array.newInstance(Double.TYPE, new int[]{0, 2});
        this.mGeodesic = false;
    }

    /* access modifiers changed from: protected */
    public void clearPath() {
        this.mPoints = new ArrayList<>();
        this.mPointsPrecomputed = 0;
    }

    /* access modifiers changed from: protected */
    public void addPoint(GeoPoint geoPoint) {
        addPoint(geoPoint.getLatitudeE6(), geoPoint.getLongitudeE6());
    }

    /* access modifiers changed from: protected */
    public void addPoint(int i, int i2) {
        this.mPoints.add(new Point(i, i2));
    }

    public List<GeoPoint> getPoints() {
        ArrayList arrayList = new ArrayList(this.mOriginalPoints.length);
        for (int i = 0; i < this.mOriginalPoints.length; i++) {
            arrayList.add(new GeoPoint(this.mOriginalPoints[i][0], this.mOriginalPoints[i][1]));
        }
        return arrayList;
    }

    public int getNumberOfPoints() {
        return this.mOriginalPoints.length;
    }

    public int getColor() {
        return this.mPaint.getColor();
    }

    public float getWidth() {
        return this.mPaint.getStrokeWidth();
    }

    public Paint getPaint() {
        return this.mPaint;
    }

    public boolean isVisible() {
        return isEnabled();
    }

    public boolean isGeodesic() {
        return this.mGeodesic;
    }

    public void setColor(int i) {
        this.mPaint.setColor(i);
    }

    public void setWidth(float f) {
        this.mPaint.setStrokeWidth(f);
    }

    public void setVisible(boolean z) {
        setEnabled(z);
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
    }

    /* access modifiers changed from: protected */
    public void addGreatCircle(GeoPoint geoPoint, GeoPoint geoPoint2, int i) {
        double latitude = 0.01745329238474369d * geoPoint.getLatitude();
        double longitude = 0.01745329238474369d * geoPoint.getLongitude();
        double latitude2 = 0.01745329238474369d * geoPoint2.getLatitude();
        double longitude2 = 0.01745329238474369d * geoPoint2.getLongitude();
        double asin = Math.asin(Math.sqrt(Math.pow(Math.sin((latitude - latitude2) / 2.0d), 2.0d) + (Math.cos(latitude) * Math.cos(latitude2) * Math.pow(Math.sin((longitude - longitude2) / 2.0d), 2.0d)))) * 2.0d;
        double atan2 = Math.atan2(Math.sin(longitude - longitude2) * Math.cos(latitude2), (Math.cos(latitude) * Math.sin(latitude2)) - ((Math.sin(latitude) * Math.cos(latitude2)) * Math.cos(longitude - longitude2))) / -0.01745329238474369d;
        if (atan2 < 0.0d) {
            double d = atan2 + 360.0d;
        }
        for (int i2 = 1; i2 <= i; i2++) {
            double d2 = (1.0d * ((double) i2)) / ((double) (i + 1));
            double sin = Math.sin((1.0d - d2) * asin) / Math.sin(asin);
            double sin2 = Math.sin(d2 * asin) / Math.sin(asin);
            double cos = (Math.cos(latitude) * sin * Math.cos(longitude)) + (Math.cos(latitude2) * sin2 * Math.cos(longitude2));
            double cos2 = (Math.cos(latitude) * sin * Math.sin(longitude)) + (Math.cos(latitude2) * sin2 * Math.sin(longitude2));
            double atan22 = Math.atan2((sin2 * Math.sin(latitude2)) + (sin * Math.sin(latitude)), Math.sqrt(Math.pow(cos, 2.0d) + Math.pow(cos2, 2.0d)));
            addPoint((int) (atan22 * 57.295780181884766d * 1000000.0d), (int) (57.295780181884766d * Math.atan2(cos2, cos) * 1000000.0d));
        }
    }

    public void setPoints(List<GeoPoint> list) {
        clearPath();
        int size = list.size();
        this.mOriginalPoints = (double[][]) Array.newInstance(Double.TYPE, new int[]{size, 2});
        for (int i = 0; i < size; i++) {
            GeoPoint geoPoint = (GeoPoint) list.get(i);
            this.mOriginalPoints[i][0] = geoPoint.getLatitude();
            this.mOriginalPoints[i][1] = geoPoint.getLongitude();
            if (!this.mGeodesic) {
                addPoint(geoPoint);
            } else {
                if (i > 0) {
                    GeoPoint geoPoint2 = (GeoPoint) list.get(i - 1);
                    addGreatCircle(geoPoint2, geoPoint, geoPoint2.distanceTo(geoPoint) / 100000);
                }
                addPoint(geoPoint);
            }
        }
    }

    public void setGeodesic(boolean z) {
        this.mGeodesic = z;
    }

    /* access modifiers changed from: protected */
    public void precomputePoints(Projection projection) {
        int size = this.mPoints.size();
        while (this.mPointsPrecomputed < size) {
            Point point = (Point) this.mPoints.get(this.mPointsPrecomputed);
            projection.toProjectedPixels(point.x, point.y, point);
            this.mPointsPrecomputed++;
        }
    }

    /* access modifiers changed from: protected */
    public void drawOld(Canvas canvas, MapView mapView, boolean z) {
        if (!z) {
            int size = this.mPoints.size();
            if (size >= 2) {
                Projection projection = mapView.getProjection();
                precomputePoints(projection);
                BoundingBox boundingBox = projection.getBoundingBox();
                Point projectedPixels = projection.toProjectedPixels(boundingBox.getLatNorth(), boundingBox.getLonWest(), (Point) null);
                Point projectedPixels2 = projection.toProjectedPixels(boundingBox.getLatSouth(), boundingBox.getLonEast(), (Point) null);
                Rect rect = new Rect(projectedPixels.x, projectedPixels.y, projectedPixels2.x, projectedPixels2.y);
                if (mapView.getMapOrientation() != 0.0f) {
                    GeometryMath.getBoundingBoxForRotatatedRectangle(rect, mapView.getMapOrientation(), rect);
                }
                this.mPath.rewind();
                Point point = (Point) this.mPoints.get(size - 1);
                this.mLineBounds.set(point.x, point.y, point.x, point.y);
                int i = size - 2;
                Point point2 = point;
                Point point3 = null;
                while (i >= 0) {
                    Point point4 = (Point) this.mPoints.get(i);
                    this.mLineBounds.union(point4.x, point4.y);
                    if (!Rect.intersects(rect, this.mLineBounds)) {
                        point3 = null;
                    } else {
                        if (point3 == null) {
                            point3 = projection.toPixelsFromProjected(point2, this.mTempPoint1);
                            this.mPath.moveTo((float) point3.x, (float) point3.y);
                        }
                        Point pixelsFromProjected = projection.toPixelsFromProjected(point4, this.mTempPoint2);
                        if (Math.abs(pixelsFromProjected.x - point3.x) + Math.abs(pixelsFromProjected.y - point3.y) <= 1) {
                            point4 = point2;
                        } else {
                            this.mPath.lineTo((float) pixelsFromProjected.x, (float) pixelsFromProjected.y);
                            point3.x = pixelsFromProjected.x;
                            point3.y = pixelsFromProjected.y;
                            this.mLineBounds.set(point4.x, point4.y, point4.x, point4.y);
                        }
                    }
                    i--;
                    point2 = point4;
                }
                canvas.drawPath(this.mPath, this.mPaint);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:16:0x008b, code lost:
        if (r0 != r1) goto L_0x008d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void draw(android.graphics.Canvas r14, org.osmdroid.views.MapView r15, boolean r16) {
        /*
            r13 = this;
            if (r16 == 0) goto L_0x0003
        L_0x0002:
            return
        L_0x0003:
            java.util.ArrayList<android.graphics.Point> r0 = r13.mPoints
            int r7 = r0.size()
            r0 = 2
            if (r7 < r0) goto L_0x0002
            org.osmdroid.views.Projection r8 = r15.getProjection()
            org.osmdroid.views.Projection r0 = r15.getProjection()
            int r0 = r0.getZoomLevel()
            int r0 = microsoft.mappoint.TileSystem.MapSize(r0)
            int r9 = r0 / 2
            r0 = 0
            int r1 = r9 * 2
            r2 = 0
            android.graphics.Point r0 = r8.toPixelsFromMercator(r0, r1, r2)
            int r10 = r0.y
            r13.precomputePoints(r8)
            java.util.ArrayList<android.graphics.Point> r0 = r13.mPoints
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            android.graphics.Point r0 = (android.graphics.Point) r0
            android.graphics.Point r1 = r13.mTempPoint1
            android.graphics.Point r11 = r8.toPixelsFromProjected(r0, r1)
            android.graphics.Path r0 = r13.mPath
            r0.rewind()
            android.graphics.Path r0 = r13.mPath
            int r1 = r11.x
            float r1 = (float) r1
            int r2 = r11.y
            float r2 = (float) r2
            r0.moveTo(r1, r2)
            r0 = 1
            r6 = r0
        L_0x004c:
            if (r6 >= r7) goto L_0x0100
            java.util.ArrayList<android.graphics.Point> r0 = r13.mPoints
            java.lang.Object r0 = r0.get(r6)
            android.graphics.Point r0 = (android.graphics.Point) r0
            android.graphics.Point r1 = r13.mTempPoint2
            android.graphics.Point r12 = r8.toPixelsFromProjected(r0, r1)
            int r0 = r12.x
            int r1 = r11.x
            int r0 = r0 - r1
            int r0 = java.lang.Math.abs(r0)
            int r1 = r12.y
            int r2 = r11.y
            int r1 = r1 - r2
            int r1 = java.lang.Math.abs(r1)
            int r0 = r0 + r1
            r1 = 1
            if (r0 > r1) goto L_0x0076
        L_0x0072:
            int r0 = r6 + 1
            r6 = r0
            goto L_0x004c
        L_0x0076:
            int r0 = r12.x
            int r1 = r11.x
            int r0 = r0 - r1
            int r0 = java.lang.Math.abs(r0)
            if (r0 > r9) goto L_0x008d
            int r0 = r12.y
            if (r0 < r10) goto L_0x00e9
            r0 = 1
        L_0x0086:
            int r1 = r11.y
            if (r1 < r10) goto L_0x00eb
            r1 = 1
        L_0x008b:
            if (r0 == r1) goto L_0x00d5
        L_0x008d:
            int r1 = r11.x
            int r4 = r11.y
            int r0 = r12.x
            int r3 = r12.y
            int r2 = r12.x
            int r5 = r11.x
            int r2 = r2 - r5
            int r2 = java.lang.Math.abs(r2)
            if (r2 <= r9) goto L_0x00b0
            int r2 = r12.x
            int r5 = r15.getWidth()
            int r5 = r5 / 2
            if (r2 >= r5) goto L_0x00ed
            int r2 = r9 * 2
            int r0 = r0 + r2
            int r2 = r9 * 2
            int r1 = r1 - r2
        L_0x00b0:
            int r2 = r12.y
            if (r2 < r10) goto L_0x00f4
            r2 = 1
        L_0x00b5:
            int r5 = r11.y
            if (r5 < r10) goto L_0x00f6
            r5 = 1
        L_0x00ba:
            if (r2 == r5) goto L_0x0154
            int r2 = r12.y
            if (r2 < r10) goto L_0x00f8
            int r2 = r9 * 2
            int r2 = r3 - r2
            int r3 = r9 * 2
            int r3 = r3 + r4
        L_0x00c7:
            android.graphics.Path r4 = r13.mPath
            float r0 = (float) r0
            float r2 = (float) r2
            r4.lineTo(r0, r2)
            android.graphics.Path r0 = r13.mPath
            float r1 = (float) r1
            float r2 = (float) r3
            r0.moveTo(r1, r2)
        L_0x00d5:
            android.graphics.Path r0 = r13.mPath
            int r1 = r12.x
            float r1 = (float) r1
            int r2 = r12.y
            float r2 = (float) r2
            r0.lineTo(r1, r2)
            int r0 = r12.x
            r11.x = r0
            int r0 = r12.y
            r11.y = r0
            goto L_0x0072
        L_0x00e9:
            r0 = 0
            goto L_0x0086
        L_0x00eb:
            r1 = 0
            goto L_0x008b
        L_0x00ed:
            int r2 = r9 * 2
            int r0 = r0 - r2
            int r2 = r9 * 2
            int r1 = r1 + r2
            goto L_0x00b0
        L_0x00f4:
            r2 = 0
            goto L_0x00b5
        L_0x00f6:
            r5 = 0
            goto L_0x00ba
        L_0x00f8:
            int r2 = r9 * 2
            int r2 = r2 + r3
            int r3 = r9 * 2
            int r3 = r4 - r3
            goto L_0x00c7
        L_0x0100:
            android.graphics.Path r0 = r13.mPath
            android.graphics.Paint r1 = r13.mPaint
            r14.drawPath(r0, r1)
            boolean r0 = r13.mRepeatPath
            if (r0 == 0) goto L_0x0002
            android.graphics.Path r0 = new android.graphics.Path
            android.graphics.Path r1 = r13.mPath
            r0.<init>(r1)
            int r1 = -r9
            int r1 = r1 * 2
            float r1 = (float) r1
            r2 = 0
            r0.offset(r1, r2)
            int r1 = r9 * 2
            int r2 = r15.getWidth()
            if (r1 >= r2) goto L_0x012b
            android.graphics.Path r1 = r13.mPath
            int r2 = r9 * 2
            float r2 = (float) r2
            r3 = 0
            r0.addPath(r1, r2, r3)
        L_0x012b:
            int r1 = r9 * 2
            int r2 = r15.getHeight()
            if (r1 >= r2) goto L_0x0143
            r1 = 0
            int r2 = r9 * 2
            float r2 = (float) r2
            r0.addPath(r0, r1, r2)
            android.graphics.Path r1 = r13.mPath
            r2 = 0
            int r3 = r9 * 2
            float r3 = (float) r3
            r0.addPath(r1, r2, r3)
        L_0x0143:
            android.graphics.Path r1 = r13.mPath
            r2 = 0
            int r3 = -r9
            int r3 = r3 * 2
            float r3 = (float) r3
            r0.addPath(r1, r2, r3)
            android.graphics.Paint r1 = r13.mPaint
            r14.drawPath(r0, r1)
            goto L_0x0002
        L_0x0154:
            r2 = r3
            r3 = r4
            goto L_0x00c7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.views.overlay.Polyline.draw(android.graphics.Canvas, org.osmdroid.views.MapView, boolean):void");
    }

    public boolean isCloseTo(GeoPoint geoPoint, double d, MapView mapView) {
        Projection projection = mapView.getProjection();
        precomputePoints(projection);
        Point pixels = projection.toPixels(geoPoint, null);
        boolean z = false;
        for (int i = 0; i < this.mPointsPrecomputed - 1 && !z; i++) {
            Point point = (Point) this.mPoints.get(i);
            if (i == 0) {
                projection.toPixelsFromProjected(point, this.mTempPoint1);
            } else {
                this.mTempPoint1.set(this.mTempPoint2.x, this.mTempPoint2.y);
            }
            projection.toPixelsFromProjected((Point) this.mPoints.get(i + 1), this.mTempPoint2);
            if (linePointDist(this.mTempPoint1, this.mTempPoint2, pixels, true) <= d) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    private double dot(Point point, Point point2, Point point3) {
        return (((double) (point2.x - point.x)) * ((double) (point3.x - point2.x))) + (((double) (point2.y - point.y)) * ((double) (point3.y - point2.y)));
    }

    private double cross(Point point, Point point2, Point point3) {
        return (((double) (point2.x - point.x)) * ((double) (point3.y - point.y))) - (((double) (point2.y - point.y)) * ((double) (point3.x - point.x)));
    }

    private double distance(Point point, Point point2) {
        double d = (double) (point.x - point2.x);
        double d2 = (double) (point.y - point2.y);
        return Math.sqrt((d * d) + (d2 * d2));
    }

    private double linePointDist(Point point, Point point2, Point point3, boolean z) {
        double distance = distance(point, point2);
        if (distance == 0.0d) {
            return distance(point, point3);
        }
        double cross = cross(point, point2, point3) / distance;
        if (z) {
            if (dot(point, point2, point3) > 0.0d) {
                return distance(point2, point3);
            }
            if (dot(point2, point, point3) > 0.0d) {
                return distance(point, point3);
            }
        }
        return Math.abs(cross);
    }

    public void showInfoWindow(GeoPoint geoPoint) {
        if (this.mInfoWindow != null) {
            this.mInfoWindow.open(this, geoPoint, 0, 0);
        }
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        GeoPoint geoPoint = (GeoPoint) mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY());
        boolean isCloseTo = isCloseTo(geoPoint, (double) this.mPaint.getStrokeWidth(), mapView);
        if (!isCloseTo) {
            return isCloseTo;
        }
        if (this.mOnClickListener == null) {
            return onClickDefault(this, mapView, geoPoint);
        }
        return this.mOnClickListener.onClick(this, mapView, geoPoint);
    }

    /* access modifiers changed from: protected */
    public boolean onClickDefault(Polyline polyline, MapView mapView, GeoPoint geoPoint) {
        polyline.showInfoWindow(geoPoint);
        return true;
    }

    public void onDetach(MapView mapView) {
        this.mOnClickListener = null;
        onDestroy();
    }
}
