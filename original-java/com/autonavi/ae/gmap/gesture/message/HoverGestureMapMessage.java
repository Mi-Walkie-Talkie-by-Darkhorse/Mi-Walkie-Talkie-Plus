package com.autonavi.ae.gmap.gesture.message;

public class HoverGestureMapMessage extends GestureMapMessage {
    public float mAngleDelta = 0.0f;

    public HoverGestureMapMessage(int i, float f) {
        super(i);
        this.mAngleDelta = f;
    }

    public int getType() {
        return 3;
    }
}
