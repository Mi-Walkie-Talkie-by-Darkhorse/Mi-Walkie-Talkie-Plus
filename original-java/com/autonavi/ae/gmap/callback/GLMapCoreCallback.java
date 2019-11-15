package com.autonavi.ae.gmap.callback;

public interface GLMapCoreCallback {
    void clearException(int i);

    void onException(int i, int i2);

    void postOnUIThread(Runnable runnable);

    void postQueueEvent(Runnable runnable);

    void resetRenderTime(boolean z);

    void resetRenderTimeLong();

    void resetRenderTimeLongLong();
}
