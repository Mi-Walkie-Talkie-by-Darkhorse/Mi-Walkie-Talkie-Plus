package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

public final class UPCEWriter extends UPCEANWriter {
    private static final int CODE_WIDTH = 51;

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.UPC_E) {
            return super.encode(str, barcodeFormat, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode UPC_E, but got " + barcodeFormat);
    }

    public boolean[] encode(String str) {
        int length = str.length();
        switch (length) {
            case 7:
                try {
                    str = str + UPCEANReader.getStandardUPCEANChecksum(UPCEReader.convertUPCEtoUPCA(str));
                    break;
                } catch (FormatException e) {
                    throw new IllegalArgumentException(e);
                }
            case 8:
                try {
                    if (!UPCEANReader.checkStandardUPCEANChecksum(str)) {
                        throw new IllegalArgumentException("Contents do not pass checksum");
                    }
                } catch (FormatException e2) {
                    throw new IllegalArgumentException("Illegal contents");
                }
                break;
            default:
                throw new IllegalArgumentException("Requested contents should be 8 digits long, but got " + length);
        }
        int digit = Character.digit(str.charAt(0), 10);
        if (digit == 0 || digit == 1) {
            int i = UPCEReader.NUMSYS_AND_CHECK_DIGIT_PATTERNS[digit][Character.digit(str.charAt(7), 10)];
            boolean[] zArr = new boolean[51];
            int appendPattern = appendPattern(zArr, 0, UPCEANReader.START_END_PATTERN, true) + 0;
            for (int i2 = 1; i2 <= 6; i2++) {
                int digit2 = Character.digit(str.charAt(i2), 10);
                if (((i >> (6 - i2)) & 1) == 1) {
                    digit2 += 10;
                }
                appendPattern += appendPattern(zArr, appendPattern, UPCEANReader.L_AND_G_PATTERNS[digit2], false);
            }
            appendPattern(zArr, appendPattern, UPCEANReader.END_PATTERN, false);
            return zArr;
        }
        throw new IllegalArgumentException("Number system must be 0 or 1");
    }
}
