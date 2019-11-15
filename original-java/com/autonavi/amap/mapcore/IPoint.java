package com.autonavi.amap.mapcore;

import android.graphics.Point;
import com.autonavi.ae.gmap.maploader.Pools.SynchronizedPool;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

public class IPoint extends Point implements Cloneable {
    private static final SynchronizedPool<IPoint> mPool = new SynchronizedPool<>(32);

    public static IPoint obtain() {
        IPoint iPoint = (IPoint) mPool.acquire();
        if (iPoint == null) {
            return new IPoint();
        }
        iPoint.set(0, 0);
        return iPoint;
    }

    public static IPoint obtain(int i, int i2) {
        IPoint iPoint = (IPoint) mPool.acquire();
        if (iPoint == null) {
            return new IPoint(i, i2);
        }
        iPoint.set(i, i2);
        return iPoint;
    }

    public void recycle() {
        mPool.release(this);
    }

    public IPoint() {
    }

    public IPoint(int i, int i2) {
        this.x = i;
        this.y = i2;
    }

    public Object clone() {
        try {
            return (IPoint) super.clone();
        } catch (CloneNotSupportedException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
