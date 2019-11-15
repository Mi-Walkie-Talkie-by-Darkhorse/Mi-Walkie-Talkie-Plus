package com.google.zxing.oned.rss;

import com.google.zxing.NotFoundException;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.oned.OneDReader;

public abstract class AbstractRSSReader extends OneDReader {
    private static final float MAX_AVG_VARIANCE = 0.2f;
    private static final float MAX_FINDER_PATTERN_RATIO = 0.89285713f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.45f;
    private static final float MIN_FINDER_PATTERN_RATIO = 0.7916667f;
    private final int[] dataCharacterCounters = new int[8];
    private final int[] decodeFinderCounters = new int[4];
    private final int[] evenCounts = new int[(this.dataCharacterCounters.length / 2)];
    private final float[] evenRoundingErrors = new float[4];
    private final int[] oddCounts = new int[(this.dataCharacterCounters.length / 2)];
    private final float[] oddRoundingErrors = new float[4];

    protected AbstractRSSReader() {
    }

    /* access modifiers changed from: protected */
    public final int[] getDecodeFinderCounters() {
        return this.decodeFinderCounters;
    }

    /* access modifiers changed from: protected */
    public final int[] getDataCharacterCounters() {
        return this.dataCharacterCounters;
    }

    /* access modifiers changed from: protected */
    public final float[] getOddRoundingErrors() {
        return this.oddRoundingErrors;
    }

    /* access modifiers changed from: protected */
    public final float[] getEvenRoundingErrors() {
        return this.evenRoundingErrors;
    }

    /* access modifiers changed from: protected */
    public final int[] getOddCounts() {
        return this.oddCounts;
    }

    /* access modifiers changed from: protected */
    public final int[] getEvenCounts() {
        return this.evenCounts;
    }

    protected static int parseFinderValue(int[] iArr, int[][] iArr2) throws NotFoundException {
        for (int i = 0; i < iArr2.length; i++) {
            if (patternMatchVariance(iArr, iArr2[i], MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                return i;
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Deprecated
    protected static int count(int[] iArr) {
        return MathUtils.sum(iArr);
    }

    protected static void increment(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] > f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] + 1;
    }

    protected static void decrement(int[] iArr, float[] fArr) {
        int i = 0;
        float f = fArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (fArr[i2] < f) {
                f = fArr[i2];
                i = i2;
            }
        }
        iArr[i] = iArr[i] - 1;
    }

    protected static boolean isFinderPattern(int[] iArr) {
        int i = iArr[0] + iArr[1];
        float f = ((float) i) / ((float) ((iArr[2] + i) + iArr[3]));
        if (f < MIN_FINDER_PATTERN_RATIO || f > MAX_FINDER_PATTERN_RATIO) {
            return false;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        int length = iArr.length;
        int i4 = 0;
        while (i4 < length) {
            int i5 = iArr[i4];
            if (i5 > i3) {
                i3 = i5;
            }
            if (i5 >= i2) {
                i5 = i2;
            }
            i4++;
            i2 = i5;
        }
        if (i3 < i2 * 10) {
            return true;
        }
        return false;
    }
}
