package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallZigZagIndicator extends Indicator {
    float[] translateX = new float[2];
    float[] translateY = new float[2];

    public void draw(Canvas canvas, Paint paint) {
        for (int i = 0; i < 2; i++) {
            canvas.save();
            canvas.translate(this.translateX[i], this.translateY[i]);
            canvas.drawCircle(0.0f, 0.0f, (float) (getWidth() / 10), paint);
            canvas.restore();
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = (float) (getWidth() / 6);
        float width2 = (float) (getWidth() / 6);
        for (final int i = 0; i < 2; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{width, ((float) getWidth()) - width, (float) (getWidth() / 2), width});
            if (i == 1) {
                ofFloat = ValueAnimator.ofFloat(new float[]{((float) getWidth()) - width, width, (float) (getWidth() / 2), ((float) getWidth()) - width});
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{width2, width2, (float) (getHeight() / 2), width2});
            if (i == 1) {
                ofFloat2 = ValueAnimator.ofFloat(new float[]{((float) getHeight()) - width2, ((float) getHeight()) - width2, (float) (getHeight() / 2), ((float) getHeight()) - width2});
            }
            ofFloat.setDuration(1000);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagIndicator.this.translateX[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(1000);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagIndicator.this.translateY[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}
