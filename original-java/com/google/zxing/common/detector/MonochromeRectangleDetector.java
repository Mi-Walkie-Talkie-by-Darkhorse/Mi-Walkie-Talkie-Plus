package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

@Deprecated
public final class MonochromeRectangleDetector {
    private static final int MAX_MODULES = 32;
    private final BitMatrix image;

    public MonochromeRectangleDetector(BitMatrix bitMatrix) {
        this.image = bitMatrix;
    }

    public ResultPoint[] detect() throws NotFoundException {
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i = height / 2;
        int i2 = width / 2;
        int max = Math.max(1, height / 256);
        int max2 = Math.max(1, width / 256);
        int y = ((int) findCornerFromCenter(i2, 0, 0, width, i, -max, 0, height, i2 / 2).getY()) - 1;
        ResultPoint findCornerFromCenter = findCornerFromCenter(i2, -max2, 0, width, i, 0, y, height, i / 2);
        int x = ((int) findCornerFromCenter.getX()) - 1;
        ResultPoint findCornerFromCenter2 = findCornerFromCenter(i2, max2, x, width, i, 0, y, height, i / 2);
        int x2 = ((int) findCornerFromCenter2.getX()) + 1;
        ResultPoint findCornerFromCenter3 = findCornerFromCenter(i2, 0, x, x2, i, max, y, height, i2 / 2);
        return new ResultPoint[]{findCornerFromCenter(i2, 0, x, x2, i, -max, y, ((int) findCornerFromCenter3.getY()) + 1, i2 / 4), findCornerFromCenter, findCornerFromCenter2, findCornerFromCenter3};
    }

    private ResultPoint findCornerFromCenter(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) throws NotFoundException {
        int[] blackWhiteRange;
        char c;
        int i10 = i;
        int i11 = i5;
        int[] iArr = null;
        while (i11 < i8 && i11 >= i7 && i10 < i4 && i10 >= i3) {
            if (i2 == 0) {
                blackWhiteRange = blackWhiteRange(i11, i9, i3, i4, true);
            } else {
                blackWhiteRange = blackWhiteRange(i10, i9, i7, i8, false);
            }
            if (blackWhiteRange != null) {
                i10 += i2;
                iArr = blackWhiteRange;
                i11 += i6;
            } else if (iArr == null) {
                throw NotFoundException.getNotFoundInstance();
            } else if (i2 == 0) {
                int i12 = i11 - i6;
                if (iArr[0] >= i) {
                    return new ResultPoint((float) iArr[1], (float) i12);
                }
                if (iArr[1] <= i) {
                    return new ResultPoint((float) iArr[0], (float) i12);
                }
                if (i6 > 0) {
                    c = 0;
                } else {
                    c = 1;
                }
                return new ResultPoint((float) iArr[c], (float) i12);
            } else {
                int i13 = i10 - i2;
                if (iArr[0] >= i5) {
                    return new ResultPoint((float) i13, (float) iArr[1]);
                }
                if (iArr[1] <= i5) {
                    return new ResultPoint((float) i13, (float) iArr[0]);
                }
                return new ResultPoint((float) i13, (float) iArr[i2 < 0 ? (char) 0 : 1]);
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x001f, code lost:
        if (r2 < r7) goto L_0x002b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0021, code lost:
        if (r9 == false) goto L_0x0043;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
        if (r4.image.get(r2, r5) == false) goto L_0x001d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002b, code lost:
        r3 = r0 - r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x002d, code lost:
        if (r2 < r7) goto L_0x0031;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:16:0x002f, code lost:
        if (r3 <= r6) goto L_0x004c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0049, code lost:
        if (r4.image.get(r5, r2) == false) goto L_0x001d;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x004c, code lost:
        r0 = r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0056, code lost:
        r1 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0057, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0059, code lost:
        if (r1 >= r8) goto L_0x0065;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x005b, code lost:
        if (r9 == false) goto L_0x0079;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0063, code lost:
        if (r4.image.get(r1, r5) == false) goto L_0x0057;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x0065, code lost:
        r3 = r1 - r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:35:0x0067, code lost:
        if (r1 >= r8) goto L_0x006b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x0069, code lost:
        if (r3 <= r6) goto L_0x0082;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x007f, code lost:
        if (r4.image.get(r5, r1) == false) goto L_0x0057;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0082, code lost:
        r0 = r1;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x001c, code lost:
        r2 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001d, code lost:
        r2 = r2 - 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int[] blackWhiteRange(int r5, int r6, int r7, int r8, boolean r9) {
        /*
            r4 = this;
            int r0 = r7 + r8
            int r1 = r0 / 2
            r0 = r1
        L_0x0005:
            if (r0 < r7) goto L_0x0031
            if (r9 == 0) goto L_0x0014
            com.google.zxing.common.BitMatrix r2 = r4.image
            boolean r2 = r2.get(r0, r5)
            if (r2 == 0) goto L_0x001c
        L_0x0011:
            int r0 = r0 + -1
            goto L_0x0005
        L_0x0014:
            com.google.zxing.common.BitMatrix r2 = r4.image
            boolean r2 = r2.get(r5, r0)
            if (r2 != 0) goto L_0x0011
        L_0x001c:
            r2 = r0
        L_0x001d:
            int r2 = r2 + -1
            if (r2 < r7) goto L_0x002b
            if (r9 == 0) goto L_0x0043
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r2, r5)
            if (r3 == 0) goto L_0x001d
        L_0x002b:
            int r3 = r0 - r2
            if (r2 < r7) goto L_0x0031
            if (r3 <= r6) goto L_0x004c
        L_0x0031:
            int r2 = r0 + 1
            r0 = r1
        L_0x0034:
            if (r0 >= r8) goto L_0x006b
            if (r9 == 0) goto L_0x004e
            com.google.zxing.common.BitMatrix r1 = r4.image
            boolean r1 = r1.get(r0, r5)
            if (r1 == 0) goto L_0x0056
        L_0x0040:
            int r0 = r0 + 1
            goto L_0x0034
        L_0x0043:
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r5, r2)
            if (r3 == 0) goto L_0x001d
            goto L_0x002b
        L_0x004c:
            r0 = r2
            goto L_0x0005
        L_0x004e:
            com.google.zxing.common.BitMatrix r1 = r4.image
            boolean r1 = r1.get(r5, r0)
            if (r1 != 0) goto L_0x0040
        L_0x0056:
            r1 = r0
        L_0x0057:
            int r1 = r1 + 1
            if (r1 >= r8) goto L_0x0065
            if (r9 == 0) goto L_0x0079
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r1, r5)
            if (r3 == 0) goto L_0x0057
        L_0x0065:
            int r3 = r1 - r0
            if (r1 >= r8) goto L_0x006b
            if (r3 <= r6) goto L_0x0082
        L_0x006b:
            int r1 = r0 + -1
            if (r1 <= r2) goto L_0x0084
            r0 = 2
            int[] r0 = new int[r0]
            r3 = 0
            r0[r3] = r2
            r2 = 1
            r0[r2] = r1
        L_0x0078:
            return r0
        L_0x0079:
            com.google.zxing.common.BitMatrix r3 = r4.image
            boolean r3 = r3.get(r5, r1)
            if (r3 == 0) goto L_0x0057
            goto L_0x0065
        L_0x0082:
            r0 = r1
            goto L_0x0034
        L_0x0084:
            r0 = 0
            goto L_0x0078
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.zxing.common.detector.MonochromeRectangleDetector.blackWhiteRange(int, int, int, int, boolean):int[]");
    }
}
