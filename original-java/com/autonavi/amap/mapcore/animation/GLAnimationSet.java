package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.animation.Animation;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import java.util.ArrayList;
import java.util.List;

public class GLAnimationSet extends GLAnimation {
    private static final int PROPERTY_CHANGE_BOUNDS_MASK = 128;
    private static final int PROPERTY_DURATION_MASK = 32;
    private static final int PROPERTY_FILL_AFTER_MASK = 1;
    private static final int PROPERTY_FILL_BEFORE_MASK = 2;
    private static final int PROPERTY_MORPH_MATRIX_MASK = 64;
    private static final int PROPERTY_REPEAT_MODE_MASK = 4;
    private static final int PROPERTY_SHARE_INTERPOLATOR_MASK = 16;
    private static final int PROPERTY_START_OFFSET_MASK = 8;
    private ArrayList<GLAnimation> mAnimations = new ArrayList<>();
    private boolean mDirty;
    private int mFlags = 0;
    private boolean mHasAlpha;
    private long mLastEnd;
    private long[] mStoredOffsets;
    private GLTransformation mTempTransformation = new GLTransformation();

    public GLAnimationSet(boolean z) {
        setFlag(16, z);
        init();
    }

    public GLAnimationSet clone() throws CloneNotSupportedException {
        GLAnimationSet gLAnimationSet = (GLAnimationSet) super.clone();
        gLAnimationSet.mTempTransformation = new GLTransformation();
        gLAnimationSet.mAnimations = new ArrayList<>();
        int size = this.mAnimations.size();
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        for (int i = 0; i < size; i++) {
            gLAnimationSet.mAnimations.add(((GLAnimation) arrayList.get(i)).clone());
        }
        return gLAnimationSet;
    }

    private void setFlag(int i, boolean z) {
        if (z) {
            this.mFlags |= i;
        } else {
            this.mFlags &= i ^ -1;
        }
    }

    private void init() {
        this.mStartTime = 0;
    }

    public void setFillAfter(boolean z) {
        this.mFlags |= 1;
        super.setFillAfter(z);
    }

    public void setFillBefore(boolean z) {
        this.mFlags |= 2;
        super.setFillBefore(z);
    }

    public void setRepeatMode(int i) {
        this.mFlags |= 4;
        super.setRepeatMode(i);
    }

    public void setStartOffset(long j) {
        this.mFlags |= 8;
        super.setStartOffset(j);
    }

    public boolean hasAlpha() {
        if (this.mDirty) {
            this.mHasAlpha = false;
            this.mDirty = false;
            int size = this.mAnimations.size();
            ArrayList<GLAnimation> arrayList = this.mAnimations;
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                } else if (((GLAnimation) arrayList.get(i)).hasAlpha()) {
                    this.mHasAlpha = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return this.mHasAlpha;
    }

    public void setDuration(long j) {
        this.mFlags |= 32;
        super.setDuration(j);
        this.mLastEnd = this.mStartOffset + this.mDuration;
    }

    public void addAnimation(Animation animation) {
        boolean z = false;
        this.mAnimations.add(animation.glAnimation);
        if (((this.mFlags & 64) == 0) && animation.glAnimation.willChangeTransformationMatrix()) {
            this.mFlags |= 64;
        }
        if ((this.mFlags & 128) == 0) {
            z = true;
        }
        if (z && animation.glAnimation.willChangeBounds()) {
            this.mFlags |= 128;
        }
        if ((this.mFlags & 32) == 32) {
            this.mLastEnd = this.mStartOffset + this.mDuration;
        } else if (this.mAnimations.size() == 1) {
            this.mDuration = animation.glAnimation.getStartOffset() + animation.glAnimation.getDuration();
            this.mLastEnd = this.mStartOffset + this.mDuration;
        } else {
            this.mLastEnd = Math.max(this.mLastEnd, animation.glAnimation.getStartOffset() + animation.glAnimation.getDuration());
            this.mDuration = this.mLastEnd - this.mStartOffset;
        }
        this.mDirty = true;
    }

    public void setStartTime(long j) {
        super.setStartTime(j);
        int size = this.mAnimations.size();
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        for (int i = 0; i < size; i++) {
            ((GLAnimation) arrayList.get(i)).setStartTime(j);
        }
    }

    public long getStartTime() {
        long j = FileTracerConfig.FOREVER;
        int size = this.mAnimations.size();
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        for (int i = 0; i < size; i++) {
            j = Math.min(j, ((GLAnimation) arrayList.get(i)).getStartTime());
        }
        return j;
    }

    public void restrictDuration(long j) {
        super.restrictDuration(j);
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((GLAnimation) arrayList.get(i)).restrictDuration(j);
        }
    }

    public long getDuration() {
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        int size = arrayList.size();
        long j = 0;
        if ((this.mFlags & 32) == 32) {
            return this.mDuration;
        }
        for (int i = 0; i < size; i++) {
            j = Math.max(j, ((GLAnimation) arrayList.get(i)).getDuration());
        }
        return j;
    }

    public long computeDurationHint() {
        long j = 0;
        int size = this.mAnimations.size();
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        int i = size - 1;
        while (i >= 0) {
            long computeDurationHint = ((GLAnimation) arrayList.get(i)).computeDurationHint();
            if (computeDurationHint <= j) {
                computeDurationHint = j;
            }
            i--;
            j = computeDurationHint;
        }
        return j;
    }

    public boolean getTransformation(long j, GLTransformation gLTransformation) {
        boolean z;
        int size = this.mAnimations.size();
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        GLTransformation gLTransformation2 = this.mTempTransformation;
        gLTransformation.clear();
        int i = size - 1;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = false;
        while (i >= 0) {
            GLAnimation gLAnimation = (GLAnimation) arrayList.get(i);
            gLTransformation2.clear();
            if (gLAnimation.getTransformation(j, gLTransformation, getScaleFactor()) || z4) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (z3 || gLAnimation.hasStarted()) {
                z3 = true;
            } else {
                z3 = false;
            }
            if (!gLAnimation.hasEnded() || !z2) {
                z = false;
            } else {
                z = true;
            }
            i--;
            z2 = z;
        }
        if (z3) {
            try {
                if (!this.mStarted) {
                    if (this.mListener != null) {
                        this.mListener.onAnimationStart();
                    }
                    this.mStarted = true;
                }
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        if (z2 != this.mEnded) {
            if (this.mListener != null) {
                this.mListener.onAnimationEnd();
            }
            this.mEnded = z2;
        }
        return z4;
    }

    public void scaleCurrentDuration(float f) {
        ArrayList<GLAnimation> arrayList = this.mAnimations;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((GLAnimation) arrayList.get(i)).scaleCurrentDuration(f);
        }
    }

    public void reset() {
        super.reset();
        restoreChildrenStartOffset();
    }

    /* access modifiers changed from: 0000 */
    public void restoreChildrenStartOffset() {
        long[] jArr = this.mStoredOffsets;
        if (jArr != null) {
            ArrayList<GLAnimation> arrayList = this.mAnimations;
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((GLAnimation) arrayList.get(i)).setStartOffset(jArr[i]);
            }
        }
    }

    public List<GLAnimation> getAnimations() {
        return this.mAnimations;
    }

    public boolean willChangeTransformationMatrix() {
        return (this.mFlags & 64) == 64;
    }

    public boolean willChangeBounds() {
        return (this.mFlags & 128) == 128;
    }

    public void cleanAnimation() {
        this.mAnimations.clear();
    }
}
