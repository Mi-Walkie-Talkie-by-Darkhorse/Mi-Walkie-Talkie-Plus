package com.amap.api.maps;

import com.autonavi.amap.mapcore.CameraUpdateMessage;

public final class CameraUpdate {
    CameraUpdateMessage a;

    CameraUpdate(CameraUpdateMessage cameraUpdateMessage) {
        this.a = cameraUpdateMessage;
    }

    public CameraUpdateMessage getCameraUpdateFactoryDelegate() {
        return this.a;
    }
}
