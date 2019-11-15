package org.osmdroid.views.overlay;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.util.DisplayMetrics;
import org.osmdroid.views.MapView;

public class CopyrightOverlay extends Overlay {
    protected boolean alignBottom = true;
    protected boolean alignRight = false;
    final DisplayMetrics dm;
    private Paint paint;
    int xOffset = 10;
    int yOffset = 10;

    public CopyrightOverlay(Context context) {
        this.dm = context.getResources().getDisplayMetrics();
        this.paint = new Paint();
        this.paint.setAntiAlias(true);
        this.paint.setTextSize(this.dm.density * 12.0f);
    }

    public void setTextSize(int i) {
        this.paint.setTextSize(this.dm.density * ((float) i));
    }

    public void setTextColor(int i) {
        this.paint.setColor(i);
    }

    public void setAlignBottom(boolean z) {
        this.alignBottom = z;
    }

    public void setAlignRight(boolean z) {
        this.alignRight = z;
    }

    public void setOffset(int i, int i2) {
        this.xOffset = i;
        this.yOffset = i2;
    }

    public void draw(Canvas canvas, MapView mapView, boolean z) {
        float f;
        float textSize;
        if (!z && !mapView.isAnimating() && mapView.getTileProvider().getTileSource().getCopyrightNotice() != null && mapView.getTileProvider().getTileSource().getCopyrightNotice().length() != 0) {
            int width = canvas.getWidth();
            int height = canvas.getHeight();
            if (this.alignRight) {
                f = (float) (width - this.xOffset);
                this.paint.setTextAlign(Align.RIGHT);
            } else {
                f = (float) this.xOffset;
                this.paint.setTextAlign(Align.LEFT);
            }
            if (this.alignBottom) {
                textSize = (float) (height - this.yOffset);
            } else {
                textSize = this.paint.getTextSize() + ((float) this.yOffset);
            }
            canvas.save();
            canvas.concat(mapView.getProjection().getInvertedScaleRotateCanvasMatrix());
            canvas.drawText(mapView.getTileProvider().getTileSource().getCopyrightNotice(), f, textSize, this.paint);
            canvas.restore();
        }
    }
}
