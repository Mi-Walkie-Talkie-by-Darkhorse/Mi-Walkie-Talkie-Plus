package p000a.p007c.p008a.p009a;

/* renamed from: a.c.a.a.b */
/* loaded from: classes.dex */
public abstract class CurveFit {

    /* compiled from: CurveFit.java */
    /* renamed from: a.c.a.a.b$a */
    /* loaded from: classes.dex */
    static class C0016a extends CurveFit {

        /* renamed from: a */
        double f99a;

        /* renamed from: b */
        double[] f100b;

        C0016a(double d, double[] dArr) {
            this.f99a = d;
            this.f100b = dArr;
        }

        @Override // p000a.p007c.p008a.p009a.CurveFit
        /* renamed from: c */
        public double mo26421c(double d, int i) {
            return this.f100b[i];
        }

        @Override // p000a.p007c.p008a.p009a.CurveFit
        /* renamed from: d */
        public void mo26420d(double d, double[] dArr) {
            double[] dArr2 = this.f100b;
            System.arraycopy(dArr2, 0, dArr, 0, dArr2.length);
        }

        @Override // p000a.p007c.p008a.p009a.CurveFit
        /* renamed from: e */
        public void mo26419e(double d, float[] fArr) {
            int i = 0;
            while (true) {
                double[] dArr = this.f100b;
                if (i >= dArr.length) {
                    return;
                }
                fArr[i] = (float) dArr[i];
                i++;
            }
        }

        @Override // p000a.p007c.p008a.p009a.CurveFit
        /* renamed from: f */
        public double mo26418f(double d, int i) {
            return 0.0d;
        }

        @Override // p000a.p007c.p008a.p009a.CurveFit
        /* renamed from: g */
        public void mo26417g(double d, double[] dArr) {
            for (int i = 0; i < this.f100b.length; i++) {
                dArr[i] = 0.0d;
            }
        }

        @Override // p000a.p007c.p008a.p009a.CurveFit
        /* renamed from: h */
        public double[] mo26416h() {
            return new double[]{this.f99a};
        }
    }

    /* renamed from: a */
    public static CurveFit m26428a(int i, double[] dArr, double[][] dArr2) {
        if (dArr.length == 1) {
            i = 2;
        }
        if (i != 0) {
            if (i != 2) {
                return new LinearCurveFit(dArr, dArr2);
            }
            return new C0016a(dArr[0], dArr2[0]);
        }
        return new MonotonicCurveFit(dArr, dArr2);
    }

    /* renamed from: b */
    public static CurveFit m26427b(int[] iArr, double[] dArr, double[][] dArr2) {
        return new ArcCurveFit(iArr, dArr, dArr2);
    }

    /* renamed from: c */
    public abstract double mo26421c(double d, int i);

    /* renamed from: d */
    public abstract void mo26420d(double d, double[] dArr);

    /* renamed from: e */
    public abstract void mo26419e(double d, float[] fArr);

    /* renamed from: f */
    public abstract double mo26418f(double d, int i);

    /* renamed from: g */
    public abstract void mo26417g(double d, double[] dArr);

    /* renamed from: h */
    public abstract double[] mo26416h();
}
