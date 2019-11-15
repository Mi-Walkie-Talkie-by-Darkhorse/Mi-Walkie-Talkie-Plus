package com.wang.avi.indicators;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;

public class LineSpinFadeLoaderIndicator extends BallSpinFadeLoaderIndicator {
    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 10);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 8) {
                canvas.save();
                Point circleAt = circleAt(getWidth(), getHeight(), (((float) getWidth()) / 2.5f) - width, ((double) i2) * 0.7853981633974483d);
                canvas.translate(circleAt.x, circleAt.y);
                canvas.scale(this.scaleFloats[i2], this.scaleFloats[i2]);
                canvas.rotate((float) (i2 * 45));
                paint.setAlpha(this.alphas[i2]);
                canvas.drawRoundRect(new RectF(-width, (-width) / 1.5f, 1.5f * width, width / 1.5f), 5.0f, 5.0f, paint);
                canvas.restore();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }
}
