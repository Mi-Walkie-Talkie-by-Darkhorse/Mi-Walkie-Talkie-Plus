package com.xiaomi.account.utils;

import com.google.common.primitives.UnsignedBytes;

/* loaded from: classes2.dex */
public class Base64Coder {
    private static byte[] map2;
    private static final String systemLineSeparator = System.getProperty("line.separator");
    private static char[] map1 = new char[64];

    static {
        int i = 0;
        for (char c2 = 'A'; c2 <= 'Z'; c2 = (char) (c2 + 1)) {
            i++;
            map1[i] = c2;
        }
        for (char c3 = 'a'; c3 <= 'z'; c3 = (char) (c3 + 1)) {
            i++;
            map1[i] = c3;
        }
        for (char c4 = '0'; c4 <= '9'; c4 = (char) (c4 + 1)) {
            i++;
            map1[i] = c4;
        }
        char[] cArr = map1;
        cArr[i] = '+';
        cArr[i + 1] = '/';
        map2 = new byte[128];
        int i2 = 0;
        while (true) {
            byte[] bArr = map2;
            if (i2 < bArr.length) {
                bArr[i2] = -1;
                i2++;
            }
        }
        for (int i3 = 0; i3 < 64; i3++) {
            map2[map1[i3]] = (byte) i3;
        }
    }

    private Base64Coder() {
    }

    public static byte[] decode(String str) {
        return decode(str.toCharArray());
    }

    public static byte[] decodeLines(String str) {
        char[] cArr = new char[str.length()];
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (!(charAt == ' ' || charAt == '\r' || charAt == '\n' || charAt == '\t')) {
                i++;
                cArr[i] = charAt;
            }
        }
        return decode(cArr, 0, i);
    }

    public static String decodeString(String str) {
        return new String(decode(str));
    }

    public static char[] encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public static String encodeLines(byte[] bArr) {
        return encodeLines(bArr, 0, bArr.length, 76, systemLineSeparator);
    }

    public static String encodeString(String str) {
        return new String(encode(str.getBytes()));
    }

    public static byte[] decode(char[] cArr) {
        return decode(cArr, 0, cArr.length);
    }

    public static char[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, i);
    }

    public static String encodeLines(byte[] bArr, int i, int i2, int i3, String str) {
        int i4 = (i3 * 3) / 4;
        if (i4 > 0) {
            StringBuilder sb = new StringBuilder((((i2 + 2) / 3) * 4) + ((((i2 + i4) - 1) / i4) * str.length()));
            int i5 = 0;
            while (i5 < i2) {
                int min = Math.min(i2 - i5, i4);
                sb.append(encode(bArr, i + i5, min));
                sb.append(str);
                i5 += min;
            }
            return sb.toString();
        }
        throw new IllegalArgumentException();
    }

    public static byte[] decode(char[] cArr, int i, int i2) {
        int i3;
        char c2;
        char c3;
        if (i2 % 4 == 0) {
            while (i2 > 0 && cArr[(i + i2) - 1] == '=') {
                i2--;
            }
            int i4 = (i2 * 3) / 4;
            byte[] bArr = new byte[i4];
            int i5 = i2 + i;
            int i6 = 0;
            while (i < i5) {
                int i7 = i + 1;
                char c4 = cArr[i];
                int i8 = i7 + 1;
                char c5 = cArr[i7];
                if (i8 < i5) {
                    i3 = i8 + 1;
                    c2 = cArr[i8];
                } else {
                    i3 = i8;
                    c2 = 'A';
                }
                if (i3 < i5) {
                    i = i3 + 1;
                    c3 = cArr[i3];
                } else {
                    i = i3;
                    c3 = 'A';
                }
                if (c4 > 127 || c5 > 127 || c2 > 127 || c3 > 127) {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
                byte[] bArr2 = map2;
                byte b2 = bArr2[c4];
                byte b3 = bArr2[c5];
                byte b4 = bArr2[c2];
                byte b5 = bArr2[c3];
                if (b2 < 0 || b3 < 0 || b4 < 0 || b5 < 0) {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
                int i9 = (b2 << 2) | (b3 >>> 4);
                int i10 = ((b3 & 15) << 4) | (b4 >>> 2);
                int i11 = ((b4 & 3) << 6) | b5;
                int i12 = i6 + 1;
                bArr[i6] = (byte) i9;
                if (i12 < i4) {
                    i12++;
                    bArr[i12] = (byte) i10;
                }
                if (i12 < i4) {
                    i6 = i12 + 1;
                    bArr[i12] = (byte) i11;
                } else {
                    i6 = i12;
                }
            }
            return bArr;
        }
        throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }

    public static char[] encode(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5 = ((i2 * 4) + 2) / 3;
        char[] cArr = new char[((i2 + 2) / 3) * 4];
        int i6 = i2 + i;
        int i7 = 0;
        while (i < i6) {
            int i8 = i + 1;
            int i9 = bArr[i] & UnsignedBytes.MAX_VALUE;
            if (i8 < i6) {
                i = i8 + 1;
                i3 = bArr[i8] & UnsignedBytes.MAX_VALUE;
            } else {
                i = i8;
                i3 = 0;
            }
            if (i < i6) {
                i++;
                i4 = bArr[i] & UnsignedBytes.MAX_VALUE;
            } else {
                i4 = 0;
            }
            int i10 = i9 >>> 2;
            int i11 = ((i9 & 3) << 4) | (i3 >>> 4);
            int i12 = ((i3 & 15) << 2) | (i4 >>> 6);
            int i13 = i4 & 63;
            int i14 = i7 + 1;
            char[] cArr2 = map1;
            cArr[i7] = cArr2[i10];
            int i15 = i14 + 1;
            cArr[i14] = cArr2[i11];
            char c2 = '=';
            cArr[i15] = i15 < i5 ? cArr2[i12] : '=';
            int i16 = i15 + 1;
            if (i16 < i5) {
                c2 = map1[i13];
            }
            cArr[i16] = c2;
            i7 = i16 + 1;
        }
        return cArr;
    }
}
