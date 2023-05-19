package com.ifengyu.intercom.device.lite.utils;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.ifengyu.intercom.device.lite.utils.e */
/* loaded from: classes2.dex */
public class ParcelHelper {
    /* renamed from: a */
    public static <T> T m13838a(Parcelable parcelable) {
        Parcel parcel;
        try {
            parcel = Parcel.obtain();
        } catch (Throwable th) {
            th = th;
            parcel = null;
        }
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
    }
}
