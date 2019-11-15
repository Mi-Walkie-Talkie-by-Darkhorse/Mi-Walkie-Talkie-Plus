package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DistanceItem implements Parcelable {
    public static final Creator<DistanceItem> CREATOR = new Creator<DistanceItem>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new DistanceItem(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new DistanceItem[i];
        }
    };
    public final int ERROR_CODE_NOT_IN_CHINA = 3;
    public final int ERROR_CODE_NO_DRIVE = 1;
    public final int ERROR_CODE_TOO_FAR = 2;
    private int a = 1;
    private int b = 1;
    private float c = 0.0f;
    private float d = 0.0f;
    private String e;
    private int f;

    public int getOriginId() {
        return this.a;
    }

    public int getDestId() {
        return this.b;
    }

    public float getDistance() {
        return this.c;
    }

    public float getDuration() {
        return this.d;
    }

    public String getErrorInfo() {
        return this.e;
    }

    public int getErrorCode() {
        return this.f;
    }

    public void setOriginId(int i) {
        this.a = i;
    }

    public void setDestId(int i) {
        this.b = i;
    }

    public void setDistance(float f2) {
        this.c = f2;
    }

    public void setDuration(float f2) {
        this.d = f2;
    }

    public void setErrorInfo(String str) {
        this.e = str;
    }

    public void setErrorCode(int i) {
        this.f = i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.a);
        parcel.writeInt(this.b);
        parcel.writeFloat(this.c);
        parcel.writeFloat(this.d);
        parcel.writeString(this.e);
        parcel.writeInt(this.f);
    }

    public DistanceItem() {
    }

    protected DistanceItem(Parcel parcel) {
        this.a = parcel.readInt();
        this.b = parcel.readInt();
        this.c = parcel.readFloat();
        this.d = parcel.readFloat();
        this.e = parcel.readString();
        this.f = parcel.readInt();
    }
}
