package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.Dimensions;
import com.google.zxing.pdf417.encoder.PDF417;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

public final class PDF417Writer implements Writer {
    private static final int DEFAULT_ERROR_CORRECTION_LEVEL = 2;
    private static final int WHITE_SPACE = 30;

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        int i3;
        int i4;
        int i5;
        if (barcodeFormat != BarcodeFormat.PDF_417) {
            throw new IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
        }
        PDF417 pdf417 = new PDF417();
        if (map != null) {
            if (map.containsKey(EncodeHintType.PDF417_COMPACT)) {
                pdf417.setCompact(Boolean.valueOf(map.get(EncodeHintType.PDF417_COMPACT).toString()).booleanValue());
            }
            if (map.containsKey(EncodeHintType.PDF417_COMPACTION)) {
                pdf417.setCompaction(Compaction.valueOf(map.get(EncodeHintType.PDF417_COMPACTION).toString()));
            }
            if (map.containsKey(EncodeHintType.PDF417_DIMENSIONS)) {
                Dimensions dimensions = (Dimensions) map.get(EncodeHintType.PDF417_DIMENSIONS);
                pdf417.setDimensions(dimensions.getMaxCols(), dimensions.getMinCols(), dimensions.getMaxRows(), dimensions.getMinRows());
            }
            if (map.containsKey(EncodeHintType.MARGIN)) {
                i5 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
            } else {
                i5 = 30;
            }
            if (map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                i4 = Integer.parseInt(map.get(EncodeHintType.ERROR_CORRECTION).toString());
            } else {
                i4 = 2;
            }
            if (map.containsKey(EncodeHintType.CHARACTER_SET)) {
                pdf417.setEncoding(Charset.forName(map.get(EncodeHintType.CHARACTER_SET).toString()));
            }
            i3 = i5;
        } else {
            i3 = 30;
            i4 = 2;
        }
        return bitMatrixFromEncoder(pdf417, str, i4, i, i2, i3);
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i, int i2, int i3, int i4) throws WriterException {
        boolean z;
        boolean z2;
        byte[][] bArr;
        pdf417.generateBarcodeLogic(str, i);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(1, 4);
        boolean z3 = i3 > i2;
        if (scaledMatrix[0].length < scaledMatrix.length) {
            z = true;
        } else {
            z = false;
        }
        if (z3 != z) {
            scaledMatrix = rotateArray(scaledMatrix);
            z2 = true;
        } else {
            z2 = false;
        }
        int length = i2 / scaledMatrix[0].length;
        int length2 = i3 / scaledMatrix.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return bitMatrixFromBitArray(scaledMatrix, i4);
        }
        byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(length, length << 2);
        if (z2) {
            bArr = rotateArray(scaledMatrix2);
        } else {
            bArr = scaledMatrix2;
        }
        return bitMatrixFromBitArray(bArr, i4);
    }

    private static BitMatrix bitMatrixFromBitArray(byte[][] bArr, int i) {
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + (i * 2), bArr.length + (i * 2));
        bitMatrix.clear();
        int height = (bitMatrix.getHeight() - i) - 1;
        int i2 = 0;
        while (i2 < bArr.length) {
            byte[] bArr2 = bArr[i2];
            for (int i3 = 0; i3 < bArr[0].length; i3++) {
                if (bArr2[i3] == 1) {
                    bitMatrix.set(i3 + i, height);
                }
            }
            i2++;
            height--;
        }
        return bitMatrix;
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(Byte.TYPE, new int[]{bArr[0].length, bArr.length});
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }
}
