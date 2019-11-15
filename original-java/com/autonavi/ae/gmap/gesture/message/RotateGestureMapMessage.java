package com.autonavi.ae.gmap.gesture.message;

public class RotateGestureMapMessage extends GestureMapMessage {
    public float mAngleDelta = 0.0f;
    public int mPivotX = 0;
    public int mPivotY = 0;

    public RotateGestureMapMessage(int i, float f, int i2, int i3) {
        super(i);
        this.mAngleDelta = f;
        this.mPivotX = i2;
        this.mPivotY = i3;
    }

    public int getType() {
        return 2;
    }
}
