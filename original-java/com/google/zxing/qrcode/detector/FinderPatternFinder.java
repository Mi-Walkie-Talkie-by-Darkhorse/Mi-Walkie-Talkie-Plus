package com.google.zxing.qrcode.detector;

import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitMatrix;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

public class FinderPatternFinder {
    private static final int CENTER_QUORUM = 2;
    protected static final int MAX_MODULES = 57;
    protected static final int MIN_SKIP = 3;
    private final int[] crossCheckStateCount;
    private boolean hasSkipped;
    private final BitMatrix image;
    private final List<FinderPattern> possibleCenters;
    private final ResultPointCallback resultPointCallback;

    private static final class CenterComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        private CenterComparator(float f) {
            this.average = f;
        }

        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            int compare = Integer.compare(finderPattern2.getCount(), finderPattern.getCount());
            if (compare == 0) {
                return Float.compare(Math.abs(finderPattern.getEstimatedModuleSize() - this.average), Math.abs(finderPattern2.getEstimatedModuleSize() - this.average));
            }
            return compare;
        }
    }

    private static final class FurthestFromAverageComparator implements Serializable, Comparator<FinderPattern> {
        private final float average;

        private FurthestFromAverageComparator(float f) {
            this.average = f;
        }

        public int compare(FinderPattern finderPattern, FinderPattern finderPattern2) {
            return Float.compare(Math.abs(finderPattern2.getEstimatedModuleSize() - this.average), Math.abs(finderPattern.getEstimatedModuleSize() - this.average));
        }
    }

    public FinderPatternFinder(BitMatrix bitMatrix) {
        this(bitMatrix, null);
    }

    public FinderPatternFinder(BitMatrix bitMatrix, ResultPointCallback resultPointCallback2) {
        this.image = bitMatrix;
        this.possibleCenters = new ArrayList();
        this.crossCheckStateCount = new int[5];
        this.resultPointCallback = resultPointCallback2;
    }

    /* access modifiers changed from: protected */
    public final BitMatrix getImage() {
        return this.image;
    }

    /* access modifiers changed from: protected */
    public final List<FinderPattern> getPossibleCenters() {
        return this.possibleCenters;
    }

    /* access modifiers changed from: 0000 */
    public final FinderPatternInfo find(Map<DecodeHintType, ?> map) throws NotFoundException {
        int i;
        int i2;
        boolean z;
        boolean z2 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        boolean z3 = map != null && map.containsKey(DecodeHintType.PURE_BARCODE);
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i3 = (height * 3) / 228;
        if (i3 < 3 || z2) {
            i3 = 3;
        }
        boolean z4 = false;
        int[] iArr = new int[5];
        int i4 = i3 - 1;
        int i5 = i3;
        while (i4 < height && !z4) {
            iArr[0] = 0;
            iArr[1] = 0;
            iArr[2] = 0;
            iArr[3] = 0;
            iArr[4] = 0;
            int i6 = 0;
            int i7 = 0;
            while (i7 < width) {
                if (this.image.get(i7, i4)) {
                    if ((i6 & 1) == 1) {
                        i6++;
                    }
                    iArr[i6] = iArr[i6] + 1;
                } else if ((i6 & 1) != 0) {
                    iArr[i6] = iArr[i6] + 1;
                } else if (i6 != 4) {
                    i6++;
                    iArr[i6] = iArr[i6] + 1;
                } else if (!foundPatternCross(iArr)) {
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = iArr[4];
                    iArr[3] = 1;
                    iArr[4] = 0;
                    i6 = 3;
                } else if (handlePossibleCenter(iArr, i4, i7, z3)) {
                    i5 = 2;
                    if (this.hasSkipped) {
                        z = haveMultiplyConfirmedCenters();
                    } else {
                        int findRowSkip = findRowSkip();
                        if (findRowSkip > iArr[2]) {
                            i2 = i4 + ((findRowSkip - iArr[2]) - 2);
                            i = width - 1;
                        } else {
                            i = i7;
                            i2 = i4;
                        }
                        i4 = i2;
                        i7 = i;
                        z = z4;
                    }
                    iArr[0] = 0;
                    iArr[1] = 0;
                    iArr[2] = 0;
                    iArr[3] = 0;
                    iArr[4] = 0;
                    z4 = z;
                    i6 = 0;
                } else {
                    iArr[0] = iArr[2];
                    iArr[1] = iArr[3];
                    iArr[2] = iArr[4];
                    iArr[3] = 1;
                    iArr[4] = 0;
                    i6 = 3;
                }
                i7++;
            }
            if (foundPatternCross(iArr) && handlePossibleCenter(iArr, i4, width, z3)) {
                i5 = iArr[0];
                if (this.hasSkipped) {
                    z4 = haveMultiplyConfirmedCenters();
                }
            }
            i4 += i5;
        }
        FinderPattern[] selectBestPatterns = selectBestPatterns();
        ResultPoint.orderBestPatterns(selectBestPatterns);
        return new FinderPatternInfo(selectBestPatterns);
    }

    private static float centerFromEnd(int[] iArr, int i) {
        return ((float) ((i - iArr[4]) - iArr[3])) - (((float) iArr[2]) / 2.0f);
    }

    protected static boolean foundPatternCross(int[] iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 5; i2++) {
            int i3 = iArr[i2];
            if (i3 == 0) {
                return false;
            }
            i += i3;
        }
        if (i < 7) {
            return false;
        }
        float f = ((float) i) / 7.0f;
        float f2 = f / 2.0f;
        if (Math.abs(f - ((float) iArr[0])) >= f2 || Math.abs(f - ((float) iArr[1])) >= f2 || Math.abs((3.0f * f) - ((float) iArr[2])) >= 3.0f * f2 || Math.abs(f - ((float) iArr[3])) >= f2 || Math.abs(f - ((float) iArr[4])) >= f2) {
            return false;
        }
        return true;
    }

    private int[] getCrossCheckStateCount() {
        this.crossCheckStateCount[0] = 0;
        this.crossCheckStateCount[1] = 0;
        this.crossCheckStateCount[2] = 0;
        this.crossCheckStateCount[3] = 0;
        this.crossCheckStateCount[4] = 0;
        return this.crossCheckStateCount;
    }

    private boolean crossCheckDiagonal(int i, int i2, int i3, int i4) {
        int[] crossCheckStateCount2 = getCrossCheckStateCount();
        int i5 = 0;
        while (i >= i5 && i2 >= i5 && this.image.get(i2 - i5, i - i5)) {
            crossCheckStateCount2[2] = crossCheckStateCount2[2] + 1;
            i5++;
        }
        if (i < i5 || i2 < i5) {
            return false;
        }
        while (i >= i5 && i2 >= i5 && !this.image.get(i2 - i5, i - i5) && crossCheckStateCount2[1] <= i3) {
            crossCheckStateCount2[1] = crossCheckStateCount2[1] + 1;
            i5++;
        }
        if (i < i5 || i2 < i5 || crossCheckStateCount2[1] > i3) {
            return false;
        }
        while (i >= i5 && i2 >= i5 && this.image.get(i2 - i5, i - i5) && crossCheckStateCount2[0] <= i3) {
            crossCheckStateCount2[0] = crossCheckStateCount2[0] + 1;
            i5++;
        }
        if (crossCheckStateCount2[0] > i3) {
            return false;
        }
        int height = this.image.getHeight();
        int width = this.image.getWidth();
        int i6 = 1;
        while (i + i6 < height && i2 + i6 < width && this.image.get(i2 + i6, i + i6)) {
            crossCheckStateCount2[2] = crossCheckStateCount2[2] + 1;
            i6++;
        }
        if (i + i6 >= height || i2 + i6 >= width) {
            return false;
        }
        while (i + i6 < height && i2 + i6 < width && !this.image.get(i2 + i6, i + i6) && crossCheckStateCount2[3] < i3) {
            crossCheckStateCount2[3] = crossCheckStateCount2[3] + 1;
            i6++;
        }
        if (i + i6 >= height || i2 + i6 >= width || crossCheckStateCount2[3] >= i3) {
            return false;
        }
        while (i + i6 < height && i2 + i6 < width && this.image.get(i2 + i6, i + i6) && crossCheckStateCount2[4] < i3) {
            crossCheckStateCount2[4] = crossCheckStateCount2[4] + 1;
            i6++;
        }
        if (crossCheckStateCount2[4] >= i3) {
            return false;
        }
        return Math.abs(((((crossCheckStateCount2[0] + crossCheckStateCount2[1]) + crossCheckStateCount2[2]) + crossCheckStateCount2[3]) + crossCheckStateCount2[4]) - i4) < i4 * 2 && foundPatternCross(crossCheckStateCount2);
    }

    private float crossCheckVertical(int i, int i2, int i3, int i4) {
        BitMatrix bitMatrix = this.image;
        int height = bitMatrix.getHeight();
        int[] crossCheckStateCount2 = getCrossCheckStateCount();
        int i5 = i;
        while (i5 >= 0 && bitMatrix.get(i2, i5)) {
            crossCheckStateCount2[2] = crossCheckStateCount2[2] + 1;
            i5--;
        }
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i5 >= 0 && !bitMatrix.get(i2, i5) && crossCheckStateCount2[1] <= i3) {
            crossCheckStateCount2[1] = crossCheckStateCount2[1] + 1;
            i5--;
        }
        if (i5 < 0 || crossCheckStateCount2[1] > i3) {
            return Float.NaN;
        }
        while (i5 >= 0 && bitMatrix.get(i2, i5) && crossCheckStateCount2[0] <= i3) {
            crossCheckStateCount2[0] = crossCheckStateCount2[0] + 1;
            i5--;
        }
        if (crossCheckStateCount2[0] > i3) {
            return Float.NaN;
        }
        int i6 = i + 1;
        while (i6 < height && bitMatrix.get(i2, i6)) {
            crossCheckStateCount2[2] = crossCheckStateCount2[2] + 1;
            i6++;
        }
        if (i6 == height) {
            return Float.NaN;
        }
        while (i6 < height && !bitMatrix.get(i2, i6) && crossCheckStateCount2[3] < i3) {
            crossCheckStateCount2[3] = crossCheckStateCount2[3] + 1;
            i6++;
        }
        if (i6 == height || crossCheckStateCount2[3] >= i3) {
            return Float.NaN;
        }
        while (i6 < height && bitMatrix.get(i2, i6) && crossCheckStateCount2[4] < i3) {
            crossCheckStateCount2[4] = crossCheckStateCount2[4] + 1;
            i6++;
        }
        if (crossCheckStateCount2[4] >= i3 || Math.abs(((((crossCheckStateCount2[0] + crossCheckStateCount2[1]) + crossCheckStateCount2[2]) + crossCheckStateCount2[3]) + crossCheckStateCount2[4]) - i4) * 5 >= i4 * 2 || !foundPatternCross(crossCheckStateCount2)) {
            return Float.NaN;
        }
        return centerFromEnd(crossCheckStateCount2, i6);
    }

    private float crossCheckHorizontal(int i, int i2, int i3, int i4) {
        BitMatrix bitMatrix = this.image;
        int width = bitMatrix.getWidth();
        int[] crossCheckStateCount2 = getCrossCheckStateCount();
        int i5 = i;
        while (i5 >= 0 && bitMatrix.get(i5, i2)) {
            crossCheckStateCount2[2] = crossCheckStateCount2[2] + 1;
            i5--;
        }
        if (i5 < 0) {
            return Float.NaN;
        }
        while (i5 >= 0 && !bitMatrix.get(i5, i2) && crossCheckStateCount2[1] <= i3) {
            crossCheckStateCount2[1] = crossCheckStateCount2[1] + 1;
            i5--;
        }
        if (i5 < 0 || crossCheckStateCount2[1] > i3) {
            return Float.NaN;
        }
        while (i5 >= 0 && bitMatrix.get(i5, i2) && crossCheckStateCount2[0] <= i3) {
            crossCheckStateCount2[0] = crossCheckStateCount2[0] + 1;
            i5--;
        }
        if (crossCheckStateCount2[0] > i3) {
            return Float.NaN;
        }
        int i6 = i + 1;
        while (i6 < width && bitMatrix.get(i6, i2)) {
            crossCheckStateCount2[2] = crossCheckStateCount2[2] + 1;
            i6++;
        }
        if (i6 == width) {
            return Float.NaN;
        }
        while (i6 < width && !bitMatrix.get(i6, i2) && crossCheckStateCount2[3] < i3) {
            crossCheckStateCount2[3] = crossCheckStateCount2[3] + 1;
            i6++;
        }
        if (i6 == width || crossCheckStateCount2[3] >= i3) {
            return Float.NaN;
        }
        while (i6 < width && bitMatrix.get(i6, i2) && crossCheckStateCount2[4] < i3) {
            crossCheckStateCount2[4] = crossCheckStateCount2[4] + 1;
            i6++;
        }
        if (crossCheckStateCount2[4] >= i3 || Math.abs(((((crossCheckStateCount2[0] + crossCheckStateCount2[1]) + crossCheckStateCount2[2]) + crossCheckStateCount2[3]) + crossCheckStateCount2[4]) - i4) * 5 >= i4 || !foundPatternCross(crossCheckStateCount2)) {
            return Float.NaN;
        }
        return centerFromEnd(crossCheckStateCount2, i6);
    }

    /* access modifiers changed from: protected */
    public final boolean handlePossibleCenter(int[] iArr, int i, int i2, boolean z) {
        boolean z2 = false;
        int i3 = iArr[0] + iArr[1] + iArr[2] + iArr[3] + iArr[4];
        float centerFromEnd = centerFromEnd(iArr, i2);
        float crossCheckVertical = crossCheckVertical(i, (int) centerFromEnd, iArr[2], i3);
        if (Float.isNaN(crossCheckVertical)) {
            return false;
        }
        float crossCheckHorizontal = crossCheckHorizontal((int) centerFromEnd, (int) crossCheckVertical, iArr[2], i3);
        if (Float.isNaN(crossCheckHorizontal)) {
            return false;
        }
        if (z && !crossCheckDiagonal((int) crossCheckVertical, (int) crossCheckHorizontal, iArr[2], i3)) {
            return false;
        }
        float f = ((float) i3) / 7.0f;
        int i4 = 0;
        while (true) {
            if (i4 >= this.possibleCenters.size()) {
                break;
            }
            FinderPattern finderPattern = (FinderPattern) this.possibleCenters.get(i4);
            if (finderPattern.aboutEquals(f, crossCheckVertical, crossCheckHorizontal)) {
                this.possibleCenters.set(i4, finderPattern.combineEstimate(crossCheckVertical, crossCheckHorizontal, f));
                z2 = true;
                break;
            }
            i4++;
        }
        if (!z2) {
            FinderPattern finderPattern2 = new FinderPattern(crossCheckHorizontal, crossCheckVertical, f);
            this.possibleCenters.add(finderPattern2);
            if (this.resultPointCallback != null) {
                this.resultPointCallback.foundPossibleResultPoint(finderPattern2);
            }
        }
        return true;
    }

    private int findRowSkip() {
        if (this.possibleCenters.size() <= 1) {
            return 0;
        }
        FinderPattern finderPattern = null;
        for (FinderPattern finderPattern2 : this.possibleCenters) {
            if (finderPattern2.getCount() >= 2) {
                if (finderPattern == null) {
                    finderPattern = finderPattern2;
                } else {
                    this.hasSkipped = true;
                    return ((int) (Math.abs(finderPattern.getX() - finderPattern2.getX()) - Math.abs(finderPattern.getY() - finderPattern2.getY()))) / 2;
                }
            }
        }
        return 0;
    }

    private boolean haveMultiplyConfirmedCenters() {
        float f;
        float f2 = 0.0f;
        int size = this.possibleCenters.size();
        float f3 = 0.0f;
        int i = 0;
        for (FinderPattern finderPattern : this.possibleCenters) {
            if (finderPattern.getCount() >= 2) {
                i++;
                f = finderPattern.getEstimatedModuleSize() + f3;
            } else {
                f = f3;
            }
            i = i;
            f3 = f;
        }
        if (i < 3) {
            return false;
        }
        float f4 = f3 / ((float) size);
        for (FinderPattern estimatedModuleSize : this.possibleCenters) {
            f2 += Math.abs(estimatedModuleSize.getEstimatedModuleSize() - f4);
        }
        if (f2 <= 0.05f * f3) {
            return true;
        }
        return false;
    }

    private FinderPattern[] selectBestPatterns() throws NotFoundException {
        float f = 0.0f;
        int size = this.possibleCenters.size();
        if (size < 3) {
            throw NotFoundException.getNotFoundInstance();
        }
        if (size > 3) {
            float f2 = 0.0f;
            float f3 = 0.0f;
            for (FinderPattern estimatedModuleSize : this.possibleCenters) {
                float estimatedModuleSize2 = estimatedModuleSize.getEstimatedModuleSize();
                f3 += estimatedModuleSize2;
                f2 = (estimatedModuleSize2 * estimatedModuleSize2) + f2;
            }
            float f4 = f3 / ((float) size);
            float sqrt = (float) Math.sqrt((double) ((f2 / ((float) size)) - (f4 * f4)));
            Collections.sort(this.possibleCenters, new FurthestFromAverageComparator(f4));
            float max = Math.max(0.2f * f4, sqrt);
            int i = 0;
            while (i < this.possibleCenters.size() && this.possibleCenters.size() > 3) {
                if (Math.abs(((FinderPattern) this.possibleCenters.get(i)).getEstimatedModuleSize() - f4) > max) {
                    this.possibleCenters.remove(i);
                    i--;
                }
                i++;
            }
        }
        if (this.possibleCenters.size() > 3) {
            for (FinderPattern estimatedModuleSize3 : this.possibleCenters) {
                f += estimatedModuleSize3.getEstimatedModuleSize();
            }
            Collections.sort(this.possibleCenters, new CenterComparator(f / ((float) this.possibleCenters.size())));
            this.possibleCenters.subList(3, this.possibleCenters.size()).clear();
        }
        return new FinderPattern[]{(FinderPattern) this.possibleCenters.get(0), (FinderPattern) this.possibleCenters.get(1), (FinderPattern) this.possibleCenters.get(2)};
    }
}
