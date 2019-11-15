package com.ifengyu.intercom.node.transport;

import com.ifengyu.intercom.b.k;

/* compiled from: Packet */
public class e {
    public static int a(byte[] bArr) {
        if (bArr[0] != -2) {
            return -1;
        }
        if (bArr[1] == 1) {
            return ((bArr[4] & 255) << 8) + (bArr[5] & 255);
        }
        return 1;
    }

    public static int b(byte[] bArr) {
        if (bArr[0] != -2) {
            return 0;
        }
        if (bArr[1] == 1) {
            return ((bArr[6] & 255) << 8) + (bArr[7] & 255);
        }
        return -1;
    }

    public static int c(byte[] bArr) {
        if (bArr[0] == -2 && bArr[1] == 1) {
            return ((bArr[2] & 255) << 8) + (bArr[3] & 255);
        }
        return -1;
    }

    public static int d(byte[] bArr) {
        return c(bArr);
    }

    public static int e(byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            return -1;
        }
        return ((bArr[2] & 255) << 8) + (bArr[3] & 255);
    }

    public static void a(byte[] bArr, long j, int i, int i2) {
        boolean z;
        k.a(bArr, (Object) "data is null");
        k.b(i >= 0, "start is negative: %s", Integer.valueOf(i));
        if (bArr.length >= 0) {
            z = true;
        } else {
            z = false;
        }
        k.b(z, "invalid length: %s", Integer.valueOf(bArr.length));
        while (i2 > 0) {
            i2--;
            if (i2 > 0) {
                int i3 = i + 1;
                bArr[i] = (byte) ((int) ((j >> (i2 * 8)) & 255));
                i = i3;
            } else {
                int i4 = i + 1;
                bArr[i] = (byte) ((int) (j & 255));
                i = i4;
            }
        }
    }
}
