package p000a.p007c.p008a.p009a;

import java.lang.reflect.Array;

/* renamed from: a.c.a.a.e */
/* loaded from: classes.dex */
public class MonotonicCurveFit extends CurveFit {

    /* renamed from: a */
    private double[] f112a;

    /* renamed from: b */
    private double[][] f113b;

    /* renamed from: c */
    private double[][] f114c;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = (double[][]) Array.newInstance(double.class, i, length2);
        double[][] dArr4 = (double[][]) Array.newInstance(double.class, length, length2);
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 1;
                dArr3[i3][i2] = (dArr2[i4][i2] - dArr2[i3][i2]) / (dArr[i4] - dArr[i3]);
                if (i3 == 0) {
                    dArr4[i3][i2] = dArr3[i3][i2];
                } else {
                    dArr4[i3][i2] = (dArr3[i3 - 1][i2] + dArr3[i3][i2]) * 0.5d;
                }
                i3 = i4;
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i5 = 0; i5 < i; i5++) {
            for (int i6 = 0; i6 < length2; i6++) {
                if (dArr3[i5][i6] == 0.0d) {
                    dArr4[i5][i6] = 0.0d;
                    dArr4[i5 + 1][i6] = 0.0d;
                } else {
                    double d = dArr4[i5][i6] / dArr3[i5][i6];
                    int i7 = i5 + 1;
                    double d2 = dArr4[i7][i6] / dArr3[i5][i6];
                    double hypot = Math.hypot(d, d2);
                    if (hypot > 9.0d) {
                        double d3 = 3.0d / hypot;
                        dArr4[i5][i6] = d * d3 * dArr3[i5][i6];
                        dArr4[i7][i6] = d3 * d2 * dArr3[i5][i6];
                    }
                }
            }
        }
        this.f112a = dArr;
        this.f113b = dArr2;
        this.f114c = dArr4;
    }

    /* renamed from: i */
    private static double m26415i(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d2 * 6.0d;
        double d9 = 3.0d * d;
        return ((((((((((-6.0d) * d7) * d4) + (d8 * d4)) + ((6.0d * d7) * d3)) - (d8 * d3)) + ((d9 * d6) * d7)) + ((d9 * d5) * d7)) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2)) + (d * d5);
    }

    /* renamed from: j */
    private static double m26414j(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d * d6;
        double d11 = d * d5;
        return (((((((((((-2.0d) * d8) * d4) + (d9 * d4)) + ((d8 * 2.0d) * d3)) - (d9 * d3)) + d3) + (d10 * d8)) + (d8 * d11)) - (d10 * d7)) - (((d * 2.0d) * d5) * d7)) + (d11 * d2);
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: c */
    public double mo26421c(double d, int i) {
        double[] dArr = this.f112a;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f113b[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f113b[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f112a;
            if (d == dArr2[i2]) {
                return this.f113b[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = dArr2[i4] - dArr2[i2];
                double d3 = (d - dArr2[i2]) / d2;
                double[][] dArr3 = this.f113b;
                double d4 = dArr3[i2][i];
                double d5 = dArr3[i4][i];
                double[][] dArr4 = this.f114c;
                return m26414j(d2, d3, d4, d5, dArr4[i2][i], dArr4[i4][i]);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: d */
    public void mo26420d(double d, double[] dArr) {
        double[] dArr2 = this.f112a;
        int length = dArr2.length;
        int i = 0;
        int length2 = this.f113b[0].length;
        if (d <= dArr2[0]) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr[i2] = this.f113b[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        if (d >= dArr2[i3]) {
            while (i < length2) {
                dArr[i] = this.f113b[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == this.f112a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.f113b[i4][i5];
                }
            }
            double[] dArr3 = this.f112a;
            int i6 = i4 + 1;
            if (d < dArr3[i6]) {
                double d2 = dArr3[i6] - dArr3[i4];
                double d3 = (d - dArr3[i4]) / d2;
                while (i < length2) {
                    double[][] dArr4 = this.f113b;
                    double d4 = dArr4[i4][i];
                    double d5 = dArr4[i6][i];
                    double[][] dArr5 = this.f114c;
                    dArr[i] = m26414j(d2, d3, d4, d5, dArr5[i4][i], dArr5[i6][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: e */
    public void mo26419e(double d, float[] fArr) {
        double[] dArr = this.f112a;
        int length = dArr.length;
        int i = 0;
        int length2 = this.f113b[0].length;
        if (d <= dArr[0]) {
            for (int i2 = 0; i2 < length2; i2++) {
                fArr[i2] = (float) this.f113b[0][i2];
            }
            return;
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            while (i < length2) {
                fArr[i] = (float) this.f113b[i3][i];
                i++;
            }
            return;
        }
        int i4 = 0;
        while (i4 < i3) {
            if (d == this.f112a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.f113b[i4][i5];
                }
            }
            double[] dArr2 = this.f112a;
            int i6 = i4 + 1;
            if (d < dArr2[i6]) {
                double d2 = dArr2[i6] - dArr2[i4];
                double d3 = (d - dArr2[i4]) / d2;
                while (i < length2) {
                    double[][] dArr3 = this.f113b;
                    double d4 = dArr3[i4][i];
                    double d5 = dArr3[i6][i];
                    double[][] dArr4 = this.f114c;
                    fArr[i] = (float) m26414j(d2, d3, d4, d5, dArr4[i4][i], dArr4[i6][i]);
                    i++;
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: f */
    public double mo26418f(double d, int i) {
        double d2;
        double[] dArr = this.f112a;
        int length = dArr.length;
        int i2 = 0;
        if (d < dArr[0]) {
            d2 = dArr[0];
        } else {
            int i3 = length - 1;
            d2 = d >= dArr[i3] ? dArr[i3] : d;
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f112a;
            int i4 = i2 + 1;
            if (d2 <= dArr2[i4]) {
                double d3 = dArr2[i4] - dArr2[i2];
                double[][] dArr3 = this.f113b;
                double d4 = dArr3[i2][i];
                double d5 = dArr3[i4][i];
                double[][] dArr4 = this.f114c;
                return m26415i(d3, (d2 - dArr2[i2]) / d3, d4, d5, dArr4[i2][i], dArr4[i4][i]) / d3;
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: g */
    public void mo26417g(double d, double[] dArr) {
        double d2;
        double[] dArr2 = this.f112a;
        int length = dArr2.length;
        int length2 = this.f113b[0].length;
        if (d <= dArr2[0]) {
            d2 = dArr2[0];
        } else {
            int i = length - 1;
            d2 = d >= dArr2[i] ? dArr2[i] : d;
        }
        int i2 = 0;
        while (i2 < length - 1) {
            double[] dArr3 = this.f112a;
            int i3 = i2 + 1;
            if (d2 <= dArr3[i3]) {
                double d3 = dArr3[i3] - dArr3[i2];
                double d4 = (d2 - dArr3[i2]) / d3;
                for (int i4 = 0; i4 < length2; i4++) {
                    double[][] dArr4 = this.f113b;
                    double d5 = dArr4[i2][i4];
                    double d6 = dArr4[i3][i4];
                    double[][] dArr5 = this.f114c;
                    dArr[i4] = m26415i(d3, d4, d5, d6, dArr5[i2][i4], dArr5[i3][i4]) / d3;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: h */
    public double[] mo26416h() {
        return this.f112a;
    }
}
