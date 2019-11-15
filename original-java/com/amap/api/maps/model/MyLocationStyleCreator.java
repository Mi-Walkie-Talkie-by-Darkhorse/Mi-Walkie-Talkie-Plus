package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class MyLocationStyleCreator implements Creator<MyLocationStyle> {
    public MyLocationStyle createFromParcel(Parcel parcel) {
        MyLocationStyle myLocationStyle = new MyLocationStyle();
        myLocationStyle.myLocationIcon((BitmapDescriptor) parcel.readParcelable(BitmapDescriptor.class.getClassLoader()));
        myLocationStyle.anchor(parcel.readFloat(), parcel.readFloat());
        myLocationStyle.radiusFillColor(parcel.readInt());
        myLocationStyle.strokeColor(parcel.readInt());
        myLocationStyle.strokeWidth(parcel.readFloat());
        myLocationStyle.myLocationType(parcel.readInt());
        myLocationStyle.interval(parcel.readLong());
        boolean[] zArr = new boolean[7];
        parcel.readBooleanArray(zArr);
        myLocationStyle.showMyLocation(zArr[0]);
        return myLocationStyle;
    }

    public MyLocationStyle[] newArray(int i) {
        return new MyLocationStyle[i];
    }
}
