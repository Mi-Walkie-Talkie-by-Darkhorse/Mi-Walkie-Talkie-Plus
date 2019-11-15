package com.autonavi.amap.mapcore.animation;

import com.amap.api.maps.model.LatLng;

public class GLTranslateAnimation extends GLAnimation {
    public double mCurXDelta = 0.0d;
    public double mCurYDelta = 0.0d;
    public double mFromXDelta = 0.0d;
    public double mFromYDelta = 0.0d;
    public double mToXDelta = 0.0d;
    public double mToYDelta = 0.0d;

    public GLTranslateAnimation(LatLng latLng) {
        this.mToXDelta = latLng.longitude;
        this.mToYDelta = latLng.latitude;
    }

    public void setFromPoint(LatLng latLng) {
        this.mFromXDelta = latLng.longitude;
        this.mFromYDelta = latLng.latitude;
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, GLTransformation gLTransformation) {
        this.mCurXDelta = this.mFromXDelta;
        this.mCurYDelta = this.mFromYDelta;
        if (this.mFromXDelta != this.mToXDelta) {
            this.mCurXDelta = this.mFromXDelta + ((this.mToXDelta - this.mFromXDelta) * ((double) f));
        }
        if (this.mFromYDelta != this.mToYDelta) {
            this.mCurYDelta = this.mFromYDelta + ((this.mToYDelta - this.mFromYDelta) * ((double) f));
        }
        gLTransformation.x = this.mCurXDelta;
        gLTransformation.y = this.mCurYDelta;
    }
}
