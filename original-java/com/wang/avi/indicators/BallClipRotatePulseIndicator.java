package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallClipRotatePulseIndicator extends Indicator {
    float degrees;
    float scaleFloat1;
    float scaleFloat2;

    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 2);
        float height = (float) (getHeight() / 2);
        canvas.save();
        canvas.translate(width, height);
        canvas.scale(this.scaleFloat1, this.scaleFloat1);
        paint.setStyle(Style.FILL);
        canvas.drawCircle(0.0f, 0.0f, width / 2.5f, paint);
        canvas.restore();
        canvas.translate(width, height);
        canvas.scale(this.scaleFloat2, this.scaleFloat2);
        canvas.rotate(this.degrees);
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Style.STROKE);
        float[] fArr = {225.0f, 45.0f};
        for (int i = 0; i < 2; i++) {
            canvas.drawArc(new RectF((-width) + 12.0f, (-height) + 12.0f, width - 12.0f, height - 12.0f), fArr[i], 90.0f, false, paint);
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.3f, 1.0f});
        ofFloat.setDuration(1000);
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotatePulseIndicator.this.scaleFloat1 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{1.0f, 0.6f, 1.0f});
        ofFloat2.setDuration(1000);
        ofFloat2.setRepeatCount(-1);
        addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotatePulseIndicator.this.scaleFloat2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(new float[]{0.0f, 180.0f, 360.0f});
        ofFloat3.setDuration(1000);
        ofFloat3.setRepeatCount(-1);
        addUpdateListener(ofFloat3, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotatePulseIndicator.this.degrees = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotatePulseIndicator.this.postInvalidate();
            }
        });
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        arrayList.add(ofFloat3);
        return arrayList;
    }
}
