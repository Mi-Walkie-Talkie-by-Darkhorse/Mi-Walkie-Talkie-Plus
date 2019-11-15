package com.autonavi.ae.gmap.gloverlay;

import android.content.Context;
import android.graphics.Bitmap;
import com.autonavi.amap.mapcore.interfaces.IAMap;

public class BaseRouteOverlay extends BaseMapOverlay<GLRouteOverlay, Object> {
    public BaseRouteOverlay(int i, Context context, IAMap iAMap) {
        super(i, context, iAMap);
    }

    /* access modifiers changed from: protected */
    public void iniGLOverlay() {
        this.mGLOverlay = new GLRouteOverlay(this.mEngineID, this.mMapView, hashCode());
    }

    public void addItem(Object obj) {
    }

    public void resumeMarker(Bitmap bitmap) {
    }

    public void addRouteItem(int i, GLRouteProperty[] gLRoutePropertyArr, boolean z, long j, int i2) {
        if (this.mGLOverlay != null && ((GLRouteOverlay) this.mGLOverlay).getNativeInstatnce() != 0) {
            ((GLRouteOverlay) this.mGLOverlay).addRouteItem(i, gLRoutePropertyArr, z, j, i2, true);
        }
    }

    public void removeRouteName() {
        if (this.mGLOverlay != null && ((GLRouteOverlay) this.mGLOverlay).getNativeInstatnce() != 0) {
            ((GLRouteOverlay) this.mGLOverlay).removeRouteName(true);
        }
    }

    public void remove() {
        setVisible(false);
        releaseInstance();
    }
}
