package org.osmdroid.views.overlay;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import java.util.List;
import org.osmdroid.views.MapView;

public class FolderOverlay extends Overlay {
    protected String mDescription;
    protected String mName;
    protected OverlayManager mOverlayManager;

    @Deprecated
    public FolderOverlay(Context context) {
        this();
    }

    public FolderOverlay() {
        this.mOverlayManager = new DefaultOverlayManager(null);
        this.mName = "";
        this.mDescription = "";
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String getName() {
        return this.mName;
    }

    public void setDescription(String str) {
        this.mDescription = str;
    }

    public String getDescription() {
        return this.mDescription;
    }

    public List<Overlay> getItems() {
        return this.mOverlayManager;
    }

    public boolean add(Overlay overlay) {
        return this.mOverlayManager.add(overlay);
    }

    public boolean remove(Overlay overlay) {
        return this.mOverlayManager.remove(overlay);
    }

    @SuppressLint({"WrongCall"})
    public void draw(Canvas canvas, MapView mapView, boolean z) {
        if (!z) {
            this.mOverlayManager.onDraw(canvas, mapView);
        }
    }

    public boolean onSingleTapUp(MotionEvent motionEvent, MapView mapView) {
        if (isEnabled()) {
            return this.mOverlayManager.onSingleTapUp(motionEvent, mapView);
        }
        return false;
    }

    public boolean onSingleTapConfirmed(MotionEvent motionEvent, MapView mapView) {
        if (isEnabled()) {
            return this.mOverlayManager.onSingleTapConfirmed(motionEvent, mapView);
        }
        return false;
    }

    public boolean onLongPress(MotionEvent motionEvent, MapView mapView) {
        if (isEnabled()) {
            return this.mOverlayManager.onLongPress(motionEvent, mapView);
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionEvent, MapView mapView) {
        if (isEnabled()) {
            return this.mOverlayManager.onTouchEvent(motionEvent, mapView);
        }
        return false;
    }

    public void closeAllInfoWindows() {
        for (Overlay overlay : this.mOverlayManager) {
            if (overlay instanceof FolderOverlay) {
                ((FolderOverlay) overlay).closeAllInfoWindows();
            } else if (overlay instanceof OverlayWithIW) {
                ((OverlayWithIW) overlay).closeInfoWindow();
            }
        }
    }

    public void onDetach(MapView mapView) {
        if (this.mOverlayManager != null) {
            this.mOverlayManager.onDetach(mapView);
        }
        this.mOverlayManager = null;
    }
}
