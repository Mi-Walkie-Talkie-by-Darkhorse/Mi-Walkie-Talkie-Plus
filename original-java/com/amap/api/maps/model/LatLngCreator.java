package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class LatLngCreator implements Creator<LatLng> {
    public static final int CONTENT_DESCRIPTION = 0;

    public LatLng createFromParcel(Parcel parcel) {
        return new LatLng(parcel.readDouble(), parcel.readDouble());
    }

    public LatLng[] newArray(int i) {
        return new LatLng[i];
    }
}
