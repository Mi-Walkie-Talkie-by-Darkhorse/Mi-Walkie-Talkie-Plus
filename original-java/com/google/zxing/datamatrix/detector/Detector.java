package com.google.zxing.datamatrix.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.common.GridSampler;
import com.google.zxing.common.detector.MathUtils;
import com.google.zxing.common.detector.WhiteRectangleDetector;
import com.mi.milinkforgame.sdk.base.os.Http;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public final class Detector {
    private final BitMatrix image;
    private final WhiteRectangleDetector rectangleDetector;

    private static final class ResultPointsAndTransitions {
        private final ResultPoint from;
        private final ResultPoint to;
        private final int transitions;

        private ResultPointsAndTransitions(ResultPoint resultPoint, ResultPoint resultPoint2, int i) {
            this.from = resultPoint;
            this.to = resultPoint2;
            this.transitions = i;
        }

        /* access modifiers changed from: 0000 */
        public ResultPoint getFrom() {
            return this.from;
        }

        /* access modifiers changed from: 0000 */
        public ResultPoint getTo() {
            return this.to;
        }

        /* access modifiers changed from: 0000 */
        public int getTransitions() {
            return this.transitions;
        }

        public String toString() {
            return this.from + "/" + this.to + Http.PROTOCOL_HOST_SPLITTER + this.transitions;
        }
    }

    private static final class ResultPointsAndTransitionsComparator implements Serializable, Comparator<ResultPointsAndTransitions> {
        private ResultPointsAndTransitionsComparator() {
        }

        public int compare(ResultPointsAndTransitions resultPointsAndTransitions, ResultPointsAndTransitions resultPointsAndTransitions2) {
            return resultPointsAndTransitions.getTransitions() - resultPointsAndTransitions2.getTransitions();
        }
    }

    public Detector(BitMatrix bitMatrix) throws NotFoundException {
        this.image = bitMatrix;
        this.rectangleDetector = new WhiteRectangleDetector(bitMatrix);
    }

    public DetectorResult detect() throws NotFoundException {
        ResultPoint resultPoint;
        ResultPoint resultPoint2;
        BitMatrix bitMatrix;
        ResultPoint resultPoint3 = null;
        ResultPoint[] detect = this.rectangleDetector.detect();
        ResultPoint resultPoint4 = detect[0];
        ResultPoint resultPoint5 = detect[1];
        ResultPoint resultPoint6 = detect[2];
        ResultPoint resultPoint7 = detect[3];
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(transitionsBetween(resultPoint4, resultPoint5));
        arrayList.add(transitionsBetween(resultPoint4, resultPoint6));
        arrayList.add(transitionsBetween(resultPoint5, resultPoint7));
        arrayList.add(transitionsBetween(resultPoint6, resultPoint7));
        Collections.sort(arrayList, new ResultPointsAndTransitionsComparator());
        ResultPointsAndTransitions resultPointsAndTransitions = (ResultPointsAndTransitions) arrayList.get(0);
        ResultPointsAndTransitions resultPointsAndTransitions2 = (ResultPointsAndTransitions) arrayList.get(1);
        HashMap hashMap = new HashMap();
        increment(hashMap, resultPointsAndTransitions.getFrom());
        increment(hashMap, resultPointsAndTransitions.getTo());
        increment(hashMap, resultPointsAndTransitions2.getFrom());
        increment(hashMap, resultPointsAndTransitions2.getTo());
        ResultPoint resultPoint8 = null;
        ResultPoint resultPoint9 = null;
        for (Entry entry : hashMap.entrySet()) {
            ResultPoint resultPoint10 = (ResultPoint) entry.getKey();
            if (((Integer) entry.getValue()).intValue() == 2) {
                resultPoint8 = resultPoint10;
            } else if (resultPoint9 == null) {
                resultPoint9 = resultPoint10;
            } else {
                resultPoint3 = resultPoint10;
            }
        }
        if (resultPoint9 == null || resultPoint8 == null || resultPoint3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint[] resultPointArr = {resultPoint9, resultPoint8, resultPoint3};
        ResultPoint.orderBestPatterns(resultPointArr);
        ResultPoint resultPoint11 = resultPointArr[0];
        ResultPoint resultPoint12 = resultPointArr[1];
        ResultPoint resultPoint13 = resultPointArr[2];
        if (!hashMap.containsKey(resultPoint4)) {
            resultPoint = resultPoint4;
        } else if (!hashMap.containsKey(resultPoint5)) {
            resultPoint = resultPoint5;
        } else if (!hashMap.containsKey(resultPoint6)) {
            resultPoint = resultPoint6;
        } else {
            resultPoint = resultPoint7;
        }
        int transitions = transitionsBetween(resultPoint13, resultPoint).getTransitions();
        int transitions2 = transitionsBetween(resultPoint11, resultPoint).getTransitions();
        if ((transitions & 1) == 1) {
            transitions++;
        }
        int i = transitions + 2;
        if ((transitions2 & 1) == 1) {
            transitions2++;
        }
        int i2 = transitions2 + 2;
        if (i * 4 >= i2 * 7 || i2 * 4 >= i * 7) {
            ResultPoint correctTopRightRectangular = correctTopRightRectangular(resultPoint12, resultPoint11, resultPoint13, resultPoint, i, i2);
            if (correctTopRightRectangular == null) {
                correctTopRightRectangular = resultPoint;
            }
            int transitions3 = transitionsBetween(resultPoint13, resultPoint2).getTransitions();
            int transitions4 = transitionsBetween(resultPoint11, resultPoint2).getTransitions();
            if ((transitions3 & 1) == 1) {
                transitions3++;
            }
            if ((transitions4 & 1) == 1) {
                transitions4++;
            }
            bitMatrix = sampleGrid(this.image, resultPoint13, resultPoint12, resultPoint11, resultPoint2, transitions3, transitions4);
        } else {
            resultPoint2 = correctTopRight(resultPoint12, resultPoint11, resultPoint13, resultPoint, Math.min(i2, i));
            if (resultPoint2 == null) {
                resultPoint2 = resultPoint;
            }
            int max = Math.max(transitionsBetween(resultPoint13, resultPoint2).getTransitions(), transitionsBetween(resultPoint11, resultPoint2).getTransitions()) + 1;
            if ((max & 1) == 1) {
                max++;
            }
            bitMatrix = sampleGrid(this.image, resultPoint13, resultPoint12, resultPoint11, resultPoint2, max, max);
        }
        return new DetectorResult(bitMatrix, new ResultPoint[]{resultPoint13, resultPoint12, resultPoint11, resultPoint2});
    }

    private ResultPoint correctTopRightRectangular(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) {
        float distance = ((float) distance(resultPoint, resultPoint2)) / ((float) i);
        int distance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint((((resultPoint4.getX() - resultPoint3.getX()) / ((float) distance2)) * distance) + resultPoint4.getX(), (distance * ((resultPoint4.getY() - resultPoint3.getY()) / ((float) distance2))) + resultPoint4.getY());
        float distance3 = ((float) distance(resultPoint, resultPoint3)) / ((float) i2);
        int distance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint((((resultPoint4.getX() - resultPoint2.getX()) / ((float) distance4)) * distance3) + resultPoint4.getX(), (distance3 * ((resultPoint4.getY() - resultPoint2.getY()) / ((float) distance4))) + resultPoint4.getY());
        if (!isValid(resultPoint5)) {
            if (isValid(resultPoint6)) {
                return resultPoint6;
            }
            return null;
        } else if (!isValid(resultPoint6)) {
            return resultPoint5;
        } else {
            if (Math.abs(i - transitionsBetween(resultPoint3, resultPoint5).getTransitions()) + Math.abs(i2 - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) <= Math.abs(i - transitionsBetween(resultPoint3, resultPoint6).getTransitions()) + Math.abs(i2 - transitionsBetween(resultPoint2, resultPoint6).getTransitions())) {
                return resultPoint5;
            }
            return resultPoint6;
        }
    }

    private ResultPoint correctTopRight(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i) {
        float distance = ((float) distance(resultPoint, resultPoint2)) / ((float) i);
        int distance2 = distance(resultPoint3, resultPoint4);
        ResultPoint resultPoint5 = new ResultPoint((((resultPoint4.getX() - resultPoint3.getX()) / ((float) distance2)) * distance) + resultPoint4.getX(), (distance * ((resultPoint4.getY() - resultPoint3.getY()) / ((float) distance2))) + resultPoint4.getY());
        float distance3 = ((float) distance(resultPoint, resultPoint3)) / ((float) i);
        int distance4 = distance(resultPoint2, resultPoint4);
        ResultPoint resultPoint6 = new ResultPoint((((resultPoint4.getX() - resultPoint2.getX()) / ((float) distance4)) * distance3) + resultPoint4.getX(), (distance3 * ((resultPoint4.getY() - resultPoint2.getY()) / ((float) distance4))) + resultPoint4.getY());
        if (!isValid(resultPoint5)) {
            if (isValid(resultPoint6)) {
                return resultPoint6;
            }
            return null;
        } else if (!isValid(resultPoint6)) {
            return resultPoint5;
        } else {
            return Math.abs(transitionsBetween(resultPoint3, resultPoint5).getTransitions() - transitionsBetween(resultPoint2, resultPoint5).getTransitions()) <= Math.abs(transitionsBetween(resultPoint3, resultPoint6).getTransitions() - transitionsBetween(resultPoint2, resultPoint6).getTransitions()) ? resultPoint5 : resultPoint6;
        }
    }

    private boolean isValid(ResultPoint resultPoint) {
        return resultPoint.getX() >= 0.0f && resultPoint.getX() < ((float) this.image.getWidth()) && resultPoint.getY() > 0.0f && resultPoint.getY() < ((float) this.image.getHeight());
    }

    private static int distance(ResultPoint resultPoint, ResultPoint resultPoint2) {
        return MathUtils.round(ResultPoint.distance(resultPoint, resultPoint2));
    }

    private static void increment(Map<ResultPoint, Integer> map, ResultPoint resultPoint) {
        Integer num = (Integer) map.get(resultPoint);
        map.put(resultPoint, Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    private static BitMatrix sampleGrid(BitMatrix bitMatrix, ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4, int i, int i2) throws NotFoundException {
        return GridSampler.getInstance().sampleGrid(bitMatrix, i, i2, 0.5f, 0.5f, ((float) i) - 0.5f, 0.5f, ((float) i) - 0.5f, ((float) i2) - 0.5f, 0.5f, ((float) i2) - 0.5f, resultPoint.getX(), resultPoint.getY(), resultPoint4.getX(), resultPoint4.getY(), resultPoint3.getX(), resultPoint3.getY(), resultPoint2.getX(), resultPoint2.getY());
    }

    private ResultPointsAndTransitions transitionsBetween(ResultPoint resultPoint, ResultPoint resultPoint2) {
        boolean z;
        int i;
        int i2;
        int i3;
        int x = (int) resultPoint.getX();
        int y = (int) resultPoint.getY();
        int x2 = (int) resultPoint2.getX();
        int y2 = (int) resultPoint2.getY();
        if (Math.abs(y2 - y) > Math.abs(x2 - x)) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            int i4 = y2;
            y2 = x2;
            x2 = i4;
            int i5 = y;
            y = x;
            x = i5;
        }
        int abs = Math.abs(y2 - y);
        int abs2 = Math.abs(x2 - x);
        int i6 = (-abs) / 2;
        int i7 = x < x2 ? 1 : -1;
        int i8 = y < y2 ? 1 : -1;
        int i9 = 0;
        BitMatrix bitMatrix = this.image;
        if (z) {
            i = x;
        } else {
            i = y;
        }
        boolean z2 = bitMatrix.get(i, z ? y : x);
        int i10 = x;
        int i11 = i6;
        while (y != y2) {
            BitMatrix bitMatrix2 = this.image;
            if (z) {
                i2 = i10;
            } else {
                i2 = y;
            }
            if (z) {
                i3 = y;
            } else {
                i3 = i10;
            }
            boolean z3 = bitMatrix2.get(i2, i3);
            if (z3 != z2) {
                i9++;
                z2 = z3;
            }
            int i12 = i11 + abs2;
            if (i12 > 0) {
                if (i10 == x2) {
                    break;
                }
                i10 += i7;
                i12 -= abs;
            }
            y += i8;
            i11 = i12;
        }
        return new ResultPointsAndTransitions(resultPoint, resultPoint2, i9);
    }
}
