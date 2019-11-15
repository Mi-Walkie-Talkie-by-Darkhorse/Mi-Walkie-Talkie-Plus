package com.shenma.speechrecognition;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ac implements Creator {
    ac() {
    }

    /* renamed from: a */
    public v createFromParcel(Parcel parcel) {
        v vVar = new v();
        vVar.k = parcel.readString();
        vVar.l = parcel.readString();
        vVar.m = parcel.readString();
        vVar.b = parcel.readString();
        vVar.j = parcel.readString();
        return vVar;
    }

    /* renamed from: a */
    public v[] newArray(int i) {
        return new v[i];
    }
}
