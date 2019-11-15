package com.amap.api.maps.model;

public class MultiPointOverlayOptions {
    private BitmapDescriptor a;
    private float b = 0.5f;
    private float c = 0.5f;

    public MultiPointOverlayOptions anchor(float f, float f2) {
        this.b = f;
        this.c = f2;
        return this;
    }

    public float getAnchorU() {
        return this.b;
    }

    public float getAnchorV() {
        return this.c;
    }

    public MultiPointOverlayOptions icon(BitmapDescriptor bitmapDescriptor) {
        this.a = bitmapDescriptor;
        return this;
    }

    public BitmapDescriptor getIcon() {
        return this.a;
    }
}
