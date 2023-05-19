package com.ifengyu.intercom.device.oldDevice.p180x;

import com.google.common.primitives.UnsignedBytes;
import com.ifengyu.intercom.p214p.CommonUtil;

/* compiled from: Packet.java */
/* renamed from: com.ifengyu.intercom.device.oldDevice.x.c */
/* loaded from: classes2.dex */
public class C3841c {
    /* renamed from: a */
    public static int m12461a(byte[] bArr) {
        if (bArr[0] == -2) {
            if (bArr[1] == 1) {
                return ((bArr[4] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[5] & UnsignedBytes.MAX_VALUE);
            }
            return 1;
        }
        return -1;
    }

    /* renamed from: b */
    public static byte[] m12460b(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length - 8];
        System.arraycopy(bArr, 8, bArr2, 0, bArr.length - 8);
        return bArr2;
    }

    /* renamed from: c */
    public static int m12459c(byte[] bArr) {
        if (bArr[0] == -2 && bArr[1] == 1) {
            return ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[3] & UnsignedBytes.MAX_VALUE);
        }
        return -1;
    }

    /* renamed from: d */
    public static byte[] m12458d(byte[] bArr) {
        byte[] bArr2 = new byte[(bArr.length - 8) - 2];
        System.arraycopy(bArr, 8, bArr2, 0, (bArr.length - 8) - 2);
        return bArr2;
    }

    /* renamed from: e */
    public static int m12457e(byte[] bArr) {
        if (bArr[0] == -2) {
            if (bArr[1] == 1) {
                return ((bArr[6] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[7] & UnsignedBytes.MAX_VALUE);
            }
            return -1;
        }
        return 0;
    }

    /* renamed from: f */
    public static int m12456f(byte[] bArr) {
        return bArr[1] & UnsignedBytes.MAX_VALUE;
    }

    /* renamed from: g */
    public static void m12455g(byte[] bArr, long j, int i, int i2) {
        int i3;
        CommonUtil.m11089a(bArr, "data is null");
        CommonUtil.m11086d(i >= 0, "start is negative: %s", Integer.valueOf(i));
        CommonUtil.m11086d(bArr.length >= 0, "invalid length: %s", Integer.valueOf(bArr.length));
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
