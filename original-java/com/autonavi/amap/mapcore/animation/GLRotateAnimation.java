package com.autonavi.amap.mapcore.animation;

public class GLRotateAnimation extends GLAnimation {
    public float mCurDegrees = 0.0f;
    public float mFromDegrees = 0.0f;
    private float mPivotX;
    private float mPivotXValue = 0.0f;
    private float mPivotY;
    private float mPivotYValue = 0.0f;
    public float mToDegrees = 1.0f;

    public GLRotateAnimation(float f, float f2, float f3, float f4, float f5) {
        this.mFromDegrees = f;
        this.mToDegrees = f2;
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, GLTransformation gLTransformation) {
        float f2 = this.mFromDegrees + ((this.mToDegrees - this.mFromDegrees) * f);
        getScaleFactor();
        this.mCurDegrees = f2;
        if (this.mPivotX == 0.0f && this.mPivotY == 0.0f) {
            gLTransformation.rotate = (double) f2;
        } else {
            gLTransformation.rotate = (double) f2;
        }
    }
}
