package com.autonavi.amap.mapcore.animation;

import android.content.Context;
import android.graphics.RectF;
import android.os.Handler;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;
import com.amap.api.maps.model.animation.Animation.AnimationListener;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class GLAnimation implements Cloneable {
    public static final int ABSOLUTE = 0;
    public static final int INFINITE = -1;
    public static final int RELATIVE_TO_PARENT = 2;
    public static final int RELATIVE_TO_SELF = 1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    public static final int START_ON_FIRST_FRAME = -1;
    public static final int ZORDER_BOTTOM = -1;
    public static final int ZORDER_NORMAL = 0;
    public static final int ZORDER_TOP = 1;
    private int mBackgroundColor;
    boolean mCycleFlip = false;
    private boolean mDetachWallpaper = false;
    long mDuration = 500;
    boolean mEnded = false;
    boolean mFillAfter = false;
    boolean mFillBefore = true;
    boolean mFillEnabled = false;
    boolean mInitialized = false;
    Interpolator mInterpolator;
    AnimationListener mListener;
    private Handler mListenerHandler;
    private boolean mMore = true;
    private Runnable mOnEnd;
    private Runnable mOnRepeat;
    private Runnable mOnStart;
    private boolean mOneMoreTime = true;
    RectF mPreviousRegion = new RectF();
    GLTransformation mPreviousTransformation = new GLTransformation();
    RectF mRegion = new RectF();
    int mRepeatCount = 0;
    int mRepeatMode = 1;
    int mRepeated = 0;
    private float mScaleFactor = 1.0f;
    long mStartOffset;
    long mStartTime = -1;
    boolean mStarted = false;
    GLTransformation mTransformation = new GLTransformation();
    private int mZAdjustment;

    public GLAnimation() {
        try {
            ensureInterpolator();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public GLAnimation clone() throws CloneNotSupportedException {
        GLAnimation gLAnimation = (GLAnimation) super.clone();
        gLAnimation.mPreviousRegion = new RectF();
        gLAnimation.mRegion = new RectF();
        gLAnimation.mTransformation = new GLTransformation();
        gLAnimation.mPreviousTransformation = new GLTransformation();
        return gLAnimation;
    }

    public void reset() {
        this.mPreviousRegion.setEmpty();
        this.mPreviousTransformation.clear();
        this.mInitialized = false;
        this.mCycleFlip = false;
        this.mRepeated = 0;
        this.mMore = true;
        this.mOneMoreTime = true;
        this.mListenerHandler = null;
    }

    public void cancel() {
        if (this.mStarted && !this.mEnded) {
            fireAnimationEnd();
            this.mEnded = true;
        }
        this.mStartTime = Long.MIN_VALUE;
        this.mOneMoreTime = false;
        this.mMore = false;
    }

    public void detach() {
        if (this.mStarted && !this.mEnded) {
            this.mEnded = true;
            fireAnimationEnd();
        }
    }

    public boolean isInitialized() {
        return this.mInitialized;
    }

    public void initialize(int i, int i2, int i3, int i4) {
        reset();
        this.mInitialized = true;
    }

    public void setListenerHandler(Handler handler) {
        if (this.mListenerHandler == null) {
            this.mOnStart = new Runnable() {
                public void run() {
                    if (GLAnimation.this.mListener != null) {
                        try {
                            GLAnimation.this.mListener.onAnimationStart();
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                }
            };
            this.mOnEnd = new Runnable() {
                public void run() {
                    if (GLAnimation.this.mListener != null) {
                        try {
                            GLAnimation.this.mListener.onAnimationEnd();
                        } catch (Throwable th) {
                            ThrowableExtension.printStackTrace(th);
                        }
                    }
                }
            };
        }
        this.mListenerHandler = handler;
    }

    public void setInterpolator(Context context, int i) {
        setInterpolator(AnimationUtils.loadInterpolator(context, i));
    }

    public void setInterpolator(Interpolator interpolator) {
        this.mInterpolator = interpolator;
    }

    public void setStartOffset(long j) {
        this.mStartOffset = j;
    }

    public void setDuration(long j) {
        if (j < 0) {
            j = 0;
        }
        this.mDuration = j;
    }

    public void restrictDuration(long j) {
        if (this.mStartOffset > j) {
            this.mStartOffset = j;
            this.mDuration = 0;
            this.mRepeatCount = 0;
            return;
        }
        long j2 = this.mDuration + this.mStartOffset;
        if (j2 > j) {
            this.mDuration = j - this.mStartOffset;
            j2 = j;
        }
        if (this.mDuration <= 0) {
            this.mDuration = 0;
            this.mRepeatCount = 0;
        } else if (this.mRepeatCount < 0 || ((long) this.mRepeatCount) > j || ((long) this.mRepeatCount) * j2 > j) {
            this.mRepeatCount = ((int) (j / j2)) - 1;
            if (this.mRepeatCount < 0) {
                this.mRepeatCount = 0;
            }
        }
    }

    public void scaleCurrentDuration(float f) {
        this.mDuration = (long) (((float) this.mDuration) * f);
        this.mStartOffset = (long) (((float) this.mStartOffset) * f);
    }

    public void setStartTime(long j) {
        this.mStartTime = j;
        this.mEnded = false;
        this.mStarted = false;
        this.mCycleFlip = false;
        this.mRepeated = 0;
        this.mMore = true;
    }

    public void start() {
        setStartTime(-1);
    }

    public void startNow() {
        setStartTime(AnimationUtils.currentAnimationTimeMillis());
    }

    public void setRepeatMode(int i) {
        this.mRepeatMode = i;
    }

    public void setRepeatCount(int i) {
        if (i < 0) {
            i = -1;
        }
        this.mRepeatCount = i;
    }

    public boolean isFillEnabled() {
        return this.mFillEnabled;
    }

    public void setFillEnabled(boolean z) {
        this.mFillEnabled = z;
    }

    public void setFillBefore(boolean z) {
        this.mFillBefore = z;
    }

    public void setFillAfter(boolean z) {
        this.mFillAfter = z;
    }

    public void setZAdjustment(int i) {
        this.mZAdjustment = i;
    }

    public void setBackgroundColor(int i) {
        this.mBackgroundColor = i;
    }

    /* access modifiers changed from: protected */
    public float getScaleFactor() {
        return this.mScaleFactor;
    }

    public void setDetachWallpaper(boolean z) {
        this.mDetachWallpaper = z;
    }

    public Interpolator getInterpolator() {
        return this.mInterpolator;
    }

    public long getStartTime() {
        return this.mStartTime;
    }

    public long getDuration() {
        return this.mDuration;
    }

    public long getStartOffset() {
        return this.mStartOffset;
    }

    public int getRepeatMode() {
        return this.mRepeatMode;
    }

    public int getRepeatCount() {
        return this.mRepeatCount;
    }

    public boolean getFillBefore() {
        return this.mFillBefore;
    }

    public boolean getFillAfter() {
        return this.mFillAfter;
    }

    public int getZAdjustment() {
        return this.mZAdjustment;
    }

    public int getBackgroundColor() {
        return this.mBackgroundColor;
    }

    public boolean getDetachWallpaper() {
        return this.mDetachWallpaper;
    }

    public boolean willChangeTransformationMatrix() {
        return true;
    }

    public boolean willChangeBounds() {
        return true;
    }

    public void setAnimationListener(AnimationListener animationListener) {
        this.mListener = animationListener;
    }

    /* access modifiers changed from: protected */
    public void ensureInterpolator() {
        if (this.mInterpolator == null) {
            this.mInterpolator = new AccelerateDecelerateInterpolator();
        }
    }

    public long computeDurationHint() {
        return (getStartOffset() + getDuration()) * ((long) (getRepeatCount() + 1));
    }

    public boolean getTransformation(long j, GLTransformation gLTransformation) {
        float f;
        float f2;
        if (this.mStartTime == -1) {
            this.mStartTime = j;
        }
        long startOffset = getStartOffset();
        long j2 = this.mDuration;
        if (j2 != 0) {
            f = ((float) (j - (startOffset + this.mStartTime))) / ((float) j2);
        } else {
            f = j < this.mStartTime ? 0.0f : 1.0f;
        }
        boolean z = f >= 1.0f;
        this.mMore = !z;
        if (!this.mFillEnabled) {
            f2 = Math.max(Math.min(f, 1.0f), 0.0f);
        } else {
            f2 = f;
        }
        if ((f2 >= 0.0f || this.mFillBefore) && (f2 <= 1.0f || this.mFillAfter)) {
            if (!this.mStarted) {
                try {
                    fireAnimationStart();
                } catch (Throwable th) {
                    ThrowableExtension.printStackTrace(th);
                }
                this.mStarted = true;
            }
            if (this.mFillEnabled) {
                f2 = Math.max(Math.min(f2, 1.0f), 0.0f);
            }
            if (this.mCycleFlip) {
                f2 = 1.0f - f2;
            }
            applyTransformation(this.mInterpolator.getInterpolation(f2), gLTransformation);
        }
        if (z) {
            if (this.mRepeatCount != this.mRepeated) {
                if (this.mRepeatCount > 0) {
                    this.mRepeated++;
                }
                if (this.mRepeatMode == 2) {
                    this.mCycleFlip = !this.mCycleFlip;
                }
                this.mStartTime = -1;
                this.mMore = true;
                fireAnimationRepeat();
            } else if (!this.mEnded) {
                this.mEnded = true;
                fireAnimationEnd();
            }
        }
        if (this.mMore || !this.mOneMoreTime) {
            return this.mMore;
        }
        this.mOneMoreTime = false;
        return true;
    }

    private void fireAnimationStart() {
        if (this.mListener == null) {
            return;
        }
        if (this.mListenerHandler == null) {
            this.mListener.onAnimationStart();
        } else {
            this.mListenerHandler.postAtFrontOfQueue(this.mOnStart);
        }
    }

    private void fireAnimationRepeat() {
    }

    private void fireAnimationEnd() {
        if (this.mListener == null) {
            return;
        }
        if (this.mListenerHandler == null) {
            this.mListener.onAnimationEnd();
        } else {
            this.mListenerHandler.postAtFrontOfQueue(this.mOnEnd);
        }
    }

    public boolean getTransformation(long j, GLTransformation gLTransformation, float f) {
        this.mScaleFactor = f;
        return getTransformation(j, gLTransformation);
    }

    /* access modifiers changed from: protected */
    public boolean hasStarted() {
        return this.mStarted;
    }

    public boolean hasEnded() {
        return this.mEnded;
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, GLTransformation gLTransformation) {
    }

    /* access modifiers changed from: protected */
    public float resolveSize(int i, float f, int i2, int i3) {
        switch (i) {
            case 1:
                return f * ((float) i2);
            case 2:
                return f * ((float) i3);
            default:
                return f;
        }
    }

    public void getInvalidateRegion(int i, int i2, int i3, int i4, RectF rectF, Transformation transformation) {
        RectF rectF2 = this.mRegion;
        RectF rectF3 = this.mPreviousRegion;
        rectF.set((float) i, (float) i2, (float) i3, (float) i4);
        transformation.getMatrix().mapRect(rectF);
        rectF.inset(-1.0f, -1.0f);
        rectF2.set(rectF);
        rectF.union(rectF3);
        rectF3.set(rectF2);
    }

    public void initializeInvalidateRegion(int i, int i2, int i3, int i4) {
        RectF rectF = this.mPreviousRegion;
        rectF.set((float) i, (float) i2, (float) i3, (float) i4);
        rectF.inset(-1.0f, -1.0f);
        if (this.mFillBefore) {
            applyTransformation(this.mInterpolator.getInterpolation(0.0f), this.mPreviousTransformation);
        }
    }

    public boolean hasAlpha() {
        return false;
    }
}
