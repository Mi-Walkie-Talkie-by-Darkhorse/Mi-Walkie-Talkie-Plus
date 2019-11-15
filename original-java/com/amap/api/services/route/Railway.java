package com.amap.api.services.route;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class Railway implements Parcelable {
    public static final Creator<Railway> CREATOR = new Creator<Railway>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new Railway(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new Railway[i];
        }
    };
    private String a;
    private String b;

    public Railway() {
    }

    public String getID() {
        return this.a;
    }

    public String getName() {
        return this.b;
    }

    public void setID(String str) {
        this.a = str;
    }

    public void setName(String str) {
        this.b = str;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    protected Railway(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }
}
