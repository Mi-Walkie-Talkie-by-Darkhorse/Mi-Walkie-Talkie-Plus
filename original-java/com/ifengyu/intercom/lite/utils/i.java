package com.ifengyu.intercom.lite.utils;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: ParcelHelper.java */
/* loaded from: classes2.dex */
public class i {
    public static <T> T a(Parcelable parcelable) {
        Throwable th;
        Parcel parcel;
        try {
            parcel = Parcel.obtain();
            try {
                parcel.writeParcelable(parcelable, 0);
                parcel.setDataPosition(0);
                T t = (T) parcel.readParcelable(parcelable.getClass().getClassLoader());
                parcel.recycle();
                return t;
            } catch (Throwable th2) {
                th = th2;
                parcel.recycle();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            parcel = null;
        }
    }
}
