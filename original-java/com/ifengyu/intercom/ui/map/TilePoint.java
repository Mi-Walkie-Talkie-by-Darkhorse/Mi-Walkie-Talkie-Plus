package com.ifengyu.intercom.ui.map;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class TilePoint implements Parcelable {
    public static final Creator<TilePoint> CREATOR = new Creator<TilePoint>() {
        /* renamed from: a */
        public TilePoint createFromParcel(Parcel parcel) {
            return new TilePoint(parcel);
        }

        /* renamed from: a */
        public TilePoint[] newArray(int i) {
            return new TilePoint[i];
        }
    };
    private int a;
    private int b;
    private int c;

    public TilePoint(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }

    public TilePoint(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readInt();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int describeContents() {
        return 0;
    }
}
