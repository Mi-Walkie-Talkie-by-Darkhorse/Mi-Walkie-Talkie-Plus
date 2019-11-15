package com.mi.mimsgsdk.upload;

import com.mi.milinkforgame.sdk.base.os.Http;

public class Base64Coder {
    private static char[] map1 = new char[64];
    private static byte[] map2 = new byte[128];
    private static final String systemLineSeparator = System.getProperty("line.separator");

    static {
        char c = 'A';
        int i = 0;
        while (c <= 'Z') {
            int i2 = i + 1;
            map1[i] = c;
            c = (char) (c + 1);
            i = i2;
        }
        char c2 = 'a';
        while (c2 <= 'z') {
            int i3 = i + 1;
            map1[i] = c2;
            c2 = (char) (c2 + 1);
            i = i3;
        }
        char c3 = '0';
        while (c3 <= '9') {
            int i4 = i + 1;
            map1[i] = c3;
            c3 = (char) (c3 + 1);
            i = i4;
        }
        int i5 = i + 1;
        map1[i] = '+';
        int i6 = i5 + 1;
        map1[i5] = Http.PROTOCOL_HOST_SPLITTER;
        for (int i7 = 0; i7 < map2.length; i7++) {
            map2[i7] = -1;
        }
        for (int i8 = 0; i8 < 64; i8++) {
            map2[map1[i8]] = (byte) i8;
        }
    }

    public static String encodeString(String str) {
        return new String(encode(str.getBytes()));
    }

    public static String encodeLines(byte[] bArr) {
        return encodeLines(bArr, 0, bArr.length, 76, systemLineSeparator);
    }

    public static String encodeLines(byte[] bArr, int i, int i2, int i3, String str) {
        int i4 = (i3 * 3) / 4;
        if (i4 <= 0) {
            throw new IllegalArgumentException();
        }
        StringBuilder sb = new StringBuilder(((((i2 + i4) - 1) / i4) * str.length()) + (((i2 + 2) / 3) * 4));
        int i5 = 0;
        while (i5 < i2) {
            int min = Math.min(i2 - i5, i4);
            sb.append(encode(bArr, i + i5, min));
            sb.append(str);
            i5 += min;
        }
        return sb.toString();
    }

    public static char[] encode(byte[] bArr) {
        return encode(bArr, 0, bArr.length);
    }

    public static char[] encode(byte[] bArr, int i) {
        return encode(bArr, 0, i);
    }

    public static char[] encode(byte[] bArr, int i, int i2) {
        byte b;
        int i3;
        byte b2;
        char c;
        char c2;
        int i4 = ((i2 * 4) + 2) / 3;
        char[] cArr = new char[(((i2 + 2) / 3) * 4)];
        int i5 = i + i2;
        int i6 = 0;
        while (i < i5) {
            int i7 = i + 1;
            byte b3 = bArr[i] & 255;
            if (i7 < i5) {
                b = bArr[i7] & 255;
                i7++;
            } else {
                b = 0;
            }
            if (i7 < i5) {
                i3 = i7 + 1;
                b2 = bArr[i7] & 255;
            } else {
                i3 = i7;
                b2 = 0;
            }
            int i8 = b3 >>> 2;
            int i9 = ((b3 & 3) << 4) | (b >>> 4);
            int i10 = ((b & 15) << 2) | (b2 >>> 6);
            byte b4 = b2 & 63;
            int i11 = i6 + 1;
            cArr[i6] = map1[i8];
            int i12 = i11 + 1;
            cArr[i11] = map1[i9];
            if (i12 < i4) {
                c = map1[i10];
            } else {
                c = '=';
            }
            cArr[i12] = c;
            int i13 = i12 + 1;
            if (i13 < i4) {
                c2 = map1[b4];
            } else {
                c2 = '=';
            }
            cArr[i13] = c2;
            i6 = i13 + 1;
            i = i3;
        }
        return cArr;
    }

    public static String decodeString(String str) {
        return new String(decode(str));
    }

    public static byte[] decodeLines(String str) {
        char[] cArr = new char[str.length()];
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            char charAt = str.charAt(i2);
            if (!(charAt == ' ' || charAt == 13 || charAt == 10 || charAt == 9)) {
                int i3 = i + 1;
                cArr[i] = charAt;
                i = i3;
            }
        }
        return decode(cArr, 0, i);
    }

    public static byte[] decode(String str) {
        return decode(str.toCharArray());
    }

    public static byte[] decode(char[] cArr) {
        return decode(cArr, 0, cArr.length);
    }

    public static byte[] decode(char[] cArr, int i, int i2) {
        char c;
        int i3;
        char c2;
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
            char c3 = cArr[i];
            int i10 = i9 + 1;
            char c4 = cArr[i9];
            if (i10 < i7) {
                int i11 = i10 + 1;
                c = cArr[i10];
                i10 = i11;
            } else {
                c = 'A';
            }
            if (i10 < i7) {
                int i12 = i10 + 1;
                c2 = cArr[i10];
                i3 = i12;
            } else {
                i3 = i10;
                c2 = 'A';
            }
            if (c3 > 127 || c4 > 127 || c > 127 || c2 > 127) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            byte b = map2[c3];
            byte b2 = map2[c4];
            byte b3 = map2[c];
            byte b4 = map2[c2];
            if (b < 0 || b2 < 0 || b3 < 0 || b4 < 0) {
                throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
            }
            int i13 = (b << 2) | (b2 >>> 4);
            int i14 = ((b2 & 15) << 4) | (b3 >>> 2);
            byte b5 = ((b3 & 3) << 6) | b4;
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
                bArr[i4] = (byte) b5;
            } else {
                i5 = i4;
            }
            i8 = i5;
            i = i3;
        }
        return bArr;
    }

    private Base64Coder() {
    }
}
