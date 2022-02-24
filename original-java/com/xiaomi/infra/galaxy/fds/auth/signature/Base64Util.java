package com.xiaomi.infra.galaxy.fds.auth.signature;

import com.google.common.primitives.UnsignedBytes;

/* loaded from: classes2.dex */
class Base64Util {
    private static final int BASELENGTH = 128;
    private static final int EIGHTBIT = 8;
    private static final int FOURBYTE = 4;
    private static final int LOOKUPLENGTH = 64;
    private static final char PAD = '=';
    private static final int SIGN = -128;
    private static final int SIXBIT = 6;
    private static final int SIXTEENBIT = 16;
    private static final int TWENTYFOURBITGROUP = 24;
    private static final boolean fDebug = false;
    private static final byte[] base64Alphabet = new byte[128];
    private static final char[] lookUpBase64Alphabet = new char[64];

    static {
        int i;
        int i2;
        int i3 = 0;
        for (int i4 = 0; i4 < 128; i4++) {
            base64Alphabet[i4] = -1;
        }
        for (int i5 = 90; i5 >= 65; i5--) {
            base64Alphabet[i5] = (byte) (i5 - 65);
        }
        int i6 = 122;
        while (true) {
            i = 26;
            if (i6 < 97) {
                break;
            }
            base64Alphabet[i6] = (byte) ((i6 - 97) + 26);
            i6--;
        }
        int i7 = 57;
        while (true) {
            i2 = 52;
            if (i7 < 48) {
                break;
            }
            base64Alphabet[i7] = (byte) ((i7 - 48) + 52);
            i7--;
        }
        byte[] bArr = base64Alphabet;
        bArr[43] = 62;
        bArr[47] = 63;
        for (int i8 = 0; i8 <= 25; i8++) {
            lookUpBase64Alphabet[i8] = (char) (i8 + 65);
        }
        int i9 = 0;
        while (i <= 51) {
            lookUpBase64Alphabet[i] = (char) (i9 + 97);
            i++;
            i9++;
        }
        while (i2 <= 61) {
            lookUpBase64Alphabet[i2] = (char) (i3 + 48);
            i2++;
            i3++;
        }
        char[] cArr = lookUpBase64Alphabet;
        cArr[62] = '+';
        cArr[63] = '/';
    }

    Base64Util() {
    }

    public static byte[] decode(String str) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int removeWhiteSpace = removeWhiteSpace(charArray);
        if (removeWhiteSpace % 4 != 0) {
            return null;
        }
        int i = removeWhiteSpace / 4;
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i * 3];
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < i - 1) {
            int i5 = i3 + 1;
            char c2 = charArray[i3];
            if (isData(c2)) {
                int i6 = i5 + 1;
                char c3 = charArray[i5];
                if (isData(c3)) {
                    int i7 = i6 + 1;
                    char c4 = charArray[i6];
                    if (isData(c4)) {
                        i3 = i7 + 1;
                        char c5 = charArray[i7];
                        if (isData(c5)) {
                            byte[] bArr2 = base64Alphabet;
                            byte b2 = bArr2[c2];
                            byte b3 = bArr2[c3];
                            byte b4 = bArr2[c4];
                            byte b5 = bArr2[c5];
                            int i8 = i4 + 1;
                            bArr[i4] = (byte) ((b2 << 2) | (b3 >> 4));
                            int i9 = i8 + 1;
                            bArr[i8] = (byte) (((b3 & 15) << 4) | ((b4 >> 2) & 15));
                            i4 = i9 + 1;
                            bArr[i9] = (byte) ((b4 << 6) | b5);
                            i2++;
                        }
                    }
                }
            }
            return null;
        }
        int i10 = i3 + 1;
        char c6 = charArray[i3];
        if (!isData(c6)) {
            return null;
        }
        int i11 = i10 + 1;
        char c7 = charArray[i10];
        if (!isData(c7)) {
            return null;
        }
        byte[] bArr3 = base64Alphabet;
        byte b6 = bArr3[c6];
        byte b7 = bArr3[c7];
        int i12 = i11 + 1;
        char c8 = charArray[i11];
        char c9 = charArray[i12];
        if (isData(c8) && isData(c9)) {
            byte[] bArr4 = base64Alphabet;
            byte b8 = bArr4[c8];
            byte b9 = bArr4[c9];
            int i13 = i4 + 1;
            bArr[i4] = (byte) ((b6 << 2) | (b7 >> 4));
            bArr[i13] = (byte) (((b7 & 15) << 4) | ((b8 >> 2) & 15));
            bArr[i13 + 1] = (byte) (b9 | (b8 << 6));
            return bArr;
        } else if (!isPad(c8) || !isPad(c9)) {
            if (isPad(c8) || !isPad(c9)) {
                return null;
            }
            byte b10 = base64Alphabet[c8];
            if ((b10 & 3) != 0) {
                return null;
            }
            int i14 = i2 * 3;
            byte[] bArr5 = new byte[i14 + 2];
            System.arraycopy(bArr, 0, bArr5, 0, i14);
            bArr5[i4] = (byte) ((b6 << 2) | (b7 >> 4));
            bArr5[i4 + 1] = (byte) (((b10 >> 2) & 15) | ((b7 & 15) << 4));
            return bArr5;
        } else if ((b7 & 15) != 0) {
            return null;
        } else {
            int i15 = i2 * 3;
            byte[] bArr6 = new byte[i15 + 1];
            System.arraycopy(bArr, 0, bArr6, 0, i15);
            bArr6[i4] = (byte) ((b6 << 2) | (b7 >> 4));
            return bArr6;
        }
    }

    public static String encode(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length * 8;
        if (length == 0) {
            return "";
        }
        int i = length % 24;
        int i2 = length / 24;
        char[] cArr = new char[(i != 0 ? i2 + 1 : i2) * 4];
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i2; i5++) {
            int i6 = i3 + 1;
            byte b2 = bArr[i3];
            int i7 = i6 + 1;
            byte b3 = bArr[i6];
            i3 = i7 + 1;
            byte b4 = bArr[i7];
            byte b5 = (byte) (b3 & 15);
            byte b6 = (byte) (b2 & 3);
            int i8 = b2 & UnsignedBytes.MAX_POWER_OF_TWO;
            int i9 = b2 >> 2;
            if (i8 != 0) {
                i9 ^= 192;
            }
            byte b7 = (byte) i9;
            int i10 = b3 & UnsignedBytes.MAX_POWER_OF_TWO;
            int i11 = b3 >> 4;
            if (i10 != 0) {
                i11 ^= 240;
            }
            byte b8 = (byte) i11;
            int i12 = (b4 & UnsignedBytes.MAX_POWER_OF_TWO) == 0 ? b4 >> 6 : (b4 >> 6) ^ 252;
            int i13 = i4 + 1;
            char[] cArr2 = lookUpBase64Alphabet;
            cArr[i4] = cArr2[b7];
            int i14 = i13 + 1;
            cArr[i13] = cArr2[(b6 << 4) | b8];
            int i15 = i14 + 1;
            cArr[i14] = cArr2[(b5 << 2) | ((byte) i12)];
            i4 = i15 + 1;
            cArr[i15] = cArr2[b4 & 63];
        }
        if (i == 8) {
            byte b9 = bArr[i3];
            byte b10 = (byte) (b9 & 3);
            int i16 = b9 & UnsignedBytes.MAX_POWER_OF_TWO;
            int i17 = b9 >> 2;
            if (i16 != 0) {
                i17 ^= 192;
            }
            int i18 = i4 + 1;
            char[] cArr3 = lookUpBase64Alphabet;
            cArr[i4] = cArr3[(byte) i17];
            int i19 = i18 + 1;
            cArr[i18] = cArr3[b10 << 4];
            cArr[i19] = PAD;
            cArr[i19 + 1] = PAD;
        } else if (i == 16) {
            byte b11 = bArr[i3];
            byte b12 = bArr[i3 + 1];
            byte b13 = (byte) (b12 & 15);
            byte b14 = (byte) (b11 & 3);
            int i20 = b11 & UnsignedBytes.MAX_POWER_OF_TWO;
            int i21 = b11 >> 2;
            if (i20 != 0) {
                i21 ^= 192;
            }
            byte b15 = (byte) i21;
            int i22 = b12 & UnsignedBytes.MAX_POWER_OF_TWO;
            int i23 = b12 >> 4;
            if (i22 != 0) {
                i23 ^= 240;
            }
            int i24 = i4 + 1;
            char[] cArr4 = lookUpBase64Alphabet;
            cArr[i4] = cArr4[b15];
            int i25 = i24 + 1;
            cArr[i24] = cArr4[((byte) i23) | (b14 << 4)];
            cArr[i25] = cArr4[b13 << 2];
            cArr[i25 + 1] = PAD;
        }
        return new String(cArr);
    }

    protected static boolean isBase64(char c2) {
        return isWhiteSpace(c2) || isPad(c2) || isData(c2);
    }

    protected static boolean isData(char c2) {
        return c2 < 128 && base64Alphabet[c2] != -1;
    }

    protected static boolean isPad(char c2) {
        return c2 == '=';
    }

    protected static boolean isWhiteSpace(char c2) {
        return c2 == ' ' || c2 == '\r' || c2 == '\n' || c2 == '\t';
    }

    protected static int removeWhiteSpace(char[] cArr) {
        if (cArr == null) {
            return 0;
        }
        int length = cArr.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (!isWhiteSpace(cArr[i2])) {
                i++;
                cArr[i] = cArr[i2];
            }
        }
        return i;
    }
}
