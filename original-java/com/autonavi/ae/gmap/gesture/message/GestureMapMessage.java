package com.autonavi.ae.gmap.gesture.message;

import com.autonavi.ae.gmap.MapMessage;

public abstract class GestureMapMessage extends MapMessage {
    private int state_ = 0;

    public GestureMapMessage(int i) {
        this.state_ = i;
    }

    public int getMapGestureState() {
        return this.state_;
    }
}
