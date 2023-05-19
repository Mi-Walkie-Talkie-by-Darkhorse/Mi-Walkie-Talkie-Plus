package com.xiaomi.push;

import com.google.common.primitives.UnsignedBytes;

/* renamed from: com.xiaomi.push.bl */
/* loaded from: classes2.dex */
public class C6020bl {

    /* renamed from: a */
    private static byte[] f21116a;

    /* renamed from: a */
    private static final String f21115a = System.getProperty("line.separator");

    /* renamed from: a */
    private static char[] f21117a = new char[64];

    static {
        char c = 'A';
        int i = 0;
        while (c <= 'Z') {
            f21117a[i] = c;
            c = (char) (c + 1);
            i++;
        }
        char c2 = 'a';
        while (c2 <= 'z') {
            f21117a[i] = c2;
            c2 = (char) (c2 + 1);
            i++;
        }
        char c3 = '0';
        while (c3 <= '9') {
            f21117a[i] = c3;
            c3 = (char) (c3 + 1);
            i++;
        }
        char[] cArr = f21117a;
        cArr[i] = '+';
        cArr[i + 1] = '/';
        f21116a = new byte[128];
        int i2 = 0;
        while (true) {
            byte[] bArr = f21116a;
            if (i2 >= bArr.length) {
                break;
            }
            bArr[i2] = -1;
            i2++;
        }
        for (int i3 = 0; i3 < 64; i3++) {
            f21116a[f21117a[i3]] = (byte) i3;
        }
    }

    /* renamed from: a */
    public static String m3633a(String str) {
        return new String(m3631a(str.getBytes()));
    }

    /* renamed from: a */
    public static byte[] m3632a(String str) {
        return m3629a(str.toCharArray());
    }

    /* renamed from: a */
    public static byte[] m3629a(char[] cArr) {
        return m3628a(cArr, 0, cArr.length);
    }

    /* renamed from: a */
    public static byte[] m3628a(char[] cArr, int i, int i2) {
        int i3;
        char c;
        int i4;
        char c2;
        if (i2 % 4 == 0) {
            while (i2 > 0 && cArr[(i + i2) - 1] == '=') {
                i2--;
            }
            int i5 = (i2 * 3) / 4;
            byte[] bArr = new byte[i5];
            int i6 = i2 + i;
            int i7 = 0;
            while (i < i6) {
                int i8 = i + 1;
                char c3 = cArr[i];
                int i9 = i8 + 1;
                char c4 = cArr[i8];
                if (i9 < i6) {
                    i3 = i9 + 1;
                    c = cArr[i9];
                } else {
                    i3 = i9;
                    c = 'A';
                }
                if (i3 < i6) {
                    i4 = i3 + 1;
                    c2 = cArr[i3];
                } else {
                    i4 = i3;
                    c2 = 'A';
                }
                if (c3 > 127 || c4 > 127 || c > 127 || c2 > 127) {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
                byte[] bArr2 = f21116a;
                byte b = bArr2[c3];
                byte b2 = bArr2[c4];
                byte b3 = bArr2[c];
                byte b4 = bArr2[c2];
                if (b < 0 || b2 < 0 || b3 < 0 || b4 < 0) {
                    throw new IllegalArgumentException("Illegal character in Base64 encoded data.");
                }
                int i10 = (b << 2) | (b2 >>> 4);
                int i11 = ((b2 & 15) << 4) | (b3 >>> 2);
                int i12 = ((b3 & 3) << 6) | b4;
                int i13 = i7 + 1;
                bArr[i7] = (byte) i10;
                if (i13 < i5) {
                    bArr[i13] = (byte) i11;
                    i13++;
                }
                if (i13 < i5) {
                    bArr[i13] = (byte) i12;
                    i7 = i13 + 1;
                } else {
                    i7 = i13;
                }
                i = i4;
            }
            return bArr;
        }
        throw new IllegalArgumentException("Length of Base64 encoded input string is not a multiple of 4.");
    }

    /* renamed from: a */
    public static char[] m3631a(byte[] bArr) {
        return m3630a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public static char[] m3630a(byte[] bArr, int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6 = ((i2 * 4) + 2) / 3;
        char[] cArr = new char[((i2 + 2) / 3) * 4];
        int i7 = i2 + i;
        int i8 = 0;
        while (i < i7) {
            int i9 = i + 1;
            int i10 = bArr[i] & UnsignedBytes.MAX_VALUE;
            if (i9 < i7) {
                i3 = i9 + 1;
                i4 = bArr[i9] & UnsignedBytes.MAX_VALUE;
            } else {
                i3 = i9;
                i4 = 0;
            }
            if (i3 < i7) {
                i5 = bArr[i3] & UnsignedBytes.MAX_VALUE;
                i3++;
            } else {
                i5 = 0;
            }
            int i11 = i10 >>> 2;
            int i12 = ((i10 & 3) << 4) | (i4 >>> 4);
            int i13 = ((i4 & 15) << 2) | (i5 >>> 6);
            int i14 = i5 & 63;
            int i15 = i8 + 1;
            char[] cArr2 = f21117a;
            cArr[i8] = cArr2[i11];
            int i16 = i15 + 1;
            cArr[i15] = cArr2[i12];
            char c = '=';
            cArr[i16] = i16 < i6 ? cArr2[i13] : '=';
            int i17 = i16 + 1;
            if (i17 < i6) {
                c = cArr2[i14];
            }
            cArr[i17] = c;
            i8 = i17 + 1;
            i = i3;
        }
        return cArr;
    }
}
