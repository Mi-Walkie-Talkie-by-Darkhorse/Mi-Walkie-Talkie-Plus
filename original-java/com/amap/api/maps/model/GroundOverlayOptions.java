package com.amap.api.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;

public final class GroundOverlayOptions implements Parcelable {
    public static final GroundOverlayOptionsCreator CREATOR = new GroundOverlayOptionsCreator();
    public static final float NO_DIMENSION = -1.0f;
    private final int a;
    private BitmapDescriptor b;
    private LatLng c;
    private float d;
    private float e;
    private LatLngBounds f;
    private float g;
    private float h;
    private boolean i;
    private float j;
    private float k;
    private float l;

    GroundOverlayOptions(int i2, IBinder iBinder, LatLng latLng, float f2, float f3, LatLngBounds latLngBounds, float f4, float f5, boolean z, float f6, float f7, float f8) {
        this.h = 0.0f;
        this.i = true;
        this.j = 0.0f;
        this.k = 0.5f;
        this.l = 0.5f;
        this.a = i2;
        this.b = BitmapDescriptorFactory.fromBitmap(null);
        this.c = latLng;
        this.d = f2;
        this.e = f3;
        this.f = latLngBounds;
        this.g = f4;
        this.h = f5;
        this.i = z;
        this.j = f6;
        this.k = f7;
        this.l = f8;
    }

    public GroundOverlayOptions() {
        this.h = 0.0f;
        this.i = true;
        this.j = 0.0f;
        this.k = 0.5f;
        this.l = 0.5f;
        this.a = 1;
    }

    public GroundOverlayOptions image(BitmapDescriptor bitmapDescriptor) {
        this.b = bitmapDescriptor;
        return this;
    }

    public GroundOverlayOptions anchor(float f2, float f3) {
        this.k = f2;
        this.l = f3;
        return this;
    }

    public GroundOverlayOptions position(LatLng latLng, float f2) {
        if (this.f != null) {
            Log.w("GroundOverlayOptions", "Position has already been set using positionFromBounds");
        }
        if (latLng == null) {
            Log.w("GroundOverlayOptions", "Location must be specified");
        }
        if (f2 <= 0.0f) {
            Log.w("GroundOverlayOptions", "Width must be non-negative");
        }
        return a(latLng, f2, f2);
    }

    public GroundOverlayOptions position(LatLng latLng, float f2, float f3) {
        if (this.f != null) {
            Log.w("GroundOverlayOptions", "Position has already been set using positionFromBounds");
        }
        if (latLng == null) {
            Log.w("GroundOverlayOptions", "Location must be specified");
        }
        if (f2 <= 0.0f || f3 <= 0.0f) {
            Log.w("GroundOverlayOptions", "Width and Height must be non-negative");
        }
        return a(latLng, f2, f3);
    }

    private GroundOverlayOptions a(LatLng latLng, float f2, float f3) {
        this.c = latLng;
        this.d = f2;
        this.e = f3;
        return this;
    }

    public GroundOverlayOptions positionFromBounds(LatLngBounds latLngBounds) {
        if (this.c != null) {
            Log.w("GroundOverlayOptions", "Position has already been set using position: " + this.c);
        }
        this.f = latLngBounds;
        return this;
    }

    public GroundOverlayOptions bearing(float f2) {
        this.g = f2;
        return this;
    }

    public GroundOverlayOptions zIndex(float f2) {
        this.h = f2;
        return this;
    }

    public GroundOverlayOptions visible(boolean z) {
        this.i = z;
        return this;
    }

    public GroundOverlayOptions transparency(float f2) {
        if (f2 < 0.0f) {
            Log.w("GroundOverlayOptions", "Transparency must be in the range [0..1]");
            f2 = 0.0f;
        }
        this.j = f2;
        return this;
    }

    public BitmapDescriptor getImage() {
        return this.b;
    }

    public LatLng getLocation() {
        return this.c;
    }

    public float getWidth() {
        return this.d;
    }

    public float getHeight() {
        return this.e;
    }

    public LatLngBounds getBounds() {
        return this.f;
    }

    public float getBearing() {
        return this.g;
    }

    public float getZIndex() {
        return this.h;
    }

    public float getTransparency() {
        return this.j;
    }

    public float getAnchorU() {
        return this.k;
    }

    public float getAnchorV() {
        return this.l;
    }

    public boolean isVisible() {
        return this.i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeInt(this.a);
        parcel.writeParcelable(this.b, i2);
        parcel.writeParcelable(this.c, i2);
        parcel.writeFloat(this.d);
        parcel.writeFloat(this.e);
        parcel.writeParcelable(this.f, i2);
        parcel.writeFloat(this.g);
        parcel.writeFloat(this.h);
        parcel.writeByte((byte) (this.i ? 1 : 0));
        parcel.writeFloat(this.j);
        parcel.writeFloat(this.k);
        parcel.writeFloat(this.l);
    }
}
