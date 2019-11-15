package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.sina.weibo.sdk.utils.c;

public abstract class BaseMediaObject implements Parcelable {
    public String a;
    public String b;
    public String c;
    public String d;
    public String e;
    public byte[] f;

    /* access modifiers changed from: protected */
    public abstract BaseMediaObject a(String str);

    /* access modifiers changed from: protected */
    public abstract String b();

    public BaseMediaObject() {
    }

    public BaseMediaObject(Parcel parcel) {
        this.a = parcel.readString();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readString();
        this.e = parcel.readString();
        this.f = parcel.createByteArray();
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeByteArray(this.f);
    }

    /* access modifiers changed from: protected */
    public boolean a() {
        if (this.a == null || this.a.length() > 512) {
            c.c("Weibo.BaseMediaObject", "checkArgs fail, actionUrl is invalid");
            return false;
        } else if (this.c == null || this.c.length() > 512) {
            c.c("Weibo.BaseMediaObject", "checkArgs fail, identify is invalid");
            return false;
        } else if (this.f == null || this.f.length > 32768) {
            c.c("Weibo.BaseMediaObject", "checkArgs fail, thumbData is invalid,size is " + (this.f != null ? this.f.length : -1) + "! more then 32768.");
            return false;
        } else if (this.d == null || this.d.length() > 512) {
            c.c("Weibo.BaseMediaObject", "checkArgs fail, title is invalid");
            return false;
        } else if (this.e != null && this.e.length() <= 1024) {
            return true;
        } else {
            c.c("Weibo.BaseMediaObject", "checkArgs fail, description is invalid");
            return false;
        }
    }
}
