package com.amap.api.maps.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;

public final class ArcOptions implements Parcelable {
    public static final ArcOptionsCreator CREATOR = new ArcOptionsCreator();
    String a;
    private LatLng b;
    private LatLng c;
    private LatLng d;
    private float e = 10.0f;
    private int f = ViewCompat.MEASURED_STATE_MASK;
    private float g = 0.0f;
    private boolean h = true;

    public void writeToParcel(Parcel parcel, int i) {
        Bundle bundle = new Bundle();
        if (this.b != null) {
            bundle.putDouble("startlat", this.b.latitude);
            bundle.putDouble("startlng", this.b.longitude);
        }
        if (this.c != null) {
            bundle.putDouble("passedlat", this.c.latitude);
            bundle.putDouble("passedlng", this.c.longitude);
        }
        if (this.d != null) {
            bundle.putDouble("endlat", this.d.latitude);
            bundle.putDouble("endlng", this.d.longitude);
        }
        parcel.writeBundle(bundle);
        parcel.writeFloat(this.e);
        parcel.writeInt(this.f);
        parcel.writeFloat(this.g);
        parcel.writeByte((byte) (this.h ? 1 : 0));
        parcel.writeString(this.a);
    }

    public int describeContents() {
        return 0;
    }

    public ArcOptions point(LatLng latLng, LatLng latLng2, LatLng latLng3) {
        this.b = latLng;
        this.c = latLng2;
        this.d = latLng3;
        return this;
    }

    public ArcOptions strokeWidth(float f2) {
        this.e = f2;
        return this;
    }

    public ArcOptions strokeColor(int i) {
        this.f = i;
        return this;
    }

    public ArcOptions zIndex(float f2) {
        this.g = f2;
        return this;
    }

    public ArcOptions visible(boolean z) {
        this.h = z;
        return this;
    }

    public float getStrokeWidth() {
        return this.e;
    }

    public int getStrokeColor() {
        return this.f;
    }

    public float getZIndex() {
        return this.g;
    }

    public boolean isVisible() {
        return this.h;
    }

    public LatLng getStart() {
        return this.b;
    }

    public LatLng getPassed() {
        return this.c;
    }

    public LatLng getEnd() {
        return this.d;
    }
}
