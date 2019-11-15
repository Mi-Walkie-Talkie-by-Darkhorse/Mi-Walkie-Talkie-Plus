package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.LatLng;

public class GLEmergeAnimation extends GLAnimation {
    public LatLng mStartPoint;

    public GLEmergeAnimation(LatLng latLng) {
        this.mStartPoint = latLng;
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, GLTransformation gLTransformation) {
    }
}
