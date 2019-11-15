package com.google.zxing.aztec;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;

public final class AztecReader implements Reader {
    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x007f  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008a  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x0096  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0021  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.zxing.Result decode(com.google.zxing.BinaryBitmap r11, java.util.Map<com.google.zxing.DecodeHintType, ?> r12) throws com.google.zxing.NotFoundException, com.google.zxing.FormatException {
        /*
            r10 = this;
            r3 = 0
            r2 = 0
            com.google.zxing.aztec.detector.Detector r5 = new com.google.zxing.aztec.detector.Detector
            com.google.zxing.common.BitMatrix r0 = r11.getBlackMatrix()
            r5.<init>(r0)
            r0 = 0
            com.google.zxing.aztec.AztecDetectorResult r0 = r5.detect(r0)     // Catch:{ NotFoundException -> 0x004c, FormatException -> 0x0052 }
            com.google.zxing.ResultPoint[] r1 = r0.getPoints()     // Catch:{ NotFoundException -> 0x004c, FormatException -> 0x0052 }
            com.google.zxing.aztec.decoder.Decoder r4 = new com.google.zxing.aztec.decoder.Decoder     // Catch:{ NotFoundException -> 0x0094, FormatException -> 0x0092 }
            r4.<init>()     // Catch:{ NotFoundException -> 0x0094, FormatException -> 0x0092 }
            com.google.zxing.common.DecoderResult r0 = r4.decode(r0)     // Catch:{ NotFoundException -> 0x0094, FormatException -> 0x0092 }
            r4 = r1
            r1 = r2
        L_0x001f:
            if (r0 != 0) goto L_0x0096
            r0 = 1
            com.google.zxing.aztec.AztecDetectorResult r0 = r5.detect(r0)     // Catch:{ NotFoundException -> 0x0090, FormatException -> 0x005a }
            com.google.zxing.ResultPoint[] r4 = r0.getPoints()     // Catch:{ NotFoundException -> 0x0090, FormatException -> 0x005a }
            com.google.zxing.aztec.decoder.Decoder r5 = new com.google.zxing.aztec.decoder.Decoder     // Catch:{ NotFoundException -> 0x0090, FormatException -> 0x005a }
            r5.<init>()     // Catch:{ NotFoundException -> 0x0090, FormatException -> 0x005a }
            com.google.zxing.common.DecoderResult r0 = r5.decode(r0)     // Catch:{ NotFoundException -> 0x0090, FormatException -> 0x005a }
            r8 = r0
        L_0x0034:
            if (r12 == 0) goto L_0x0062
            com.google.zxing.DecodeHintType r0 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            java.lang.Object r0 = r12.get(r0)
            com.google.zxing.ResultPointCallback r0 = (com.google.zxing.ResultPointCallback) r0
            if (r0 == 0) goto L_0x0062
            int r2 = r4.length
            r1 = r3
        L_0x0042:
            if (r1 >= r2) goto L_0x0062
            r3 = r4[r1]
            r0.foundPossibleResultPoint(r3)
            int r1 = r1 + 1
            goto L_0x0042
        L_0x004c:
            r0 = move-exception
            r1 = r2
        L_0x004e:
            r4 = r1
            r1 = r0
            r0 = r2
            goto L_0x001f
        L_0x0052:
            r0 = move-exception
            r1 = r2
        L_0x0054:
            r4 = r1
            r1 = r2
            r9 = r0
            r0 = r2
            r2 = r9
            goto L_0x001f
        L_0x005a:
            r0 = move-exception
        L_0x005b:
            if (r1 == 0) goto L_0x005e
            throw r1
        L_0x005e:
            if (r2 == 0) goto L_0x0061
            throw r2
        L_0x0061:
            throw r0
        L_0x0062:
            com.google.zxing.Result r0 = new com.google.zxing.Result
            java.lang.String r1 = r8.getText()
            byte[] r2 = r8.getRawBytes()
            int r3 = r8.getNumBits()
            com.google.zxing.BarcodeFormat r5 = com.google.zxing.BarcodeFormat.AZTEC
            long r6 = java.lang.System.currentTimeMillis()
            r0.<init>(r1, r2, r3, r4, r5, r6)
            java.util.List r1 = r8.getByteSegments()
            if (r1 == 0) goto L_0x0084
            com.google.zxing.ResultMetadataType r2 = com.google.zxing.ResultMetadataType.BYTE_SEGMENTS
            r0.putMetadata(r2, r1)
        L_0x0084:
            java.lang.String r1 = r8.getECLevel()
            if (r1 == 0) goto L_0x008f
            com.google.zxing.ResultMetadataType r2 = com.google.zxing.ResultMetadataType.ERROR_CORRECTION_LEVEL
            r0.putMetadata(r2, r1)
        L_0x008f:
            return r0
        L_0x0090:
            r0 = move-exception
            goto L_0x005b
        L_0x0092:
            r0 = move-exception
            goto L_0x0054
        L_0x0094:
            r0 = move-exception
            goto L_0x004e
        L_0x0096:
            r8 = r0
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.aztec.AztecReader.decode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    public void reset() {
    }
}
