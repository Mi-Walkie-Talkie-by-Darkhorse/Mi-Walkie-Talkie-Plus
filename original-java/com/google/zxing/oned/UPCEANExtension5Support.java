package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.EnumMap;
import java.util.Map;

final class UPCEANExtension5Support {
    private static final int[] CHECK_DIGIT_ENCODINGS = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};
    private final int[] decodeMiddleCounters = new int[4];
    private final StringBuilder decodeRowStringBuffer = new StringBuilder();

    UPCEANExtension5Support() {
    }

    /* access modifiers changed from: 0000 */
    public Result decodeRow(int i, BitArray bitArray, int[] iArr) throws NotFoundException {
        StringBuilder sb = this.decodeRowStringBuffer;
        sb.setLength(0);
        int decodeMiddle = decodeMiddle(bitArray, iArr, sb);
        String sb2 = sb.toString();
        Map parseExtensionString = parseExtensionString(sb2);
        Result result = new Result(sb2, null, new ResultPoint[]{new ResultPoint(((float) (iArr[0] + iArr[1])) / 2.0f, (float) i), new ResultPoint((float) decodeMiddle, (float) i)}, BarcodeFormat.UPC_EAN_EXTENSION);
        if (parseExtensionString != null) {
            result.putAllMetadata(parseExtensionString);
        }
        return result;
    }

    private int decodeMiddle(BitArray bitArray, int[] iArr, StringBuilder sb) throws NotFoundException {
        int[] iArr2 = this.decodeMiddleCounters;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int size = bitArray.getSize();
        int i = iArr[1];
        int i2 = 0;
        for (int i3 = 0; i3 < 5 && i < size; i3++) {
            int decodeDigit = UPCEANReader.decodeDigit(bitArray, iArr2, i, UPCEANReader.L_AND_G_PATTERNS);
            sb.append((char) ((decodeDigit % 10) + 48));
            int i4 = 0;
            while (i4 < iArr2.length) {
                int i5 = iArr2[i4] + i;
                i4++;
                i = i5;
            }
            if (decodeDigit >= 10) {
                i2 |= 1 << (4 - i3);
            }
            if (i3 != 4) {
                i = bitArray.getNextUnset(bitArray.getNextSet(i));
            }
        }
        if (sb.length() != 5) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (extensionChecksum(sb.toString()) == determineCheckDigit(i2)) {
            return i;
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static int extensionChecksum(CharSequence charSequence) {
        int length = charSequence.length();
        int i = 0;
        for (int i2 = length - 2; i2 >= 0; i2 -= 2) {
            i += charSequence.charAt(i2) - '0';
        }
        int i3 = i * 3;
        for (int i4 = length - 1; i4 >= 0; i4 -= 2) {
            i3 += charSequence.charAt(i4) - '0';
        }
        return (i3 * 3) % 10;
    }

    private static int determineCheckDigit(int i) throws NotFoundException {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == CHECK_DIGIT_ENCODINGS[i2]) {
                return i2;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private static Map<ResultMetadataType, Object> parseExtensionString(String str) {
        if (str.length() != 5) {
            return null;
        }
        String parseExtension5String = parseExtension5String(str);
        if (parseExtension5String == null) {
            return null;
        }
        EnumMap enumMap = new EnumMap(ResultMetadataType.class);
        enumMap.put(ResultMetadataType.SUGGESTED_PRICE, parseExtension5String);
        return enumMap;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0065, code lost:
        if (r5.equals("90000") != false) goto L_0x0059;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static java.lang.String parseExtension5String(java.lang.String r5) {
        /*
            r2 = 1
            r0 = 0
            char r1 = r5.charAt(r0)
            switch(r1) {
                case 48: goto L_0x004a;
                case 53: goto L_0x004d;
                case 57: goto L_0x0050;
                default: goto L_0x0009;
            }
        L_0x0009:
            java.lang.String r0 = ""
        L_0x000b:
            java.lang.String r1 = r5.substring(r2)
            int r1 = java.lang.Integer.parseInt(r1)
            int r2 = r1 / 100
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r1 = r1 % 100
            r3 = 10
            if (r1 >= r3) goto L_0x0084
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = "0"
            r3.<init>(r4)
            java.lang.StringBuilder r1 = r3.append(r1)
            java.lang.String r1 = r1.toString()
        L_0x002e:
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.StringBuilder r0 = r0.append(r2)
            r2 = 46
            java.lang.StringBuilder r0 = r0.append(r2)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
        L_0x0049:
            return r0
        L_0x004a:
            java.lang.String r0 = "£"
            goto L_0x000b
        L_0x004d:
            java.lang.String r0 = "$"
            goto L_0x000b
        L_0x0050:
            r1 = -1
            int r3 = r5.hashCode()
            switch(r3) {
                case 54118329: goto L_0x005f;
                case 54395376: goto L_0x0072;
                case 54395377: goto L_0x0068;
                default: goto L_0x0058;
            }
        L_0x0058:
            r0 = r1
        L_0x0059:
            switch(r0) {
                case 0: goto L_0x007c;
                case 1: goto L_0x007e;
                case 2: goto L_0x0081;
                default: goto L_0x005c;
            }
        L_0x005c:
            java.lang.String r0 = ""
            goto L_0x000b
        L_0x005f:
            java.lang.String r3 = "90000"
            boolean r3 = r5.equals(r3)
            if (r3 == 0) goto L_0x0058
            goto L_0x0059
        L_0x0068:
            java.lang.String r0 = "99991"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0058
            r0 = r2
            goto L_0x0059
        L_0x0072:
            java.lang.String r0 = "99990"
            boolean r0 = r5.equals(r0)
            if (r0 == 0) goto L_0x0058
            r0 = 2
            goto L_0x0059
        L_0x007c:
            r0 = 0
            goto L_0x0049
        L_0x007e:
            java.lang.String r0 = "0.00"
            goto L_0x0049
        L_0x0081:
            java.lang.String r0 = "Used"
            goto L_0x0049
        L_0x0084:
            java.lang.String r1 = java.lang.String.valueOf(r1)
            goto L_0x002e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.UPCEANExtension5Support.parseExtension5String(java.lang.String):java.lang.String");
    }
}
