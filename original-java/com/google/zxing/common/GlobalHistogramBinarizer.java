package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

public class GlobalHistogramBinarizer extends Binarizer {
    private static final byte[] EMPTY = new byte[0];
    private static final int LUMINANCE_BITS = 5;
    private static final int LUMINANCE_BUCKETS = 32;
    private static final int LUMINANCE_SHIFT = 3;
    private final int[] buckets = new int[32];
    private byte[] luminances = EMPTY;

    public GlobalHistogramBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    public BitArray getBlackRow(int i, BitArray bitArray) throws NotFoundException {
        int i2 = 1;
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        if (bitArray == null || bitArray.getSize() < width) {
            bitArray = new BitArray(width);
        } else {
            bitArray.clear();
        }
        initArrays(width);
        byte[] row = luminanceSource.getRow(i, this.luminances);
        int[] iArr = this.buckets;
        for (int i3 = 0; i3 < width; i3++) {
            int i4 = (row[i3] & 255) >> 3;
            iArr[i4] = iArr[i4] + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        if (width < 3) {
            for (int i5 = 0; i5 < width; i5++) {
                if ((row[i5] & 255) < estimateBlackPoint) {
                    bitArray.set(i5);
                }
            }
        } else {
            byte b = row[1] & 255;
            byte b2 = row[0] & 255;
            while (i2 < width - 1) {
                byte b3 = row[i2 + 1] & 255;
                if ((((b << 2) - b2) - b3) / 2 < estimateBlackPoint) {
                    bitArray.set(i2);
                }
                i2++;
                b2 = b;
                b = b3;
            }
        }
        return bitArray;
    }

    public BitMatrix getBlackMatrix() throws NotFoundException {
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        initArrays(width);
        int[] iArr = this.buckets;
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 >= 5) {
                break;
            }
            byte[] row = luminanceSource.getRow((height * i2) / 5, this.luminances);
            int i3 = (width << 2) / 5;
            for (int i4 = width / 5; i4 < i3; i4++) {
                int i5 = (row[i4] & 255) >> 3;
                iArr[i5] = iArr[i5] + 1;
            }
            i = i2 + 1;
        }
        int estimateBlackPoint = estimateBlackPoint(iArr);
        byte[] matrix = luminanceSource.getMatrix();
        for (int i6 = 0; i6 < height; i6++) {
            int i7 = i6 * width;
            for (int i8 = 0; i8 < width; i8++) {
                if ((matrix[i7 + i8] & 255) < estimateBlackPoint) {
                    bitMatrix.set(i8, i6);
                }
            }
        }
        return bitMatrix;
    }

    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new GlobalHistogramBinarizer(luminanceSource);
    }

    private void initArrays(int i) {
        if (this.luminances.length < i) {
            this.luminances = new byte[i];
        }
        for (int i2 = 0; i2 < 32; i2++) {
            this.buckets[i2] = 0;
        }
    }

    private static int estimateBlackPoint(int[] iArr) throws NotFoundException {
        int i;
        int i2;
        int i3 = 0;
        int length = iArr.length;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 0; i7 < length; i7++) {
            if (iArr[i7] > i4) {
                i4 = iArr[i7];
                i5 = i7;
            }
            if (iArr[i7] > i6) {
                i6 = iArr[i7];
            }
        }
        int i8 = 0;
        int i9 = 0;
        while (i3 < length) {
            int i10 = i3 - i5;
            int i11 = i10 * iArr[i3] * i10;
            if (i11 > i8) {
                i2 = i3;
            } else {
                i11 = i8;
                i2 = i9;
            }
            i3++;
            i9 = i2;
            i8 = i11;
        }
        if (i5 <= i9) {
            int i12 = i9;
            i9 = i5;
            i5 = i12;
        }
        if (i5 - i9 <= length / 16) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = i5 - 1;
        int i14 = -1;
        int i15 = i5 - 1;
        while (i15 > i9) {
            int i16 = i15 - i9;
            int i17 = i16 * i16 * (i5 - i15) * (i6 - iArr[i15]);
            if (i17 > i14) {
                i = i15;
            } else {
                i17 = i14;
                i = i13;
            }
            i15--;
            i13 = i;
            i14 = i17;
        }
        return i13 << 3;
    }
}
