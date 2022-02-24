package com.ifengyu.intercom.node.safeparcel;

import android.os.Parcel;

/* loaded from: classes2.dex */
public class SafeReader {

    /* loaded from: classes2.dex */
    public static class ReadException extends RuntimeException {
        public ReadException(String str, Parcel parcel) {
            super(str);
        }
    }

    public static int a(int i) {
        return i & 65535;
    }

    public static int a(Parcel parcel) {
        return parcel.readInt();
    }

    public static int b(Parcel parcel) {
        int a2 = a(parcel);
        int c2 = c(parcel, a2);
        int dataPosition = parcel.dataPosition();
        if (a(a2) == 20293) {
            int i = c2 + dataPosition;
            if (i >= dataPosition && i <= parcel.dataSize()) {
                return i;
            }
            throw new ReadException("Size read is invalid start=" + dataPosition + " end=" + i, parcel);
        }
        throw new ReadException("Expected object header. Got 0x" + Integer.toHexString(a2), parcel);
    }

    private static int c(Parcel parcel, int i) {
        return (i & (-65536)) != -65536 ? (i >> 16) & 65535 : parcel.readInt();
    }

    public static String d(Parcel parcel, int i) {
        int c2 = c(parcel, i);
        int dataPosition = parcel.dataPosition();
        if (c2 == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + c2);
        return readString;
    }

    public static void e(Parcel parcel, int i) {
        parcel.setDataPosition(parcel.dataPosition() + c(parcel, i));
    }

    private static void a(Parcel parcel, int i, int i2) {
        int c2 = c(parcel, i);
        if (c2 != i2) {
            throw new ReadException("Expected size " + i2 + " got " + c2 + " (0x" + Integer.toHexString(c2) + ")", parcel);
        }
    }

    public static boolean a(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt() != 0;
    }

    public static int b(Parcel parcel, int i) {
        a(parcel, i, 4);
        return parcel.readInt();
    }
}
