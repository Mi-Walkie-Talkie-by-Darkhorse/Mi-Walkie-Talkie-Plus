package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class TaxiItem implements Parcelable {
    public static final Creator<TaxiItem> CREATOR = new Creator<TaxiItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new TaxiItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new TaxiItem[i];
        }
    };
    private LatLonPoint a;
    private LatLonPoint b;
    private float c;
    private float d;
    private String e;
    private String f;

    public TaxiItem() {
    }

    public LatLonPoint getOrigin() {
        return this.a;
    }

    public LatLonPoint getDestination() {
        return this.b;
    }

    public float getDistance() {
        return this.c;
    }

    public float getDuration() {
        return this.d;
    }

    public String getmSname() {
        return this.e;
    }

    public String getmTname() {
        return this.f;
    }

    public void setOrigin(LatLonPoint latLonPoint) {
        this.a = latLonPoint;
    }

    public void setDestination(LatLonPoint latLonPoint) {
        this.b = latLonPoint;
    }

    public void setDistance(float f2) {
        this.c = f2;
    }

    public void setDuration(float f2) {
        this.d = f2;
    }

    public void setSname(String str) {
        this.e = str;
    }

    public void setTname(String str) {
        this.f = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeParcelable(this.b, i);
        parcel.writeFloat(this.c);
        parcel.writeFloat(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }

    protected TaxiItem(Parcel parcel) {
        this.a = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.b = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.c = parcel.readFloat();
        this.d = parcel.readFloat();
        this.e = parcel.readString();
        this.f = parcel.readString();
    }
}
