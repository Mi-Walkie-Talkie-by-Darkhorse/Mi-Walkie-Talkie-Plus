package com.ifengyu.intercom.node.transport;

import com.google.common.primitives.UnsignedBytes;
import com.ifengyu.intercom.i.o;

/* compiled from: Packet.java */
/* loaded from: classes2.dex */
public class e {
    public static int a(byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            return -1;
        }
        return ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[3] & UnsignedBytes.MAX_VALUE);
    }

    public static int b(byte[] bArr) {
        if (bArr[0] != -2) {
            return -1;
        }
        if (bArr[1] == 1) {
            return ((bArr[4] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[5] & UnsignedBytes.MAX_VALUE);
        }
        return 1;
    }

    public static int c(byte[] bArr) {
        if (bArr[0] == -2 && bArr[1] == 1) {
            return ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[3] & UnsignedBytes.MAX_VALUE);
        }
        return -1;
    }

    public static int d(byte[] bArr) {
        return c(bArr);
    }

    public static int e(byte[] bArr) {
        if (bArr[0] != -2) {
            return 0;
        }
        if (bArr[1] == 1) {
            return ((bArr[6] & UnsignedBytes.MAX_VALUE) << 8) + (bArr[7] & UnsignedBytes.MAX_VALUE);
        }
        return -1;
    }

    public static void a(byte[] bArr, long j, int i, int i2) {
        o.a(bArr, "data is null");
        o.a(i >= 0, "start is negative: %s", Integer.valueOf(i));
        o.a(bArr.length >= 0, "invalid length: %s", Integer.valueOf(bArr.length));
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
