package com.amap.api.maps.model;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class CircleOptions implements Parcelable {
    public static final CircleOptionsCreator CREATOR = new CircleOptionsCreator();
    String a;
    private LatLng b = null;
    private double c = 0.0d;
    private float d = 10.0f;
    private int e = ViewCompat.MEASURED_STATE_MASK;
    private int f = 0;
    private float g = 0.0f;
    private boolean h = true;
    private List<BaseHoleOptions> i = new ArrayList();

    public void writeToParcel(Parcel parcel, int i2) {
        Bundle bundle = new Bundle();
        if (this.b != null) {
            bundle.putDouble("lat", this.b.latitude);
            bundle.putDouble("lng", this.b.longitude);
        }
        parcel.writeBundle(bundle);
        parcel.writeDouble(this.c);
        parcel.writeFloat(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeFloat(this.g);
        parcel.writeByte((byte) (this.h ? 1 : 0));
        parcel.writeString(this.a);
    }

    public int describeContents() {
        return 0;
    }

    public CircleOptions center(LatLng latLng) {
        this.b = latLng;
        return this;
    }

    public CircleOptions radius(double d2) {
        this.c = d2;
        return this;
    }

    public CircleOptions strokeWidth(float f2) {
        this.d = f2;
        return this;
    }

    public CircleOptions strokeColor(int i2) {
        this.e = i2;
        return this;
    }

    public CircleOptions fillColor(int i2) {
        this.f = i2;
        return this;
    }

    public CircleOptions zIndex(float f2) {
        this.g = f2;
        return this;
    }

    public CircleOptions visible(boolean z) {
        this.h = z;
        return this;
    }

    public LatLng getCenter() {
        return this.b;
    }

    public double getRadius() {
        return this.c;
    }

    public float getStrokeWidth() {
        return this.d;
    }

    public int getStrokeColor() {
        return this.e;
    }

    public int getFillColor() {
        return this.f;
    }

    public float getZIndex() {
        return this.g;
    }

    public boolean isVisible() {
        return this.h;
    }

    public CircleOptions addHoles(BaseHoleOptions... baseHoleOptionsArr) {
        try {
            this.i.addAll(Arrays.asList(baseHoleOptionsArr));
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return this;
    }

    public CircleOptions addHoles(Iterable<BaseHoleOptions> iterable) {
        try {
            for (BaseHoleOptions add : iterable) {
                this.i.add(add);
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
        return this;
    }

    public List<BaseHoleOptions> getHoleOptions() {
        return this.i;
    }
}
