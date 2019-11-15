package android.support.v4.animation;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;
import java.util.ArrayList;
import java.util.List;

@TargetApi(9)
@RequiresApi(9)
class GingerbreadAnimatorCompatProvider implements AnimatorProvider {

    private static class GingerbreadFloatValueAnimator implements ValueAnimatorCompat {
        /* access modifiers changed from: private */
        public long mDuration = 200;
        private boolean mEnded = false;
        /* access modifiers changed from: private */
        public float mFraction = 0.0f;
        List<AnimatorListenerCompat> mListeners = new ArrayList();
        /* access modifiers changed from: private */
        public Runnable mLoopRunnable = new Runnable() {
            public void run() {
                float access$000 = (((float) (GingerbreadFloatValueAnimator.this.getTime() - GingerbreadFloatValueAnimator.this.mStartTime)) * 1.0f) / ((float) GingerbreadFloatValueAnimator.this.mDuration);
                if (access$000 > 1.0f || GingerbreadFloatValueAnimator.this.mTarget.getParent() == null) {
                    access$000 = 1.0f;
                }
                GingerbreadFloatValueAnimator.this.mFraction = access$000;
                GingerbreadFloatValueAnimator.this.notifyUpdateListeners();
                if (GingerbreadFloatValueAnimator.this.mFraction >= 1.0f) {
                    GingerbreadFloatValueAnimator.this.dispatchEnd();
                } else {
                    GingerbreadFloatValueAnimator.this.mTarget.postDelayed(GingerbreadFloatValueAnimator.this.mLoopRunnable, 16);
                }
            }
        };
        /* access modifiers changed from: private */
        public long mStartTime;
        private boolean mStarted = false;
        View mTarget;
        List<AnimatorUpdateListenerCompat> mUpdateListeners = new ArrayList();

        /* access modifiers changed from: private */
        public void notifyUpdateListeners() {
            for (int size = this.mUpdateListeners.size() - 1; size >= 0; size--) {
                ((AnimatorUpdateListenerCompat) this.mUpdateListeners.get(size)).onAnimationUpdate(this);
            }
        }

        public void setTarget(View view) {
            this.mTarget = view;
        }

        public void addListener(AnimatorListenerCompat animatorListenerCompat) {
            this.mListeners.add(animatorListenerCompat);
        }

        public void setDuration(long j) {
            if (!this.mStarted) {
                this.mDuration = j;
            }
        }

        public void start() {
            if (!this.mStarted) {
                this.mStarted = true;
                dispatchStart();
                this.mFraction = 0.0f;
                this.mStartTime = getTime();
                this.mTarget.postDelayed(this.mLoopRunnable, 16);
            }
        }

        /* access modifiers changed from: private */
        public long getTime() {
            return this.mTarget.getDrawingTime();
        }

        private void dispatchStart() {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                ((AnimatorListenerCompat) this.mListeners.get(size)).onAnimationStart(this);
            }
        }

        /* access modifiers changed from: private */
        public void dispatchEnd() {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                ((AnimatorListenerCompat) this.mListeners.get(size)).onAnimationEnd(this);
            }
        }

        private void dispatchCancel() {
            for (int size = this.mListeners.size() - 1; size >= 0; size--) {
                ((AnimatorListenerCompat) this.mListeners.get(size)).onAnimationCancel(this);
            }
        }

        public void cancel() {
            if (!this.mEnded) {
                this.mEnded = true;
                if (this.mStarted) {
                    dispatchCancel();
                }
                dispatchEnd();
            }
        }

        public void addUpdateListener(AnimatorUpdateListenerCompat animatorUpdateListenerCompat) {
            this.mUpdateListeners.add(animatorUpdateListenerCompat);
        }

        public float getAnimatedFraction() {
            return this.mFraction;
        }
    }

    GingerbreadAnimatorCompatProvider() {
    }

    public ValueAnimatorCompat emptyValueAnimator() {
        return new GingerbreadFloatValueAnimator();
    }

    public void clearInterpolator(View view) {
    }
}
