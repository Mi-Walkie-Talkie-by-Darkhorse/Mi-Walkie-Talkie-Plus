package com.google.zxing.common;

import java.nio.charset.Charset;

public final class StringUtils {
    private static final boolean ASSUME_SHIFT_JIS = (SHIFT_JIS.equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING) || EUC_JP.equalsIgnoreCase(PLATFORM_DEFAULT_ENCODING));
    private static final String EUC_JP = "EUC_JP";
    public static final String GB2312 = "GB2312";
    private static final String ISO88591 = "ISO8859_1";
    private static final String PLATFORM_DEFAULT_ENCODING = Charset.defaultCharset().name();
    public static final String SHIFT_JIS = "SJIS";
    private static final String UTF8 = "UTF8";

    private StringUtils() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:125:0x01ed  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x0077  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0088  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String guessEncoding(byte[] r23, java.util.Map<com.google.zxing.DecodeHintType, ?> r24) {
        /*
            if (r24 == 0) goto L_0x0019
            com.google.zxing.DecodeHintType r2 = com.google.zxing.DecodeHintType.CHARACTER_SET
            r0 = r24
            boolean r2 = r0.containsKey(r2)
            if (r2 == 0) goto L_0x0019
            com.google.zxing.DecodeHintType r2 = com.google.zxing.DecodeHintType.CHARACTER_SET
            r0 = r24
            java.lang.Object r2 = r0.get(r2)
            java.lang.String r2 = r2.toString()
        L_0x0018:
            return r2
        L_0x0019:
            r0 = r23
            int r0 = r0.length
            r20 = r0
            r13 = 1
            r10 = 1
            r11 = 1
            r17 = 0
            r16 = 0
            r15 = 0
            r14 = 0
            r9 = 0
            r8 = 0
            r7 = 0
            r6 = 0
            r5 = 0
            r4 = 0
            r12 = 0
            r0 = r23
            int r2 = r0.length
            r3 = 3
            if (r2 <= r3) goto L_0x00b9
            r2 = 0
            byte r2 = r23[r2]
            r3 = -17
            if (r2 != r3) goto L_0x00b9
            r2 = 1
            byte r2 = r23[r2]
            r3 = -69
            if (r2 != r3) goto L_0x00b9
            r2 = 2
            byte r2 = r23[r2]
            r3 = -65
            if (r2 != r3) goto L_0x00b9
            r2 = 1
        L_0x004a:
            r3 = 0
            r19 = r3
            r3 = r17
        L_0x004f:
            r0 = r19
            r1 = r20
            if (r0 >= r1) goto L_0x017e
            if (r13 != 0) goto L_0x005b
            if (r10 != 0) goto L_0x005b
            if (r11 == 0) goto L_0x017e
        L_0x005b:
            byte r17 = r23[r19]
            r0 = r17
            r0 = r0 & 255(0xff, float:3.57E-43)
            r21 = r0
            if (r11 == 0) goto L_0x01fa
            if (r3 <= 0) goto L_0x00bb
            r0 = r21
            r0 = r0 & 128(0x80, float:1.794E-43)
            r17 = r0
            if (r17 == 0) goto L_0x00ed
            int r3 = r3 + -1
            r17 = r3
            r18 = r11
        L_0x0075:
            if (r13 == 0) goto L_0x01f6
            r3 = 127(0x7f, float:1.78E-43)
            r0 = r21
            if (r0 <= r3) goto L_0x00f3
            r3 = 160(0xa0, float:2.24E-43)
            r0 = r21
            if (r0 >= r3) goto L_0x00f3
            r3 = 0
            r11 = r12
            r12 = r3
        L_0x0086:
            if (r10 == 0) goto L_0x01ed
            if (r9 <= 0) goto L_0x011e
            r3 = 64
            r0 = r21
            if (r0 < r3) goto L_0x009c
            r3 = 127(0x7f, float:1.78E-43)
            r0 = r21
            if (r0 == r3) goto L_0x009c
            r3 = 252(0xfc, float:3.53E-43)
            r0 = r21
            if (r0 <= r3) goto L_0x0111
        L_0x009c:
            r3 = 0
            r22 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r9
            r9 = r3
            r3 = r22
        L_0x00a7:
            int r10 = r19 + 1
            r19 = r10
            r13 = r12
            r10 = r9
            r12 = r11
            r9 = r8
            r11 = r18
            r8 = r7
            r7 = r6
            r6 = r5
            r5 = r4
            r4 = r3
            r3 = r17
            goto L_0x004f
        L_0x00b9:
            r2 = 0
            goto L_0x004a
        L_0x00bb:
            r0 = r21
            r0 = r0 & 128(0x80, float:1.794E-43)
            r17 = r0
            if (r17 == 0) goto L_0x01fa
            r17 = r21 & 64
            if (r17 == 0) goto L_0x00ed
            int r17 = r3 + 1
            r3 = r21 & 32
            if (r3 != 0) goto L_0x00d4
            int r3 = r16 + 1
            r16 = r3
            r18 = r11
            goto L_0x0075
        L_0x00d4:
            int r17 = r17 + 1
            r3 = r21 & 16
            if (r3 != 0) goto L_0x00e0
            int r3 = r15 + 1
            r15 = r3
            r18 = r11
            goto L_0x0075
        L_0x00e0:
            int r3 = r17 + 1
            r17 = r21 & 8
            if (r17 != 0) goto L_0x00ed
            int r14 = r14 + 1
            r17 = r3
            r18 = r11
            goto L_0x0075
        L_0x00ed:
            r11 = 0
            r17 = r3
            r18 = r11
            goto L_0x0075
        L_0x00f3:
            r3 = 159(0x9f, float:2.23E-43)
            r0 = r21
            if (r0 <= r3) goto L_0x01f6
            r3 = 192(0xc0, float:2.69E-43)
            r0 = r21
            if (r0 < r3) goto L_0x010b
            r3 = 215(0xd7, float:3.01E-43)
            r0 = r21
            if (r0 == r3) goto L_0x010b
            r3 = 247(0xf7, float:3.46E-43)
            r0 = r21
            if (r0 != r3) goto L_0x01f6
        L_0x010b:
            int r3 = r12 + 1
            r11 = r3
            r12 = r13
            goto L_0x0086
        L_0x0111:
            int r3 = r9 + -1
            r9 = r10
            r22 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r3
            r3 = r4
            r4 = r22
            goto L_0x00a7
        L_0x011e:
            r3 = 128(0x80, float:1.794E-43)
            r0 = r21
            if (r0 == r3) goto L_0x0130
            r3 = 160(0xa0, float:2.24E-43)
            r0 = r21
            if (r0 == r3) goto L_0x0130
            r3 = 239(0xef, float:3.35E-43)
            r0 = r21
            if (r0 <= r3) goto L_0x013d
        L_0x0130:
            r3 = 0
            r22 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r9
            r9 = r3
            r3 = r22
            goto L_0x00a7
        L_0x013d:
            r3 = 160(0xa0, float:2.24E-43)
            r0 = r21
            if (r0 <= r3) goto L_0x015c
            r3 = 224(0xe0, float:3.14E-43)
            r0 = r21
            if (r0 >= r3) goto L_0x015c
            int r8 = r8 + 1
            r6 = 0
            int r3 = r7 + 1
            if (r3 <= r5) goto L_0x01e1
            r5 = r6
            r7 = r8
            r6 = r3
            r8 = r9
            r9 = r10
            r22 = r4
            r4 = r3
            r3 = r22
            goto L_0x00a7
        L_0x015c:
            r3 = 127(0x7f, float:1.78E-43)
            r0 = r21
            if (r0 <= r3) goto L_0x0171
            int r9 = r9 + 1
            r7 = 0
            int r3 = r6 + 1
            if (r3 <= r4) goto L_0x01d5
            r4 = r5
            r6 = r7
            r5 = r3
            r7 = r8
            r8 = r9
            r9 = r10
            goto L_0x00a7
        L_0x0171:
            r6 = 0
            r3 = 0
            r7 = r8
            r8 = r9
            r9 = r10
            r22 = r4
            r4 = r5
            r5 = r3
            r3 = r22
            goto L_0x00a7
        L_0x017e:
            if (r11 == 0) goto L_0x01d3
            if (r3 <= 0) goto L_0x01d3
            r3 = 0
        L_0x0183:
            if (r10 == 0) goto L_0x0188
            if (r9 <= 0) goto L_0x0188
            r10 = 0
        L_0x0188:
            if (r3 == 0) goto L_0x0195
            if (r2 != 0) goto L_0x0191
            int r2 = r16 + r15
            int r2 = r2 + r14
            if (r2 <= 0) goto L_0x0195
        L_0x0191:
            java.lang.String r2 = "UTF8"
            goto L_0x0018
        L_0x0195:
            if (r10 == 0) goto L_0x01a5
            boolean r2 = ASSUME_SHIFT_JIS
            if (r2 != 0) goto L_0x01a1
            r2 = 3
            if (r5 >= r2) goto L_0x01a1
            r2 = 3
            if (r4 < r2) goto L_0x01a5
        L_0x01a1:
            java.lang.String r2 = "SJIS"
            goto L_0x0018
        L_0x01a5:
            if (r13 == 0) goto L_0x01bd
            if (r10 == 0) goto L_0x01bd
            r2 = 2
            if (r5 != r2) goto L_0x01af
            r2 = 2
            if (r8 == r2) goto L_0x01b5
        L_0x01af:
            int r2 = r12 * 10
            r0 = r20
            if (r2 < r0) goto L_0x01b9
        L_0x01b5:
            java.lang.String r2 = "SJIS"
            goto L_0x0018
        L_0x01b9:
            java.lang.String r2 = "ISO8859_1"
            goto L_0x0018
        L_0x01bd:
            if (r13 == 0) goto L_0x01c3
            java.lang.String r2 = "ISO8859_1"
            goto L_0x0018
        L_0x01c3:
            if (r10 == 0) goto L_0x01c9
            java.lang.String r2 = "SJIS"
            goto L_0x0018
        L_0x01c9:
            if (r3 == 0) goto L_0x01cf
            java.lang.String r2 = "UTF8"
            goto L_0x0018
        L_0x01cf:
            java.lang.String r2 = PLATFORM_DEFAULT_ENCODING
            goto L_0x0018
        L_0x01d3:
            r3 = r11
            goto L_0x0183
        L_0x01d5:
            r6 = r7
            r7 = r8
            r8 = r9
            r9 = r10
            r22 = r5
            r5 = r3
            r3 = r4
            r4 = r22
            goto L_0x00a7
        L_0x01e1:
            r7 = r8
            r8 = r9
            r9 = r10
            r22 = r3
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r22
            goto L_0x00a7
        L_0x01ed:
            r3 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r9
            r9 = r10
            goto L_0x00a7
        L_0x01f6:
            r11 = r12
            r12 = r13
            goto L_0x0086
        L_0x01fa:
            r17 = r3
            r18 = r11
            goto L_0x0075
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.StringUtils.guessEncoding(byte[], java.util.Map):java.lang.String");
    }
}
