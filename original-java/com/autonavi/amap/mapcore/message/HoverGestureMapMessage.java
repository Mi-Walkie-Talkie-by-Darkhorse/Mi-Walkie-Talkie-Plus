package com.autonavi.amap.mapcore.message;

import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.ae.gmap.maploader.Pools.SynchronizedPool;

public class HoverGestureMapMessage extends GestureMapMessage {
    private static final SynchronizedPool<HoverGestureMapMessage> mPool = new SynchronizedPool<>(256);
    public float angle_delta = 0.0f;

    public static HoverGestureMapMessage obtain(int i, float f) {
        HoverGestureMapMessage hoverGestureMapMessage = (HoverGestureMapMessage) mPool.acquire();
        if (hoverGestureMapMessage == null) {
            hoverGestureMapMessage = new HoverGestureMapMessage(i, f);
        } else {
            hoverGestureMapMessage.reset();
        }
        hoverGestureMapMessage.setParams(i, f);
        return hoverGestureMapMessage;
    }

    public void recycle() {
        mPool.release(this);
    }

    public static void destory() {
        mPool.destory();
    }

    private void setParams(int i, float f) {
        setState(i);
        this.angle_delta = f;
    }

    public HoverGestureMapMessage(int i, float f) {
        super(i);
        this.angle_delta = f;
    }

    public int getType() {
        return 3;
    }

    public void runCameraUpdate(GLMapState gLMapState) {
        float f = 0.0f;
        float cameraHeaderAngle = gLMapState.getCameraHeaderAngle() + this.angle_delta;
        if (cameraHeaderAngle >= 0.0f) {
            if (cameraHeaderAngle > 65.0f) {
                f = 65.0f;
            } else if (gLMapState.getCameraHeaderAngle() <= 40.0f || cameraHeaderAngle <= 40.0f || gLMapState.getCameraHeaderAngle() <= cameraHeaderAngle) {
                f = cameraHeaderAngle;
            } else {
                f = 40.0f;
            }
        }
        gLMapState.setCameraDegree(f);
        gLMapState.recalculate();
    }
}
