package p000a.p007c.p008a.p009a;

import java.util.Arrays;

/* renamed from: a.c.a.a.a */
/* loaded from: classes.dex */
class ArcCurveFit extends CurveFit {

    /* renamed from: a */
    private final double[] f78a;

    /* renamed from: b */
    C0015a[] f79b;

    /* compiled from: ArcCurveFit.java */
    /* renamed from: a.c.a.a.a$a */
    /* loaded from: classes.dex */
    private static class C0015a {

        /* renamed from: s */
        private static double[] f80s = new double[91];

        /* renamed from: a */
        double[] f81a;

        /* renamed from: b */
        double f82b;

        /* renamed from: c */
        double f83c;

        /* renamed from: d */
        double f84d;

        /* renamed from: e */
        double f85e;

        /* renamed from: f */
        double f86f;

        /* renamed from: g */
        double f87g;

        /* renamed from: h */
        double f88h;

        /* renamed from: i */
        double f89i;

        /* renamed from: j */
        double f90j;

        /* renamed from: k */
        double f91k;

        /* renamed from: l */
        double f92l;

        /* renamed from: m */
        double f93m;

        /* renamed from: n */
        double f94n;

        /* renamed from: o */
        double f95o;

        /* renamed from: p */
        double f96p;

        /* renamed from: q */
        boolean f97q;

        /* renamed from: r */
        boolean f98r;

        C0015a(int i, double d, double d2, double d3, double d4, double d5, double d6) {
            this.f98r = false;
            this.f97q = i == 1;
            this.f83c = d;
            this.f84d = d2;
            this.f89i = 1.0d / (d2 - d);
            if (3 == i) {
                this.f98r = true;
            }
            double d7 = d5 - d3;
            double d8 = d6 - d4;
            if (!this.f98r && Math.abs(d7) >= 0.001d && Math.abs(d8) >= 0.001d) {
                this.f81a = new double[101];
                boolean z = this.f97q;
                this.f90j = d7 * (z ? -1 : 1);
                this.f91k = d8 * (z ? 1 : -1);
                this.f92l = z ? d5 : d3;
                this.f93m = z ? d4 : d6;
                m26439a(d3, d4, d5, d6);
                this.f94n = this.f82b * this.f89i;
                return;
            }
            this.f98r = true;
            this.f85e = d3;
            this.f86f = d5;
            this.f87g = d4;
            this.f88h = d6;
            double hypot = Math.hypot(d8, d7);
            this.f82b = hypot;
            this.f94n = hypot * this.f89i;
            double d9 = this.f84d;
            double d10 = this.f83c;
            this.f92l = d7 / (d9 - d10);
            this.f93m = d8 / (d9 - d10);
        }

        /* renamed from: a */
        private void m26439a(double d, double d2, double d3, double d4) {
            double[] dArr;
            double[] dArr2;
            double d5;
            double d6 = d3 - d;
            double d7 = d2 - d4;
            int i = 0;
            double d8 = 0.0d;
            double d9 = 0.0d;
            double d10 = 0.0d;
            while (true) {
                if (i >= f80s.length) {
                    break;
                }
                double d11 = d8;
                double radians = Math.toRadians((i * 90.0d) / (dArr.length - 1));
                double sin = Math.sin(radians) * d6;
                double cos = Math.cos(radians) * d7;
                if (i > 0) {
                    d5 = Math.hypot(sin - d9, cos - d10) + d11;
                    f80s[i] = d5;
                } else {
                    d5 = d11;
                }
                i++;
                d10 = cos;
                d8 = d5;
                d9 = sin;
            }
            double d12 = d8;
            this.f82b = d12;
            int i2 = 0;
            while (true) {
                double[] dArr3 = f80s;
                if (i2 >= dArr3.length) {
                    break;
                }
                dArr3[i2] = dArr3[i2] / d12;
                i2++;
            }
            int i3 = 0;
            while (true) {
                if (i3 >= this.f81a.length) {
                    return;
                }
                double length = i3 / (dArr2.length - 1);
                int binarySearch = Arrays.binarySearch(f80s, length);
                if (binarySearch >= 0) {
                    this.f81a[i3] = binarySearch / (f80s.length - 1);
                } else if (binarySearch == -1) {
                    this.f81a[i3] = 0.0d;
                } else {
                    int i4 = -binarySearch;
                    int i5 = i4 - 2;
                    double[] dArr4 = f80s;
                    this.f81a[i3] = (i5 + ((length - dArr4[i5]) / (dArr4[i4 - 1] - dArr4[i5]))) / (dArr4.length - 1);
                }
                i3++;
            }
        }

        /* renamed from: b */
        double m26438b() {
            double d = this.f90j * this.f96p;
            double hypot = this.f94n / Math.hypot(d, (-this.f91k) * this.f95o);
            if (this.f97q) {
                d = -d;
            }
            return d * hypot;
        }

        /* renamed from: c */
        double m26437c() {
            double d = this.f90j * this.f96p;
            double d2 = (-this.f91k) * this.f95o;
            double hypot = this.f94n / Math.hypot(d, d2);
            return this.f97q ? (-d2) * hypot : d2 * hypot;
        }

        /* renamed from: d */
        public double m26436d(double d) {
            return this.f92l;
        }

        /* renamed from: e */
        public double m26435e(double d) {
            return this.f93m;
        }

        /* renamed from: f */
        public double m26434f(double d) {
            double d2 = (d - this.f83c) * this.f89i;
            double d3 = this.f85e;
            return d3 + (d2 * (this.f86f - d3));
        }

        /* renamed from: g */
        public double m26433g(double d) {
            double d2 = (d - this.f83c) * this.f89i;
            double d3 = this.f87g;
            return d3 + (d2 * (this.f88h - d3));
        }

        /* renamed from: h */
        double m26432h() {
            return this.f92l + (this.f90j * this.f95o);
        }

        /* renamed from: i */
        double m26431i() {
            return this.f93m + (this.f91k * this.f96p);
        }

        /* renamed from: j */
        double m26430j(double d) {
            if (d <= 0.0d) {
                return 0.0d;
            }
            if (d >= 1.0d) {
                return 1.0d;
            }
            double[] dArr = this.f81a;
            double length = d * (dArr.length - 1);
            int i = (int) length;
            return dArr[i] + ((length - i) * (dArr[i + 1] - dArr[i]));
        }

        /* renamed from: k */
        void m26429k(double d) {
            double m26430j = m26430j((this.f97q ? this.f84d - d : d - this.f83c) * this.f89i) * 1.5707963267948966d;
            this.f95o = Math.sin(m26430j);
            this.f96p = Math.cos(m26430j);
        }
    }

    public ArcCurveFit(int[] iArr, double[] dArr, double[][] dArr2) {
        this.f78a = dArr;
        this.f79b = new C0015a[dArr.length - 1];
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (true) {
            C0015a[] c0015aArr = this.f79b;
            if (i >= c0015aArr.length) {
                return;
            }
            int i4 = iArr[i];
            if (i4 == 0) {
                i3 = 3;
            } else if (i4 == 1) {
                i2 = 1;
                i3 = 1;
            } else if (i4 == 2) {
                i2 = 2;
                i3 = 2;
            } else if (i4 == 3) {
                i2 = i2 == 1 ? 2 : 1;
                i3 = i2;
            }
            int i5 = i + 1;
            c0015aArr[i] = new C0015a(i3, dArr[i], dArr[i5], dArr2[i][0], dArr2[i][1], dArr2[i5][0], dArr2[i5][1]);
            i = i5;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: c */
    public double mo26421c(double d, int i) {
        C0015a[] c0015aArr = this.f79b;
        int i2 = 0;
        if (d < c0015aArr[0].f83c) {
            d = c0015aArr[0].f83c;
        } else if (d > c0015aArr[c0015aArr.length - 1].f84d) {
            d = c0015aArr[c0015aArr.length - 1].f84d;
        }
        while (true) {
            C0015a[] c0015aArr2 = this.f79b;
            if (i2 >= c0015aArr2.length) {
                return Double.NaN;
            }
            if (d <= c0015aArr2[i2].f84d) {
                if (c0015aArr2[i2].f98r) {
                    if (i == 0) {
                        return c0015aArr2[i2].m26434f(d);
                    }
                    return c0015aArr2[i2].m26433g(d);
                }
                c0015aArr2[i2].m26429k(d);
                if (i == 0) {
                    return this.f79b[i2].m26432h();
                }
                return this.f79b[i2].m26431i();
            }
            i2++;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: d */
    public void mo26420d(double d, double[] dArr) {
        C0015a[] c0015aArr = this.f79b;
        if (d < c0015aArr[0].f83c) {
            d = c0015aArr[0].f83c;
        }
        if (d > c0015aArr[c0015aArr.length - 1].f84d) {
            d = c0015aArr[c0015aArr.length - 1].f84d;
        }
        int i = 0;
        while (true) {
            C0015a[] c0015aArr2 = this.f79b;
            if (i >= c0015aArr2.length) {
                return;
            }
            if (d <= c0015aArr2[i].f84d) {
                if (c0015aArr2[i].f98r) {
                    dArr[0] = c0015aArr2[i].m26434f(d);
                    dArr[1] = this.f79b[i].m26433g(d);
                    return;
                }
                c0015aArr2[i].m26429k(d);
                dArr[0] = this.f79b[i].m26432h();
                dArr[1] = this.f79b[i].m26431i();
                return;
            }
            i++;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: e */
    public void mo26419e(double d, float[] fArr) {
        C0015a[] c0015aArr = this.f79b;
        if (d < c0015aArr[0].f83c) {
            d = c0015aArr[0].f83c;
        } else if (d > c0015aArr[c0015aArr.length - 1].f84d) {
            d = c0015aArr[c0015aArr.length - 1].f84d;
        }
        int i = 0;
        while (true) {
            C0015a[] c0015aArr2 = this.f79b;
            if (i >= c0015aArr2.length) {
                return;
            }
            if (d <= c0015aArr2[i].f84d) {
                if (c0015aArr2[i].f98r) {
                    fArr[0] = (float) c0015aArr2[i].m26434f(d);
                    fArr[1] = (float) this.f79b[i].m26433g(d);
                    return;
                }
                c0015aArr2[i].m26429k(d);
                fArr[0] = (float) this.f79b[i].m26432h();
                fArr[1] = (float) this.f79b[i].m26431i();
                return;
            }
            i++;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: f */
    public double mo26418f(double d, int i) {
        C0015a[] c0015aArr = this.f79b;
        int i2 = 0;
        if (d < c0015aArr[0].f83c) {
            d = c0015aArr[0].f83c;
        }
        if (d > c0015aArr[c0015aArr.length - 1].f84d) {
            d = c0015aArr[c0015aArr.length - 1].f84d;
        }
        while (true) {
            C0015a[] c0015aArr2 = this.f79b;
            if (i2 >= c0015aArr2.length) {
                return Double.NaN;
            }
            if (d <= c0015aArr2[i2].f84d) {
                if (c0015aArr2[i2].f98r) {
                    if (i == 0) {
                        return c0015aArr2[i2].m26436d(d);
                    }
                    return c0015aArr2[i2].m26435e(d);
                }
                c0015aArr2[i2].m26429k(d);
                if (i == 0) {
                    return this.f79b[i2].m26438b();
                }
                return this.f79b[i2].m26437c();
            }
            i2++;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: g */
    public void mo26417g(double d, double[] dArr) {
        C0015a[] c0015aArr = this.f79b;
        if (d < c0015aArr[0].f83c) {
            d = c0015aArr[0].f83c;
        } else if (d > c0015aArr[c0015aArr.length - 1].f84d) {
            d = c0015aArr[c0015aArr.length - 1].f84d;
        }
        int i = 0;
        while (true) {
            C0015a[] c0015aArr2 = this.f79b;
            if (i >= c0015aArr2.length) {
                return;
            }
            if (d <= c0015aArr2[i].f84d) {
                if (c0015aArr2[i].f98r) {
                    dArr[0] = c0015aArr2[i].m26436d(d);
                    dArr[1] = this.f79b[i].m26435e(d);
                    return;
                }
                c0015aArr2[i].m26429k(d);
                dArr[0] = this.f79b[i].m26438b();
                dArr[1] = this.f79b[i].m26437c();
                return;
            }
            i++;
        }
    }

    @Override // p000a.p007c.p008a.p009a.CurveFit
    /* renamed from: h */
    public double[] mo26416h() {
        return this.f78a;
    }
}
