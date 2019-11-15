package com.amap.api.services.routepoisearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class RoutePOIItem implements Parcelable {
    public static final Creator<RoutePOIItem> CREATOR = new Creator<RoutePOIItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RoutePOIItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new RoutePOIItem[i];
        }
    };
    private String a;
    private String b;
    private LatLonPoint c;
    private float d;
    private float e;

    public RoutePOIItem() {
    }

    public String getID() {
        return this.a;
    }

    public void setID(String str) {
        this.a = str;
    }

    public String getTitle() {
        return this.b;
    }

    public void setTitle(String str) {
        this.b = str;
    }

    public LatLonPoint getPoint() {
        return this.c;
    }

    public void setPoint(LatLonPoint latLonPoint) {
        this.c = latLonPoint;
    }

    public float getDistance() {
        return this.d;
    }

    public void setDistance(float f) {
        this.d = f;
    }

    public float getDuration() {
        return this.e;
    }

    public void setDuration(float f) {
        this.e = f;
    }

    protected RoutePOIItem(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.d = parcel.readFloat();
        this.e = parcel.readFloat();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeParcelable(this.c, i);
        parcel.writeFloat(this.d);
        parcel.writeFloat(this.e);
    }
}
