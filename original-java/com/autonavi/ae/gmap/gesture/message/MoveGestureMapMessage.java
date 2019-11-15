package com.autonavi.ae.gmap.gesture.message;

public class MoveGestureMapMessage extends GestureMapMessage {
    public float mTouchDeltaX = 0.0f;
    public float mTouchDeltaY = 0.0f;

    public MoveGestureMapMessage(int i, float f, float f2) {
        super(i);
        this.mTouchDeltaX = f;
        this.mTouchDeltaY = f2;
    }

    public int getType() {
        return 0;
    }
}
