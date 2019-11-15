package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public class Code93Writer extends OneDimensionalCodeWriter {
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.CODE_93) {
            return super.encode(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_93, but got " + barcodeFormat);
    }

    public boolean[] encode(String str) {
        int length = str.length();
        if (length > 80) {
            throw new IllegalArgumentException("Requested contents should be less than 80 digits long, but got " + length);
        }
        int[] iArr = new int[9];
        int length2 = ((str.length() + 2 + 2) * 9) + 1;
        toIntArray(Code93Reader.CHARACTER_ENCODINGS[47], iArr);
        boolean[] zArr = new boolean[length2];
        int appendPattern = appendPattern(zArr, 0, iArr);
        for (int i = 0; i < length; i++) {
            toIntArray(Code93Reader.CHARACTER_ENCODINGS["0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(i))], iArr);
            appendPattern += appendPattern(zArr, appendPattern, iArr);
        }
        int computeChecksumIndex = computeChecksumIndex(str, 20);
        toIntArray(Code93Reader.CHARACTER_ENCODINGS[computeChecksumIndex], iArr);
        int appendPattern2 = appendPattern + appendPattern(zArr, appendPattern, iArr);
        toIntArray(Code93Reader.CHARACTER_ENCODINGS[computeChecksumIndex(str + "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".charAt(computeChecksumIndex), 15)], iArr);
        int appendPattern3 = appendPattern(zArr, appendPattern2, iArr) + appendPattern2;
        toIntArray(Code93Reader.CHARACTER_ENCODINGS[47], iArr);
        zArr[appendPattern3 + appendPattern(zArr, appendPattern3, iArr)] = true;
        return zArr;
    }

    private static void toIntArray(int i, int[] iArr) {
        int i2;
        for (int i3 = 0; i3 < 9; i3++) {
            if (((1 << (8 - i3)) & i) == 0) {
                i2 = 0;
            } else {
                i2 = 1;
            }
            iArr[i3] = i2;
        }
    }

    @Deprecated
    protected static int appendPattern(boolean[] zArr, int i, int[] iArr, boolean z) {
        return appendPattern(zArr, i, iArr);
    }

    private static int appendPattern(boolean[] zArr, int i, int[] iArr) {
        boolean z;
        int length = iArr.length;
        int i2 = 0;
        while (i2 < length) {
            int i3 = i + 1;
            if (iArr[i2] != 0) {
                z = true;
            } else {
                z = false;
            }
            zArr[i] = z;
            i2++;
            i = i3;
        }
        return 9;
    }

    private static int computeChecksumIndex(String str, int i) {
        int i2 = 1;
        int length = str.length() - 1;
        int i3 = 0;
        while (length >= 0) {
            int indexOf = ("0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(str.charAt(length)) * i2) + i3;
            int i4 = i2 + 1;
            if (i4 > i) {
                i4 = 1;
            }
            length--;
            i2 = i4;
            i3 = indexOf;
        }
        return i3 % 47;
    }
}
