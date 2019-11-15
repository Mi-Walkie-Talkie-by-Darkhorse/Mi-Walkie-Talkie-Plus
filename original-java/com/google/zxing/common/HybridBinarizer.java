package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

public final class HybridBinarizer extends GlobalHistogramBinarizer {
    private static final int BLOCK_SIZE = 8;
    private static final int BLOCK_SIZE_MASK = 7;
    private static final int BLOCK_SIZE_POWER = 3;
    private static final int MINIMUM_DIMENSION = 40;
    private static final int MIN_DYNAMIC_RANGE = 24;
    private BitMatrix matrix;

    public HybridBinarizer(LuminanceSource luminanceSource) {
        super(luminanceSource);
    }

    public BitMatrix getBlackMatrix() throws NotFoundException {
        if (this.matrix != null) {
            return this.matrix;
        }
        LuminanceSource luminanceSource = getLuminanceSource();
        int width = luminanceSource.getWidth();
        int height = luminanceSource.getHeight();
        if (width < 40 || height < 40) {
            this.matrix = super.getBlackMatrix();
        } else {
            byte[] matrix2 = luminanceSource.getMatrix();
            int i = width >> 3;
            if ((width & 7) != 0) {
                i++;
            }
            int i2 = height >> 3;
            if ((height & 7) != 0) {
                i2++;
            }
            int[][] calculateBlackPoints = calculateBlackPoints(matrix2, i, i2, width, height);
            BitMatrix bitMatrix = new BitMatrix(width, height);
            calculateThresholdForBlock(matrix2, i, i2, width, height, calculateBlackPoints, bitMatrix);
            this.matrix = bitMatrix;
        }
        return this.matrix;
    }

    public Binarizer createBinarizer(LuminanceSource luminanceSource) {
        return new HybridBinarizer(luminanceSource);
    }

    private static void calculateThresholdForBlock(byte[] bArr, int i, int i2, int i3, int i4, int[][] iArr, BitMatrix bitMatrix) {
        int i5 = i4 - 8;
        int i6 = i3 - 8;
        for (int i7 = 0; i7 < i2; i7++) {
            int i8 = i7 << 3;
            if (i8 > i5) {
                i8 = i5;
            }
            int cap = cap(i7, 2, i2 - 3);
            for (int i9 = 0; i9 < i; i9++) {
                int i10 = i9 << 3;
                if (i10 > i6) {
                    i10 = i6;
                }
                int cap2 = cap(i9, 2, i - 3);
                int i11 = 0;
                for (int i12 = -2; i12 <= 2; i12++) {
                    int[] iArr2 = iArr[cap + i12];
                    i11 += iArr2[cap2 + 2] + iArr2[cap2 - 2] + iArr2[cap2 - 1] + iArr2[cap2] + iArr2[cap2 + 1];
                }
                thresholdBlock(bArr, i10, i8, i11 / 25, i3, bitMatrix);
            }
        }
    }

    private static int cap(int i, int i2, int i3) {
        if (i < i2) {
            return i2;
        }
        return i > i3 ? i3 : i;
    }

    private static void thresholdBlock(byte[] bArr, int i, int i2, int i3, int i4, BitMatrix bitMatrix) {
        int i5 = (i2 * i4) + i;
        int i6 = 0;
        while (i6 < 8) {
            for (int i7 = 0; i7 < 8; i7++) {
                if ((bArr[i5 + i7] & 255) <= i3) {
                    bitMatrix.set(i + i7, i2 + i6);
                }
            }
            i6++;
            i5 += i4;
        }
    }

    /* JADX WARNING: type inference failed for: r9v4 */
    /* JADX WARNING: type inference failed for: r10v4 */
    /* JADX WARNING: type inference failed for: r9v6 */
    /* JADX WARNING: type inference failed for: r10v5 */
    /* JADX WARNING: type inference failed for: r9v8 */
    /* JADX WARNING: type inference failed for: r10v8 */
    /* JADX WARNING: type inference failed for: r13v0, types: [int] */
    /* JADX WARNING: type inference failed for: r10v13 */
    /* JADX WARNING: type inference failed for: r9v12 */
    /* JADX WARNING: type inference failed for: r10v15 */
    /* JADX WARNING: type inference failed for: r10v16 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static int[][] calculateBlackPoints(byte[] r17, int r18, int r19, int r20, int r21) {
        /*
            int r4 = r21 + -8
            int r6 = r20 + -8
            r0 = r19
            r1 = r18
            int[] r2 = new int[]{r0, r1}
            java.lang.Class r3 = java.lang.Integer.TYPE
            java.lang.Object r2 = java.lang.reflect.Array.newInstance(r3, r2)
            int[][] r2 = (int[][]) r2
            r3 = 0
            r15 = r3
        L_0x0016:
            r0 = r19
            if (r15 >= r0) goto L_0x00be
            int r3 = r15 << 3
            if (r3 <= r4) goto L_0x001f
            r3 = r4
        L_0x001f:
            r5 = 0
            r14 = r5
        L_0x0021:
            r0 = r18
            if (r14 >= r0) goto L_0x00b9
            int r5 = r14 << 3
            if (r5 <= r6) goto L_0x002a
            r5 = r6
        L_0x002a:
            r10 = 0
            r11 = 255(0xff, float:3.57E-43)
            r7 = 0
            r9 = 0
            int r8 = r3 * r20
            int r8 = r8 + r5
        L_0x0032:
            r5 = 8
            if (r9 >= r5) goto L_0x0087
            r5 = 0
            r12 = r5
        L_0x0038:
            r5 = 8
            if (r12 >= r5) goto L_0x0050
            int r5 = r8 + r12
            byte r5 = r17[r5]
            r5 = r5 & 255(0xff, float:3.57E-43)
            int r13 = r10 + r5
            if (r5 >= r11) goto L_0x00c3
            r10 = r5
        L_0x0047:
            if (r5 <= r7) goto L_0x00c1
        L_0x0049:
            int r7 = r12 + 1
            r12 = r7
            r11 = r10
            r7 = r5
            r10 = r13
            goto L_0x0038
        L_0x0050:
            int r5 = r7 - r11
            r12 = 24
            if (r5 <= r12) goto L_0x007a
            int r9 = r9 + 1
            int r5 = r8 + r20
            r8 = r9
            r9 = r10
        L_0x005c:
            r10 = 8
            if (r8 >= r10) goto L_0x007d
            r10 = 0
            r16 = r10
            r10 = r9
            r9 = r16
        L_0x0066:
            r12 = 8
            if (r9 >= r12) goto L_0x0074
            int r12 = r5 + r9
            byte r12 = r17[r12]
            r12 = r12 & 255(0xff, float:3.57E-43)
            int r10 = r10 + r12
            int r9 = r9 + 1
            goto L_0x0066
        L_0x0074:
            int r8 = r8 + 1
            int r5 = r5 + r20
            r9 = r10
            goto L_0x005c
        L_0x007a:
            r5 = r8
            r8 = r9
            r9 = r10
        L_0x007d:
            int r10 = r8 + 1
            int r8 = r5 + r20
            r16 = r10
            r10 = r9
            r9 = r16
            goto L_0x0032
        L_0x0087:
            int r5 = r10 >> 6
            int r7 = r7 - r11
            r8 = 24
            if (r7 > r8) goto L_0x00b0
            int r7 = r11 / 2
            if (r15 <= 0) goto L_0x00bf
            if (r14 <= 0) goto L_0x00bf
            int r5 = r15 + -1
            r5 = r2[r5]
            r5 = r5[r14]
            r8 = r2[r15]
            int r9 = r14 + -1
            r8 = r8[r9]
            int r8 = r8 * 2
            int r5 = r5 + r8
            int r8 = r15 + -1
            r8 = r2[r8]
            int r9 = r14 + -1
            r8 = r8[r9]
            int r5 = r5 + r8
            int r5 = r5 / 4
            if (r11 >= r5) goto L_0x00bf
        L_0x00b0:
            r7 = r2[r15]
            r7[r14] = r5
            int r5 = r14 + 1
            r14 = r5
            goto L_0x0021
        L_0x00b9:
            int r3 = r15 + 1
            r15 = r3
            goto L_0x0016
        L_0x00be:
            return r2
        L_0x00bf:
            r5 = r7
            goto L_0x00b0
        L_0x00c1:
            r5 = r7
            goto L_0x0049
        L_0x00c3:
            r10 = r11
            goto L_0x0047
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.HybridBinarizer.calculateBlackPoints(byte[], int, int, int, int):int[][]");
    }
}
