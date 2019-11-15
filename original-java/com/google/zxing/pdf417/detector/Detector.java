package com.google.zxing.pdf417.detector;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private Detector() {
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z) throws NotFoundException {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        List detect = detect(z, blackMatrix);
        if (detect.isEmpty()) {
            blackMatrix = blackMatrix.clone();
            blackMatrix.rotate180();
            detect = detect(z, blackMatrix);
        }
        return new PDF417DetectorResult(blackMatrix, detect);
    }

    private static List<ResultPoint[]> detect(boolean z, BitMatrix bitMatrix) {
        ArrayList<ResultPoint[]> arrayList = new ArrayList<>();
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        while (i2 < bitMatrix.getHeight()) {
            ResultPoint[] findVertices = findVertices(bitMatrix, i2, i);
            if (findVertices[0] == null && findVertices[3] == null) {
                if (!z2) {
                    break;
                }
                for (ResultPoint[] resultPointArr : arrayList) {
                    if (resultPointArr[1] != null) {
                        i2 = (int) Math.max((float) i2, resultPointArr[1].getY());
                    }
                    if (resultPointArr[3] != null) {
                        i2 = Math.max(i2, (int) resultPointArr[3].getY());
                    }
                }
                i = 0;
                i2 += 5;
                z2 = false;
            } else {
                arrayList.add(findVertices);
                if (!z) {
                    break;
                } else if (findVertices[2] != null) {
                    i2 = (int) findVertices[2].getY();
                    i = (int) findVertices[2].getX();
                    z2 = true;
                } else {
                    i2 = (int) findVertices[4].getY();
                    i = (int) findVertices[4].getX();
                    z2 = true;
                }
            }
        }
        return arrayList;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i, int i2) {
        int i3;
        int i4;
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, START_PATTERN), INDEXES_START_PATTERN);
        if (resultPointArr[4] != null) {
            i3 = (int) resultPointArr[4].getX();
            i4 = (int) resultPointArr[4].getY();
        } else {
            i3 = i2;
            i4 = i;
        }
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i4, i3, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            resultPointArr[iArr[i]] = resultPointArr2[i];
        }
    }

    private static ResultPoint[] findRowsWithPattern(BitMatrix bitMatrix, int i, int i2, int i3, int i4, int[] iArr) {
        boolean z;
        int i5;
        int i6;
        ResultPoint[] resultPointArr = new ResultPoint[4];
        int[] iArr2 = new int[iArr.length];
        int i7 = i3;
        while (true) {
            if (i7 >= i) {
                z = false;
                i5 = i7;
                break;
            }
            int[] findGuardPattern = findGuardPattern(bitMatrix, i4, i7, i2, false, iArr, iArr2);
            if (findGuardPattern != null) {
                int[] iArr3 = findGuardPattern;
                int i8 = i7;
                while (true) {
                    if (i8 <= 0) {
                        break;
                    }
                    int i9 = i8 - 1;
                    int[] findGuardPattern2 = findGuardPattern(bitMatrix, i4, i9, i2, false, iArr, iArr2);
                    if (findGuardPattern2 == null) {
                        i8 = i9 + 1;
                        break;
                    }
                    iArr3 = findGuardPattern2;
                    i8 = i9;
                }
                resultPointArr[0] = new ResultPoint((float) iArr3[0], (float) i8);
                resultPointArr[1] = new ResultPoint((float) iArr3[1], (float) i8);
                z = true;
                i5 = i8;
            } else {
                i7 += 5;
            }
        }
        int i10 = i5 + 1;
        if (z) {
            int[] iArr4 = {(int) resultPointArr[0].getX(), (int) resultPointArr[1].getX()};
            int i11 = 0;
            int i12 = i10;
            while (i12 < i) {
                int[] findGuardPattern3 = findGuardPattern(bitMatrix, iArr4[0], i12, i2, false, iArr, iArr2);
                if (findGuardPattern3 == null || Math.abs(iArr4[0] - findGuardPattern3[0]) >= 5 || Math.abs(iArr4[1] - findGuardPattern3[1]) >= 5) {
                    if (i11 > 25) {
                        break;
                    }
                    i6 = i11 + 1;
                    findGuardPattern3 = iArr4;
                } else {
                    i6 = 0;
                }
                i12++;
                iArr4 = findGuardPattern3;
                i11 = i6;
            }
            i10 = i12 - (i11 + 1);
            resultPointArr[2] = new ResultPoint((float) iArr4[0], (float) i10);
            resultPointArr[3] = new ResultPoint((float) iArr4[1], (float) i10);
        }
        if (i10 - i5 < 10) {
            Arrays.fill(resultPointArr, null);
        }
        return resultPointArr;
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (bitMatrix.get(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int i6 = 0;
        int length = iArr.length;
        boolean z2 = z;
        int i7 = i;
        while (i < i3) {
            if (bitMatrix.get(i, i2) != z2) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                if (i6 != length - 1) {
                    i6++;
                } else if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                    return new int[]{i7, i};
                } else {
                    i7 += iArr2[0] + iArr2[1];
                    System.arraycopy(iArr2, 2, iArr2, 0, i6 - 1);
                    iArr2[i6 - 1] = 0;
                    iArr2[i6] = 0;
                    i6--;
                }
                iArr2[i6] = 1;
                z2 = !z2;
            }
            i++;
        }
        if (i6 != length - 1 || patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) >= MAX_AVG_VARIANCE) {
            return null;
        }
        return new int[]{i7, i - 1};
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2, float f) {
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
