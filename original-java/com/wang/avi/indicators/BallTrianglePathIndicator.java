package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallTrianglePathIndicator extends Indicator {
    float[] translateX = new float[3];
    float[] translateY = new float[3];

    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Style.STROKE);
        for (int i = 0; i < 3; i++) {
            canvas.save();
            canvas.translate(this.translateX[i], this.translateY[i]);
            canvas.drawCircle(0.0f, 0.0f, (float) (getWidth() / 10), paint);
            canvas.restore();
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = (float) (getWidth() / 5);
        float width2 = (float) (getWidth() / 5);
        for (final int i = 0; i < 3; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{(float) (getWidth() / 2), ((float) getWidth()) - width, width, (float) (getWidth() / 2)});
            if (i == 1) {
                ofFloat = ValueAnimator.ofFloat(new float[]{((float) getWidth()) - width, width, (float) (getWidth() / 2), ((float) getWidth()) - width});
            } else if (i == 2) {
                ofFloat = ValueAnimator.ofFloat(new float[]{width, (float) (getWidth() / 2), ((float) getWidth()) - width, width});
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{width2, ((float) getHeight()) - width2, ((float) getHeight()) - width2, width2});
            if (i == 1) {
                ofFloat2 = ValueAnimator.ofFloat(new float[]{((float) getHeight()) - width2, ((float) getHeight()) - width2, width2, ((float) getHeight()) - width2});
            } else if (i == 2) {
                ofFloat2 = ValueAnimator.ofFloat(new float[]{((float) getHeight()) - width2, width2, ((float) getHeight()) - width2, ((float) getHeight()) - width2});
            }
            ofFloat.setDuration(2000);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateX[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(2000);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallTrianglePathIndicator.this.translateY[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallTrianglePathIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}
