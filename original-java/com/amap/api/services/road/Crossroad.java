package com.amap.api.services.road;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class Crossroad extends Road implements Parcelable {
    public static final Creator<Crossroad> CREATOR = new Creator<Crossroad>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new Crossroad(parcel, 0);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private float a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    /* synthetic */ Crossroad(Parcel parcel, byte b2) {
        this(parcel);
    }

    public Crossroad() {
    }

    public final float getDistance() {
        return this.a;
    }

    public final void setDistance(float f2) {
        this.a = f2;
    }

    public final String getDirection() {
        return this.b;
    }

    public final void setDirection(String str) {
        this.b = str;
    }

    public final String getFirstRoadId() {
        return this.c;
    }

    public final void setFirstRoadId(String str) {
        this.c = str;
    }

    public final String getFirstRoadName() {
        return this.d;
    }

    public final void setFirstRoadName(String str) {
        this.d = str;
    }

    public final String getSecondRoadId() {
        return this.e;
    }

    public final void setSecondRoadId(String str) {
        this.e = str;
    }

    public final String getSecondRoadName() {
        return this.f;
    }

    public final void setSecondRoadName(String str) {
        this.f = str;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeFloat(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeString(this.f);
    }

    private Crossroad(Parcel parcel) {
        super(parcel);
        this.a = parcel.readFloat();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.readString();
    }
}
