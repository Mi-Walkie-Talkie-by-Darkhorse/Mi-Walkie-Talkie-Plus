package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class RouteSearchCity extends SearchCity implements Parcelable {
    public static final Creator<RouteSearchCity> CREATOR = new Creator<RouteSearchCity>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new RouteSearchCity(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    List<District> a = new ArrayList();

    public List<District> getDistricts() {
        return this.a;
    }

    public void setDistricts(List<District> list) {
        this.a = list;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeTypedList(this.a);
    }

    public RouteSearchCity(Parcel parcel) {
        super(parcel);
        this.a = parcel.createTypedArrayList(District.CREATOR);
    }

    public RouteSearchCity() {
    }
}
