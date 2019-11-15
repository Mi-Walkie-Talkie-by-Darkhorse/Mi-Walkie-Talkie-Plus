package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallRotateIndicator extends Indicator {
    float degress;
    private Matrix mMatrix = new Matrix();
    float scaleFloat = 0.5f;

    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 10);
        float width2 = (float) (getWidth() / 2);
        float height = (float) (getHeight() / 2);
        canvas.rotate(this.degress, (float) centerX(), (float) centerY());
        canvas.save();
        canvas.translate((width2 - (width * 2.0f)) - width, height);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.drawCircle(0.0f, 0.0f, width, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(width2, height);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.drawCircle(0.0f, 0.0f, width, paint);
        canvas.restore();
        canvas.save();
        canvas.translate(width2 + (width * 2.0f) + width, height);
        canvas.scale(this.scaleFloat, this.scaleFloat);
        canvas.drawCircle(0.0f, 0.0f, width, paint);
        canvas.restore();
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.5f, 1.0f, 0.5f});
        ofFloat.setDuration(1000);
        ofFloat.setRepeatCount(-1);
        addUpdateListener(ofFloat, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallRotateIndicator.this.scaleFloat = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallRotateIndicator.this.postInvalidate();
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{0.0f, 180.0f, 360.0f});
        addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BallRotateIndicator.this.degress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                BallRotateIndicator.this.postInvalidate();
            }
        });
        ofFloat2.setDuration(1000);
        ofFloat2.setRepeatCount(-1);
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        return arrayList;
    }
}
