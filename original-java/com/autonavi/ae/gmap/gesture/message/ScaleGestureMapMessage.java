package com.autonavi.ae.gmap.gesture.message;

public class ScaleGestureMapMessage extends GestureMapMessage {
    public int mPivotX = 0;
    public int mPivotY = 0;
    public float mScaleDelta = 0.0f;

    public ScaleGestureMapMessage(int i, float f, int i2, int i3) {
        super(i);
        this.mScaleDelta = f;
        this.mPivotX = i2;
        this.mPivotY = i3;
    }

    public int getType() {
        return 1;
    }
}
