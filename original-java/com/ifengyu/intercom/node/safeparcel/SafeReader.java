package com.ifengyu.intercom.node.safeparcel;

import android.os.Parcel;
import android.support.v4.internal.view.SupportMenu;

public class SafeReader {

    public static class ReadException extends RuntimeException {
        public ReadException(String str, Parcel parcel) {
            super(str);
        }
    }

    public static int a(int i) {
        return 65535 & i;
    }

    public static int a(Parcel parcel) {
        return parcel.readInt();
    }

    private static int e(Parcel parcel, int i) {
        if ((i & SupportMenu.CATEGORY_MASK) != -65536) {
            return (i >> 16) & SupportMenu.USER_MASK;
        }
        return parcel.readInt();
    }

    private static void a(Parcel parcel, int i, int i2) {
        int e = e(parcel, i);
        if (e != i2) {
            throw new ReadException("Expected size " + i2 + " got " + e + " (0x" + Integer.toHexString(e) + ")", parcel);
        }
    }

    public static int b(Parcel parcel) {
        int a = a(parcel);
        int e = e(parcel, a);
        int dataPosition = parcel.dataPosition();
        if (a(a) != 20293) {
            throw new ReadException("Expected object header. Got 0x" + Integer.toHexString(a), parcel);
        }
        int i = dataPosition + e;
        if (i >= dataPosition && i <= parcel.dataSize()) {
            return i;
        }
        throw new ReadException("Size read is invalid start=" + dataPosition + " end=" + i, parcel);
    }

    public static int a(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt();
    }

    public static boolean b(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static String c(Parcel parcel, int i) {
        int e = e(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (e == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(e + dataPosition);
        return readString;
    }

    public static void d(Parcel parcel, int i) {
        parcel.setDataPosition(e(parcel, i) + parcel.dataPosition());
    }
}
