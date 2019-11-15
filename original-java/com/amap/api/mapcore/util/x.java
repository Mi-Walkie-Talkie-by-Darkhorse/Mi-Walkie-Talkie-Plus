package com.amap.api.mapcore.util;

import android.util.Pair;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.CameraUpdateMessage;
import com.autonavi.amap.mapcore.IPoint;

/* compiled from: CameraBoundsMessage */
public class x extends CameraUpdateMessage {
    public void runCameraUpdate(GLMapState gLMapState) {
        Pair a = ee.a((CameraUpdateMessage) this, gLMapState, this.mapConfig);
        gLMapState.setMapZoomer(((Float) a.first).floatValue());
        gLMapState.setMapGeoCenter(((IPoint) a.second).x, ((IPoint) a.second).y);
        gLMapState.setCameraDegree(0.0f);
        gLMapState.setMapAngle(0.0f);
    }

    public void mergeCameraUpdateDelegate(CameraUpdateMessage cameraUpdateMessage) {
    }
}
