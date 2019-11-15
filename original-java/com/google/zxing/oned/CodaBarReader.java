package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Arrays;
import java.util.Map;

public final class CodaBarReader extends OneDReader {
    static final char[] ALPHABET = ALPHABET_STRING.toCharArray();
    private static final String ALPHABET_STRING = "0123456789-$:/.+ABCD";
    static final int[] CHARACTER_ENCODINGS = {3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14};
    private static final float MAX_ACCEPTABLE = 2.0f;
    private static final int MIN_CHARACTER_LENGTH = 3;
    private static final float PADDING = 1.5f;
    private static final char[] STARTEND_ENCODING = {'A', 'B', 'C', 'D'};
    private int counterLength = 0;
    private int[] counters = new int[80];
    private final StringBuilder decodeRowResult = new StringBuilder(20);

    public Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException {
        Arrays.fill(this.counters, 0);
        setCounters(bitArray);
        int findStartPattern = findStartPattern();
        this.decodeRowResult.setLength(0);
        int i2 = findStartPattern;
        do {
            int narrowWidePattern = toNarrowWidePattern(i2);
            if (narrowWidePattern != -1) {
                this.decodeRowResult.append((char) narrowWidePattern);
                i2 += 8;
                if (this.decodeRowResult.length() > 1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                    break;
                }
            } else {
                throw NotFoundException.getNotFoundInstance();
            }
        } while (i2 < this.counterLength);
        int i3 = this.counters[i2 - 1];
        int i4 = 0;
        for (int i5 = -8; i5 < -1; i5++) {
            i4 += this.counters[i2 + i5];
        }
        if (i2 >= this.counterLength || i3 >= i4 / 2) {
            validatePattern(findStartPattern);
            for (int i6 = 0; i6 < this.decodeRowResult.length(); i6++) {
                this.decodeRowResult.setCharAt(i6, ALPHABET[this.decodeRowResult.charAt(i6)]);
            }
            if (!arrayContains(STARTEND_ENCODING, this.decodeRowResult.charAt(0))) {
                throw NotFoundException.getNotFoundInstance();
            }
            if (!arrayContains(STARTEND_ENCODING, this.decodeRowResult.charAt(this.decodeRowResult.length() - 1))) {
                throw NotFoundException.getNotFoundInstance();
            } else if (this.decodeRowResult.length() <= 3) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                if (map == null || !map.containsKey(DecodeHintType.RETURN_CODABAR_START_END)) {
                    this.decodeRowResult.deleteCharAt(this.decodeRowResult.length() - 1);
                    this.decodeRowResult.deleteCharAt(0);
                }
                int i7 = 0;
                int i8 = 0;
                while (i7 < findStartPattern) {
                    int i9 = this.counters[i7] + i8;
                    i7++;
                    i8 = i9;
                }
                float f = (float) i8;
                while (findStartPattern < i2 - 1) {
                    i8 += this.counters[findStartPattern];
                    findStartPattern++;
                }
                float f2 = (float) i8;
                return new Result(this.decodeRowResult.toString(), null, new ResultPoint[]{new ResultPoint(f, (float) i), new ResultPoint(f2, (float) i)}, BarcodeFormat.CODABAR);
            }
        } else {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    private void validatePattern(int i) throws NotFoundException {
        int[] iArr = {0, 0, 0, 0};
        int[] iArr2 = {0, 0, 0, 0};
        int length = this.decodeRowResult.length() - 1;
        int i2 = 0;
        int i3 = i;
        while (true) {
            int i4 = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i2)];
            for (int i5 = 6; i5 >= 0; i5--) {
                int i6 = (i5 & 1) + ((i4 & 1) << 1);
                iArr[i6] = iArr[i6] + this.counters[i3 + i5];
                iArr2[i6] = iArr2[i6] + 1;
                i4 >>= 1;
            }
            if (i2 >= length) {
                break;
            }
            i3 += 8;
            i2++;
        }
        float[] fArr = new float[4];
        float[] fArr2 = new float[4];
        for (int i7 = 0; i7 < 2; i7++) {
            fArr2[i7] = 0.0f;
            fArr2[i7 + 2] = ((((float) iArr[i7]) / ((float) iArr2[i7])) + (((float) iArr[i7 + 2]) / ((float) iArr2[i7 + 2]))) / MAX_ACCEPTABLE;
            fArr[i7] = fArr2[i7 + 2];
            fArr[i7 + 2] = ((((float) iArr[i7 + 2]) * MAX_ACCEPTABLE) + PADDING) / ((float) iArr2[i7 + 2]);
        }
        int i8 = 0;
        loop3:
        while (true) {
            int i9 = CHARACTER_ENCODINGS[this.decodeRowResult.charAt(i8)];
            int i10 = 6;
            while (i10 >= 0) {
                int i11 = (i10 & 1) + ((i9 & 1) << 1);
                int i12 = this.counters[i + i10];
                if (((float) i12) >= fArr2[i11] && ((float) i12) <= fArr[i11]) {
                    i9 >>= 1;
                    i10--;
                }
            }
            if (i8 < length) {
                i += 8;
                i8++;
            } else {
                return;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private void setCounters(BitArray bitArray) throws NotFoundException {
        this.counterLength = 0;
        int nextUnset = bitArray.getNextUnset(0);
        int size = bitArray.getSize();
        if (nextUnset >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z = true;
        int i = 0;
        for (int i2 = nextUnset; i2 < size; i2++) {
            if (bitArray.get(i2) != z) {
                i++;
            } else {
                counterAppend(i);
                z = !z;
                i = 1;
            }
        }
        counterAppend(i);
    }

    private void counterAppend(int i) {
        this.counters[this.counterLength] = i;
        this.counterLength++;
        if (this.counterLength >= this.counters.length) {
            int[] iArr = new int[(this.counterLength << 1)];
            System.arraycopy(this.counters, 0, iArr, 0, this.counterLength);
            this.counters = iArr;
        }
    }

    private int findStartPattern() throws NotFoundException {
        for (int i = 1; i < this.counterLength; i += 2) {
            int narrowWidePattern = toNarrowWidePattern(i);
            if (narrowWidePattern != -1 && arrayContains(STARTEND_ENCODING, ALPHABET[narrowWidePattern])) {
                int i2 = 0;
                for (int i3 = i; i3 < i + 7; i3++) {
                    i2 += this.counters[i3];
                }
                if (i == 1 || this.counters[i - 1] >= i2 / 2) {
                    return i;
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    static boolean arrayContains(char[] cArr, char c) {
        if (cArr == null) {
            return false;
        }
        for (char c2 : cArr) {
            if (c2 == c) {
                return true;
            }
        }
        return false;
    }

    private int toNarrowWidePattern(int i) {
        int i2;
        int i3;
        int i4 = Integer.MAX_VALUE;
        int i5 = i + 7;
        if (i5 >= this.counterLength) {
            return -1;
        }
        int[] iArr = this.counters;
        int i6 = i;
        int i7 = Integer.MAX_VALUE;
        int i8 = 0;
        while (i6 < i5) {
            int i9 = iArr[i6];
            if (i9 < i7) {
                i7 = i9;
            }
            if (i9 <= i8) {
                i9 = i8;
            }
            i6 += 2;
            i8 = i9;
        }
        int i10 = (i7 + i8) / 2;
        int i11 = i + 1;
        int i12 = 0;
        while (i11 < i5) {
            int i13 = iArr[i11];
            if (i13 < i4) {
                i4 = i13;
            }
            if (i13 <= i12) {
                i13 = i12;
            }
            i11 += 2;
            i12 = i13;
        }
        int i14 = (i4 + i12) / 2;
        int i15 = 0;
        int i16 = 0;
        int i17 = 128;
        while (i15 < 7) {
            if ((i15 & 1) == 0) {
                i2 = i10;
            } else {
                i2 = i14;
            }
            i17 >>= 1;
            if (iArr[i + i15] > i2) {
                i3 = i16 | i17;
            } else {
                i3 = i16;
            }
            i15++;
            i16 = i3;
        }
        for (int i18 = 0; i18 < CHARACTER_ENCODINGS.length; i18++) {
            if (CHARACTER_ENCODINGS[i18] == i16) {
                return i18;
            }
        }
        return -1;
    }
}
