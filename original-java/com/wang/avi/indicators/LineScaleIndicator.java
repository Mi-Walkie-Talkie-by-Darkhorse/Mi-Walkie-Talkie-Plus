package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class LineScaleIndicator extends Indicator {
    public static final float SCALE = 1.0f;
    float[] scaleYFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 11);
        float height = (float) (getHeight() / 2);
        for (int i = 0; i < 5; i++) {
            canvas.save();
            canvas.translate((((float) ((i * 2) + 2)) * width) - (width / 2.0f), height);
            canvas.scale(1.0f, this.scaleYFloats[i]);
            canvas.drawRoundRect(new RectF((-width) / 2.0f, ((float) (-getHeight())) / 2.5f, width / 2.0f, ((float) getHeight()) / 2.5f), 5.0f, 5.0f, paint);
            canvas.restore();
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        long[] jArr = {100, 200, 300, 400, 500};
        for (final int i = 0; i < 5; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.4f, 1.0f});
            ofFloat.setDuration(1000);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay(jArr[i]);
            addUpdateListener(ofFloat, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    LineScaleIndicator.this.scaleYFloats[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    LineScaleIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}
