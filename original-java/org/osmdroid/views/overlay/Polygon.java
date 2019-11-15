package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Point;
import android.graphics.RectF;
import android.graphics.Region;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.util.BoundingBoxE6;
import org.osmdroid.util.GeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

public class Polygon extends OverlayWithIW {
    protected Paint mFillPaint;
    private ArrayList<LinearRing> mHoles;
    private LinearRing mOutline;
    protected Paint mOutlinePaint;
    /* access modifiers changed from: private */
    public final Path mPath;
    /* access modifiers changed from: private */
    public final Point mTempPoint1;
    /* access modifiers changed from: private */
    public final Point mTempPoint2;

    class LinearRing {
        ArrayList<Point> mConvertedPoints = new ArrayList<>(0);
        int[][] mOriginalPoints = ((int[][]) Array.newInstance(Integer.TYPE, new int[]{0, 2}));
        boolean mPrecomputed = false;

        LinearRing() {
        }

        /* access modifiers changed from: 0000 */
        public ArrayList<GeoPoint> getPoints() {
            int length = this.mOriginalPoints.length;
            ArrayList<GeoPoint> arrayList = new ArrayList<>(length);
            for (int i = 0; i < length; i++) {
                arrayList.add(new GeoPoint(this.mOriginalPoints[i][0], this.mOriginalPoints[i][1]));
            }
            return arrayList;
        }

        /* access modifiers changed from: 0000 */
        public void setPoints(List<GeoPoint> list) {
            int size = list.size();
            this.mOriginalPoints = (int[][]) Array.newInstance(Integer.TYPE, new int[]{size, 2});
            this.mConvertedPoints = new ArrayList<>(size);
            int i = 0;
            for (GeoPoint geoPoint : list) {
                this.mOriginalPoints[i][0] = geoPoint.getLatitudeE6();
                this.mOriginalPoints[i][1] = geoPoint.getLongitudeE6();
                this.mConvertedPoints.add(new Point(geoPoint.getLatitudeE6(), geoPoint.getLongitudeE6()));
                i++;
            }
            this.mPrecomputed = false;
        }

        /* access modifiers changed from: protected */
        public void buildPathPortion(Projection projection) {
            int size = this.mConvertedPoints.size();
            if (size >= 2) {
                if (!this.mPrecomputed) {
                    for (int i = 0; i < size; i++) {
                        Point point = (Point) this.mConvertedPoints.get(i);
                        projection.toProjectedPixels(point.x, point.y, point);
                    }
                    this.mPrecomputed = true;
                }
                Point pixelsFromProjected = projection.toPixelsFromProjected((Point) this.mConvertedPoints.get(0), Polygon.this.mTempPoint1);
                Polygon.this.mPath.moveTo((float) pixelsFromProjected.x, (float) pixelsFromProjected.y);
                for (int i2 = 0; i2 < size; i2++) {
                    Point pixelsFromProjected2 = projection.toPixelsFromProjected((Point) this.mConvertedPoints.get(i2), Polygon.this.mTempPoint2);
                    if (Math.abs(pixelsFromProjected2.x - pixelsFromProjected.x) + Math.abs(pixelsFromProjected2.y - pixelsFromProjected.y) > 1) {
                        Polygon.this.mPath.lineTo((float) pixelsFromProjected2.x, (float) pixelsFromProjected2.y);
                        pixelsFromProjected.x = pixelsFromProjected2.x;
                        pixelsFromProjected.y = pixelsFromProjected2.y;
                    }
                }
                Polygon.this.mPath.close();
            }
        }
    }

    @Deprecated
    public Polygon(Context context) {
        this();
    }

    public Polygon() {
        this.mPath = new Path();
        this.mTempPoint1 = new Point();
        this.mTempPoint2 = new Point();
        this.mFillPaint = new Paint();
        this.mFillPaint.setColor(0);
        this.mFillPaint.setStyle(Style.FILL);
        this.mOutlinePaint = new Paint();
        this.mOutlinePaint.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.mOutlinePaint.setStrokeWidth(10.0f);
        this.mOutlinePaint.setStyle(Style.STROKE);
        this.mOutlinePaint.setAntiAlias(true);
        this.mOutline = new LinearRing();
        this.mHoles = new ArrayList<>(0);
        this.mPath.setFillType(FillType.EVEN_ODD);
    }

    public int getFillColor() {
        return this.mFillPaint.getColor();
    }

    public int getStrokeColor() {
        return this.mOutlinePaint.getColor();
    }

    public float getStrokeWidth() {
        return this.mOutlinePaint.getStrokeWidth();
    }

    public Paint getOutlinePaint() {
        return this.mOutlinePaint;
    }

    public List<GeoPoint> getPoints() {
        return this.mOutline.getPoints();
    }

    public boolean isVisible() {
        return isEnabled();
    }

    public void setFillColor(int i) {
        this.mFillPaint.setColor(i);
    }

    public void setStrokeColor(int i) {
        this.mOutlinePaint.setColor(i);
    }

    public void setStrokeWidth(float f) {
        this.mOutlinePaint.setStrokeWidth(f);
    }

    public void setVisible(boolean z) {
        setEnabled(z);
    }

    public void setPoints(List<GeoPoint> list) {
        this.mOutline.setPoints(list);
    }

    public void setHoles(List<? extends List<GeoPoint>> list) {
        this.mHoles = new ArrayList<>(list.size());
        for (List list2 : list) {
            LinearRing linearRing = new LinearRing();
            linearRing.setPoints(list2);
            this.mHoles.add(linearRing);
        }
    }

    public List<ArrayList<GeoPoint>> getHoles() {
        ArrayList arrayList = new ArrayList(this.mHoles.size());
        Iterator it = this.mHoles.iterator();
        while (it.hasNext()) {
            arrayList.add(((LinearRing) it.next()).getPoints());
        }
        return arrayList;
    }

    public static ArrayList<GeoPoint> pointsAsCircle(GeoPoint geoPoint, double d) {
        ArrayList<GeoPoint> arrayList = new ArrayList<>(60);
        for (int i = 0; i < 360; i += 6) {
            arrayList.add(geoPoint.destinationPoint(d, (float) i));
        }
        return arrayList;
    }

    @Deprecated
    public static ArrayList<IGeoPoint> pointsAsRect(BoundingBoxE6 boundingBoxE6) {
        ArrayList<IGeoPoint> arrayList = new ArrayList<>(4);
        arrayList.add(new GeoPoint(boundingBoxE6.getLatNorthE6(), boundingBoxE6.getLonWestE6()));
        arrayList.add(new GeoPoint(boundingBoxE6.getLatNorthE6(), boundingBoxE6.getLonEastE6()));
        arrayList.add(new GeoPoint(boundingBoxE6.getLatSouthE6(), boundingBoxE6.getLonEastE6()));
        arrayList.add(new GeoPoint(boundingBoxE6.getLatSouthE6(), boundingBoxE6.getLonWestE6()));
        return arrayList;
    }

    public static ArrayList<IGeoPoint> pointsAsRect(BoundingBox boundingBox) {
        ArrayList<IGeoPoint> arrayList = new ArrayList<>(4);
        arrayList.add(new GeoPoint(boundingBox.getLatNorth(), boundingBox.getLonWest()));
        arrayList.add(new GeoPoint(boundingBox.getLatNorth(), boundingBox.getLonEast()));
        arrayList.add(new GeoPoint(boundingBox.getLatSouth(), boundingBox.getLonEast()));
        arrayList.add(new GeoPoint(boundingBox.getLatSouth(), boundingBox.getLonWest()));
        return arrayList;
    }

    public static ArrayList<IGeoPoint> pointsAsRect(GeoPoint geoPoint, double d, double d2) {
        ArrayList<IGeoPoint> arrayList = new ArrayList<>(4);
        GeoPoint destinationPoint = geoPoint.destinationPoint(0.5d * d, 90.0f);
        GeoPoint destinationPoint2 = geoPoint.destinationPoint(0.5d * d2, 180.0f);
        double longitude = (geoPoint.getLongitude() * 2.0d) - destinationPoint.getLongitude();
        double latitude = (geoPoint.getLatitude() * 2.0d) - destinationPoint2.getLatitude();
        arrayList.add(new GeoPoint(destinationPoint2.getLatitude(), destinationPoint.getLongitude()));
        arrayList.add(new GeoPoint(destinationPoint2.getLatitude(), longitude));
        arrayList.add(new GeoPoint(latitude, longitude));
        arrayList.add(new GeoPoint(latitude, destinationPoint.getLongitude()));
        return arrayList;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z) {
            Projection projection = mapView.getProjection();
            this.mPath.rewind();
            this.mOutline.buildPathPortion(projection);
            Iterator it = this.mHoles.iterator();
            while (it.hasNext()) {
                ((LinearRing) it.next()).buildPathPortion(projection);
            }
            canvas.drawPath(this.mPath, this.mFillPaint);
            canvas.drawPath(this.mPath, this.mOutlinePaint);
        }
    }

    public boolean contains(MotionEvent motionEvent) {
        if (this.mPath.isEmpty()) {
            return false;
        }
        RectF rectF = new RectF();
        this.mPath.computeBounds(rectF, true);
        Region region = new Region();
        region.setPath(this.mPath, new Region((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom));
        return region.contains((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        if (this.mInfoWindow == null) {
            return false;
        }
        boolean contains = contains(motionEvent);
        if (contains) {
            this.mInfoWindow.open(this, (GeoPoint) mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY()), 0, 0);
        }
        return contains;
    }

    public void onDetach(MapView mapView) {
        this.mOutline = null;
        this.mHoles.clear();
        onDestroy();
    }
}
