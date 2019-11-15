package com.sina.weibo.sdk.utils;

/* compiled from: Base64 */
public final class b {
    private static char[] a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=".toCharArray();
    private static byte[] b = new byte[256];

    static {
        for (int i = 0; i < 256; i++) {
            b[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            b[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            b[i3] = (byte) ((i3 + 26) - 97);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            b[i4] = (byte) ((i4 + 52) - 48);
        }
        b[43] = 62;
        b[47] = 63;
    }

    public static byte[] a(byte[] bArr) {
        int i = 0;
        int length = ((bArr.length + 3) / 4) * 3;
        if (bArr.length > 0 && bArr[bArr.length - 1] == 61) {
            length--;
        }
        if (bArr.length > 1 && bArr[bArr.length - 2] == 61) {
            length--;
        }
        byte[] bArr2 = new byte[length];
        byte b2 = 0;
        int i2 = 0;
        for (byte b3 : bArr) {
            byte b4 = b[b3 & 255];
            if (b4 >= 0) {
                int i3 = b2 << 6;
                int i4 = i2 + 6;
                byte b5 = i3 | b4;
                if (i4 >= 8) {
                    int i5 = i4 - 8;
                    int i6 = i + 1;
                    bArr2[i] = (byte) ((b5 >> i5) & 255);
                    i = i6;
                    b2 = b5;
                    i2 = i5;
                } else {
                    byte b6 = b5;
                    i2 = i4;
                    b2 = b6;
                }
            }
        }
        if (i == bArr2.length) {
            return bArr2;
        }
        throw new RuntimeException("miscalculated data length!");
    }

    public static byte[] b(byte[] bArr) {
        boolean z;
        boolean z2;
        int i;
        byte[] bArr2 = new byte[(((bArr.length + 2) / 3) * 4)];
        int i2 = 0;
        int i3 = 0;
        while (i3 < bArr.length) {
            int i4 = (bArr[i3] & 255) << 8;
            if (i3 + 1 < bArr.length) {
                i4 |= bArr[i3 + 1] & 255;
                z = true;
            } else {
                z = false;
            }
            int i5 = i4 << 8;
            if (i3 + 2 < bArr.length) {
                i5 |= bArr[i3 + 2] & 255;
                z2 = true;
            } else {
                z2 = false;
            }
            bArr2[i2 + 3] = (byte) a[z2 ? i5 & 63 : 64];
            int i6 = i5 >> 6;
            int i7 = i2 + 2;
            char[] cArr = a;
            if (z) {
                i = i6 & 63;
            } else {
                i = 64;
            }
            bArr2[i7] = (byte) cArr[i];
            int i8 = i6 >> 6;
            bArr2[i2 + 1] = (byte) a[i8 & 63];
            bArr2[i2 + 0] = (byte) a[(i8 >> 6) & 63];
            i3 += 3;
            i2 += 4;
        }
        return bArr2;
    }
}
