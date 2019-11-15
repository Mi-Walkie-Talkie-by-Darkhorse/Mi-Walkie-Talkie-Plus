package com.autonavi.amap.mapcore.animation;

public class GLScaleAnimation extends GLAnimation {
    private float mFromX;
    private int mFromXData = 0;
    private float mFromY;
    private int mFromYData = 0;
    private float mPivotX;
    private float mPivotY;
    private float mToX;
    private int mToXData = 0;
    private float mToY;
    private int mToYData = 0;

    public GLScaleAnimation(float f, float f2, float f3, float f4) {
        this.mFromX = f;
        this.mToX = f2;
        this.mFromY = f3;
        this.mToY = f4;
        this.mPivotX = 0.0f;
        this.mPivotY = 0.0f;
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, GLTransformation gLTransformation) {
        float f2;
        float f3 = 1.0f;
        getScaleFactor();
        if (this.mFromX == 1.0f && this.mToX == 1.0f) {
            f2 = 1.0f;
        } else {
            f2 = this.mFromX + ((this.mToX - this.mFromX) * f);
        }
        if (!(this.mFromY == 1.0f && this.mToY == 1.0f)) {
            f3 = this.mFromY + ((this.mToY - this.mFromY) * f);
        }
        if (this.mPivotX == 0.0f && this.mPivotY == 0.0f) {
            gLTransformation.scale_x = (double) f2;
            gLTransformation.scale_y = (double) f3;
            return;
        }
        gLTransformation.scale_x = (double) f2;
        gLTransformation.scale_y = (double) f3;
    }
}
