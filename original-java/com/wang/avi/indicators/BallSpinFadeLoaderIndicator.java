package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.Canvas;
import android.graphics.Paint;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import com.wang.avi.Indicator;
import java.util.ArrayList;

public class BallSpinFadeLoaderIndicator extends Indicator {
    public static final int ALPHA = 255;
    public static final float SCALE = 1.0f;
    int[] alphas = {255, 255, 255, 255, 255, 255, 255, 255};
    float[] scaleFloats = {1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f};

    final class Point {
        public float x;
        public float y;

        public Point(float f, float f2) {
            this.x = f;
            this.y = f2;
        }
    }

    public void draw(Canvas canvas, Paint paint) {
        float width = (float) (getWidth() / 10);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 8) {
                canvas.save();
                Point circleAt = circleAt(getWidth(), getHeight(), ((float) (getWidth() / 2)) - width, ((double) i2) * 0.7853981633974483d);
                canvas.translate(circleAt.x, circleAt.y);
                canvas.scale(this.scaleFloats[i2], this.scaleFloats[i2]);
                paint.setAlpha(this.alphas[i2]);
                canvas.drawCircle(0.0f, 0.0f, width, paint);
                canvas.restore();
                i = i2 + 1;
            } else {
                return;
            }
        }
    }

    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        int[] iArr = {0, 120, 240, 360, 480, 600, 720, MessageCmdID.CID_MSG_GET_LATEST_MSG_ID_RSP_VALUE, 840};
        for (final int i = 0; i < 8; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{1.0f, 0.4f, 1.0f});
            ofFloat.setDuration(1000);
            ofFloat.setRepeatCount(-1);
            ofFloat.setStartDelay((long) iArr[i]);
            addUpdateListener(ofFloat, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.scaleFloats[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            ValueAnimator ofInt = ValueAnimator.ofInt(new int[]{255, 77, 255});
            ofInt.setDuration(1000);
            ofInt.setRepeatCount(-1);
            ofInt.setStartDelay((long) iArr[i]);
            addUpdateListener(ofInt, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallSpinFadeLoaderIndicator.this.alphas[i] = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    BallSpinFadeLoaderIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofInt);
        }
        return arrayList;
    }

    /* access modifiers changed from: 0000 */
    public Point circleAt(int i, int i2, float f, double d) {
        return new Point((float) (((double) (i / 2)) + (((double) f) * Math.cos(d))), (float) (((double) (i2 / 2)) + (((double) f) * Math.sin(d))));
    }
}
