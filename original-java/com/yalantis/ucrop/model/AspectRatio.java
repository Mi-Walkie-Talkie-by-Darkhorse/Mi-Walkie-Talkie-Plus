package com.yalantis.ucrop.model;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.Nullable;

public class AspectRatio implements Parcelable {
    public static final Creator<AspectRatio> CREATOR = new Creator<AspectRatio>() {
        /* renamed from: a */
        public AspectRatio createFromParcel(Parcel parcel) {
            return new AspectRatio(parcel);
        }

        /* renamed from: a */
        public AspectRatio[] newArray(int i) {
            return new AspectRatio[i];
        }
    };
    @Nullable
    private final String a;
    private final float b;
    private final float c;

    public AspectRatio(@Nullable String str, float f, float f2) {
        this.a = str;
        this.b = f;
        this.c = f2;
    }

    protected AspectRatio(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readFloat();
        this.c = parcel.readFloat();
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeFloat(this.b);
        parcel.writeFloat(this.c);
    }

    public int describeContents() {
        return 0;
    }

    @Nullable
    public String a() {
        return this.a;
    }

    public float b() {
        return this.b;
    }

    public float c() {
        return this.c;
    }
}
