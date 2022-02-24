package com.ifengyu.blelib.d;

import com.google.common.primitives.UnsignedBytes;

/* compiled from: PacketUtil.java */
/* loaded from: classes.dex */
public class f {
    public static int a(byte[] bArr) {
        return ((bArr[4] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[5] & UnsignedBytes.MAX_VALUE);
    }

    public static byte[] b(byte[] bArr) {
        return a(bArr, bArr.length - 2, 2);
    }

    public static byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length - 8) - 2];
        System.arraycopy(bArr, 8, bArr2, 0, (bArr.length - 8) - 2);
        return bArr2;
    }

    public static int d(byte[] bArr) {
        return ((bArr[0] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[1] & UnsignedBytes.MAX_VALUE);
    }

    public static int e(byte[] bArr) {
        return ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[3] & UnsignedBytes.MAX_VALUE);
    }

    public static int f(byte[] bArr) {
        return ((bArr[6] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[7] & UnsignedBytes.MAX_VALUE);
    }

    public static int g(byte[] bArr) {
        return bArr[1] & UnsignedBytes.MAX_VALUE;
    }

    public static byte[] a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return bArr2;
    }

    public static void a(byte[] bArr, long j, int i, int i2) {
        while (i2 > 0) {
            i2--;
            if (i2 > 0) {
                i++;
                bArr[i] = (byte) (255 & (j >> (i2 * 8)));
            } else {
                i++;
                bArr[i] = (byte) (255 & j);
            }
        }
    }
}
