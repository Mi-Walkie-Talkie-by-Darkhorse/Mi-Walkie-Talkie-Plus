package com.ifengyu.blelib.p152c;

import com.google.common.primitives.UnsignedBytes;
import com.ifengyu.library.utils.C4975r;

/* renamed from: com.ifengyu.blelib.c.a */
/* loaded from: classes2.dex */
public class ByteUtils {

    /* renamed from: a */
    private static char[] f12054a = "0123456789ABCDEF".toCharArray();

    /* renamed from: a */
    public static int m14368a(byte[] bArr) {
        return ((bArr[1] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[0] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: b */
    public static String m14367b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        int length = bArr.length;
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = f12054a;
            cArr[i] = cArr2[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }

    /* renamed from: c */
    public static boolean m14366c(byte[] bArr, byte[] bArr2) {
        return m14365d(bArr, bArr2, Math.min(bArr.length, bArr2.length));
    }

    /* renamed from: d */
    public static boolean m14365d(byte[] bArr, byte[] bArr2, int i) {
        if (bArr == bArr2) {
            return true;
        }
        if (bArr == null || bArr2 == null || bArr.length < i || bArr2.length < i) {
            return false;
        }
        for (int i2 = 0; i2 < i; i2++) {
            if (bArr[i2] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: e */
    public static byte[] m14364e(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    /* renamed from: f */
    private static int m14363f(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'A';
            if (c < 'A' || c > 'F') {
                c2 = 'a';
                if (c < 'a' || c > 'f') {
                    throw new IllegalArgumentException();
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    /* renamed from: g */
    public static byte[] m14362g(String str) {
        if (C4975r.m8621a(str)) {
            return new byte[0];
        }
        int length = str.length();
        if (length % 2 != 0) {
            str = "0" + str;
            length++;
        }
        char[] charArray = str.toUpperCase().toCharArray();
        byte[] bArr = new byte[length >> 1];
        for (int i = 0; i < length; i += 2) {
            bArr[i >> 1] = (byte) ((m14363f(charArray[i]) << 4) | m14363f(charArray[i + 1]));
        }
        return bArr;
    }

    /* renamed from: h */
    public static boolean m14361h(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }
}
