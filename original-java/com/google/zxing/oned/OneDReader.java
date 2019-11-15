package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import com.mi.milinkforgame.sdk.data.Error;
import java.util.Arrays;
import java.util.Map;

public abstract class OneDReader implements Reader {
    public abstract Result decodeRow(int i, BitArray bitArray, Map<DecodeHintType, ?> map) throws NotFoundException, ChecksumException, FormatException;

    public Result decode(BinaryBitmap binaryBitmap) throws NotFoundException, FormatException {
        return decode(binaryBitmap, null);
    }

    public Result decode(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map) throws NotFoundException, FormatException {
        try {
            return doDecode(binaryBitmap, map);
        } catch (NotFoundException e) {
            if (!(map != null && map.containsKey(DecodeHintType.TRY_HARDER)) || !binaryBitmap.isRotateSupported()) {
                throw e;
            }
            BinaryBitmap rotateCounterClockwise = binaryBitmap.rotateCounterClockwise();
            Result doDecode = doDecode(rotateCounterClockwise, map);
            Map resultMetadata = doDecode.getResultMetadata();
            int i = Error.E_WTSDK_A1_DECRYPT;
            if (resultMetadata != null && resultMetadata.containsKey(ResultMetadataType.ORIENTATION)) {
                i = (((Integer) resultMetadata.get(ResultMetadataType.ORIENTATION)).intValue() + Error.E_WTSDK_A1_DECRYPT) % 360;
            }
            doDecode.putMetadata(ResultMetadataType.ORIENTATION, Integer.valueOf(i));
            ResultPoint[] resultPoints = doDecode.getResultPoints();
            if (resultPoints != null) {
                int height = rotateCounterClockwise.getHeight();
                for (int i2 = 0; i2 < resultPoints.length; i2++) {
                    resultPoints[i2] = new ResultPoint((((float) height) - resultPoints[i2].getY()) - 1.0f, resultPoints[i2].getX());
                }
            }
            return doDecode;
        }
    }

    public void reset() {
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x0032  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0076 A[Catch:{ ReaderException -> 0x00d7 }] */
    /* JADX WARNING: Removed duplicated region for block: B:42:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:43:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x001e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private com.google.zxing.Result doDecode(com.google.zxing.BinaryBitmap r18, java.util.Map<com.google.zxing.DecodeHintType, ?> r19) throws com.google.zxing.NotFoundException {
        /*
            r17 = this;
            int r8 = r18.getWidth()
            int r2 = r18.getHeight()
            com.google.zxing.common.BitArray r4 = new com.google.zxing.common.BitArray
            r4.<init>(r8)
            if (r19 == 0) goto L_0x00c6
            com.google.zxing.DecodeHintType r1 = com.google.zxing.DecodeHintType.TRY_HARDER
            r0 = r19
            boolean r1 = r0.containsKey(r1)
            if (r1 == 0) goto L_0x00c6
            r1 = 1
            r3 = r1
        L_0x001b:
            r5 = 1
            if (r3 == 0) goto L_0x00ca
            r1 = 8
        L_0x0020:
            int r1 = r2 >> r1
            int r9 = java.lang.Math.max(r5, r1)
            if (r3 == 0) goto L_0x00cd
            r1 = r2
        L_0x0029:
            int r10 = r2 / 2
            r3 = 0
            r7 = r3
            r3 = r4
            r4 = r19
        L_0x0030:
            if (r7 >= r1) goto L_0x00e4
            int r5 = r7 + 1
            int r5 = r5 / 2
            r6 = r7 & 1
            if (r6 != 0) goto L_0x00d1
            r6 = 1
        L_0x003b:
            if (r6 == 0) goto L_0x00d4
        L_0x003d:
            int r5 = r5 * r9
            int r11 = r10 + r5
            if (r11 < 0) goto L_0x00e4
            if (r11 >= r2) goto L_0x00e4
            r0 = r18
            com.google.zxing.common.BitArray r3 = r0.getBlackRow(r11, r3)     // Catch:{ NotFoundException -> 0x00de }
            r5 = 0
        L_0x004b:
            r6 = 2
            if (r5 >= r6) goto L_0x00df
            r6 = 1
            if (r5 != r6) goto L_0x00e9
            r3.reverse()
            if (r4 == 0) goto L_0x00e9
            com.google.zxing.DecodeHintType r6 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            boolean r6 = r4.containsKey(r6)
            if (r6 == 0) goto L_0x00e9
            java.util.EnumMap r6 = new java.util.EnumMap
            java.lang.Class<com.google.zxing.DecodeHintType> r12 = com.google.zxing.DecodeHintType.class
            r6.<init>(r12)
            r6.putAll(r4)
            com.google.zxing.DecodeHintType r4 = com.google.zxing.DecodeHintType.NEED_RESULT_POINT_CALLBACK
            r6.remove(r4)
        L_0x006d:
            r0 = r17
            com.google.zxing.Result r4 = r0.decodeRow(r11, r3, r6)     // Catch:{ ReaderException -> 0x00d7 }
            r12 = 1
            if (r5 != r12) goto L_0x00c5
            com.google.zxing.ResultMetadataType r12 = com.google.zxing.ResultMetadataType.ORIENTATION     // Catch:{ ReaderException -> 0x00d7 }
            r13 = 180(0xb4, float:2.52E-43)
            java.lang.Integer r13 = java.lang.Integer.valueOf(r13)     // Catch:{ ReaderException -> 0x00d7 }
            r4.putMetadata(r12, r13)     // Catch:{ ReaderException -> 0x00d7 }
            com.google.zxing.ResultPoint[] r12 = r4.getResultPoints()     // Catch:{ ReaderException -> 0x00d7 }
            if (r12 == 0) goto L_0x00c5
            r13 = 0
            com.google.zxing.ResultPoint r14 = new com.google.zxing.ResultPoint     // Catch:{ ReaderException -> 0x00d7 }
            float r15 = (float) r8     // Catch:{ ReaderException -> 0x00d7 }
            r16 = 0
            r16 = r12[r16]     // Catch:{ ReaderException -> 0x00d7 }
            float r16 = r16.getX()     // Catch:{ ReaderException -> 0x00d7 }
            float r15 = r15 - r16
            r16 = 1065353216(0x3f800000, float:1.0)
            float r15 = r15 - r16
            r16 = 0
            r16 = r12[r16]     // Catch:{ ReaderException -> 0x00d7 }
            float r16 = r16.getY()     // Catch:{ ReaderException -> 0x00d7 }
            r14.<init>(r15, r16)     // Catch:{ ReaderException -> 0x00d7 }
            r12[r13] = r14     // Catch:{ ReaderException -> 0x00d7 }
            r13 = 1
            com.google.zxing.ResultPoint r14 = new com.google.zxing.ResultPoint     // Catch:{ ReaderException -> 0x00d7 }
            float r15 = (float) r8     // Catch:{ ReaderException -> 0x00d7 }
            r16 = 1
            r16 = r12[r16]     // Catch:{ ReaderException -> 0x00d7 }
            float r16 = r16.getX()     // Catch:{ ReaderException -> 0x00d7 }
            float r15 = r15 - r16
            r16 = 1065353216(0x3f800000, float:1.0)
            float r15 = r15 - r16
            r16 = 1
            r16 = r12[r16]     // Catch:{ ReaderException -> 0x00d7 }
            float r16 = r16.getY()     // Catch:{ ReaderException -> 0x00d7 }
            r14.<init>(r15, r16)     // Catch:{ ReaderException -> 0x00d7 }
            r12[r13] = r14     // Catch:{ ReaderException -> 0x00d7 }
        L_0x00c5:
            return r4
        L_0x00c6:
            r1 = 0
            r3 = r1
            goto L_0x001b
        L_0x00ca:
            r1 = 5
            goto L_0x0020
        L_0x00cd:
            r1 = 15
            goto L_0x0029
        L_0x00d1:
            r6 = 0
            goto L_0x003b
        L_0x00d4:
            int r5 = -r5
            goto L_0x003d
        L_0x00d7:
            r4 = move-exception
            int r4 = r5 + 1
            r5 = r4
            r4 = r6
            goto L_0x004b
        L_0x00de:
            r5 = move-exception
        L_0x00df:
            int r5 = r7 + 1
            r7 = r5
            goto L_0x0030
        L_0x00e4:
            com.google.zxing.NotFoundException r1 = com.google.zxing.NotFoundException.getNotFoundInstance()
            throw r1
        L_0x00e9:
            r6 = r4
            goto L_0x006d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.oned.OneDReader.doDecode(com.google.zxing.BinaryBitmap, java.util.Map):com.google.zxing.Result");
    }

    protected static void recordPattern(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int i2;
        boolean z;
        int length = iArr.length;
        Arrays.fill(iArr, 0, length, 0);
        int size = bitArray.getSize();
        if (i >= size) {
            throw NotFoundException.getNotFoundInstance();
        }
        boolean z2 = !bitArray.get(i);
        int i3 = 0;
        while (true) {
            if (i >= size) {
                i2 = i3;
                break;
            }
            if (bitArray.get(i) == z2) {
                i2 = i3 + 1;
                if (i2 == length) {
                    break;
                }
                iArr[i2] = 1;
                int i4 = i2;
                z = !z2;
                i3 = i4;
            } else {
                iArr[i3] = iArr[i3] + 1;
                z = z2;
            }
            i++;
            z2 = z;
        }
        if (i2 == length) {
            return;
        }
        if (i2 != length - 1 || i != size) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    protected static void recordPatternInReverse(BitArray bitArray, int i, int[] iArr) throws NotFoundException {
        int length = iArr.length;
        boolean z = bitArray.get(i);
        while (i > 0 && length >= 0) {
            i--;
            if (bitArray.get(i) != z) {
                length--;
                z = !z;
            }
        }
        if (length >= 0) {
            throw NotFoundException.getNotFoundInstance();
        }
        recordPattern(bitArray, i + 1, iArr);
    }

    protected static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i2 += iArr[i3];
            i += iArr2[i3];
        }
        if (i2 < i) {
            return Float.POSITIVE_INFINITY;
        }
        float f2 = ((float) i2) / ((float) i);
        float f3 = f * f2;
        float f4 = 0.0f;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            float f5 = ((float) iArr2[i4]) * f2;
            float f6 = ((float) i5) > f5 ? ((float) i5) - f5 : f5 - ((float) i5);
            if (f6 > f3) {
                return Float.POSITIVE_INFINITY;
            }
            f4 += f6;
        }
        return f4 / ((float) i2);
    }
}
