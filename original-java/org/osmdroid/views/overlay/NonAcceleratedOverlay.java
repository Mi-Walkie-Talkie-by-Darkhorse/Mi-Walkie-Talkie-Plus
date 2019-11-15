package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PorterDuff.Mode;
import android.os.Build.VERSION;
import android.util.Log;
import org.osmdroid.api.IMapView;
import org.osmdroid.views.MapView;

public abstract class NonAcceleratedOverlay extends Overlay {
    private Bitmap mBackingBitmap;
    private Canvas mBackingCanvas;
    private final Matrix mBackingMatrix = new Matrix();
    private final Matrix mCanvasIdentityMatrix = new Matrix();

    /* access modifiers changed from: protected */
    public abstract void onDraw(Canvas canvas, MapView mapView, boolean z);

    @Deprecated
    public NonAcceleratedOverlay(Context context) {
        super(context);
    }

    public NonAcceleratedOverlay() {
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas, Canvas canvas2, MapView mapView, boolean z) {
        onDraw(canvas, mapView, z);
    }

    public boolean isUsingBackingBitmap() {
        return true;
    }

    public void onDetach(MapView mapView) {
        this.mBackingBitmap = null;
        this.mBackingCanvas = null;
        super.onDetach(mapView);
    }

    public final void draw(Canvas canvas, MapView mapView, boolean z) {
        boolean z2 = VERSION.SDK_INT >= 11;
        if (!isUsingBackingBitmap() || !z2 || !canvas.isHardwareAccelerated()) {
            onDraw(canvas, canvas, mapView, z);
        } else if (!z && canvas.getWidth() != 0 && canvas.getHeight() != 0) {
            if (!(this.mBackingBitmap != null && this.mBackingBitmap.getWidth() == canvas.getWidth() && this.mBackingBitmap.getHeight() == canvas.getHeight())) {
                this.mBackingBitmap = null;
                this.mBackingCanvas = null;
                try {
                    this.mBackingBitmap = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), Config.ARGB_8888);
                    this.mBackingCanvas = new Canvas(this.mBackingBitmap);
                } catch (OutOfMemoryError e) {
                    Log.e(IMapView.LOGTAG, "OutOfMemoryError creating backing bitmap in NonAcceleratedOverlay.");
                    System.gc();
                    return;
                }
            }
            this.mBackingCanvas.drawColor(0, Mode.CLEAR);
            canvas.getMatrix(this.mBackingMatrix);
            this.mBackingCanvas.setMatrix(this.mBackingMatrix);
            onDraw(this.mBackingCanvas, canvas, mapView, z);
            canvas.save();
            canvas.getMatrix(this.mCanvasIdentityMatrix);
            this.mCanvasIdentityMatrix.invert(this.mCanvasIdentityMatrix);
            canvas.concat(this.mCanvasIdentityMatrix);
            canvas.drawBitmap(this.mBackingBitmap, 0.0f, 0.0f, null);
            canvas.restore();
        }
    }
}
