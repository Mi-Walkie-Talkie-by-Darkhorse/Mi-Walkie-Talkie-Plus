package com.autonavi.amap.mapcore.message;

import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.ae.gmap.maploader.Pools.SynchronizedPool;
import com.autonavi.amap.mapcore.IPoint;

public class RotateGestureMapMessage extends GestureMapMessage {
    private static final SynchronizedPool<RotateGestureMapMessage> mPool = new SynchronizedPool<>(256);
    public float angle_delta = 0.0f;
    public int pivot_x = 0;
    public int pivot_y = 0;

    public static RotateGestureMapMessage obtain(int i, float f, int i2, int i3) {
        RotateGestureMapMessage rotateGestureMapMessage = (RotateGestureMapMessage) mPool.acquire();
        if (rotateGestureMapMessage == null) {
            return new RotateGestureMapMessage(i, f, i2, i3);
        }
        rotateGestureMapMessage.reset();
        rotateGestureMapMessage.setParams(i, f, i2, i3);
        return rotateGestureMapMessage;
    }

    public void recycle() {
        mPool.release(this);
    }

    public static void destory() {
        mPool.destory();
    }

    private void setParams(int i, float f, int i2, int i3) {
        setState(i);
        this.angle_delta = f;
        this.pivot_x = i2;
        this.pivot_y = i3;
    }

    public RotateGestureMapMessage(int i, float f, int i2, int i3) {
        super(i);
        setParams(i, f, i2, i3);
        this.angle_delta = f;
        this.pivot_x = i2;
        this.pivot_y = i3;
    }

    public int getType() {
        return 2;
    }

    public void runCameraUpdate(GLMapState gLMapState) {
        int i;
        int i2;
        IPoint iPoint;
        IPoint iPoint2 = null;
        float mapAngle = gLMapState.getMapAngle() + this.angle_delta;
        if (this.isGestureScaleByMapCenter) {
            gLMapState.setMapAngle(mapAngle);
            gLMapState.recalculate();
            return;
        }
        int i3 = this.pivot_x;
        int i4 = this.pivot_y;
        if (this.isUseAnchor) {
            i = this.anchorX;
            i2 = this.anchorY;
        } else {
            i = i3;
            i2 = i4;
        }
        if (i > 0 || i2 > 0) {
            iPoint = IPoint.obtain();
            iPoint2 = IPoint.obtain();
            win2geo(gLMapState, i, i2, iPoint);
            gLMapState.setMapGeoCenter(iPoint.x, iPoint.y);
        } else {
            iPoint = null;
        }
        gLMapState.setMapAngle(mapAngle);
        gLMapState.recalculate();
        if (i > 0 || i2 > 0) {
            win2geo(gLMapState, i, i2, iPoint2);
            gLMapState.setMapGeoCenter((iPoint.x * 2) - iPoint2.x, (iPoint.y * 2) - iPoint2.y);
            gLMapState.recalculate();
        }
        if (iPoint != null) {
            iPoint.recycle();
        }
        if (iPoint2 != null) {
            iPoint2.recycle();
        }
    }
}
