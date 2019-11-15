package com.amap.api.maps.model;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import org.bouncycastle.crypto.tls.CipherSuite;

public class MyLocationStyle implements Parcelable {
    public static final MyLocationStyleCreator CREATOR = new MyLocationStyleCreator();
    public static final String ERROR_CODE = "errorCode";
    public static final String ERROR_INFO = "errorInfo";
    public static final String LOCATION_TYPE = "locationType";
    public static final int LOCATION_TYPE_FOLLOW = 2;
    public static final int LOCATION_TYPE_FOLLOW_NO_CENTER = 6;
    public static final int LOCATION_TYPE_LOCATE = 1;
    public static final int LOCATION_TYPE_LOCATION_ROTATE = 4;
    public static final int LOCATION_TYPE_LOCATION_ROTATE_NO_CENTER = 5;
    public static final int LOCATION_TYPE_MAP_ROTATE = 3;
    public static final int LOCATION_TYPE_MAP_ROTATE_NO_CENTER = 7;
    public static final int LOCATION_TYPE_SHOW = 0;
    private BitmapDescriptor a;
    private float b = 0.5f;
    private float c = 0.5f;
    private int d = Color.argb(100, 0, 0, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256);
    private int e = Color.argb(255, 0, 0, 220);
    private float f = 1.0f;
    private int g = 4;
    private long h = 2000;
    private boolean i = true;

    public MyLocationStyle myLocationIcon(BitmapDescriptor bitmapDescriptor) {
        this.a = bitmapDescriptor;
        return this;
    }

    public MyLocationStyle anchor(float f2, float f3) {
        this.b = f2;
        this.c = f3;
        return this;
    }

    public MyLocationStyle radiusFillColor(int i2) {
        this.d = i2;
        return this;
    }

    public MyLocationStyle strokeColor(int i2) {
        this.e = i2;
        return this;
    }

    public MyLocationStyle strokeWidth(float f2) {
        this.f = f2;
        return this;
    }

    public MyLocationStyle myLocationType(int i2) {
        this.g = i2;
        return this;
    }

    public MyLocationStyle interval(long j) {
        this.h = j;
        return this;
    }

    public MyLocationStyle showMyLocation(boolean z) {
        this.i = z;
        return this;
    }

    public BitmapDescriptor getMyLocationIcon() {
        return this.a;
    }

    public float getAnchorU() {
        return this.b;
    }

    public float getAnchorV() {
        return this.c;
    }

    public int getRadiusFillColor() {
        return this.d;
    }

    public int getStrokeColor() {
        return this.e;
    }

    public float getStrokeWidth() {
        return this.f;
    }

    public int getMyLocationType() {
        return this.g;
    }

    public long getInterval() {
        return this.h;
    }

    public boolean isMyLocationShowing() {
        return this.i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeParcelable(this.a, i2);
        parcel.writeFloat(this.b);
        parcel.writeFloat(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeFloat(this.f);
        parcel.writeInt(this.g);
        parcel.writeLong(this.h);
        parcel.writeBooleanArray(new boolean[]{this.i});
    }
}
