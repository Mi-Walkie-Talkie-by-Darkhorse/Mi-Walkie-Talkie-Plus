package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Map;

public final class QRCodeWriter implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) throws WriterException {
        return encode(str, barcodeFormat, i, i2, null);
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        ErrorCorrectionLevel errorCorrectionLevel;
        int i3;
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        } else if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        } else {
            ErrorCorrectionLevel errorCorrectionLevel2 = ErrorCorrectionLevel.L;
            if (map != null) {
                if (map.containsKey(EncodeHintType.ERROR_CORRECTION)) {
                    errorCorrectionLevel2 = ErrorCorrectionLevel.valueOf(map.get(EncodeHintType.ERROR_CORRECTION).toString());
                }
                if (map.containsKey(EncodeHintType.MARGIN)) {
                    errorCorrectionLevel = errorCorrectionLevel2;
                    i3 = Integer.parseInt(map.get(EncodeHintType.MARGIN).toString());
                    return renderResult(Encoder.encode(str, errorCorrectionLevel, map), i, i2, i3);
                }
            }
            errorCorrectionLevel = errorCorrectionLevel2;
            i3 = 4;
            return renderResult(Encoder.encode(str, errorCorrectionLevel, map), i, i2, i3);
        }
    }

    private static BitMatrix renderResult(QRCode qRCode, int i, int i2, int i3) {
        ByteMatrix matrix = qRCode.getMatrix();
        if (matrix == null) {
            throw new IllegalStateException();
        }
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        int i4 = (i3 << 1) + width;
        int i5 = (i3 << 1) + height;
        int max = Math.max(i, i4);
        int max2 = Math.max(i2, i5);
        int min = Math.min(max / i4, max2 / i5);
        int i6 = (max - (width * min)) / 2;
        int i7 = (max2 - (height * min)) / 2;
        BitMatrix bitMatrix = new BitMatrix(max, max2);
        int i8 = i7;
        for (int i9 = 0; i9 < height; i9++) {
            int i10 = 0;
            int i11 = i6;
            while (i10 < width) {
                if (matrix.get(i10, i9) == 1) {
                    bitMatrix.setRegion(i11, i8, min, min);
                }
                i10++;
                i11 += min;
            }
            i8 += min;
        }
        return bitMatrix;
    }
}
