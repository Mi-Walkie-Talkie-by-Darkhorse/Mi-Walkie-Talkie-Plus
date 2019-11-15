package org.osmdroid.views.overlay;

import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import org.osmdroid.api.IGeoPoint;
import org.osmdroid.views.MapView;

public class IconOverlay extends Overlay {
    public static final float ANCHOR_BOTTOM = 1.0f;
    public static final float ANCHOR_CENTER = 0.5f;
    public static final float ANCHOR_LEFT = 0.0f;
    public static final float ANCHOR_RIGHT = 1.0f;
    public static final float ANCHOR_TOP = 0.0f;
    protected float mAlpha = 1.0f;
    protected float mAnchorU = 0.5f;
    protected float mAnchorV = 0.5f;
    protected float mBearing = 0.0f;
    protected boolean mFlat = false;
    protected Drawable mIcon = null;
    protected IGeoPoint mPosition = null;
    protected Point mPositionPixels = new Point();

    public IconOverlay() {
    }

    public IconOverlay(IGeoPoint iGeoPoint, Drawable drawable) {
        set(iGeoPoint, drawable);
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z && this.mIcon != null && this.mPosition != null) {
            mapView.getProjection().toPixels(this.mPosition, this.mPositionPixels);
            int intrinsicWidth = this.mIcon.getIntrinsicWidth();
            int intrinsicHeight = this.mIcon.getIntrinsicHeight();
            Rect rect = new Rect(0, 0, intrinsicWidth, intrinsicHeight);
            rect.offset(-((int) (((float) intrinsicWidth) * this.mAnchorU)), -((int) (((float) intrinsicHeight) * this.mAnchorV)));
            this.mIcon.setBounds(rect);
            this.mIcon.setAlpha((int) (this.mAlpha * 255.0f));
            drawAt(canvas, this.mIcon, this.mPositionPixels.x, this.mPositionPixels.y, false, this.mFlat ? -this.mBearing : mapView.getMapOrientation() - this.mBearing);
        }
    }

    public IGeoPoint getPosition() {
        return this.mPosition;
    }

    public IconOverlay set(IGeoPoint iGeoPoint, Drawable drawable) {
        this.mPosition = iGeoPoint;
        this.mIcon = drawable;
        return this;
    }

    public IconOverlay moveTo(MotionEvent motionEvent, MapView mapView) {
        moveTo(mapView.getProjection().fromPixels((int) motionEvent.getX(), (int) motionEvent.getY()), mapView);
        return this;
    }

    public IconOverlay moveTo(IGeoPoint iGeoPoint, MapView mapView) {
        this.mPosition = iGeoPoint;
        mapView.invalidate();
        return this;
    }
}
