package com.wang.avi.indicators;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

public class BallZigZagDeflectIndicator extends BallZigZagIndicator {
    public ArrayList<ValueAnimator> onCreateAnimators() {
        ArrayList<ValueAnimator> arrayList = new ArrayList<>();
        float width = (float) (getWidth() / 6);
        float width2 = (float) (getWidth() / 6);
        for (final int i = 0; i < 2; i++) {
            ValueAnimator ofFloat = ValueAnimator.ofFloat(new float[]{width, ((float) getWidth()) - width, width, ((float) getWidth()) - width, width});
            if (i == 1) {
                ofFloat = ValueAnimator.ofFloat(new float[]{((float) getWidth()) - width, width, ((float) getWidth()) - width, width, ((float) getWidth()) - width});
            }
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(new float[]{width2, width2, ((float) getHeight()) - width2, ((float) getHeight()) - width2, width2});
            if (i == 1) {
                ofFloat2 = ValueAnimator.ofFloat(new float[]{((float) getHeight()) - width2, ((float) getHeight()) - width2, width2, width2, ((float) getHeight()) - width2});
            }
            ofFloat.setDuration(2000);
            ofFloat.setInterpolator(new LinearInterpolator());
            ofFloat.setRepeatCount(-1);
            addUpdateListener(ofFloat, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagDeflectIndicator.this.translateX[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagDeflectIndicator.this.postInvalidate();
                }
            });
            ofFloat2.setDuration(2000);
            ofFloat2.setInterpolator(new LinearInterpolator());
            ofFloat2.setRepeatCount(-1);
            addUpdateListener(ofFloat2, new AnimatorUpdateListener() {
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BallZigZagDeflectIndicator.this.translateY[i] = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                    BallZigZagDeflectIndicator.this.postInvalidate();
                }
            });
            arrayList.add(ofFloat);
            arrayList.add(ofFloat2);
        }
        return arrayList;
    }
}
