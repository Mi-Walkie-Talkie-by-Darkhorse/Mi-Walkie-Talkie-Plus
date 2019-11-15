package com.amap.api.mapcore.util;

import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.CameraUpdateMessage;

/* compiled from: CameraZoomMessage */
public class ab extends CameraUpdateMessage {
    public void runCameraUpdate(GLMapState gLMapState) {
        this.zoom = gLMapState.getMapZoomer() + this.amount;
        this.zoom = ee.a(this.mapConfig, this.zoom);
        normalChange(gLMapState);
    }

    public void mergeCameraUpdateDelegate(CameraUpdateMessage cameraUpdateMessage) {
        cameraUpdateMessage.zoom += this.amount;
    }
}
