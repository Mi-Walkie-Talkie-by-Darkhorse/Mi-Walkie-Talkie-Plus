package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public final class RegeocodeRoad implements Parcelable {
    public static final Creator<RegeocodeRoad> CREATOR = new Creator<RegeocodeRoad>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RegeocodeRoad(parcel, 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;
    private float c;
    private String d;
    private LatLonPoint e;

    /* synthetic */ RegeocodeRoad(Parcel parcel, byte b2) {
        this(parcel);
    }

    public RegeocodeRoad() {
    }

    public final String getId() {
        return this.a;
    }

    public final void setId(String str) {
        this.a = str;
    }

    public final String getName() {
        return this.b;
    }

    public final void setName(String str) {
        this.b = str;
    }

    public final float getDistance() {
        return this.c;
    }

    public final void setDistance(float f) {
        this.c = f;
    }

    public final String getDirection() {
        return this.d;
    }

    public final void setDirection(String str) {
        this.d = str;
    }

    public final LatLonPoint getLatLngPoint() {
        return this.e;
    }

    public final void setLatLngPoint(LatLonPoint latLonPoint) {
        this.e = latLonPoint;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeFloat(this.c);
        parcel.writeString(this.d);
        parcel.writeValue(this.e);
    }

    private RegeocodeRoad(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readFloat();
        this.d = parcel.readString();
        this.e = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
    }
}
