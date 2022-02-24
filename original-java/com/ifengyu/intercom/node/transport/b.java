package com.ifengyu.intercom.node.transport;

import com.google.common.primitives.UnsignedBytes;
import com.ifengyu.intercom.i.z;
import com.xiaomi.mipush.sdk.Constants;
import java.util.Locale;

/* compiled from: BytesUtil.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5959a = "b";

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            z.b(f5959a, "Byte Array is null or empty");
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length);
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            sb.append(String.format("%02X ", Byte.valueOf(bArr[i])));
        }
        return sb.toString();
    }

    public static byte[] a(short s) {
        return new byte[]{(byte) (s >>> 8), (byte) s};
    }

    public static int b(byte[] bArr) {
        return ((bArr[0] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[1] & UnsignedBytes.MAX_VALUE);
    }

    public static String a(byte[] bArr, int i) {
        StringBuilder sb = new StringBuilder(i);
        if (bArr.length < i) {
            z.e(f5959a, "data length is shorter then print command length");
            i = bArr.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(String.format("%02X ", Byte.valueOf(bArr[i2])));
        }
        return sb.toString();
    }

    public static byte[] a(String str) {
        if (str == null || str.length() == 0) {
            z.b(f5959a, "String is null or nil");
            return null;
        }
        String[] split = str.toUpperCase(Locale.US).split(Constants.COLON_SEPARATOR);
        int length = split.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            strArr[i] = split[(split.length - i) - 1];
        }
        byte[] bArr = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) Integer.parseInt(strArr[i2], 16);
        }
        return bArr;
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        int length;
        if (bArr == null && bArr2 == null) {
            return true;
        }
        if (bArr == null || bArr2 == null || (length = bArr.length) != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }
}
