package com.amap.api.mapcore.util;

/* compiled from: EarClippingTriangulator */
public class dn {
    private final ec a = new ec();
    private short[] b;
    private double[] c;
    private int d;
    private final ds e = new ds();
    private final ec f = new ec();

    public ec a(double[] dArr) {
        return a(dArr, 0, dArr.length);
    }

    public ec a(double[] dArr, int i, int i2) {
        this.c = dArr;
        int i3 = i2 / 2;
        this.d = i3;
        int i4 = i / 2;
        ec ecVar = this.a;
        ecVar.a();
        ecVar.c(i3);
        ecVar.b = i3;
        short[] sArr = ecVar.a;
        this.b = sArr;
        int i5 = i3 - 1;
        for (int i6 = 0; i6 < i3; i6++) {
            sArr[i6] = (short) ((i4 + i5) - i6);
        }
        ds dsVar = this.e;
        dsVar.a();
        dsVar.c(i3);
        for (int i7 = 0; i7 < i3; i7++) {
            dsVar.a(a(i7));
        }
        ec ecVar2 = this.f;
        ecVar2.a();
        ecVar2.c(Math.max(0, i3 - 2) * 3);
        a();
        return ecVar2;
    }

    private void a() {
        int[] iArr = this.e.a;
        while (this.d > 3) {
            int b2 = b();
            c(b2);
            int d2 = d(b2);
            if (b2 == this.d) {
                b2 = 0;
            }
            iArr[d2] = a(d2);
            iArr[b2] = a(b2);
        }
        if (this.d == 3) {
            ec ecVar = this.f;
            short[] sArr = this.b;
            ecVar.a(sArr[0]);
            ecVar.a(sArr[1]);
            ecVar.a(sArr[2]);
        }
    }

    private int a(int i) {
        short[] sArr = this.b;
        int i2 = sArr[d(i)] * 2;
        int i3 = sArr[i] * 2;
        int i4 = sArr[e(i)] * 2;
        double[] dArr = this.c;
        return a(dArr[i2], dArr[i2 + 1], dArr[i3], dArr[i3 + 1], dArr[i4], dArr[i4 + 1]);
    }

    private int b() {
        int i = this.d;
        for (int i2 = 0; i2 < i; i2++) {
            if (b(i2)) {
                return i2;
            }
        }
        int[] iArr = this.e.a;
        for (int i3 = 0; i3 < i; i3++) {
            if (iArr[i3] != -1) {
                return i3;
            }
        }
        return 0;
    }

    private boolean b(int i) {
        int[] iArr = this.e.a;
        if (iArr[i] == -1) {
            return false;
        }
        int d2 = d(i);
        int e2 = e(i);
        short[] sArr = this.b;
        int i2 = sArr[d2] * 2;
        int i3 = sArr[i] * 2;
        int i4 = sArr[e2] * 2;
        double[] dArr = this.c;
        double d3 = dArr[i2];
        double d4 = dArr[i2 + 1];
        double d5 = dArr[i3];
        double d6 = dArr[i3 + 1];
        double d7 = dArr[i4];
        double d8 = dArr[i4 + 1];
        int e3 = e(e2);
        while (true) {
            int i5 = e3;
            if (i5 == d2) {
                return true;
            }
            if (iArr[i5] != 1) {
                int i6 = sArr[i5] * 2;
                double d9 = dArr[i6];
                double d10 = dArr[i6 + 1];
                if (a(d7, d8, d3, d4, d9, d10) >= 0 && a(d3, d4, d5, d6, d9, d10) >= 0 && a(d5, d6, d7, d8, d9, d10) >= 0) {
                    return false;
                }
            }
            e3 = e(i5);
        }
    }

    private void c(int i) {
        short[] sArr = this.b;
        ec ecVar = this.f;
        ecVar.a(sArr[d(i)]);
        ecVar.a(sArr[i]);
        ecVar.a(sArr[e(i)]);
        this.a.b(i);
        this.e.b(i);
        this.d--;
    }

    private int d(int i) {
        if (i == 0) {
            i = this.d;
        }
        return i - 1;
    }

    private int e(int i) {
        return (i + 1) % this.d;
    }

    private static int a(double d2, double d3, double d4, double d5, double d6, double d7) {
        return (int) Math.signum(((d7 - d5) * d2) + ((d3 - d7) * d4) + ((d5 - d3) * d6));
    }
}
