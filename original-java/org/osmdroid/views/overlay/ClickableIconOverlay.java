package org.osmdroid.views.overlay;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import java.util.List;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.views.MapView;
import org.osmdroid.views.Projection;

public abstract class ClickableIconOverlay<DataType> extends IconOverlay {
    private DataType mData = null;
    protected int mId = 0;

    /* access modifiers changed from: protected */
    public abstract boolean onMarkerClicked(MapView mapView, int i, IGeoPoint iGeoPoint, DataType datatype);

    protected ClickableIconOverlay(DataType datatype) {
        this.mData = datatype;
    }

    public ClickableIconOverlay set(int i, IGeoPoint iGeoPoint, Drawable drawable, DataType datatype) {
        set(iGeoPoint, drawable);
        this.mId = i;
        this.mData = datatype;
        return this;
    }

    /* access modifiers changed from: protected */
    public boolean hitTest(MotionEvent motionEvent, MapView mapView) {
        Projection projection = mapView.getProjection();
        if (this.mPosition == null || this.mPositionPixels == null || projection == null) {
            return false;
        }
        projection.toPixels(this.mPosition, this.mPositionPixels);
        Rect intrinsicScreenRect = projection.getIntrinsicScreenRect();
        return this.mIcon.getBounds().contains((-this.mPositionPixels.x) + intrinsicScreenRect.left + ((int) motionEvent.getX()), intrinsicScreenRect.top + (-this.mPositionPixels.y) + ((int) motionEvent.getY()));
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        if (hitTest(motionEvent, mapView)) {
            return onMarkerClicked(mapView, this.mId, this.mPosition, this.mData);
        }
        return super.onSingleTapConfirmed(motionEvent, mapView);
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        if (hitTest(motionEvent, mapView)) {
            return onMarkerLongPress(mapView, this.mId, this.mPosition, this.mData);
        }
        return super.onLongPress(motionEvent, mapView);
    }

    /* access modifiers changed from: protected */
    public boolean onMarkerLongPress(MapView mapView, int i, IGeoPoint iGeoPoint, Object obj) {
        return false;
    }

    public static ClickableIconOverlay find(List<ClickableIconOverlay> list, int i) {
        for (ClickableIconOverlay clickableIconOverlay : list) {
            if (clickableIconOverlay != null && clickableIconOverlay.mId == i) {
                return clickableIconOverlay;
            }
        }
        return null;
    }

    public int getID() {
        return this.mId;
    }

    public DataType getData() {
        return this.mData;
    }
}
