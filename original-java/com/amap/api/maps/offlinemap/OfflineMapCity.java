package com.amap.api.maps.offlinemap;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class OfflineMapCity extends City {
    public static final Creator<OfflineMapCity> CREATOR = new Creator<OfflineMapCity>() {
        /* renamed from: a */
        public OfflineMapCity createFromParcel(Parcel parcel) {
            return new OfflineMapCity(parcel);
        }

        /* renamed from: a */
        public OfflineMapCity[] newArray(int i) {
            return new OfflineMapCity[i];
        }
    };
    private String a = "";
    private long b = 0;
    private int c = 6;
    private String d = "";
    private int e = 0;

    public OfflineMapCity() {
    }

    public String getUrl() {
        return this.a;
    }

    public void setUrl(String str) {
        this.a = str;
    }

    public long getSize() {
        return this.b;
    }

    public void setSize(long j) {
        this.b = j;
    }

    public int getState() {
        return this.c;
    }

    public void setState(int i) {
        this.c = i;
    }

    public String getVersion() {
        return this.d;
    }

    public void setVersion(String str) {
        this.d = str;
    }

    public int getcompleteCode() {
        return this.e;
    }

    public void setCompleteCode(int i) {
        this.e = i;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.a);
        parcel.writeLong(this.b);
        parcel.writeInt(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
    }

    public OfflineMapCity(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
        this.b = parcel.readLong();
        this.c = parcel.readInt();
        this.d = parcel.readString();
        this.e = parcel.readInt();
    }
}
