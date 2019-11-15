package com.amap.api.services.poisearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class IndoorData implements Parcelable {
    public static final Creator<IndoorData> CREATOR = new Creator<IndoorData>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new IndoorData(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new IndoorData[i];
        }
    };
    private String a;
    private int b;
    private String c;

    public IndoorData(String str, int i, String str2) {
        this.a = str;
        this.b = i;
        this.c = str2;
    }

    public String getPoiId() {
        return this.a;
    }

    public void setPoiId(String str) {
        this.a = str;
    }

    public int getFloor() {
        return this.b;
    }

    public void setFloor(int i) {
        this.b = i;
    }

    public String getFloorName() {
        return this.c;
    }

    public void setFloorName(String str) {
        this.c = str;
    }

    protected IndoorData(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readString();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
    }
}
