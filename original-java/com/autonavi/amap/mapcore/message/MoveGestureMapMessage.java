package com.autonavi.amap.mapcore.message;

import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.ae.gmap.maploader.Pools.SynchronizedPool;
import com.autonavi.amap.mapcore.FPoint;

public class MoveGestureMapMessage extends GestureMapMessage {
    private static final SynchronizedPool<MoveGestureMapMessage> mPool = new SynchronizedPool<>(1024);
    static int newCount = 0;
    public float touch_delta_x = 0.0f;
    public float touch_delta_y = 0.0f;

    public static synchronized MoveGestureMapMessage obtain(int i, float f, float f2) {
        MoveGestureMapMessage moveGestureMapMessage;
        synchronized (MoveGestureMapMessage.class) {
            moveGestureMapMessage = (MoveGestureMapMessage) mPool.acquire();
            if (moveGestureMapMessage == null) {
                moveGestureMapMessage = new MoveGestureMapMessage(i, f, f2);
            } else {
                moveGestureMapMessage.reset();
                moveGestureMapMessage.setParams(i, f, f2);
            }
        }
        return moveGestureMapMessage;
    }

    public void recycle() {
        mPool.release(this);
    }

    public static void destory() {
        mPool.destory();
    }

    private void setParams(int i, float f, float f2) {
        setState(i);
        this.touch_delta_x = f;
        this.touch_delta_y = f2;
    }

    public MoveGestureMapMessage(int i, float f, float f2) {
        super(i);
        this.touch_delta_x = f;
        this.touch_delta_y = f2;
        newCount++;
    }

    public int getType() {
        return 0;
    }

    public void runCameraUpdate(GLMapState gLMapState) {
        float f = (float) (this.width >> 1);
        int i = (int) (f - ((float) ((int) this.touch_delta_x)));
        int i2 = (int) (((float) (this.height >> 1)) - ((float) ((int) this.touch_delta_y)));
        FPoint obtain = FPoint.obtain();
        gLMapState.win2Map(i, i2, obtain);
        gLMapState.setMapGlCenter(obtain.x, obtain.y);
        gLMapState.recalculate();
        obtain.recycle();
    }
}
