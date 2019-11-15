package com.amap.api.fence;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PoiItem implements Parcelable {
    public static final Creator<PoiItem> CREATOR = new Creator<PoiItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PoiItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PoiItem[i];
        }
    };
    private String a = "";
    private String b = "";
    private String c = "";
    private String d = "";
    private String e = "";
    private double f = 0.0d;
    private double g = 0.0d;
    private String h = "";
    private String i = "";
    private String j = "";
    private String k = "";

    public double getLatitude() {
        return this.f;
    }

    public void setLatitude(double d2) {
        this.f = d2;
    }

    public double getLongitude() {
        return this.g;
    }

    public void setLongitude(double d2) {
        this.g = d2;
    }

    public String getPoiId() {
        return this.b;
    }

    public void setPoiId(String str) {
        this.b = str;
    }

    public String getPoiType() {
        return this.c;
    }

    public void setPoiType(String str) {
        this.c = str;
    }

    public String getTypeCode() {
        return this.d;
    }

    public void setTypeCode(String str) {
        this.d = str;
    }

    public String getAddress() {
        return this.e;
    }

    public void setAddress(String str) {
        this.e = str;
    }

    public String getTel() {
        return this.h;
    }

    public void setTel(String str) {
        this.h = str;
    }

    public String getProvince() {
        return this.i;
    }

    public void setProvince(String str) {
        this.i = str;
    }

    public String getCity() {
        return this.j;
    }

    public void setCity(String str) {
        this.j = str;
    }

    public String getAdname() {
        return this.k;
    }

    public String getPoiName() {
        return this.a;
    }

    public void setPoiName(String str) {
        this.a = str;
    }

    public void setAdname(String str) {
        this.k = str;
    }

    public static Creator<PoiItem> getCreator() {
        return CREATOR;
    }

    public PoiItem() {
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeDouble(this.f);
        parcel.writeDouble(this.g);
        parcel.writeString(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeString(this.k);
    }

    protected PoiItem(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readDouble();
        this.g = parcel.readDouble();
        this.h = parcel.readString();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readString();
    }
}
