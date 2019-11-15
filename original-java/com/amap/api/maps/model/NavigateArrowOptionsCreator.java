package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class NavigateArrowOptionsCreator implements Creator<NavigateArrowOptions> {
    public NavigateArrowOptions createFromParcel(Parcel parcel) {
        boolean z = true;
        NavigateArrowOptions navigateArrowOptions = new NavigateArrowOptions();
        ArrayList arrayList = new ArrayList();
        parcel.readTypedList(arrayList, LatLng.CREATOR);
        float readFloat = parcel.readFloat();
        int readInt = parcel.readInt();
        int readInt2 = parcel.readInt();
        float readFloat2 = parcel.readFloat();
        if (parcel.readByte() != 1) {
            z = false;
        }
        navigateArrowOptions.addAll(arrayList);
        navigateArrowOptions.width(readFloat);
        navigateArrowOptions.topColor(readInt);
        navigateArrowOptions.sideColor(readInt2);
        navigateArrowOptions.zIndex(readFloat2);
        navigateArrowOptions.visible(z);
        navigateArrowOptions.a = parcel.readString();
        return navigateArrowOptions;
    }

    public NavigateArrowOptions[] newArray(int i) {
        return new NavigateArrowOptions[i];
    }
}
