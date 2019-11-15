package org.osmdroid.views.overlay.simplefastpoint;

import android.graphics.Canvas;
import android.graphics.Point;
import android.view.MotionEvent;
import java.lang.reflect.Array;
import java.util.Arrays;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.util.BoundingBox;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;
import org.osmdroid.views.overlay.Overlay;
import org.osmdroid.views.overlay.simplefastpoint.SimpleFastPointOverlayOptions.LabelPolicy;
import org.osmdroid.views.overlay.simplefastpoint.SimpleFastPointOverlayOptions.RenderingAlgorithm;
import org.osmdroid.views.overlay.simplefastpoint.SimpleFastPointOverlayOptions.Shape;

public class SimpleFastPointOverlay extends Overlay {
    private OnClickListener clickListener;
    private float curX;
    private float curY;
    private LabelledPoint[][] grid;
    private boolean[][] gridBool;
    private int gridHei;
    private int gridWid;
    private final BoundingBox mBoundingBox;
    private final PointAdapter mPointList;
    private Integer mSelectedPoint;
    private final SimpleFastPointOverlayOptions mStyle;
    private int numLabels;
    private float offsetX;
    private float offsetY;
    private BoundingBox prevBoundingBox;
    private int prevNumPointers;
    private float startX;
    private float startY;
    private int viewHei;
    private int viewWid;

    public class LabelledPoint extends Point {
        /* access modifiers changed from: private */
        public String mlabel;

        public LabelledPoint(Point point, String str) {
            super(point);
            this.mlabel = str;
        }
    }

    public interface OnClickListener {
        void onClick(PointAdapter pointAdapter, Integer num);
    }

    public interface PointAdapter extends Iterable<IGeoPoint> {
        IGeoPoint get(int i);

        boolean isLabelled();

        int size();
    }

    public SimpleFastPointOverlay(PointAdapter pointAdapter, SimpleFastPointOverlayOptions simpleFastPointOverlayOptions) {
        Double d;
        Double d2;
        Double d3;
        this.prevBoundingBox = new BoundingBox(0.0d, 0.0d, 0.0d, 0.0d);
        this.mStyle = simpleFastPointOverlayOptions;
        this.mPointList = pointAdapter;
        Double d4 = null;
        Double d5 = null;
        Double d6 = null;
        Double d7 = null;
        for (IGeoPoint iGeoPoint : this.mPointList) {
            if (iGeoPoint != null) {
                if (d6 == null || iGeoPoint.getLongitude() > d6.doubleValue()) {
                    d6 = Double.valueOf(iGeoPoint.getLongitude());
                }
                if (d5 == null || iGeoPoint.getLongitude() < d5.doubleValue()) {
                    d = Double.valueOf(iGeoPoint.getLongitude());
                } else {
                    d = d5;
                }
                if (d7 == null || iGeoPoint.getLatitude() > d7.doubleValue()) {
                    d2 = Double.valueOf(iGeoPoint.getLatitude());
                } else {
                    d2 = d7;
                }
                if (d4 == null || iGeoPoint.getLatitude() < d4.doubleValue()) {
                    d3 = Double.valueOf(iGeoPoint.getLatitude());
                } else {
                    d3 = d4;
                }
                d4 = d3;
                d7 = d2;
                d5 = d;
            }
        }
        if (d6 != null) {
            this.mBoundingBox = new BoundingBox(d7.doubleValue(), d6.doubleValue(), d4.doubleValue(), d5.doubleValue());
        } else {
            this.mBoundingBox = null;
        }
    }

    public SimpleFastPointOverlay(PointAdapter pointAdapter) {
        this(pointAdapter, SimpleFastPointOverlayOptions.getDefaultStyle());
    }

    private void updateGrid(MapView mapView) {
        this.viewWid = mapView.getWidth();
        this.viewHei = mapView.getHeight();
        this.gridWid = ((int) Math.floor((double) (((float) this.viewWid) / ((float) this.mStyle.mCellSize)))) + 1;
        this.gridHei = ((int) Math.floor((double) (((float) this.viewHei) / ((float) this.mStyle.mCellSize)))) + 1;
        if (this.mStyle.mAlgorithm == RenderingAlgorithm.MAXIMUM_OPTIMIZATION) {
            this.grid = (LabelledPoint[][]) Array.newInstance(LabelledPoint.class, new int[]{this.gridWid, this.gridHei});
            return;
        }
        this.gridBool = (boolean[][]) Array.newInstance(Boolean.TYPE, new int[]{this.gridWid, this.gridHei});
    }

    private void computeGrid(MapView mapView) {
        BoundingBox boundingBox = mapView.getBoundingBox();
        if (boundingBox.getLatNorth() != this.prevBoundingBox.getLatNorth() || boundingBox.getLatSouth() != this.prevBoundingBox.getLatSouth() || boundingBox.getLonWest() != this.prevBoundingBox.getLonWest() || boundingBox.getLonEast() != this.prevBoundingBox.getLonEast()) {
            this.prevBoundingBox = new BoundingBox(boundingBox.getLatNorth(), boundingBox.getLonEast(), boundingBox.getLatSouth(), boundingBox.getLonWest());
            if (this.grid != null && this.viewHei == mapView.getHeight() && this.viewWid == mapView.getWidth()) {
                for (LabelledPoint[] fill : this.grid) {
                    Arrays.fill(fill, null);
                }
            } else {
                updateGrid(mapView);
            }
            Point point = new Point();
            Projection projection = mapView.getProjection();
            this.numLabels = 0;
            for (IGeoPoint iGeoPoint : this.mPointList) {
                if (iGeoPoint != null && iGeoPoint.getLatitude() > boundingBox.getLatSouth() && iGeoPoint.getLatitude() < boundingBox.getLatNorth() && iGeoPoint.getLongitude() > boundingBox.getLonWest() && iGeoPoint.getLongitude() < boundingBox.getLonEast()) {
                    projection.toPixels(iGeoPoint, point);
                    int floor = (int) Math.floor((double) (((float) point.x) / ((float) this.mStyle.mCellSize)));
                    int floor2 = (int) Math.floor((double) (((float) point.y) / ((float) this.mStyle.mCellSize)));
                    if (floor < this.gridWid && floor2 < this.gridHei && floor >= 0 && floor2 >= 0 && this.grid[floor][floor2] == null) {
                        this.grid[floor][floor2] = new LabelledPoint(point, this.mPointList.isLabelled() ? ((LabelledGeoPoint) iGeoPoint).getLabel() : null);
                        this.numLabels++;
                    }
                }
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
        int i = 1;
        if (this.mStyle.mAlgorithm == RenderingAlgorithm.MAXIMUM_OPTIMIZATION) {
            switch (motionEvent.getAction()) {
                case 0:
                    this.prevNumPointers = motionEvent.getPointerCount();
                    this.startX = motionEvent.getX(0);
                    this.startY = motionEvent.getY(0);
                    while (i < this.prevNumPointers) {
                        this.startX += motionEvent.getX(i);
                        this.startY += motionEvent.getY(i);
                        i++;
                    }
                    this.startX /= (float) this.prevNumPointers;
                    this.startY /= (float) this.prevNumPointers;
                    break;
                case 1:
                    this.startX = 0.0f;
                    this.startY = 0.0f;
                    this.curX = 0.0f;
                    this.curY = 0.0f;
                    this.offsetX = 0.0f;
                    this.offsetY = 0.0f;
                    mapView.invalidate();
                    break;
                case 2:
                    this.curX = motionEvent.getX(0);
                    this.curY = motionEvent.getY(0);
                    while (i < motionEvent.getPointerCount()) {
                        this.curX += motionEvent.getX(i);
                        this.curY += motionEvent.getY(i);
                        i++;
                    }
                    this.curX /= (float) motionEvent.getPointerCount();
                    this.curY /= (float) motionEvent.getPointerCount();
                    if (motionEvent.getPointerCount() != this.prevNumPointers) {
                        computeGrid(mapView);
                        this.prevNumPointers = motionEvent.getPointerCount();
                        this.offsetX = this.curX - this.startX;
                        this.offsetY = this.curY - this.startY;
                        break;
                    }
                    break;
            }
        }
        return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        if (!this.mStyle.mClickable) {
            return false;
        }
        Float f = null;
        int i = -1;
        Point point = new Point();
        Projection projection = mapView.getProjection();
        for (int i2 = 0; i2 < this.mPointList.size(); i2++) {
            if (this.mPointList.get(i2) != null) {
                projection.toPixels(this.mPointList.get(i2), point);
                if (Math.abs(motionEvent.getX() - ((float) point.x)) <= 50.0f && Math.abs(motionEvent.getY() - ((float) point.y)) <= 50.0f) {
                    float x = ((motionEvent.getX() - ((float) point.x)) * (motionEvent.getX() - ((float) point.x))) + ((motionEvent.getY() - ((float) point.y)) * (motionEvent.getY() - ((float) point.y)));
                    if (f == null || x < f.floatValue()) {
                        f = Float.valueOf(x);
                        i = i2;
                    }
                }
            }
        }
        if (f == null) {
            return false;
        }
        setSelectedPoint(Integer.valueOf(i));
        mapView.invalidate();
        if (this.clickListener != null) {
            this.clickListener.onClick(this.mPointList, Integer.valueOf(i));
        }
        return true;
    }

    public void setSelectedPoint(Integer num) {
        if (num == null || num.intValue() < 0 || num.intValue() >= this.mPointList.size()) {
            this.mSelectedPoint = null;
        } else {
            this.mSelectedPoint = num;
        }
    }

    public Integer getSelectedPoint() {
        return this.mSelectedPoint;
    }

    public BoundingBox getBoundingBox() {
        return this.mBoundingBox;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        this.clickListener = onClickListener;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        if (!z) {
            Point point = new Point();
            Projection projection = mapView.getProjection();
            if (this.mStyle.mPointStyle != null) {
                switch (this.mStyle.mAlgorithm) {
                    case MAXIMUM_OPTIMIZATION:
                        if (this.grid == null || (this.curX == 0.0f && this.curY == 0.0f && !mapView.isAnimating())) {
                            computeGrid(mapView);
                        }
                        if ((this.mStyle.mLabelPolicy != LabelPolicy.DENSITY_THRESHOLD || this.numLabels > this.mStyle.mMaxNShownLabels) && (this.mStyle.mLabelPolicy != LabelPolicy.ZOOM_THRESHOLD || mapView.getZoomLevel() < this.mStyle.mMinZoomShowLabels)) {
                            z4 = false;
                        } else {
                            z4 = true;
                        }
                        float f = this.curX - this.startX;
                        float f2 = this.curY - this.startY;
                        int i = 0;
                        while (true) {
                            int i2 = i;
                            if (i2 >= this.gridWid) {
                                break;
                            } else {
                                int i3 = 0;
                                while (true) {
                                    int i4 = i3;
                                    if (i4 < this.gridHei) {
                                        if (this.grid[i2][i4] != null) {
                                            if (this.mStyle.mSymbol == Shape.CIRCLE) {
                                                canvas.drawCircle((((float) this.grid[i2][i4].x) + f) - this.offsetX, (((float) this.grid[i2][i4].y) + f2) - this.offsetY, this.mStyle.mCircleRadius, this.mStyle.mPointStyle);
                                            } else {
                                                canvas.drawRect(((((float) this.grid[i2][i4].x) + f) - this.offsetX) - this.mStyle.mCircleRadius, ((((float) this.grid[i2][i4].y) + f2) - this.offsetY) - this.mStyle.mCircleRadius, this.mStyle.mCircleRadius + ((((float) this.grid[i2][i4].x) + f) - this.offsetX), this.mStyle.mCircleRadius + ((((float) this.grid[i2][i4].y) + f2) - this.offsetY), this.mStyle.mPointStyle);
                                            }
                                            if (this.mPointList.isLabelled() && z4) {
                                                String access$000 = this.grid[i2][i4].mlabel;
                                                if (access$000 != null) {
                                                    canvas.drawText(access$000, (((float) this.grid[i2][i4].x) + f) - this.offsetX, (((((float) this.grid[i2][i4].y) + f2) - this.offsetY) - this.mStyle.mCircleRadius) - 5.0f, this.mStyle.mTextStyle);
                                                }
                                            }
                                        }
                                        i3 = i4 + 1;
                                    } else {
                                        i = i2 + 1;
                                    }
                                }
                            }
                        }
                        break;
                    case MEDIUM_OPTIMIZATION:
                        if (this.grid != null && this.viewHei == mapView.getHeight() && this.viewWid == mapView.getWidth()) {
                            for (boolean[] fill : this.gridBool) {
                                Arrays.fill(fill, false);
                            }
                        } else {
                            updateGrid(mapView);
                        }
                        if (this.mStyle.mLabelPolicy != LabelPolicy.ZOOM_THRESHOLD || mapView.getZoomLevel() < this.mStyle.mMinZoomShowLabels) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        BoundingBox boundingBox = mapView.getBoundingBox();
                        for (IGeoPoint iGeoPoint : this.mPointList) {
                            if (iGeoPoint != null && iGeoPoint.getLatitude() > boundingBox.getLatSouth() && iGeoPoint.getLatitude() < boundingBox.getLatNorth() && iGeoPoint.getLongitude() > boundingBox.getLonWest() && iGeoPoint.getLongitude() < boundingBox.getLonEast()) {
                                projection.toPixels(iGeoPoint, point);
                                int floor = (int) Math.floor((double) (((float) point.x) / ((float) this.mStyle.mCellSize)));
                                int floor2 = (int) Math.floor((double) (((float) point.y) / ((float) this.mStyle.mCellSize)));
                                if (floor < this.gridWid && floor2 < this.gridHei && floor >= 0 && floor2 >= 0 && !this.gridBool[floor][floor2]) {
                                    this.gridBool[floor][floor2] = true;
                                    if (this.mStyle.mSymbol == Shape.CIRCLE) {
                                        canvas.drawCircle((float) point.x, (float) point.y, this.mStyle.mCircleRadius, this.mStyle.mPointStyle);
                                    } else {
                                        canvas.drawRect(((float) point.x) - this.mStyle.mCircleRadius, ((float) point.y) - this.mStyle.mCircleRadius, this.mStyle.mCircleRadius + ((float) point.x), this.mStyle.mCircleRadius + ((float) point.y), this.mStyle.mPointStyle);
                                    }
                                    if (this.mPointList.isLabelled() && z3) {
                                        String label = ((LabelledGeoPoint) iGeoPoint).getLabel();
                                        if (label != null) {
                                            canvas.drawText(label, (float) point.x, (((float) point.y) - this.mStyle.mCircleRadius) - 5.0f, this.mStyle.mTextStyle);
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case NO_OPTIMIZATION:
                        if (this.mStyle.mLabelPolicy != LabelPolicy.ZOOM_THRESHOLD || mapView.getZoomLevel() < this.mStyle.mMinZoomShowLabels) {
                            z2 = false;
                        } else {
                            z2 = true;
                        }
                        BoundingBox boundingBox2 = mapView.getBoundingBox();
                        for (IGeoPoint iGeoPoint2 : this.mPointList) {
                            if (iGeoPoint2 != null && iGeoPoint2.getLatitude() > boundingBox2.getLatSouth() && iGeoPoint2.getLatitude() < boundingBox2.getLatNorth() && iGeoPoint2.getLongitude() > boundingBox2.getLonWest() && iGeoPoint2.getLongitude() < boundingBox2.getLonEast()) {
                                projection.toPixels(iGeoPoint2, point);
                                if (this.mStyle.mSymbol == Shape.CIRCLE) {
                                    canvas.drawCircle((float) point.x, (float) point.y, this.mStyle.mCircleRadius, this.mStyle.mPointStyle);
                                } else {
                                    canvas.drawRect(((float) point.x) - this.mStyle.mCircleRadius, ((float) point.y) - this.mStyle.mCircleRadius, this.mStyle.mCircleRadius + ((float) point.x), this.mStyle.mCircleRadius + ((float) point.y), this.mStyle.mPointStyle);
                                }
                                if (this.mPointList.isLabelled() && z2) {
                                    String label2 = ((LabelledGeoPoint) iGeoPoint2).getLabel();
                                    if (label2 != null) {
                                        canvas.drawText(label2, (float) point.x, (((float) point.y) - this.mStyle.mCircleRadius) - 5.0f, this.mStyle.mTextStyle);
                                    }
                                }
                            }
                        }
                        break;
                }
            }
            if (this.mSelectedPoint != null && this.mSelectedPoint.intValue() < this.mPointList.size() && this.mPointList.get(this.mSelectedPoint.intValue()) != null && this.mStyle.mSelectedPointStyle != null) {
                projection.toPixels(this.mPointList.get(this.mSelectedPoint.intValue()), point);
                if (this.mStyle.mSymbol == Shape.CIRCLE) {
                    canvas.drawCircle((float) point.x, (float) point.y, this.mStyle.mSelectedCircleRadius, this.mStyle.mSelectedPointStyle);
                    return;
                }
                canvas.drawRect(((float) point.x) - this.mStyle.mSelectedCircleRadius, ((float) point.y) - this.mStyle.mSelectedCircleRadius, this.mStyle.mSelectedCircleRadius + ((float) point.x), this.mStyle.mSelectedCircleRadius + ((float) point.y), this.mStyle.mSelectedPointStyle);
            }
        }
    }
}
