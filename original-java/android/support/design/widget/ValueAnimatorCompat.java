package android.support.design.widget;

import android.support.annotation.NonNull;
import android.view.animation.Interpolator;

class ValueAnimatorCompat {
    private final Impl mImpl;

    interface AnimatorListener {
        void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat);

        void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat);

        void onAnimationStart(ValueAnimatorCompat valueAnimatorCompat);
    }

    static class AnimatorListenerAdapter implements AnimatorListener {
        AnimatorListenerAdapter() {
        }

        public void onAnimationStart(ValueAnimatorCompat valueAnimatorCompat) {
        }

        public void onAnimationEnd(ValueAnimatorCompat valueAnimatorCompat) {
        }

        public void onAnimationCancel(ValueAnimatorCompat valueAnimatorCompat) {
        }
    }

    interface AnimatorUpdateListener {
        void onAnimationUpdate(ValueAnimatorCompat valueAnimatorCompat);
    }

    interface Creator {
        @NonNull
        ValueAnimatorCompat createAnimator();
    }

    static abstract class Impl {

        interface AnimatorListenerProxy {
            void onAnimationCancel();

            void onAnimationEnd();

            void onAnimationStart();
        }

        interface AnimatorUpdateListenerProxy {
            void onAnimationUpdate();
        }

        /* access modifiers changed from: 0000 */
        public abstract void addListener(AnimatorListenerProxy animatorListenerProxy);

        /* access modifiers changed from: 0000 */
        public abstract void addUpdateListener(AnimatorUpdateListenerProxy animatorUpdateListenerProxy);

        /* access modifiers changed from: 0000 */
        public abstract void cancel();

        /* access modifiers changed from: 0000 */
        public abstract void end();

        /* access modifiers changed from: 0000 */
        public abstract float getAnimatedFloatValue();

        /* access modifiers changed from: 0000 */
        public abstract float getAnimatedFraction();

        /* access modifiers changed from: 0000 */
        public abstract int getAnimatedIntValue();

        /* access modifiers changed from: 0000 */
        public abstract long getDuration();

        /* access modifiers changed from: 0000 */
        public abstract boolean isRunning();

        /* access modifiers changed from: 0000 */
        public abstract void setDuration(long j);

        /* access modifiers changed from: 0000 */
        public abstract void setFloatValues(float f, float f2);

        /* access modifiers changed from: 0000 */
        public abstract void setIntValues(int i, int i2);

        /* access modifiers changed from: 0000 */
        public abstract void setInterpolator(Interpolator interpolator);

        /* access modifiers changed from: 0000 */
        public abstract void start();

        Impl() {
        }
    }

    ValueAnimatorCompat(Impl impl) {
        this.mImpl = impl;
    }

    public void start() {
        this.mImpl.start();
    }

    public boolean isRunning() {
        return this.mImpl.isRunning();
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mImpl.setInterpolator(interpolator);
    }

    public void addUpdateListener(final AnimatorUpdateListener animatorUpdateListener) {
        if (animatorUpdateListener != null) {
            this.mImpl.addUpdateListener(new AnimatorUpdateListenerProxy() {
                public void onAnimationUpdate() {
                    animatorUpdateListener.onAnimationUpdate(ValueAnimatorCompat.this);
                }
            });
        } else {
            this.mImpl.addUpdateListener(null);
        }
    }

    public void addListener(final AnimatorListener animatorListener) {
        if (animatorListener != null) {
            this.mImpl.addListener(new AnimatorListenerProxy() {
                public void onAnimationStart() {
                    animatorListener.onAnimationStart(ValueAnimatorCompat.this);
                }

                public void onAnimationEnd() {
                    animatorListener.onAnimationEnd(ValueAnimatorCompat.this);
                }

                public void onAnimationCancel() {
                    animatorListener.onAnimationCancel(ValueAnimatorCompat.this);
                }
            });
        } else {
            this.mImpl.addListener(null);
        }
    }

    public void setIntValues(int i, int i2) {
        this.mImpl.setIntValues(i, i2);
    }

    public int getAnimatedIntValue() {
        return this.mImpl.getAnimatedIntValue();
    }

    public void setFloatValues(float f, float f2) {
        this.mImpl.setFloatValues(f, f2);
    }

    public float getAnimatedFloatValue() {
        return this.mImpl.getAnimatedFloatValue();
    }

    public void setDuration(long j) {
        this.mImpl.setDuration(j);
    }

    public void cancel() {
        this.mImpl.cancel();
    }

    public float getAnimatedFraction() {
        return this.mImpl.getAnimatedFraction();
    }

    public void end() {
        this.mImpl.end();
    }

    public long getDuration() {
        return this.mImpl.getDuration();
    }
}
