package com.shenma.speechrecognition;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class s implements Creator {
    s() {
    }

    /* renamed from: a */
    public l createFromParcel(Parcel parcel) {
        boolean z = true;
        l lVar = new l();
        lVar.a = parcel.readString();
        lVar.b = parcel.readString();
        lVar.c = parcel.readByte() != 0;
        if (parcel.readByte() == 0) {
            z = false;
        }
        lVar.d = z;
        lVar.e = parcel.readString();
        lVar.f = parcel.readString();
        lVar.g = parcel.readString();
        lVar.i = parcel.readFloat();
        lVar.j = parcel.readString();
        lVar.k = parcel.readInt();
        lVar.l = parcel.readString();
        return lVar;
    }

    /* renamed from: a */
    public l[] newArray(int i) {
        return new l[i];
    }
}
