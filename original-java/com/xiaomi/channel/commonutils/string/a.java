package com.xiaomi.channel.commonutils.string;

import com.mi.milinkforgame.sdk.base.os.Http;

public class a {
    private static final String a = System.getProperty("line.separator");
    private static char[] b = new char[64];
    private static byte[] c = new byte[128];

    static {
        char c2 = 'A';
        int i = 0;
        while (c2 <= 'Z') {
            int i2 = i + 1;
            b[i] = c2;
            c2 = (char) (c2 + 1);
            i = i2;
        }
        char c3 = 'a';
        while (c3 <= 'z') {
            int i3 = i + 1;
            b[i] = c3;
            c3 = (char) (c3 + 1);
            i = i3;
        }
        char c4 = '0';
        while (c4 <= '9') {
            int i4 = i + 1;
            b[i] = c4;
            c4 = (char) (c4 + 1);
            i = i4;
        }
        int i5 = i + 1;
        b[i] = '+';
        int i6 = i5 + 1;
        b[i5] = Http.PROTOCOL_HOST_SPLITTER;
        for (int i7 = 0; i7 < c.length; i7++) {
            c[i7] = -1;
        }
        for (int i8 = 0; i8 < 64; i8++) {
            c[b[i8]] = (byte) i8;
        }
    }

    public static byte[] a(String str) {
        return a(str.toCharArray());
    }

    public static byte[] a(char[] cArr) {
        return a(cArr, 0, cArr.length);
    }

    public static byte[] a(char[] cArr, int i, int i2) {
        char c2;
        int i3;
        char c3;
        int i4;
        int i5;
        if (i2 % 4 != 0) {
            throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
        }
        while (i2 > 0 && cArr[(i + i2) - 1] == '=') {
            i2--;
        }
        int i6 = (i2 * 3) / 4;
        byte[] bArr = new byte[i6];
        int i7 = i + i2;
        int i8 = 0;
        while (i < i7) {
            int i9 = i + 1;
            char c4 = cArr[i];
            int i10 = i9 + 1;
            char c5 = cArr[i9];
            if (i10 < i7) {
                int i11 = i10 + 1;
                c2 = cArr[i10];
                i10 = i11;
            } else {
                c2 = 'A';
            }
            if (i10 < i7) {
                int i12 = i10 + 1;
                c3 = cArr[i10];
                i3 = i12;
            } else {
                i3 = i10;
                c3 = 'A';
            }
            if (c4 > 127 || c5 > 127 || c2 > 127 || c3 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            byte b2 = c[c4];
            byte b3 = c[c5];
            byte b4 = c[c2];
            byte b5 = c[c3];
            if (b2 < 0 || b3 < 0 || b4 < 0 || b5 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            int i13 = (b2 << 2) | (b3 >>> 4);
            int i14 = ((b3 & 15) << 4) | (b4 >>> 2);
            byte b6 = ((b4 & 3) << 6) | b5;
            int i15 = i8 + 1;
            bArr[i8] = (byte) i13;
            if (i15 < i6) {
                i4 = i15 + 1;
                bArr[i15] = (byte) i14;
            } else {
                i4 = i15;
            }
            if (i4 < i6) {
                i5 = i4 + 1;
                bArr[i4] = (byte) b6;
            } else {
                i5 = i4;
            }
            i8 = i5;
            i = i3;
        }
        return bArr;
    }

    public static char[] a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static char[] a(byte[] bArr, int i, int i2) {
        byte b2;
        int i3;
        byte b3;
        int i4 = ((i2 * 4) + 2) / 3;
        char[] cArr = new char[(((i2 + 2) / 3) * 4)];
        int i5 = i + i2;
        int i6 = 0;
        while (i < i5) {
            int i7 = i + 1;
            byte b4 = bArr[i] & 255;
            if (i7 < i5) {
                b2 = bArr[i7] & 255;
                i7++;
            } else {
                b2 = 0;
            }
            if (i7 < i5) {
                i3 = i7 + 1;
                b3 = bArr[i7] & 255;
            } else {
                i3 = i7;
                b3 = 0;
            }
            int i8 = b4 >>> 2;
            int i9 = ((b4 & 3) << 4) | (b2 >>> 4);
            int i10 = ((b2 & 15) << 2) | (b3 >>> 6);
            byte b5 = b3 & 63;
            int i11 = i6 + 1;
            cArr[i6] = b[i8];
            int i12 = i11 + 1;
            cArr[i11] = b[i9];
            cArr[i12] = i12 < i4 ? b[i10] : '=';
            int i13 = i12 + 1;
            cArr[i13] = i13 < i4 ? b[b5] : '=';
            i6 = i13 + 1;
            i = i3;
        }
        return cArr;
    }
}
