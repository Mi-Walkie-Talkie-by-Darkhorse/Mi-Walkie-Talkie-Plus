package com.amap.api.mapcore.util;

import android.graphics.Point;
import com.autonavi.ae.gmap.GLMapState;
import com.autonavi.amap.mapcore.CameraUpdateMessage;

/* compiled from: CameraScrollMessage */
public class z extends CameraUpdateMessage {
    public void runCameraUpdate(GLMapState gLMapState) {
        float f = this.xPixel;
        float f2 = f + (((float) this.width) / 2.0f);
        float f3 = this.yPixel + (((float) this.height) / 2.0f);
        Point point = new Point();
        a(gLMapState, (int) f2, (int) f3, point);
        gLMapState.setMapGeoCenter(point.x, point.y);
    }

    public void mergeCameraUpdateDelegate(CameraUpdateMessage cameraUpdateMessage) {
    }

    public void a(GLMapState gLMapState, int i, int i2, Point point) {
        gLMapState.screenToP20Point((float) i, (float) i2, point);
    }
}
