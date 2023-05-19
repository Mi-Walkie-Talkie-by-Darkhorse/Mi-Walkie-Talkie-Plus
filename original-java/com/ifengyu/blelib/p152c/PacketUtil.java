package com.ifengyu.blelib.p152c;

import com.google.common.primitives.UnsignedBytes;

/* renamed from: com.ifengyu.blelib.c.f */
/* loaded from: classes2.dex */
public class PacketUtil {
    /* renamed from: a */
    public static byte[] m14341a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    /* renamed from: b */
    public static int m14340b(byte[] bArr) {
        return ((bArr[4] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[5] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: c */
    public static byte[] m14339c(byte[] bArr) {
        return m14341a(bArr, bArr.length - 2, 2);
    }

    /* renamed from: d */
    public static byte[] m14338d(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length - 8) - 2];
        System.arraycopy(bArr, 8, bArr2, 0, (bArr.length - 8) - 2);
        return bArr2;
    }

    /* renamed from: e */
    public static int m14337e(byte[] bArr) {
        return ((bArr[0] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[1] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: f */
    public static int m14336f(byte[] bArr) {
        return ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[3] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: g */
    public static int m14335g(byte[] bArr) {
        return ((bArr[6] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[7] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: h */
    public static int m14334h(byte[] bArr) {
        return bArr[1] & UnsignedBytes.MAX_VALUE;
    }

    /* renamed from: i */
    public static void m14333i(byte[] bArr, long j, int i, int i2) {
        int i3;
        while (i2 > 0) {
            i2--;
            if (i2 > 0) {
                i3 = i + 1;
                bArr[i] = (byte) (255 & (j >> (i2 * 8)));
            } else {
                i3 = i + 1;
                bArr[i] = (byte) (255 & j);
            }
            i = i3;
        }
    }
}
