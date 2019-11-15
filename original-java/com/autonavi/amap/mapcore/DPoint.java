package com.autonavi.amap.mapcore;

import com.autonavi.ae.gmap.maploader.Pools.SynchronizedPool;

public class DPoint {
    private static final SynchronizedPool<DPoint> mPool = new SynchronizedPool<>(32);
    public double x;
    public double y;

    public static DPoint obtain() {
        DPoint dPoint = (DPoint) mPool.acquire();
        if (dPoint == null) {
            return new DPoint();
        }
        dPoint.set(0.0d, 0.0d);
        return dPoint;
    }

    public static DPoint obtain(double d, double d2) {
        DPoint dPoint = (DPoint) mPool.acquire();
        if (dPoint == null) {
            return new DPoint(d, d2);
        }
        dPoint.set(d, d2);
        return dPoint;
    }

    public void recycle() {
        mPool.release(this);
    }

    public DPoint() {
    }

    public DPoint(double d, double d2) {
        this.x = d;
        this.y = d2;
    }

    private void set(double d, double d2) {
        this.x = d;
        this.y = d2;
    }
}
