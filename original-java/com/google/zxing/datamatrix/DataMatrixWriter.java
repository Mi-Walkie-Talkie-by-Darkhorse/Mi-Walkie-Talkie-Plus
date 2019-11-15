package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Dimension;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.DefaultPlacement;
import com.google.zxing.datamatrix.encoder.ErrorCorrection;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import java.util.Map;

public final class DataMatrixWriter implements Writer {
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        Dimension dimension;
        Dimension dimension2 = null;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
            throw new IllegalArgumentException("Can only encode DATA_MATRIX, but got " + barcodeFormat);
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        } else {
            SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
            if (map != null) {
                SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
                if (symbolShapeHint2 != null) {
                    symbolShapeHint = symbolShapeHint2;
                }
                Dimension dimension3 = (Dimension) map.get(EncodeHintType.MIN_SIZE);
                if (dimension3 != null) {
                    dimension = dimension3;
                } else {
                    dimension = null;
                }
                Dimension dimension4 = (Dimension) map.get(EncodeHintType.MAX_SIZE);
                if (dimension4 != null) {
                    dimension2 = dimension4;
                }
            } else {
                dimension = null;
            }
            String encodeHighLevel = HighLevelEncoder.encodeHighLevel(str, symbolShapeHint, dimension, dimension2);
            SymbolInfo lookup = SymbolInfo.lookup(encodeHighLevel.length(), symbolShapeHint, dimension, dimension2, true);
            DefaultPlacement defaultPlacement = new DefaultPlacement(ErrorCorrection.encodeECC200(encodeHighLevel, lookup), lookup.getSymbolDataWidth(), lookup.getSymbolDataHeight());
            defaultPlacement.place();
            return encodeLowLevel(defaultPlacement, lookup);
        }
    }

    private static BitMatrix encodeLowLevel(DefaultPlacement defaultPlacement, SymbolInfo symbolInfo) {
        int i;
        int i2;
        boolean z;
        boolean z2;
        int symbolDataWidth = symbolInfo.getSymbolDataWidth();
        int symbolDataHeight = symbolInfo.getSymbolDataHeight();
        ByteMatrix byteMatrix = new ByteMatrix(symbolInfo.getSymbolWidth(), symbolInfo.getSymbolHeight());
        int i3 = 0;
        int i4 = 0;
        while (i3 < symbolDataHeight) {
            if (i3 % symbolInfo.matrixHeight == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < symbolInfo.getSymbolWidth(); i6++) {
                    if (i6 % 2 == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    byteMatrix.set(i5, i4, z2);
                    i5++;
                }
                i = i4 + 1;
            } else {
                i = i4;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < symbolDataWidth; i8++) {
                if (i8 % symbolInfo.matrixWidth == 0) {
                    byteMatrix.set(i7, i, true);
                    i7++;
                }
                byteMatrix.set(i7, i, defaultPlacement.getBit(i8, i3));
                int i9 = i7 + 1;
                if (i8 % symbolInfo.matrixWidth == symbolInfo.matrixWidth - 1) {
                    if (i3 % 2 == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    byteMatrix.set(i9, i, z);
                    i7 = i9 + 1;
                } else {
                    i7 = i9;
                }
            }
            int i10 = i + 1;
            if (i3 % symbolInfo.matrixHeight == symbolInfo.matrixHeight - 1) {
                int i11 = 0;
                for (int i12 = 0; i12 < symbolInfo.getSymbolWidth(); i12++) {
                    byteMatrix.set(i11, i10, true);
                    i11++;
                }
                i2 = i10 + 1;
            } else {
                i2 = i10;
            }
            i3++;
            i4 = i2;
        }
        return convertByteMatrixToBitMatrix(byteMatrix);
    }

    private static BitMatrix convertByteMatrixToBitMatrix(ByteMatrix byteMatrix) {
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        BitMatrix bitMatrix = new BitMatrix(width, height);
        bitMatrix.clear();
        for (int i = 0; i < width; i++) {
            for (int i2 = 0; i2 < height; i2++) {
                if (byteMatrix.get(i, i2) == 1) {
                    bitMatrix.set(i, i2);
                }
            }
        }
        return bitMatrix;
    }
}
