package org.bouncycastle.pqc.math.linearalgebra;

public final class ByteUtils {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private ByteUtils() {
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[(bArr.length + bArr2.length)];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] concatenate(byte[][] bArr) {
        int length = bArr[0].length;
        byte[] bArr2 = new byte[(bArr.length * length)];
        int i = 0;
        for (byte[] arraycopy : bArr) {
            System.arraycopy(arraycopy, 0, bArr2, i, length);
            i += length;
        }
        return bArr2;
    }

    public static int deepHashCode(byte[] bArr) {
        int i = 1;
        for (byte b : bArr) {
            i = (i * 31) + b;
        }
        return i;
    }

    public static int deepHashCode(byte[][] bArr) {
        int i = 1;
        for (byte[] deepHashCode : bArr) {
            i = (i * 31) + deepHashCode(deepHashCode);
        }
        return i;
    }

    public static int deepHashCode(byte[][][] bArr) {
        int i = 1;
        for (byte[][] deepHashCode : bArr) {
            i = (i * 31) + deepHashCode(deepHashCode);
        }
        return i;
    }

    public static boolean equals(byte[] bArr, byte[] bArr2) {
        boolean z = true;
        if (bArr == null) {
            if (bArr2 != null) {
                z = false;
            }
            return z;
        } else if (bArr2 == null || bArr.length != bArr2.length) {
            return false;
        } else {
            boolean z2 = true;
            for (int length = bArr.length - 1; length >= 0; length--) {
                z2 &= bArr[length] == bArr2[length];
            }
            return z2;
        }
    }

    public static boolean equals(byte[][] bArr, byte[][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean z = true;
        int length = bArr.length - 1;
        while (length >= 0) {
            boolean equals = equals(bArr[length], bArr2[length]) & z;
            length--;
            z = equals;
        }
        return z;
    }

    public static boolean equals(byte[][][] bArr, byte[][][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        int length = bArr.length - 1;
        boolean z = true;
        while (length >= 0) {
            if (bArr[length].length != bArr2[length].length) {
                return false;
            }
            boolean z2 = z;
            for (int length2 = bArr[length].length - 1; length2 >= 0; length2--) {
                z2 &= equals(bArr[length][length2], bArr2[length][length2]);
            }
            length--;
            z = z2;
        }
        return z;
    }

    public static byte[] fromHexString(String str) {
        char[] charArray = str.toUpperCase().toCharArray();
        int i = 0;
        for (int i2 = 0; i2 < charArray.length; i2++) {
            if ((charArray[i2] >= '0' && charArray[i2] <= '9') || (charArray[i2] >= 'A' && charArray[i2] <= 'F')) {
                i++;
            }
        }
        byte[] bArr = new byte[((i + 1) >> 1)];
        int i3 = i & 1;
        for (int i4 = 0; i4 < charArray.length; i4++) {
            if (charArray[i4] < '0' || charArray[i4] > '9') {
                if (charArray[i4] >= 'A' && charArray[i4] <= 'F') {
                    int i5 = i3 >> 1;
                    bArr[i5] = (byte) (bArr[i5] << 4);
                    int i6 = i3 >> 1;
                    bArr[i6] = (byte) (bArr[i6] | ((charArray[i4] - 'A') + 10));
                }
            } else {
                int i7 = i3 >> 1;
                bArr[i7] = (byte) (bArr[i7] << 4);
                int i8 = i3 >> 1;
                bArr[i8] = (byte) (bArr[i8] | (charArray[i4] - '0'));
            }
            i3++;
        }
        return bArr;
    }

    public static byte[][] split(byte[] bArr, int i) throws ArrayIndexOutOfBoundsException {
        if (i > bArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        byte[][] bArr2 = {new byte[i], new byte[(bArr.length - i)]};
        System.arraycopy(bArr, 0, bArr2[0], 0, i);
        System.arraycopy(bArr, i, bArr2[1], 0, bArr.length - i);
        return bArr2;
    }

    public static byte[] subArray(byte[] bArr, int i) {
        return subArray(bArr, i, bArr.length);
    }

    public static byte[] subArray(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[(i2 - i)];
        System.arraycopy(bArr, i, bArr2, 0, i2 - i);
        return bArr2;
    }

    /* JADX WARNING: type inference failed for: r0v9, types: [int] */
    /* JADX WARNING: type inference failed for: r3v7 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 1 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String toBinaryString(byte[] r7) {
        /*
            r2 = 0
            java.lang.String r0 = ""
            r1 = r2
        L_0x0004:
            int r3 = r7.length
            if (r1 >= r3) goto L_0x0043
            byte r5 = r7[r1]
            r3 = r2
        L_0x000a:
            r4 = 8
            if (r3 >= r4) goto L_0x0028
            int r4 = r5 >>> r3
            r4 = r4 & 1
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            java.lang.StringBuilder r0 = r6.append(r0)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r4 = r0.toString()
            int r0 = r3 + 1
            r3 = r0
            r0 = r4
            goto L_0x000a
        L_0x0028:
            int r3 = r7.length
            int r3 = r3 + -1
            if (r1 == r3) goto L_0x0040
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r3 = " "
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.String r0 = r0.toString()
        L_0x0040:
            int r1 = r1 + 1
            goto L_0x0004
        L_0x0043:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.pqc.math.linearalgebra.ByteUtils.toBinaryString(byte[]):java.lang.String");
    }

    public static char[] toCharArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int i = 0; i < bArr.length; i++) {
            cArr[i] = (char) bArr[i];
        }
        return cArr;
    }

    public static String toHexString(byte[] bArr) {
        String str = "";
        for (int i = 0; i < bArr.length; i++) {
            str = (str + HEX_CHARS[(bArr[i] >>> 4) & 15]) + HEX_CHARS[bArr[i] & 15];
        }
        return str;
    }

    public static String toHexString(byte[] bArr, String str, String str2) {
        String str3 = new String(str);
        for (int i = 0; i < bArr.length; i++) {
            str3 = (str3 + HEX_CHARS[(bArr[i] >>> 4) & 15]) + HEX_CHARS[bArr[i] & 15];
            if (i < bArr.length - 1) {
                str3 = str3 + str2;
            }
        }
        return str3;
    }

    public static byte[] xor(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr3[length] = (byte) (bArr[length] ^ bArr2[length]);
        }
        return bArr3;
    }
}
