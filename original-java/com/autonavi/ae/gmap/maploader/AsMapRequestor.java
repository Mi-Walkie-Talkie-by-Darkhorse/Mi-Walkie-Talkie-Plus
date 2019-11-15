package com.autonavi.ae.gmap.maploader;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;

/* compiled from: ConnectionManager */
class AsMapRequestor implements Runnable {
    public BaseMapLoader mMapLoader = null;

    public AsMapRequestor(BaseMapLoader baseMapLoader) {
        this.mMapLoader = baseMapLoader;
    }

    public void run() {
        try {
            this.mMapLoader.doRequest();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }
}
