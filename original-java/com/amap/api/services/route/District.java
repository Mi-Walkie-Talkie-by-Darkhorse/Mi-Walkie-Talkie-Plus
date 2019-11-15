package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class District implements Parcelable {
    public static final Creator<District> CREATOR = new Creator<District>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new District(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;

    public String getDistrictName() {
        return this.a;
    }

    public void setDistrictName(String str) {
        this.a = str;
    }

    public String getDistrictAdcode() {
        return this.b;
    }

    public void setDistrictAdcode(String str) {
        this.b = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    public District(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    public District() {
    }
}
