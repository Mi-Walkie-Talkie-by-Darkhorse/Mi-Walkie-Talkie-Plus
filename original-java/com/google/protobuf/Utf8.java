package com.google.protobuf;

final class Utf8 {
    public static final int COMPLETE = 0;
    public static final int MALFORMED = -1;

    private Utf8() {
    }

    public static boolean isValidUtf8(byte[] bArr) {
        return isValidUtf8(bArr, 0, bArr.length);
    }

    public static boolean isValidUtf8(byte[] bArr, int i, int i2) {
        return partialIsValidUtf8(bArr, i, i2) == 0;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0042, code lost:
        if (r8[r2] > -65) goto L_0x0044;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x007d, code lost:
        if (r8[r2] > -65) goto L_0x007f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static int partialIsValidUtf8(int r7, byte[] r8, int r9, int r10) {
        /*
            r3 = -32
            r4 = -96
            r1 = -1
            r6 = -65
            if (r7 == 0) goto L_0x0082
            if (r9 < r10) goto L_0x000c
        L_0x000b:
            return r7
        L_0x000c:
            byte r5 = (byte) r7
            if (r5 >= r3) goto L_0x001b
            r0 = -62
            if (r5 < r0) goto L_0x0019
            int r0 = r9 + 1
            byte r2 = r8[r9]
            if (r2 <= r6) goto L_0x0081
        L_0x0019:
            r7 = r1
            goto L_0x000b
        L_0x001b:
            r0 = -16
            if (r5 >= r0) goto L_0x0046
            int r0 = r7 >> 8
            r0 = r0 ^ -1
            byte r0 = (byte) r0
            if (r0 != 0) goto L_0x0031
            int r2 = r9 + 1
            byte r0 = r8[r9]
            if (r2 < r10) goto L_0x0032
            int r7 = incompleteStateFor(r5, r0)
            goto L_0x000b
        L_0x0031:
            r2 = r9
        L_0x0032:
            if (r0 > r6) goto L_0x0044
            if (r5 != r3) goto L_0x0038
            if (r0 < r4) goto L_0x0044
        L_0x0038:
            r3 = -19
            if (r5 != r3) goto L_0x003e
            if (r0 >= r4) goto L_0x0044
        L_0x003e:
            int r9 = r2 + 1
            byte r0 = r8[r2]
            if (r0 <= r6) goto L_0x0082
        L_0x0044:
            r7 = r1
            goto L_0x000b
        L_0x0046:
            int r0 = r7 >> 8
            r0 = r0 ^ -1
            byte r2 = (byte) r0
            r0 = 0
            if (r2 != 0) goto L_0x0059
            int r3 = r9 + 1
            byte r2 = r8[r9]
            if (r3 < r10) goto L_0x0087
            int r7 = incompleteStateFor(r5, r2)
            goto L_0x000b
        L_0x0059:
            int r0 = r7 >> 16
            byte r0 = (byte) r0
            r4 = r2
            r3 = r9
        L_0x005e:
            if (r0 != 0) goto L_0x006b
            int r2 = r3 + 1
            byte r0 = r8[r3]
            if (r2 < r10) goto L_0x006c
            int r7 = incompleteStateFor(r5, r4, r0)
            goto L_0x000b
        L_0x006b:
            r2 = r3
        L_0x006c:
            if (r4 > r6) goto L_0x007f
            int r3 = r5 << 28
            int r4 = r4 + 112
            int r3 = r3 + r4
            int r3 = r3 >> 30
            if (r3 != 0) goto L_0x007f
            if (r0 > r6) goto L_0x007f
            int r9 = r2 + 1
            byte r0 = r8[r2]
            if (r0 <= r6) goto L_0x0082
        L_0x007f:
            r7 = r1
            goto L_0x000b
        L_0x0081:
            r9 = r0
        L_0x0082:
            int r7 = partialIsValidUtf8(r8, r9, r10)
            goto L_0x000b
        L_0x0087:
            r4 = r2
            goto L_0x005e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.Utf8.partialIsValidUtf8(int, byte[], int, int):int");
    }

    public static int partialIsValidUtf8(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return 0;
        }
        return partialIsValidUtf8NonAscii(bArr, i, i2);
    }

    private static int partialIsValidUtf8NonAscii(byte[] bArr, int i, int i2) {
        int i3;
        while (i < i2) {
            int i4 = i + 1;
            byte b = bArr[i];
            if (b < 0) {
                if (b < -32) {
                    if (i4 >= i2) {
                        return b;
                    }
                    if (b >= -62) {
                        i3 = i4 + 1;
                        if (bArr[i4] > -65) {
                        }
                    }
                    return -1;
                } else if (b < -16) {
                    if (i4 >= i2 - 1) {
                        return incompleteStateFor(bArr, i4, i2);
                    }
                    int i5 = i4 + 1;
                    byte b2 = bArr[i4];
                    if (b2 <= -65 && ((b != -32 || b2 >= -96) && (b != -19 || b2 < -96))) {
                        i3 = i5 + 1;
                        if (bArr[i5] > -65) {
                        }
                    }
                    return -1;
                } else if (i4 >= i2 - 2) {
                    return incompleteStateFor(bArr, i4, i2);
                } else {
                    int i6 = i4 + 1;
                    byte b3 = bArr[i4];
                    if (b3 <= -65 && (((b << 28) + (b3 + 112)) >> 30) == 0) {
                        int i7 = i6 + 1;
                        if (bArr[i6] <= -65) {
                            i3 = i7 + 1;
                            if (bArr[i7] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                i = i3;
            } else {
                i = i4;
            }
        }
        return 0;
    }

    private static int incompleteStateFor(int i) {
        if (i > -12) {
            return -1;
        }
        return i;
    }

    private static int incompleteStateFor(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return (i2 << 8) ^ i;
    }

    private static int incompleteStateFor(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return ((i2 << 8) ^ i) ^ (i3 << 16);
    }

    private static int incompleteStateFor(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        switch (i2 - i) {
            case 0:
                return incompleteStateFor(b);
            case 1:
                return incompleteStateFor(b, bArr[i]);
            case 2:
                return incompleteStateFor((int) b, (int) bArr[i], (int) bArr[i + 1]);
            default:
                throw new AssertionError();
        }
    }
}
