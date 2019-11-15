package com.autonavi.ae.gmap.maploader;

import com.autonavi.ae.gmap.maploader.Pools.SynchronizedPool;

public class ProcessingTile {
    private static final SynchronizedPool<ProcessingTile> mPool = new SynchronizedPool<>(30);
    public long mCreateTime = 0;
    public String mKeyName;

    public static ProcessingTile obtain(String str) {
        ProcessingTile processingTile = (ProcessingTile) mPool.acquire();
        if (processingTile == null) {
            return new ProcessingTile(str);
        }
        processingTile.setParams(str);
        return processingTile;
    }

    public void recycle() {
        this.mKeyName = null;
        this.mCreateTime = 0;
        mPool.release(this);
    }

    public ProcessingTile(String str) {
        setParams(str);
    }

    private void setParams(String str) {
        this.mKeyName = str;
        this.mCreateTime = System.currentTimeMillis() / 1000;
    }
}
