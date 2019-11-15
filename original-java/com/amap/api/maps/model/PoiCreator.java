package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class PoiCreator implements Creator<Poi> {
    public Poi createFromParcel(Parcel parcel) {
        return new Poi(parcel.readString(), (LatLng) parcel.readParcelable(LatLng.class.getClassLoader()), parcel.readString());
    }

    public Poi[] newArray(int i) {
        return new Poi[i];
    }
}
