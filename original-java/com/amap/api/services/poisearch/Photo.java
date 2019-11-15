package com.amap.api.services.poisearch;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class Photo implements Parcelable {
    public static final Creator<Photo> CREATOR = new Creator<Photo>() {
        public final /* synthetic */ Object createFromParcel(Parcel parcel) {
            return new Photo(parcel);
        }

        public final /* bridge */ /* synthetic */ Object[] newArray(int i) {
            return null;
        }
    };
    private String a;
    private String b;

    public Photo() {
    }

    public Photo(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final String getTitle() {
        return this.a;
    }

    public final void setTitle(String str) {
        this.a = str;
    }

    public final String getUrl() {
        return this.b;
    }

    public final void setUrl(String str) {
        this.b = str;
    }

    public final int describeContents() {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
    }

    public Photo(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
    }
}
