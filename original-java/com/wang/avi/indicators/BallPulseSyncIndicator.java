package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallPulseSyncIndicator extends Indicator {
    float[] translateYFloats = new float[3];

    public void draw(Canvas canvas, Paint paint) {
        float width = (((float) getWidth()) - (4.0f * 2.0f)) / 6.0f;
        float width2 = ((float) (getWidth() / 2)) - ((width * 2.0f) + 4.0f);
        for (int i = 0; i < 3; i++) {
            canvas.save();
            canvas.translate((width * 2.0f * ((float) i)) + width2 + (((float) i) * 4.0f), this.translateYFloats[i]);
            canvas.drawCircle(0.0f, 0.0f, width, paint);
            canvas.restore();
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = (((float) getWidth()) - (4.0f * 2.0f)) / 6.0f;
        int[] iArr = {70, 140, 210};
        for (final int i = 0; i < 3; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{(float) (getHeight() / 2), ((float) (getHeight() / 2)) - (width * 2.0f), (float) (getHeight() / 2)});
            ofFloat.setDuration(600);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay((long) iArr[i]);
            addUpdateListener(ofFloat, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallPulseSyncIndicator.this.translateYFloats[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallPulseSyncIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
        }
        return arrayList;
    }
}
