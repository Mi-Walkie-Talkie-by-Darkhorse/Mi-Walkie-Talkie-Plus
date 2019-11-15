package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallScaleIndicator extends Indicator {
    int alpha = 255;
    float scale = 1.0f;

    public void draw(Canvas canvas, Paint paint) {
        paint.setAlpha(this.alpha);
        canvas.scale(this.scale, this.scale, (float) (getWidth() / 2), (float) (getHeight() / 2));
        paint.setAlpha(this.alpha);
        canvas.drawCircle((float) (getWidth() / 2), (float) (getHeight() / 2), ((float) (getWidth() / 2)) - 4.0f, paint);
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 1.0f});
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setDuration(1000);
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallScaleIndicator.this.scale = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallScaleIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{255, 0});
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration(1000);
        ofInt.setRepeatCount(-1);
        addUpdateListener(ofInt, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallScaleIndicator.this.alpha = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                BallScaleIndicator.this.postInvalidate();
            }
        });
        arrayList.add(ofFloat);
        arrayList.add(ofInt);
        return arrayList;
    }
}
