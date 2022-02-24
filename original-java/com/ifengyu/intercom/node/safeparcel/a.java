package com.ifengyu.intercom.node.safeparcel;

import android.os.Parcel;

/* compiled from: SafeWriter.java */
/* loaded from: classes2.dex */
public class a {
    public static int a(Parcel parcel) {
        return b(parcel, SafeParcelable.SAFE_PARCEL_MAGIC);
    }

    private static void b(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt(i | (-65536));
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt(i | (i2 << 16));
    }

    public static void a(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i - 4);
        parcel.writeInt(dataPosition - i);
        parcel.setDataPosition(dataPosition);
    }

    private static int b(Parcel parcel, int i) {
        parcel.writeInt(i | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void a(Parcel parcel, int i, boolean z) {
        b(parcel, i, 4);
        parcel.writeInt(z ? 1 : 0);
    }

    public static void a(Parcel parcel, int i, int i2) {
        b(parcel, i, 4);
        parcel.writeInt(i2);
    }

    public static void a(Parcel parcel, int i, String str, boolean z) {
        if (str != null) {
            int b2 = b(parcel, i);
            parcel.writeString(str);
            a(parcel, b2);
        } else if (z) {
            b(parcel, i, 0);
        }
    }
}
