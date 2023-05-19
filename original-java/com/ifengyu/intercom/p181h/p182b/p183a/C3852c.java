package com.ifengyu.intercom.p181h.p182b.p183a;

import com.google.common.primitives.UnsignedBytes;

/* compiled from: PacketUtil.java */
/* renamed from: com.ifengyu.intercom.h.b.a.c */
/* loaded from: classes2.dex */
public class C3852c {
    /* renamed from: a */
    public static byte[] m12402a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    /* renamed from: b */
    public static int m12401b(byte[] bArr) {
        return ((bArr[4] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[5] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: c */
    public static byte[] m12400c(byte[] bArr) {
        return m12402a(bArr, bArr.length - 2, 2);
    }

    /* renamed from: d */
    public static byte[] m12399d(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length - 10) - 2];
        System.arraycopy(bArr, 10, bArr2, 0, (bArr.length - 10) - 2);
        return bArr2;
    }

    /* renamed from: e */
    public static int m12398e(byte[] bArr) {
        return ((bArr[0] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[1] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: f */
    public static int m12397f(byte[] bArr) {
        return bArr[9] & UnsignedBytes.MAX_VALUE;
    }

    /* renamed from: g */
    public static int m12396g(byte[] bArr) {
        return ((bArr[6] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[7] & UnsignedBytes.MAX_VALUE);
    }

    /* renamed from: h */
    public static int m12395h(byte[] bArr) {
        return bArr[8] & UnsignedBytes.MAX_VALUE;
    }

    /* renamed from: i */
    public static int m12394i(byte[] bArr) {
        return bArr[1] & UnsignedBytes.MAX_VALUE;
    }

    /* renamed from: j */
    public static void m12393j(byte[] bArr, long j, int i, int i2) {
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
