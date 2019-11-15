package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallClipRotateMultipleIndicator extends Indicator {
    float degrees;
    float scaleFloat = 1.0f;

    public void draw(Canvas canvas, Paint paint) {
        paint.setStrokeWidth(3.0f);
        paint.setStyle(Style.STROKE);
        float width = (float) (getWidth() / 2);
        float height = (float) (getHeight() / 2);
        canvas.save();
        canvas.translate(width, height);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.rotate(this.degrees);
        float[] fArr = {135.0f, -45.0f};
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= 2) {
                break;
            }
            canvas.drawArc(new RectF((-width) + 12.0f, (-height) + 12.0f, width - 12.0f, height - 12.0f), fArr[i2], 90.0f, false, paint);
            i = i2 + 1;
        }
        canvas.restore();
        canvas.translate(width, height);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.rotate(-this.degrees);
        float[] fArr2 = {225.0f, 45.0f};
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < 2) {
                canvas.drawArc(new RectF(((-width) / 1.8f) + 12.0f, ((-height) / 1.8f) + 12.0f, (width / 1.8f) - 12.0f, (height / 1.8f) - 12.0f), fArr2[i4], 90.0f, false, paint);
                i3 = i4 + 1;
            } else {
                return;
            }
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.6f, 1.0f});
        ofFloat.setDuration(1000);
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotateMultipleIndicator.this.scaleFloat = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotateMultipleIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{0.0f, 180.0f, 360.0f});
        ofFloat2.setDuration(1000);
        ofFloat2.setRepeatCount(-1);
        addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallClipRotateMultipleIndicator.this.degrees = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallClipRotateMultipleIndicator.this.postInvalidate();
            }
        });
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        return arrayList;
    }
}
