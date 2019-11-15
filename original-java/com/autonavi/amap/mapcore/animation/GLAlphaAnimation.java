package com.autonavi.amap.mapcore.animation;

public class GLAlphaAnimation extends GLAnimation {
    public float mCurAlpha = 0.0f;
    public float mFromAlpha = 0.0f;
    public float mToAlpha = 1.0f;

    public GLAlphaAnimation(float f, float f2) {
        this.mFromAlpha = f;
        this.mToAlpha = f2;
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, GLTransformation gLTransformation) {
        float f2 = this.mFromAlpha;
        this.mCurAlpha = f2 + ((this.mToAlpha - f2) * f);
        gLTransformation.alpha = (double) this.mCurAlpha;
    }
}
