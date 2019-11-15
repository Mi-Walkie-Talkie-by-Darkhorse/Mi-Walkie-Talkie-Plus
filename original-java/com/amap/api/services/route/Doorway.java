package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class Doorway implements Parcelable {
    public static final Creator<Doorway> CREATOR = new Creator<Doorway>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new Doorway(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private LatLonPoint b;

    public String getName() {
        return this.a;
    }

    public void setName(String str) {
        this.a = str;
    }

    public LatLonPoint getLatLonPoint() {
        return this.b;
    }

    public void setLatLonPoint(LatLonPoint latLonPoint) {
        this.b = latLonPoint;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeParcelable(this.b, i);
    }

    public Doorway(Parcel parcel) {
        this.a = parcel.readString();
        this.b = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
    }

    public Doorway() {
    }
}
