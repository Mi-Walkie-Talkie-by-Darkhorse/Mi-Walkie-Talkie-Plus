package com.amap.api.services.geocoder;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.amap.api.services.core.LatLonPoint;

public class BusinessArea implements Parcelable {
    public static final Creator<BusinessArea> CREATOR = new Creator<BusinessArea>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new BusinessArea(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new BusinessArea[i];
        }
    };
    private LatLonPoint a;
    private String b;

    public BusinessArea() {
    }

    public LatLonPoint getCenterPoint() {
        return this.a;
    }

    public void setCenterPoint(LatLonPoint latLonPoint) {
        this.a = latLonPoint;
    }

    public String getName() {
        return this.b;
    }

    public void setName(String str) {
        this.b = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.a, i);
        parcel.writeString(this.b);
    }

    public BusinessArea(Parcel parcel) {
        this.a = (LatLonPoint) parcel.readParcelable(LatLonPoint.class.getClassLoader());
        this.b = parcel.readString();
    }
}
