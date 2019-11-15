package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public final class GeocodeAddress implements Parcelable {
    public static final Creator<GeocodeAddress> CREATOR = new Creator<GeocodeAddress>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new GeocodeAddress(parcel, 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private LatLonPoint i;
    private String j;

    /* synthetic */ GeocodeAddress(Parcel parcel, byte b2) {
        this(parcel);
    }

    public GeocodeAddress() {
    }

    public final String getFormatAddress() {
        return this.a;
    }

    public final void setFormatAddress(String str) {
        this.a = str;
    }

    public final String getProvince() {
        return this.b;
    }

    public final void setProvince(String str) {
        this.b = str;
    }

    public final String getCity() {
        return this.c;
    }

    public final void setCity(String str) {
        this.c = str;
    }

    public final String getDistrict() {
        return this.d;
    }

    public final void setDistrict(String str) {
        this.d = str;
    }

    public final String getTownship() {
        return this.e;
    }

    public final void setTownship(String str) {
        this.e = str;
    }

    public final String getNeighborhood() {
        return this.f;
    }

    public final void setNeighborhood(String str) {
        this.f = str;
    }

    public final String getBuilding() {
        return this.g;
    }

    public final void setBuilding(String str) {
        this.g = str;
    }

    public final String getAdcode() {
        return this.h;
    }

    public final void setAdcode(String str) {
        this.h = str;
    }

    public final LatLonPoint getLatLonPoint() {
        return this.i;
    }

    public final void setLatLonPoint(LatLonPoint latLonPoint) {
        this.i = latLonPoint;
    }

    public final String getLevel() {
        return this.j;
    }

    public final void setLevel(String str) {
        this.j = str;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
        parcel.writeString(this.g);
        parcel.writeString(this.h);
        parcel.writeValue(this.i);
        parcel.writeString(this.j);
    }

    private GeocodeAddress(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readString();
        this.h = parcel.readString();
        this.i = (LatLonPoint) parcel.readValue(LatLonPoint.class.getClassLoader());
        this.j = parcel.readString();
    }
}
