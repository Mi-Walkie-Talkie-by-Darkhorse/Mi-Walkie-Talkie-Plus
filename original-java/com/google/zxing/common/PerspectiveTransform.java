package com.google.zxing.common;

public final class PerspectiveTransform {
    private final float a11;
    private final float a12;
    private final float a13;
    private final float a21;
    private final float a22;
    private final float a23;
    private final float a31;
    private final float a32;
    private final float a33;

    private PerspectiveTransform(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        this.a11 = f;
        this.a12 = f4;
        this.a13 = f7;
        this.a21 = f2;
        this.a22 = f5;
        this.a23 = f8;
        this.a31 = f3;
        this.a32 = f6;
        this.a33 = f9;
    }

    public static PerspectiveTransform quadrilateralToQuadrilateral(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        return squareToQuadrilateral(f9, f10, f11, f12, f13, f14, f15, f16).times(quadrilateralToSquare(f, f2, f3, f4, f5, f6, f7, f8));
    }

    public void transformPoints(float[] fArr) {
        int length = fArr.length;
        float f = this.a11;
        float f2 = this.a12;
        float f3 = this.a13;
        float f4 = this.a21;
        float f5 = this.a22;
        float f6 = this.a23;
        float f7 = this.a31;
        float f8 = this.a32;
        float f9 = this.a33;
        for (int i = 0; i < length; i += 2) {
            float f10 = fArr[i];
            float f11 = fArr[i + 1];
            float f12 = (f3 * f10) + (f6 * f11) + f9;
            fArr[i] = (((f * f10) + (f4 * f11)) + f7) / f12;
            fArr[i + 1] = (((f10 * f2) + (f11 * f5)) + f8) / f12;
        }
    }

    public void transformPoints(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        for (int i = 0; i < length; i++) {
            float f = fArr[i];
            float f2 = fArr2[i];
            float f3 = (this.a13 * f) + (this.a23 * f2) + this.a33;
            fArr[i] = (((this.a11 * f) + (this.a21 * f2)) + this.a31) / f3;
            fArr2[i] = (((f * this.a12) + (f2 * this.a22)) + this.a32) / f3;
        }
    }

    public static PerspectiveTransform squareToQuadrilateral(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        float f9 = ((f - f3) + f5) - f7;
        float f10 = ((f2 - f4) + f6) - f8;
        if (f9 == 0.0f && f10 == 0.0f) {
            return new PerspectiveTransform(f3 - f, f5 - f3, f, f4 - f2, f6 - f4, f2, 0.0f, 0.0f, 1.0f);
        }
        float f11 = f3 - f5;
        float f12 = f7 - f5;
        float f13 = f4 - f6;
        float f14 = f8 - f6;
        float f15 = (f11 * f14) - (f12 * f13);
        float f16 = ((f14 * f9) - (f12 * f10)) / f15;
        float f17 = ((f10 * f11) - (f9 * f13)) / f15;
        return new PerspectiveTransform((f3 - f) + (f16 * f3), (f7 - f) + (f17 * f7), f, (f16 * f4) + (f4 - f2), (f17 * f8) + (f8 - f2), f2, f16, f17, 1.0f);
    }

    public static PerspectiveTransform quadrilateralToSquare(float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        return squareToQuadrilateral(f, f2, f3, f4, f5, f6, f7, f8).buildAdjoint();
    }

    /* access modifiers changed from: 0000 */
    public PerspectiveTransform buildAdjoint() {
        return new PerspectiveTransform((this.a22 * this.a33) - (this.a23 * this.a32), (this.a23 * this.a31) - (this.a21 * this.a33), (this.a21 * this.a32) - (this.a22 * this.a31), (this.a13 * this.a32) - (this.a12 * this.a33), (this.a11 * this.a33) - (this.a13 * this.a31), (this.a12 * this.a31) - (this.a11 * this.a32), (this.a12 * this.a23) - (this.a13 * this.a22), (this.a13 * this.a21) - (this.a11 * this.a23), (this.a11 * this.a22) - (this.a12 * this.a21));
    }

    /* access modifiers changed from: 0000 */
    public PerspectiveTransform times(PerspectiveTransform perspectiveTransform) {
        return new PerspectiveTransform((this.a11 * perspectiveTransform.a11) + (this.a21 * perspectiveTransform.a12) + (this.a31 * perspectiveTransform.a13), (this.a11 * perspectiveTransform.a21) + (this.a21 * perspectiveTransform.a22) + (this.a31 * perspectiveTransform.a23), (this.a11 * perspectiveTransform.a31) + (this.a21 * perspectiveTransform.a32) + (this.a31 * perspectiveTransform.a33), (this.a12 * perspectiveTransform.a11) + (this.a22 * perspectiveTransform.a12) + (this.a32 * perspectiveTransform.a13), (this.a12 * perspectiveTransform.a21) + (this.a22 * perspectiveTransform.a22) + (this.a32 * perspectiveTransform.a23), (this.a12 * perspectiveTransform.a31) + (this.a22 * perspectiveTransform.a32) + (this.a32 * perspectiveTransform.a33), (this.a13 * perspectiveTransform.a11) + (this.a23 * perspectiveTransform.a12) + (this.a33 * perspectiveTransform.a13), (this.a13 * perspectiveTransform.a21) + (this.a23 * perspectiveTransform.a22) + (this.a33 * perspectiveTransform.a23), (this.a13 * perspectiveTransform.a31) + (this.a23 * perspectiveTransform.a32) + (this.a33 * perspectiveTransform.a33));
    }
}
