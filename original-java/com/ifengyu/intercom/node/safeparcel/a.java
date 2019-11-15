package com.ifengyu.intercom.node.safeparcel;

import android.os.Parcel;

/* compiled from: SafeWriter */
public class a {
    private static void b(Parcel parcel, int i, int i2) {
        if (i2 >= 65535) {
            parcel.writeInt(-65536 | i);
            parcel.writeInt(i2);
            return;
        }
        parcel.writeInt((i2 << 16) | i);
    }

    public static int a(Parcel parcel) {
        return b(parcel, 20293);
    }

    private static int b(Parcel parcel, int i) {
        parcel.writeInt(-65536 | i);
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void a(Parcel parcel, int i) {
        int dataPosition = parcel.dataPosition();
        int i2 = dataPosition - i;
        parcel.setDataPosition(i - 4);
        parcel.writeInt(i2);
        parcel.setDataPosition(dataPosition);
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
            int b = b(parcel, i);
            parcel.writeString(str);
            a(parcel, b);
        } else if (z) {
            b(parcel, i, 0);
        }
    }
}
