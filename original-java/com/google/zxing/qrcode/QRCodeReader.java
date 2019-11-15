package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import com.google.zxing.qrcode.detector.Detector;
import java.util.List;
import java.util.Map;

public class QRCodeReader implements Reader {
    private static final ResultPoint[] NO_POINTS = new ResultPoint[0];
    private final Decoder decoder = new Decoder();

    /* access modifiers changed from: protected */
    public final Decoder getDecoder() {
        return this.decoder;
    }

    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, ChecksumException, FormatException {
        return decode(binaryBitmap, null);
    }

    public final Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException {
        DecoderResult decode;
        ResultPoint[] points;
        if (map == null || !map.containsKey(DecodeHintType.PURE_BARCODE)) {
            DetectorResult detect = new Detector(binaryBitmap.getBlackMatrix()).detect(map);
            decode = this.decoder.decode(detect.getBits(), map);
            points = detect.getPoints();
        } else {
            decode = this.decoder.decode(extractPureBits(binaryBitmap.getBlackMatrix()), map);
            points = NO_POINTS;
        }
        if (decode.getOther() instanceof QRCodeDecoderMetaData) {
            ((QRCodeDecoderMetaData) decode.getOther()).applyMirroredCorrection(points);
        }
        Result result = new Result(decode.getText(), decode.getRawBytes(), points, BarcodeFormat.QR_CODE);
        List byteSegments = decode.getByteSegments();
        if (byteSegments != null) {
            result.putMetadata(ResultMetadataType.BYTE_SEGMENTS, byteSegments);
        }
        String eCLevel = decode.getECLevel();
        if (eCLevel != null) {
            result.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, eCLevel);
        }
        if (decode.hasStructuredAppend()) {
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decode.getStructuredAppendSequenceNumber()));
            result.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decode.getStructuredAppendParity()));
        }
        return result;
    }

    public void reset() {
    }

    private static BitMatrix extractPureBits(BitMatrix bitMatrix) throws NotFoundException {
        int i;
        int i2;
        int[] topLeftOnBit = bitMatrix.getTopLeftOnBit();
        int[] bottomRightOnBit = bitMatrix.getBottomRightOnBit();
        if (topLeftOnBit == null || bottomRightOnBit == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        float moduleSize = moduleSize(topLeftOnBit, bitMatrix);
        int i3 = topLeftOnBit[1];
        int i4 = bottomRightOnBit[1];
        int i5 = topLeftOnBit[0];
        int i6 = bottomRightOnBit[0];
        if (i5 >= i6 || i3 >= i4) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (i4 - i3 != i6 - i5) {
            i6 = (i4 - i3) + i5;
            if (i6 >= bitMatrix.getWidth()) {
                throw NotFoundException.getNotFoundInstance();
            }
        }
        int round = Math.round(((float) ((i6 - i5) + 1)) / moduleSize);
        int round2 = Math.round(((float) ((i4 - i3) + 1)) / moduleSize);
        if (round <= 0 || round2 <= 0) {
            throw NotFoundException.getNotFoundInstance();
        } else if (round2 != round) {
            throw NotFoundException.getNotFoundInstance();
        } else {
            int i7 = (int) (moduleSize / 2.0f);
            int i8 = i3 + i7;
            int i9 = i5 + i7;
            int i10 = (((int) (((float) (round - 1)) * moduleSize)) + i9) - i6;
            if (i10 <= 0) {
                i = i9;
            } else if (i10 > i7) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                i = i9 - i10;
            }
            int i11 = (((int) (((float) (round2 - 1)) * moduleSize)) + i8) - i4;
            if (i11 <= 0) {
                i2 = i8;
            } else if (i11 > i7) {
                throw NotFoundException.getNotFoundInstance();
            } else {
                i2 = i8 - i11;
            }
            BitMatrix bitMatrix2 = new BitMatrix(round, round2);
            for (int i12 = 0; i12 < round2; i12++) {
                int i13 = i2 + ((int) (((float) i12) * moduleSize));
                for (int i14 = 0; i14 < round; i14++) {
                    if (bitMatrix.get(((int) (((float) i14) * moduleSize)) + i, i13)) {
                        bitMatrix2.set(i14, i12);
                    }
                }
            }
            return bitMatrix2;
        }
    }

    private static float moduleSize(int[] iArr, BitMatrix bitMatrix) throws NotFoundException {
        boolean z;
        boolean z2;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        int i = iArr[0];
        boolean z3 = true;
        int i2 = iArr[1];
        int i3 = i;
        int i4 = 0;
        while (i3 < width && i2 < height) {
            if (z3 != bitMatrix.get(i3, i2)) {
                int i5 = i4 + 1;
                if (i5 == 5) {
                    break;
                }
                if (!z3) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                int i6 = i5;
                z = z2;
                i4 = i6;
            } else {
                z = z3;
            }
            i3++;
            i2++;
            z3 = z;
        }
        if (i3 != width && i2 != height) {
            return ((float) (i3 - iArr[0])) / 7.0f;
        }
        throw NotFoundException.getNotFoundInstance();
    }
}
