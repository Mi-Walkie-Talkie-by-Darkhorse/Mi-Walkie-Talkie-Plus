package com.google.zxing.common.detector;

import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;

public final class WhiteRectangleDetector {
    private static final int CORR = 1;
    private static final int INIT_SIZE = 10;
    private final int downInit;
    private final int height;
    private final BitMatrix image;
    private final int leftInit;
    private final int rightInit;
    private final int upInit;
    private final int width;

    public WhiteRectangleDetector(BitMatrix bitMatrix) throws NotFoundException {
        this(bitMatrix, 10, bitMatrix.getWidth() / 2, bitMatrix.getHeight() / 2);
    }

    public WhiteRectangleDetector(BitMatrix bitMatrix, int i, int i2, int i3) throws NotFoundException {
        this.image = bitMatrix;
        this.height = bitMatrix.getHeight();
        this.width = bitMatrix.getWidth();
        int i4 = i / 2;
        this.leftInit = i2 - i4;
        this.rightInit = i2 + i4;
        this.upInit = i3 - i4;
        this.downInit = i4 + i3;
        if (this.upInit < 0 || this.leftInit < 0 || this.downInit >= this.height || this.rightInit >= this.width) {
            throw NotFoundException.getNotFoundInstance();
        }
    }

    public ResultPoint[] detect() throws NotFoundException {
        int i;
        int i2;
        int i3;
        int i4;
        boolean z = false;
        int i5 = 1;
        int i6 = this.leftInit;
        int i7 = this.rightInit;
        int i8 = this.upInit;
        int i9 = this.downInit;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = true;
        while (true) {
            if (!z7) {
                i = i7;
                i2 = i6;
                i3 = i9;
                i4 = i8;
                break;
            }
            boolean z8 = true;
            boolean z9 = z5;
            boolean z10 = false;
            while (true) {
                if ((z8 || !z9) && i7 < this.width) {
                    z8 = containsBlackPoint(i8, i9, i7, false);
                    if (z8) {
                        i7++;
                        z9 = true;
                        z10 = true;
                    } else if (!z9) {
                        i7++;
                    }
                }
            }
            if (i7 >= this.width) {
                z = true;
                i = i7;
                i2 = i6;
                i3 = i9;
                i4 = i8;
                break;
            }
            boolean z11 = z4;
            boolean z12 = z10;
            boolean z13 = true;
            while (true) {
                if ((z13 || !z11) && i9 < this.height) {
                    z13 = containsBlackPoint(i6, i7, i9, true);
                    if (z13) {
                        i9++;
                        z11 = true;
                        z12 = true;
                    } else if (!z11) {
                        i9++;
                    }
                }
            }
            if (i9 >= this.height) {
                z = true;
                i = i7;
                i2 = i6;
                i3 = i9;
                i4 = i8;
                break;
            }
            boolean z14 = z3;
            boolean z15 = z12;
            boolean z16 = true;
            while (true) {
                if ((z16 || !z14) && i6 >= 0) {
                    z16 = containsBlackPoint(i8, i9, i6, false);
                    if (z16) {
                        i6--;
                        z14 = true;
                        z15 = true;
                    } else if (!z14) {
                        i6--;
                    }
                }
            }
            if (i6 < 0) {
                z = true;
                i = i7;
                i2 = i6;
                i3 = i9;
                i4 = i8;
                break;
            }
            boolean z17 = z15;
            boolean z18 = z2;
            boolean z19 = true;
            while (true) {
                if ((z19 || !z18) && i8 >= 0) {
                    z19 = containsBlackPoint(i6, i7, i8, true);
                    if (z19) {
                        i8--;
                        z18 = true;
                        z17 = true;
                    } else if (!z18) {
                        i8--;
                    }
                }
            }
            if (i8 < 0) {
                z = true;
                i = i7;
                i2 = i6;
                i3 = i9;
                i4 = i8;
                break;
            }
            if (z17) {
                z6 = true;
            }
            z2 = z18;
            z3 = z14;
            z5 = z9;
            boolean z20 = z11;
            z7 = z17;
            z4 = z20;
        }
        if (z || !z6) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i10 = i - i2;
        int i11 = 1;
        ResultPoint resultPoint = null;
        while (resultPoint == null && i11 < i10) {
            i11++;
            resultPoint = getBlackPointOnSegment((float) i2, (float) (i3 - i11), (float) (i2 + i11), (float) i3);
        }
        if (resultPoint == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i12 = 1;
        ResultPoint resultPoint2 = null;
        while (resultPoint2 == null && i12 < i10) {
            i12++;
            resultPoint2 = getBlackPointOnSegment((float) i2, (float) (i4 + i12), (float) (i2 + i12), (float) i4);
        }
        if (resultPoint2 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        int i13 = 1;
        ResultPoint resultPoint3 = null;
        while (resultPoint3 == null && i13 < i10) {
            resultPoint3 = getBlackPointOnSegment((float) i, (float) (i4 + i13), (float) (i - i13), (float) i4);
            i13++;
        }
        if (resultPoint3 == null) {
            throw NotFoundException.getNotFoundInstance();
        }
        ResultPoint resultPoint4 = null;
        while (resultPoint4 == null && i5 < i10) {
            resultPoint4 = getBlackPointOnSegment((float) i, (float) (i3 - i5), (float) (i - i5), (float) i3);
            i5++;
        }
        if (resultPoint4 != null) {
            return centerEdges(resultPoint4, resultPoint, resultPoint3, resultPoint2);
        }
        throw NotFoundException.getNotFoundInstance();
    }

    private ResultPoint getBlackPointOnSegment(float f, float f2, float f3, float f4) {
        int round = MathUtils.round(MathUtils.distance(f, f2, f3, f4));
        float f5 = (f3 - f) / ((float) round);
        float f6 = (f4 - f2) / ((float) round);
        for (int i = 0; i < round; i++) {
            int round2 = MathUtils.round((((float) i) * f5) + f);
            int round3 = MathUtils.round((((float) i) * f6) + f2);
            if (this.image.get(round2, round3)) {
                return new ResultPoint((float) round2, (float) round3);
            }
        }
        return null;
    }

    private ResultPoint[] centerEdges(ResultPoint resultPoint, ResultPoint resultPoint2, ResultPoint resultPoint3, ResultPoint resultPoint4) {
        float x = resultPoint.getX();
        float y = resultPoint.getY();
        float x2 = resultPoint2.getX();
        float y2 = resultPoint2.getY();
        float x3 = resultPoint3.getX();
        float y3 = resultPoint3.getY();
        float x4 = resultPoint4.getX();
        float y4 = resultPoint4.getY();
        if (x < ((float) this.width) / 2.0f) {
            return new ResultPoint[]{new ResultPoint(x4 - 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 + 1.0f), new ResultPoint(x3 - 1.0f, y3 - 1.0f), new ResultPoint(x + 1.0f, y - 1.0f)};
        }
        return new ResultPoint[]{new ResultPoint(x4 + 1.0f, y4 + 1.0f), new ResultPoint(x2 + 1.0f, y2 - 1.0f), new ResultPoint(x3 - 1.0f, y3 + 1.0f), new ResultPoint(x - 1.0f, y - 1.0f)};
    }

    private boolean containsBlackPoint(int i, int i2, int i3, boolean z) {
        if (z) {
            while (i <= i2) {
                if (this.image.get(i, i3)) {
                    return true;
                }
                i++;
            }
        } else {
            while (i <= i2) {
                if (this.image.get(i3, i)) {
                    return true;
                }
                i++;
            }
        }
        return false;
    }
}
