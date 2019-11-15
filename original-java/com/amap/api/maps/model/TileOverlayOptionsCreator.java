package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class TileOverlayOptionsCreator implements Creator<TileOverlayOptions> {
    public static final int CONTENT_DESCRIPTION = 0;

    public TileOverlayOptions createFromParcel(Parcel parcel) {
        boolean z;
        boolean z2 = true;
        int readInt = parcel.readInt();
        TileProvider tileProvider = (TileProvider) parcel.readValue(TileProvider.class.getClassLoader());
        boolean z3 = parcel.readByte() != 0;
        float readFloat = parcel.readFloat();
        int readInt2 = parcel.readInt();
        int readInt3 = parcel.readInt();
        String readString = parcel.readString();
        if (parcel.readByte() != 0) {
            z = true;
        } else {
            z = false;
        }
        if (parcel.readByte() == 0) {
            z2 = false;
        }
        TileOverlayOptions tileOverlayOptions = new TileOverlayOptions(readInt, null, z3, readFloat);
        if (tileProvider != null) {
            tileOverlayOptions.tileProvider(tileProvider);
        }
        tileOverlayOptions.memCacheSize(readInt2);
        tileOverlayOptions.diskCacheSize(readInt3);
        tileOverlayOptions.diskCacheDir(readString);
        tileOverlayOptions.memoryCacheEnabled(z);
        tileOverlayOptions.diskCacheEnabled(z2);
        return tileOverlayOptions;
    }

    public TileOverlayOptions[] newArray(int i) {
        return new TileOverlayOptions[i];
    }
}
