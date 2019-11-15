package com.amap.api.maps.model;

import android.os.Parcel;
import android.os.Parcelable;

public class TileProjection implements Parcelable {
    public static final TileProjection CREATOR = new TileProjection(0, 0, 0, 0, 0, 0);
    public final int maxX;
    public final int maxY;
    public final int minX;
    public final int minY;
    public final int offsetX;
    public final int offsetY;

    public TileProjection(int i, int i2, int i3, int i4, int i5, int i6) {
        this.offsetX = i;
        this.offsetY = i2;
        this.minX = i3;
        this.maxX = i4;
        this.minY = i5;
        this.maxY = i6;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.offsetX);
        parcel.writeInt(this.offsetY);
        parcel.writeInt(this.minX);
        parcel.writeInt(this.maxX);
        parcel.writeInt(this.maxX);
        parcel.writeInt(this.maxY);
    }
}
