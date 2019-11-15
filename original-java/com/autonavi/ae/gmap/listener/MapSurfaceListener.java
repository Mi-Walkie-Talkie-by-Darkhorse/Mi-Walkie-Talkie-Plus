package com.autonavi.ae.gmap.listener;

public interface MapSurfaceListener {
    void onDrawFrameFirst(int i);

    void onSurfaceChanged(int i, int i2, int i3);

    void onSurfaceCreated(int i);

    void onSurfaceDestroy(int i);
}
