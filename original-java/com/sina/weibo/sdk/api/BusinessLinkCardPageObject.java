package com.sina.weibo.sdk.api;

import android.os.Parcel;
import android.os.Parcelable.Creator;

public class BusinessLinkCardPageObject extends BaseMediaObject {
    public static final Creator<BusinessLinkCardPageObject> CREATOR = new Creator<BusinessLinkCardPageObject>() {
        /* renamed from: a */
        public BusinessLinkCardPageObject createFromParcel(Parcel parcel) {
            return new BusinessLinkCardPageObject(parcel);
        }

        /* renamed from: a */
        public BusinessLinkCardPageObject[] newArray(int i) {
            return new BusinessLinkCardPageObject[i];
        }
    };
    public String[] g = new String[9];
    public String[] h = new String[9];
    public byte[] i;
    public byte[] j;
    public byte[] k;
    public byte[] l;
    public byte[] m;
    public byte[] n;
    public byte[] o;
    public byte[] p;
    public byte[] q;

    public BusinessLinkCardPageObject() {
    }

    public BusinessLinkCardPageObject(Parcel parcel) {
        this.g = parcel.createStringArray();
        this.h = parcel.createStringArray();
        this.i = parcel.createByteArray();
        this.j = parcel.createByteArray();
        this.k = parcel.createByteArray();
        this.l = parcel.createByteArray();
        this.m = parcel.createByteArray();
        this.n = parcel.createByteArray();
        this.o = parcel.createByteArray();
        this.p = parcel.createByteArray();
        this.q = parcel.createByteArray();
    }

    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeStringArray(this.g);
        parcel.writeStringArray(this.h);
        parcel.writeByteArray(this.i);
        parcel.writeByteArray(this.j);
        parcel.writeByteArray(this.k);
        parcel.writeByteArray(this.l);
        parcel.writeByteArray(this.m);
        parcel.writeByteArray(this.n);
        parcel.writeByteArray(this.o);
        parcel.writeByteArray(this.p);
        parcel.writeByteArray(this.q);
    }

    public boolean a() {
        if (!super.a()) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public BaseMediaObject a(String str) {
        return null;
    }

    /* access modifiers changed from: protected */
    public String b() {
        return "";
    }
}
