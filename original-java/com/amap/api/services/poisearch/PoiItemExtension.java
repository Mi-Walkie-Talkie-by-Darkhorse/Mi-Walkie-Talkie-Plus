package com.amap.api.services.poisearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class PoiItemExtension implements Parcelable {
    public static final Creator<PoiItemExtension> CREATOR = new Creator<PoiItemExtension>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new PoiItemExtension(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return new PoiItemExtension[i];
        }
    };
    private String a;
    private String b;

    public PoiItemExtension(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public String getOpentime() {
        return this.a;
    }

    public String getmRating() {
        return this.b;
    }

    protected PoiItemExtension(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    public int describeContents() {
        return 0;
    }
}
