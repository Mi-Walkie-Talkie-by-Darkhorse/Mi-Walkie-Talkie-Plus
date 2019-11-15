package com.ifengyu.intercom.node.transport;

import com.ifengyu.intercom.b.s;
import java.util.Locale;

/* compiled from: BytesUtil */
public class b {
    private static final String a = b.class.getSimpleName();

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            s.e(a, "Byte Array is null or empty");
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte valueOf : bArr) {
            sb.append(String.format("%02X ", new Object[]{Byte.valueOf(valueOf)}));
        }
        return sb.toString();
    }

    public static int b(byte[] bArr) {
        return (bArr[1] & 255) | ((bArr[0] & 255) << 8);
    }

    public static String a(byte[] bArr, int i) {
        StringBuilder sb = new StringBuilder(i);
        if (bArr.length < i) {
            s.d(a, "data length is shorter then print command length");
            i = bArr.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(String.format("%02X ", new Object[]{Byte.valueOf(bArr[i2])}));
        }
        return sb.toString();
    }

    public static byte[] a(String str) {
        if (str == null || str.length() == 0) {
            s.e(a, "String is null or nil");
            return null;
        }
        String[] split = str.toUpperCase(Locale.US).split(":");
        String[] strArr = new String[split.length];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = split[(split.length - i) - 1];
        }
        byte[] bArr = new byte[strArr.length];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = (byte) Integer.parseInt(strArr[i2], 16);
        }
        return bArr;
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null) {
            return false;
        }
        int length = bArr.length;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public static byte[] a(short s) {
        return new byte[]{(byte) (s >>> 8), (byte) s};
    }
}
