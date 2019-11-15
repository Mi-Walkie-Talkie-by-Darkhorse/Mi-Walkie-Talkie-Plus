package com.google.zxing.oned;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

public final class Code128Reader extends OneDReader {
    private static final int CODE_CODE_A = 101;
    private static final int CODE_CODE_B = 100;
    private static final int CODE_CODE_C = 99;
    private static final int CODE_FNC_1 = 102;
    private static final int CODE_FNC_2 = 97;
    private static final int CODE_FNC_3 = 96;
    private static final int CODE_FNC_4_A = 101;
    private static final int CODE_FNC_4_B = 100;
    static final int[][] CODE_PATTERNS = {new int[]{2, 1, 2, 2, 2, 2}, new int[]{2, 2, 2, 1, 2, 2}, new int[]{2, 2, 2, 2, 2, 1}, new int[]{1, 2, 1, 2, 2, 3}, new int[]{1, 2, 1, 3, 2, 2}, new int[]{1, 3, 1, 2, 2, 2}, new int[]{1, 2, 2, 2, 1, 3}, new int[]{1, 2, 2, 3, 1, 2}, new int[]{1, 3, 2, 2, 1, 2}, new int[]{2, 2, 1, 2, 1, 3}, new int[]{2, 2, 1, 3, 1, 2}, new int[]{2, 3, 1, 2, 1, 2}, new int[]{1, 1, 2, 2, 3, 2}, new int[]{1, 2, 2, 1, 3, 2}, new int[]{1, 2, 2, 2, 3, 1}, new int[]{1, 1, 3, 2, 2, 2}, new int[]{1, 2, 3, 1, 2, 2}, new int[]{1, 2, 3, 2, 2, 1}, new int[]{2, 2, 3, 2, 1, 1}, new int[]{2, 2, 1, 1, 3, 2}, new int[]{2, 2, 1, 2, 3, 1}, new int[]{2, 1, 3, 2, 1, 2}, new int[]{2, 2, 3, 1, 1, 2}, new int[]{3, 1, 2, 1, 3, 1}, new int[]{3, 1, 1, 2, 2, 2}, new int[]{3, 2, 1, 1, 2, 2}, new int[]{3, 2, 1, 2, 2, 1}, new int[]{3, 1, 2, 2, 1, 2}, new int[]{3, 2, 2, 1, 1, 2}, new int[]{3, 2, 2, 2, 1, 1}, new int[]{2, 1, 2, 1, 2, 3}, new int[]{2, 1, 2, 3, 2, 1}, new int[]{2, 3, 2, 1, 2, 1}, new int[]{1, 1, 1, 3, 2, 3}, new int[]{1, 3, 1, 1, 2, 3}, new int[]{1, 3, 1, 3, 2, 1}, new int[]{1, 1, 2, 3, 1, 3}, new int[]{1, 3, 2, 1, 1, 3}, new int[]{1, 3, 2, 3, 1, 1}, new int[]{2, 1, 1, 3, 1, 3}, new int[]{2, 3, 1, 1, 1, 3}, new int[]{2, 3, 1, 3, 1, 1}, new int[]{1, 1, 2, 1, 3, 3}, new int[]{1, 1, 2, 3, 3, 1}, new int[]{1, 3, 2, 1, 3, 1}, new int[]{1, 1, 3, 1, 2, 3}, new int[]{1, 1, 3, 3, 2, 1}, new int[]{1, 3, 3, 1, 2, 1}, new int[]{3, 1, 3, 1, 2, 1}, new int[]{2, 1, 1, 3, 3, 1}, new int[]{2, 3, 1, 1, 3, 1}, new int[]{2, 1, 3, 1, 1, 3}, new int[]{2, 1, 3, 3, 1, 1}, new int[]{2, 1, 3, 1, 3, 1}, new int[]{3, 1, 1, 1, 2, 3}, new int[]{3, 1, 1, 3, 2, 1}, new int[]{3, 3, 1, 1, 2, 1}, new int[]{3, 1, 2, 1, 1, 3}, new int[]{3, 1, 2, 3, 1, 1}, new int[]{3, 3, 2, 1, 1, 1}, new int[]{3, 1, 4, 1, 1, 1}, new int[]{2, 2, 1, 4, 1, 1}, new int[]{4, 3, 1, 1, 1, 1}, new int[]{1, 1, 1, 2, 2, 4}, new int[]{1, 1, 1, 4, 2, 2}, new int[]{1, 2, 1, 1, 2, 4}, new int[]{1, 2, 1, 4, 2, 1}, new int[]{1, 4, 1, 1, 2, 2}, new int[]{1, 4, 1, 2, 2, 1}, new int[]{1, 1, 2, 2, 1, 4}, new int[]{1, 1, 2, 4, 1, 2}, new int[]{1, 2, 2, 1, 1, 4}, new int[]{1, 2, 2, 4, 1, 1}, new int[]{1, 4, 2, 1, 1, 2}, new int[]{1, 4, 2, 2, 1, 1}, new int[]{2, 4, 1, 2, 1, 1}, new int[]{2, 2, 1, 1, 1, 4}, new int[]{4, 1, 3, 1, 1, 1}, new int[]{2, 4, 1, 1, 1, 2}, new int[]{1, 3, 4, 1, 1, 1}, new int[]{1, 1, 1, 2, 4, 2}, new int[]{1, 2, 1, 1, 4, 2}, new int[]{1, 2, 1, 2, 4, 1}, new int[]{1, 1, 4, 2, 1, 2}, new int[]{1, 2, 4, 1, 1, 2}, new int[]{1, 2, 4, 2, 1, 1}, new int[]{4, 1, 1, 2, 1, 2}, new int[]{4, 2, 1, 1, 1, 2}, new int[]{4, 2, 1, 2, 1, 1}, new int[]{2, 1, 2, 1, 4, 1}, new int[]{2, 1, 4, 1, 2, 1}, new int[]{4, 1, 2, 1, 2, 1}, new int[]{1, 1, 1, 1, 4, 3}, new int[]{1, 1, 1, 3, 4, 1}, new int[]{1, 3, 1, 1, 4, 1}, new int[]{1, 1, 4, 1, 1, 3}, new int[]{1, 1, 4, 3, 1, 1}, new int[]{4, 1, 1, 1, 1, 3}, new int[]{4, 1, 1, 3, 1, 1}, new int[]{1, 1, 3, 1, 4, 1}, new int[]{1, 1, 4, 1, 3, 1}, new int[]{3, 1, 1, 1, 4, 1}, new int[]{4, 1, 1, 1, 3, 1}, new int[]{2, 1, 1, 4, 1, 2}, new int[]{2, 1, 1, 2, 1, 4}, new int[]{2, 1, 1, 2, 3, 2}, new int[]{2, 3, 3, 1, 1, 1, 2}};
    private static final int CODE_SHIFT = 98;
    private static final int CODE_START_A = 103;
    private static final int CODE_START_B = 104;
    private static final int CODE_START_C = 105;
    private static final int CODE_STOP = 106;
    private static final float MAX_AVG_VARIANCE = 0.25f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.7f;

    private static int[] findStartPattern(BitArray bitArray) throws NotFoundException {
        int i;
        int i2;
        boolean z;
        int size = bitArray.getSize();
        int nextSet = bitArray.getNextSet(0);
        int[] iArr = new int[6];
        int i3 = nextSet;
        boolean z2 = false;
        int i4 = nextSet;
        int i5 = 0;
        while (i3 < size) {
            if (bitArray.get(i3) != z2) {
                iArr[i5] = iArr[i5] + 1;
                z = z2;
                i = i5;
            } else {
                if (i5 == 5) {
                    float f = MAX_AVG_VARIANCE;
                    int i6 = -1;
                    int i7 = 103;
                    while (i7 <= 105) {
                        float patternMatchVariance = patternMatchVariance(iArr, CODE_PATTERNS[i7], MAX_INDIVIDUAL_VARIANCE);
                        if (patternMatchVariance < f) {
                            i6 = i7;
                        } else {
                            patternMatchVariance = f;
                        }
                        i7++;
                        f = patternMatchVariance;
                    }
                    if (i6 < 0 || !bitArray.isRange(Math.max(0, i4 - ((i3 - i4) / 2)), i4, false)) {
                        i2 = iArr[0] + iArr[1] + i4;
                        System.arraycopy(iArr, 2, iArr, 0, i5 - 1);
                        iArr[i5 - 1] = 0;
                        iArr[i5] = 0;
                        i = i5 - 1;
                    } else {
                        return new int[]{i4, i3, i6};
                    }
                } else {
                    i = i5 + 1;
                    i2 = i4;
                }
                iArr[i] = 1;
                if (!z2) {
                    z = true;
                } else {
                    z = false;
                }
                i4 = i2;
            }
            i3++;
            z2 = z;
            i5 = i;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int decodeCode(BitArray bitArray, int[] iArr, int i) throws NotFoundException {
        recordPattern(bitArray, i, iArr);
        float f = MAX_AVG_VARIANCE;
        int i2 = -1;
        for (int i3 = 0; i3 < CODE_PATTERNS.length; i3++) {
            float patternMatchVariance = patternMatchVariance(iArr, CODE_PATTERNS[i3], MAX_INDIVIDUAL_VARIANCE);
            if (patternMatchVariance < f) {
                i2 = i3;
                f = patternMatchVariance;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARNING: Removed duplicated region for block: B:117:0x028d  */
    /* JADX WARNING: Removed duplicated region for block: B:119:0x0292  */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x005d  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x008d  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x002a  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0031  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.zxing.Result decodeRow(int r24, com.google.zxing.common.BitArray r25, java.util.Map<com.google.zxing.DecodeHintType, ?> r26) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException, com.google.zxing.ChecksumException {
        /*
            r23 = this;
            if (r26 == 0) goto L_0x002f
            com.google.zxing.DecodeHintType r2 = com.google.zxing.DecodeHintType.ASSUME_GS1
            r0 = r26
            boolean r2 = r0.containsKey(r2)
            if (r2 == 0) goto L_0x002f
            r2 = 1
        L_0x000d:
            int[] r17 = findStartPattern(r25)
            r3 = 2
            r5 = r17[r3]
            java.util.ArrayList r18 = new java.util.ArrayList
            r3 = 20
            r0 = r18
            r0.<init>(r3)
            byte r3 = (byte) r5
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r0 = r18
            r0.add(r3)
            switch(r5) {
                case 103: goto L_0x0031;
                case 104: goto L_0x008d;
                case 105: goto L_0x0090;
                default: goto L_0x002a;
            }
        L_0x002a:
            com.google.zxing.FormatException r2 = com.google.zxing.FormatException.getFormatInstance()
            throw r2
        L_0x002f:
            r2 = 0
            goto L_0x000d
        L_0x0031:
            r3 = 101(0x65, float:1.42E-43)
        L_0x0033:
            r12 = 0
            r11 = 0
            java.lang.StringBuilder r19 = new java.lang.StringBuilder
            r4 = 20
            r0 = r19
            r0.<init>(r4)
            r4 = 0
            r10 = r17[r4]
            r4 = 1
            r13 = r17[r4]
            r4 = 6
            int[] r0 = new int[r4]
            r20 = r0
            r14 = 0
            r9 = 0
            r4 = 0
            r8 = 1
            r7 = 0
            r6 = 0
            r16 = r11
            r11 = r10
            r10 = r3
            r3 = r4
            r4 = r5
            r5 = r12
            r22 = r14
            r14 = r9
            r9 = r22
        L_0x005b:
            if (r5 != 0) goto L_0x026f
            r9 = 0
            r0 = r25
            r1 = r20
            int r15 = decodeCode(r0, r1, r13)
            byte r11 = (byte) r15
            java.lang.Byte r11 = java.lang.Byte.valueOf(r11)
            r0 = r18
            r0.add(r11)
            r11 = 106(0x6a, float:1.49E-43)
            if (r15 == r11) goto L_0x0075
            r8 = 1
        L_0x0075:
            r11 = 106(0x6a, float:1.49E-43)
            if (r15 == r11) goto L_0x007e
            int r3 = r3 + 1
            int r11 = r3 * r15
            int r4 = r4 + r11
        L_0x007e:
            r11 = 0
            r12 = r13
        L_0x0080:
            r21 = 6
            r0 = r21
            if (r11 >= r0) goto L_0x0093
            r21 = r20[r11]
            int r12 = r12 + r21
            int r11 = r11 + 1
            goto L_0x0080
        L_0x008d:
            r3 = 100
            goto L_0x0033
        L_0x0090:
            r3 = 99
            goto L_0x0033
        L_0x0093:
            switch(r15) {
                case 103: goto L_0x00b2;
                case 104: goto L_0x00b2;
                case 105: goto L_0x00b2;
                default: goto L_0x0096;
            }
        L_0x0096:
            switch(r10) {
                case 99: goto L_0x0208;
                case 100: goto L_0x016d;
                case 101: goto L_0x00b7;
                default: goto L_0x0099;
            }
        L_0x0099:
            r22 = r5
            r5 = r10
            r10 = r22
        L_0x009e:
            if (r16 == 0) goto L_0x00a6
            r11 = 101(0x65, float:1.42E-43)
            if (r5 != r11) goto L_0x026b
            r5 = 100
        L_0x00a6:
            r11 = r13
            r16 = r9
            r13 = r12
            r9 = r14
            r14 = r15
            r22 = r10
            r10 = r5
            r5 = r22
            goto L_0x005b
        L_0x00b2:
            com.google.zxing.FormatException r2 = com.google.zxing.FormatException.getFormatInstance()
            throw r2
        L_0x00b7:
            r11 = 64
            if (r15 >= r11) goto L_0x00d7
            if (r6 != r7) goto L_0x00cc
            int r6 = r15 + 32
            char r6 = (char) r6
            r0 = r19
            r0.append(r6)
        L_0x00c5:
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x00cc:
            int r6 = r15 + 32
            int r6 = r6 + 128
            char r6 = (char) r6
            r0 = r19
            r0.append(r6)
            goto L_0x00c5
        L_0x00d7:
            r11 = 96
            if (r15 >= r11) goto L_0x00f5
            if (r6 != r7) goto L_0x00ec
            int r6 = r15 + -64
            char r6 = (char) r6
            r0 = r19
            r0.append(r6)
        L_0x00e5:
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x00ec:
            int r6 = r15 + 64
            char r6 = (char) r6
            r0 = r19
            r0.append(r6)
            goto L_0x00e5
        L_0x00f5:
            r11 = 106(0x6a, float:1.49E-43)
            if (r15 == r11) goto L_0x00fa
            r8 = 0
        L_0x00fa:
            switch(r15) {
                case 96: goto L_0x0126;
                case 97: goto L_0x0126;
                case 98: goto L_0x014f;
                case 99: goto L_0x0162;
                case 100: goto L_0x0159;
                case 101: goto L_0x012d;
                case 102: goto L_0x0103;
                case 103: goto L_0x00fd;
                case 104: goto L_0x00fd;
                case 105: goto L_0x00fd;
                case 106: goto L_0x016b;
                default: goto L_0x00fd;
            }
        L_0x00fd:
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0103:
            if (r2 == 0) goto L_0x00fd
            int r11 = r19.length()
            if (r11 != 0) goto L_0x0118
            java.lang.String r11 = "]C1"
            r0 = r19
            r0.append(r11)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0118:
            r11 = 29
            r0 = r19
            r0.append(r11)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0126:
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x012d:
            if (r7 != 0) goto L_0x013a
            if (r6 == 0) goto L_0x013a
            r7 = 1
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x013a:
            if (r7 == 0) goto L_0x0147
            if (r6 == 0) goto L_0x0147
            r7 = 0
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0147:
            r6 = 1
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x014f:
            r9 = 1
            r10 = 100
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0159:
            r10 = 100
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0162:
            r10 = 99
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x016b:
            r5 = 1
            goto L_0x00fd
        L_0x016d:
            r11 = 96
            if (r15 >= r11) goto L_0x018e
            if (r6 != r7) goto L_0x0183
            int r6 = r15 + 32
            char r6 = (char) r6
            r0 = r19
            r0.append(r6)
        L_0x017b:
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0183:
            int r6 = r15 + 32
            int r6 = r6 + 128
            char r6 = (char) r6
            r0 = r19
            r0.append(r6)
            goto L_0x017b
        L_0x018e:
            r11 = 106(0x6a, float:1.49E-43)
            if (r15 == r11) goto L_0x0193
            r8 = 0
        L_0x0193:
            switch(r15) {
                case 96: goto L_0x01c1;
                case 97: goto L_0x01c1;
                case 98: goto L_0x01ea;
                case 99: goto L_0x01fd;
                case 100: goto L_0x01c8;
                case 101: goto L_0x01f4;
                case 102: goto L_0x019d;
                case 103: goto L_0x0196;
                case 104: goto L_0x0196;
                case 105: goto L_0x0196;
                case 106: goto L_0x0206;
                default: goto L_0x0196;
            }
        L_0x0196:
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x019d:
            if (r2 == 0) goto L_0x0196
            int r11 = r19.length()
            if (r11 != 0) goto L_0x01b3
            java.lang.String r11 = "]C1"
            r0 = r19
            r0.append(r11)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01b3:
            r11 = 29
            r0 = r19
            r0.append(r11)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01c1:
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01c8:
            if (r7 != 0) goto L_0x01d5
            if (r6 == 0) goto L_0x01d5
            r7 = 1
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01d5:
            if (r7 == 0) goto L_0x01e2
            if (r6 == 0) goto L_0x01e2
            r7 = 0
            r6 = 0
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01e2:
            r6 = 1
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01ea:
            r9 = 1
            r10 = 101(0x65, float:1.42E-43)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01f4:
            r10 = 101(0x65, float:1.42E-43)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x01fd:
            r10 = 99
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0206:
            r5 = 1
            goto L_0x0196
        L_0x0208:
            r11 = 100
            if (r15 >= r11) goto L_0x0223
            r11 = 10
            if (r15 >= r11) goto L_0x0217
            r11 = 48
            r0 = r19
            r0.append(r11)
        L_0x0217:
            r0 = r19
            r0.append(r15)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0223:
            r11 = 106(0x6a, float:1.49E-43)
            if (r15 == r11) goto L_0x0228
            r8 = 0
        L_0x0228:
            switch(r15) {
                case 100: goto L_0x022d;
                case 101: goto L_0x025a;
                case 102: goto L_0x0236;
                case 103: goto L_0x022b;
                case 104: goto L_0x022b;
                case 105: goto L_0x022b;
                case 106: goto L_0x0263;
                default: goto L_0x022b;
            }
        L_0x022b:
            goto L_0x0099
        L_0x022d:
            r10 = 100
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0236:
            if (r2 == 0) goto L_0x0099
            int r11 = r19.length()
            if (r11 != 0) goto L_0x024c
            java.lang.String r11 = "]C1"
            r0 = r19
            r0.append(r11)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x024c:
            r11 = 29
            r0 = r19
            r0.append(r11)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x025a:
            r10 = 101(0x65, float:1.42E-43)
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x0263:
            r5 = 1
            r22 = r5
            r5 = r10
            r10 = r22
            goto L_0x009e
        L_0x026b:
            r5 = 101(0x65, float:1.42E-43)
            goto L_0x00a6
        L_0x026f:
            int r2 = r13 - r11
            r0 = r25
            int r5 = r0.getNextUnset(r13)
            int r6 = r25.getSize()
            int r7 = r5 - r11
            int r7 = r7 / 2
            int r7 = r7 + r5
            int r6 = java.lang.Math.min(r6, r7)
            r7 = 0
            r0 = r25
            boolean r5 = r0.isRange(r5, r6, r7)
            if (r5 != 0) goto L_0x0292
            com.google.zxing.NotFoundException r2 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r2
        L_0x0292:
            int r3 = r3 * r9
            int r3 = r4 - r3
            int r3 = r3 % 103
            if (r3 == r9) goto L_0x029e
            com.google.zxing.ChecksumException r2 = com.google.zxing.ChecksumException.getChecksumInstance()
            throw r2
        L_0x029e:
            int r3 = r19.length()
            if (r3 != 0) goto L_0x02a9
            com.google.zxing.NotFoundException r2 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r2
        L_0x02a9:
            if (r3 <= 0) goto L_0x02b8
            if (r8 == 0) goto L_0x02b8
            r4 = 99
            if (r10 != r4) goto L_0x02e7
            int r4 = r3 + -2
            r0 = r19
            r0.delete(r4, r3)
        L_0x02b8:
            r3 = 1
            r3 = r17[r3]
            r4 = 0
            r4 = r17[r4]
            int r3 = r3 + r4
            float r3 = (float) r3
            r4 = 1073741824(0x40000000, float:2.0)
            float r4 = r3 / r4
            float r3 = (float) r11
            float r2 = (float) r2
            r5 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r5
            float r5 = r3 + r2
            int r6 = r18.size()
            byte[] r7 = new byte[r6]
            r2 = 0
            r3 = r2
        L_0x02d3:
            if (r3 >= r6) goto L_0x02ef
            r0 = r18
            java.lang.Object r2 = r0.get(r3)
            java.lang.Byte r2 = (java.lang.Byte) r2
            byte r2 = r2.byteValue()
            r7[r3] = r2
            int r2 = r3 + 1
            r3 = r2
            goto L_0x02d3
        L_0x02e7:
            int r4 = r3 + -1
            r0 = r19
            r0.delete(r4, r3)
            goto L_0x02b8
        L_0x02ef:
            com.google.zxing.Result r2 = new com.google.zxing.Result
            java.lang.String r3 = r19.toString()
            r6 = 2
            com.google.zxing.ResultPoint[] r6 = new com.google.zxing.ResultPoint[r6]
            r8 = 0
            com.google.zxing.ResultPoint r9 = new com.google.zxing.ResultPoint
            r0 = r24
            float r10 = (float) r0
            r9.<init>(r4, r10)
            r6[r8] = r9
            r4 = 1
            com.google.zxing.ResultPoint r8 = new com.google.zxing.ResultPoint
            r0 = r24
            float r9 = (float) r0
            r8.<init>(r5, r9)
            r6[r4] = r8
            com.google.zxing.BarcodeFormat r4 = com.google.zxing.BarcodeFormat.CODE_128
            r2.<init>(r3, r7, r6, r4)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.Code128Reader.decodeRow(int, com.google.zxing.common.BitArray, java.util.Map):com.google.zxing.Result");
    }
}
