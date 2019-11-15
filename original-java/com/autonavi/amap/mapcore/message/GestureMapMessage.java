package com.autonavi.amap.mapcore.message;

import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.ae.gmap.MapMessage;
import com.autonavi.amap.mapcore.FPoint;
import com.autonavi.amap.mapcore.IPoint;

public abstract class GestureMapMessage extends MapMessage {
    public int anchorX;
    public int anchorY;
    public int height = 0;
    public boolean isGestureScaleByMapCenter = false;
    public boolean isUseAnchor = false;
    private int state_ = 0;
    public int width = 0;

    public abstract int getType();

    public abstract void runCameraUpdate(GLMapState gLMapState);

    public GestureMapMessage(int i) {
        this.state_ = i;
    }

    public void setState(int i) {
        this.state_ = i;
    }

    public void reset() {
        this.width = 0;
        this.height = 0;
        this.state_ = 0;
        this.isGestureScaleByMapCenter = false;
        this.isUseAnchor = false;
        this.anchorX = 0;
        this.anchorY = 0;
    }

    /* access modifiers changed from: protected */
    public void win2geo(GLMapState gLMapState, int i, int i2, IPoint iPoint) {
        FPoint obtain = FPoint.obtain();
        gLMapState.win2Map(i, i2, obtain);
        gLMapState.map2Geo(obtain.x, obtain.y, iPoint);
        obtain.recycle();
    }

    public int getMapGestureState() {
        return this.state_;
    }
}
