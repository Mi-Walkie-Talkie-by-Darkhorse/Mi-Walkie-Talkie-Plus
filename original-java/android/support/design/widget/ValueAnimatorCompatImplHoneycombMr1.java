package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.animation.Interpolator;

@TargetApi(12)
@RequiresApi(12)
class ValueAnimatorCompatImplHoneycombMr1 extends Impl {
    private final ValueAnimator mValueAnimator = new ValueAnimator();

    ValueAnimatorCompatImplHoneycombMr1() {
    }

    public void start() {
        this.mValueAnimator.start();
    }

    public boolean isRunning() {
        return this.mValueAnimator.isRunning();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mValueAnimator.setInterpolator(interpolator);
    }

    public void addUpdateListener(final AnimatorUpdateListenerProxy animatorUpdateListenerProxy) {
        this.mValueAnimator.addUpdateListener(new AnimatorUpdateListener() {
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                animatorUpdateListenerProxy.onAnimationUpdate();
            }
        });
    }

    public void addListener(final AnimatorListenerProxy animatorListenerProxy) {
        this.mValueAnimator.addListener(new AnimatorListenerAdapter() {
            public void onAnimationStart(Animator animator) {
                animatorListenerProxy.onAnimationStart();
            }

            public void onAnimationEnd(Animator animator) {
                animatorListenerProxy.onAnimationEnd();
            }

            public void onAnimationCancel(Animator animator) {
                animatorListenerProxy.onAnimationCancel();
            }
        });
    }

    public void setIntValues(int i, int i2) {
        this.mValueAnimator.setIntValues(new int[]{i, i2});
    }

    public int getAnimatedIntValue() {
        return ((Integer) this.mValueAnimator.getAnimatedValue()).intValue();
    }

    public void setFloatValues(float f, float f2) {
        this.mValueAnimator.setFloatValues(new float[]{f, f2});
    }

    public float getAnimatedFloatValue() {
        return ((Float) this.mValueAnimator.getAnimatedValue()).floatValue();
    }

    public void setDuration(long j) {
        this.mValueAnimator.setDuration(j);
    }

    public void cancel() {
        this.mValueAnimator.cancel();
    }

    public float getAnimatedFraction() {
        return this.mValueAnimator.getAnimatedFraction();
    }

    public void end() {
        this.mValueAnimator.end();
    }

    public long getDuration() {
        return this.mValueAnimator.getDuration();
    }
}
