package p000a.p007c.p008a.p009a;

import java.util.Arrays;

/* renamed from: a.c.a.a.f */
/* loaded from: classes.dex */
public class Oscillator {

    /* renamed from: c */
    double[] f117c;

    /* renamed from: d */
    int f118d;

    /* renamed from: a */
    float[] f115a = new float[0];

    /* renamed from: b */
    double[] f116b = new double[0];

    /* renamed from: e */
    double f119e = 6.283185307179586d;

    /* renamed from: a */
    public void m26413a(double d, float f) {
        int length = this.f115a.length + 1;
        int binarySearch = Arrays.binarySearch(this.f116b, d);
        if (binarySearch < 0) {
            binarySearch = (-binarySearch) - 1;
        }
        this.f116b = Arrays.copyOf(this.f116b, length);
        this.f115a = Arrays.copyOf(this.f115a, length);
        this.f117c = new double[length];
        double[] dArr = this.f116b;
        System.arraycopy(dArr, binarySearch, dArr, binarySearch + 1, (length - binarySearch) - 1);
        this.f116b[binarySearch] = d;
        this.f115a[binarySearch] = f;
    }

    /* renamed from: b */
    double m26412b(double d) {
        if (d <= 0.0d) {
            d = 1.0E-5d;
        } else if (d >= 1.0d) {
            d = 0.999999d;
        }
        int binarySearch = Arrays.binarySearch(this.f116b, d);
        if (binarySearch <= 0 && binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f115a;
            int i2 = i - 1;
            double d2 = fArr[i] - fArr[i2];
            double[] dArr = this.f116b;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            return (fArr[i2] - (d3 * dArr[i2])) + (d * d3);
        }
        return 0.0d;
    }

    /* renamed from: c */
    double m26411c(double d) {
        if (d < 0.0d) {
            d = 0.0d;
        } else if (d > 1.0d) {
            d = 1.0d;
        }
        int binarySearch = Arrays.binarySearch(this.f116b, d);
        if (binarySearch > 0) {
            return 1.0d;
        }
        if (binarySearch != 0) {
            int i = (-binarySearch) - 1;
            float[] fArr = this.f115a;
            int i2 = i - 1;
            double d2 = fArr[i] - fArr[i2];
            double[] dArr = this.f116b;
            double d3 = d2 / (dArr[i] - dArr[i2]);
            return this.f117c[i2] + ((fArr[i2] - (dArr[i2] * d3)) * (d - dArr[i2])) + ((d3 * ((d * d) - (dArr[i2] * dArr[i2]))) / 2.0d);
        }
        return 0.0d;
    }

    /* renamed from: d */
    public double m26410d(double d) {
        double m26412b;
        double signum;
        double m26412b2;
        double m26412b3;
        double sin;
        switch (this.f118d) {
            case 1:
                return 0.0d;
            case 2:
                m26412b = m26412b(d) * 4.0d;
                signum = Math.signum((((m26411c(d) * 4.0d) + 3.0d) % 4.0d) - 2.0d);
                return m26412b * signum;
            case 3:
                m26412b2 = m26412b(d);
                return m26412b2 * 2.0d;
            case 4:
                m26412b2 = -m26412b(d);
                return m26412b2 * 2.0d;
            case 5:
                m26412b3 = (-this.f119e) * m26412b(d);
                sin = Math.sin(this.f119e * m26411c(d));
                return m26412b3 * sin;
            case 6:
                m26412b = m26412b(d) * 4.0d;
                signum = (((m26411c(d) * 4.0d) + 2.0d) % 4.0d) - 2.0d;
                return m26412b * signum;
            default:
                m26412b3 = this.f119e * m26412b(d);
                sin = Math.cos(this.f119e * m26411c(d));
                return m26412b3 * sin;
        }
    }

    /* renamed from: e */
    public double m26409e(double d) {
        double abs;
        switch (this.f118d) {
            case 1:
                return Math.signum(0.5d - (m26411c(d) % 1.0d));
            case 2:
                abs = Math.abs((((m26411c(d) * 4.0d) + 1.0d) % 4.0d) - 2.0d);
                break;
            case 3:
                return (((m26411c(d) * 2.0d) + 1.0d) % 2.0d) - 1.0d;
            case 4:
                abs = ((m26411c(d) * 2.0d) + 1.0d) % 2.0d;
                break;
            case 5:
                return Math.cos(this.f119e * m26411c(d));
            case 6:
                double abs2 = 1.0d - Math.abs(((m26411c(d) * 4.0d) % 4.0d) - 2.0d);
                abs = abs2 * abs2;
                break;
            default:
                return Math.sin(this.f119e * m26411c(d));
        }
        return 1.0d - abs;
    }

    /* renamed from: f */
    public void m26408f() {
        float[] fArr;
        float[] fArr2;
        float[] fArr3;
        int i;
        double d = 0.0d;
        int i2 = 0;
        while (true) {
            if (i2 >= this.f115a.length) {
                break;
            }
            d += fArr[i2];
            i2++;
        }
        int i3 = 1;
        double d2 = 0.0d;
        int i4 = 1;
        while (true) {
            if (i4 >= this.f115a.length) {
                break;
            }
            double[] dArr = this.f116b;
            d2 += (dArr[i4] - dArr[i4 - 1]) * ((fArr2[i] + fArr2[i4]) / 2.0f);
            i4++;
        }
        int i5 = 0;
        while (true) {
            float[] fArr4 = this.f115a;
            if (i5 >= fArr4.length) {
                break;
            }
            fArr4[i5] = (float) (fArr4[i5] * (d / d2));
            i5++;
        }
        this.f117c[0] = 0.0d;
        while (true) {
            if (i3 >= this.f115a.length) {
                return;
            }
            int i6 = i3 - 1;
            double[] dArr2 = this.f116b;
            double d3 = dArr2[i3] - dArr2[i6];
            double[] dArr3 = this.f117c;
            dArr3[i3] = dArr3[i6] + (d3 * ((fArr3[i6] + fArr3[i3]) / 2.0f));
            i3++;
        }
    }

    /* renamed from: g */
    public void m26407g(int i) {
        this.f118d = i;
    }

    public String toString() {
        return "pos =" + Arrays.toString(this.f116b) + " period=" + Arrays.toString(this.f115a);
    }
}
