package com.autonavi.ae.gmap.utils;

import com.autonavi.ae.gmap.gloverlay.BaseMapOverlay;
import com.autonavi.ae.gmap.gloverlay.GLOverlayBundle;

public class GLStateInstance {
    private int mEngineID = 0;
    public GLOverlayBundle<BaseMapOverlay<?, ?>> mOverlayBundle = null;
    private long mStateInstance = 0;

    public GLStateInstance(int i, long j) {
        this.mEngineID = i;
        this.mStateInstance = j;
    }

    public long getStateInstance() {
        return this.mStateInstance;
    }

    public int getEngineID() {
        return this.mEngineID;
    }
}
