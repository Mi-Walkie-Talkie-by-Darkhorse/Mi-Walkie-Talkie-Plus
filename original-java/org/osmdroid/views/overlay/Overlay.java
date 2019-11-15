package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.concurrent.atomic.AtomicInteger;
import org.osmdroid.api.IMapView;
import org.osmdroid.views.MapView;
import org.osmdroid.views.util.constants.OverlayConstants;

public abstract class Overlay implements OverlayConstants {
    protected static final float SHADOW_X_SKEW = -0.9f;
    protected static final float SHADOW_Y_SCALE = 0.5f;
    private static final Rect mRect = new Rect();
    private static AtomicInteger sOrdinal = new AtomicInteger();
    private boolean mEnabled = true;

    public interface Snappable {
        boolean onSnapToItem(int i, int i2, Point point, IMapView iMapView);
    }

    public abstract void draw(Canvas canvas, MapView mapView, boolean z);

    @Deprecated
    public Overlay(Context context) {
    }

    public Overlay() {
    }

    public void setEnabled(boolean z) {
        this.mEnabled = z;
    }

    public boolean isEnabled() {
        return this.mEnabled;
    }

    protected static final int getSafeMenuId() {
        return sOrdinal.getAndIncrement();
    }

    protected static final int getSafeMenuIdSequence(int i) {
        return sOrdinal.getAndAdd(i);
    }

    public void onDetach(MapView mapView) {
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent, MapView mapView) {
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent, MapView mapView) {
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onTrackballEvent(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onDoubleTap(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onDoubleTapEvent(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onDown(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, MapView mapView) {
        return false;
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2, MapView mapView) {
        return false;
    }

    public void onShowPress(MotionEvent motionEvent, MapView mapView) {
    }

    public boolean onSingleTapUp(MotionEvent motionEvent, MapView mapView) {
        return false;
    }

    protected static synchronized void drawAt(Canvas canvas, Drawable drawable, int i, int i2, boolean z, float f) {
        synchronized (Overlay.class) {
            canvas.save();
            canvas.rotate(-f, (float) i, (float) i2);
            drawable.copyBounds(mRect);
            drawable.setBounds(mRect.left + i, mRect.top + i2, mRect.right + i, mRect.bottom + i2);
            drawable.draw(canvas);
            drawable.setBounds(mRect);
            canvas.restore();
        }
    }
}
