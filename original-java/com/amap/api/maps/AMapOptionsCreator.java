package com.amap.api.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.amap.api.maps.model.CameraPosition;

public class AMapOptionsCreator implements Creator<AMapOptions> {
    public AMapOptions createFromParcel(Parcel parcel) {
        AMapOptions aMapOptions = new AMapOptions();
        CameraPosition cameraPosition = (CameraPosition) parcel.readParcelable(CameraPosition.class.getClassLoader());
        aMapOptions.mapType(parcel.readInt());
        aMapOptions.camera(cameraPosition);
        boolean[] createBooleanArray = parcel.createBooleanArray();
        if (createBooleanArray != null && createBooleanArray.length >= 6) {
            aMapOptions.rotateGesturesEnabled(createBooleanArray[0]);
            aMapOptions.scrollGesturesEnabled(createBooleanArray[1]);
            aMapOptions.tiltGesturesEnabled(createBooleanArray[2]);
            aMapOptions.zoomGesturesEnabled(createBooleanArray[3]);
            aMapOptions.zoomControlsEnabled(createBooleanArray[4]);
            aMapOptions.zOrderOnTop(createBooleanArray[5]);
            aMapOptions.compassEnabled(createBooleanArray[6]);
            aMapOptions.scaleControlsEnabled(createBooleanArray[7]);
        }
        return aMapOptions;
    }

    public AMapOptions[] newArray(int i) {
        return new AMapOptions[i];
    }
}
