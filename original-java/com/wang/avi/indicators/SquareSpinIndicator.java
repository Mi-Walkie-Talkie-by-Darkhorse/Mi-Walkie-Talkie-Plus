package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Camera;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.animation.LinearInterpolator;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class SquareSpinIndicator extends Indicator {
    private Camera mCamera = new Camera();
    private Matrix mMatrix = new Matrix();
    /* access modifiers changed from: private */
    public float rotateX;
    /* access modifiers changed from: private */
    public float rotateY;

    public void draw(Canvas canvas, Paint paint) {
        this.mMatrix.reset();
        this.mCamera.save();
        this.mCamera.rotateX(this.rotateX);
        this.mCamera.rotateY(this.rotateY);
        this.mCamera.getMatrix(this.mMatrix);
        this.mCamera.restore();
        this.mMatrix.preTranslate((float) (-centerX()), (float) (-centerY()));
        this.mMatrix.postTranslate((float) centerX(), (float) centerY());
        canvas.concat(this.mMatrix);
        canvas.drawRect(new RectF((float) (getWidth() / 5), (float) (getHeight() / 5), (float) ((getWidth() * 4) / 5), (float) ((getHeight() * 4) / 5)), paint);
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{0.0f, 180.0f, 180.0f, 0.0f, 0.0f});
        addUpdateListener(ofFloat, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SquareSpinIndicator.this.rotateX = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SquareSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat.setInterpolator(new LinearInterpolator());
        ofFloat.setRepeatCount(-1);
        ofFloat.setDuration(2500);
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{0.0f, 0.0f, 180.0f, 180.0f, 0.0f});
        addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                SquareSpinIndicator.this.rotateY = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                SquareSpinIndicator.this.postInvalidate();
            }
        });
        ofFloat2.setInterpolator(new LinearInterpolator());
        ofFloat2.setRepeatCount(-1);
        ofFloat2.setDuration(2500);
        arrayList.add(ofFloat);
        arrayList.add(ofFloat2);
        return arrayList;
    }
}
