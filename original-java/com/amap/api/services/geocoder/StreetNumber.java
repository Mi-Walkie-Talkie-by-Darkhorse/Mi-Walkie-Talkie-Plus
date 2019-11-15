package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public final class StreetNumber implements Parcelable {
    public static final Creator<StreetNumber> CREATOR = new Creator<StreetNumber>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new StreetNumber(parcel, 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;
    private LatLonPoint c;
    private String d;
    private float e;

    /* synthetic */ StreetNumber(Parcel parcel, byte b2) {
        this(parcel);
    }

    public StreetNumber() {
    }

    public final String getStreet() {
        return this.a;
    }

    public final void setStreet(String str) {
        this.a = str;
    }

    public final String getNumber() {
        return this.b;
    }

    public final void setNumber(String str) {
        this.b = str;
    }

    public final LatLonPoint getLatLonPoint() {
        return this.c;
    }

    public final void setLatLonPoint(LatLonPoint latLonPoint) {
        this.c = latLonPoint;
    }

    public final String getDirection() {
        return this.d;
    }

    public final void setDirection(String str) {
        this.d = str;
    }

    public final float getDistance() {
        return this.e;
    }

    public final void setDistance(float f) {
        this.e = f;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeValue(this.c);
        parcel.writeString(this.d);
        parcel.writeFloat(this.e);
    }

    private StreetNumber(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.d = parcel.readString();
        this.e = parcel.readFloat();
    }
}
