package com.amap.api.maps.offlinemap;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class OfflineMapProvince extends Province {
    public static final Creator<OfflineMapProvince> CREATOR = new Creator<OfflineMapProvince>() {
        /* renamed from: a */
        public OfflineMapProvince createFromParcel(Parcel parcel) {
            return new OfflineMapProvince(parcel);
        }

        /* renamed from: a */
        public OfflineMapProvince[] newArray(int i) {
            return new OfflineMapProvince[i];
        }
    };
    private String a;
    private int b = 6;
    private long c;
    private String d;
    private int e = 0;
    private ArrayList<OfflineMapCity> f;

    public OfflineMapProvince() {
    }

    public String getUrl() {
        return this.a;
    }

    public void setUrl(String str) {
        this.a = str;
    }

    public int getState() {
        return this.b;
    }

    public void setState(int i) {
        this.b = i;
    }

    public long getSize() {
        return this.c;
    }

    public void setSize(long j) {
        this.c = j;
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
        parcel.writeInt(this.b);
        parcel.writeLong(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeTypedList(this.f);
    }

    public ArrayList<OfflineMapCity> getCityList() {
        if (this.f == null) {
            return new ArrayList<>();
        }
        return this.f;
    }

    public void setCityList(ArrayList<OfflineMapCity> arrayList) {
        this.f = arrayList;
    }

    public OfflineMapProvince(Parcel parcel) {
        super(parcel);
        this.a = parcel.readString();
        this.b = parcel.readInt();
        this.c = parcel.readLong();
        this.d = parcel.readString();
        this.e = parcel.readInt();
        this.f = parcel.createTypedArrayList(OfflineMapCity.CREATOR);
    }
}
