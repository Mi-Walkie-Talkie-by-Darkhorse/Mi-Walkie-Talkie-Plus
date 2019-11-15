package com.github.mikephil.charting.b;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.e.b.a;

/* compiled from: BarBuffer */
public class b extends a<a> {
    protected int g = 0;
    protected int h = 1;
    protected boolean i = false;
    protected boolean j = false;
    protected float k = 1.0f;

    public b(int i2, int i3, boolean z) {
        super(i2);
        this.h = i3;
        this.i = z;
    }

    public void a(float f) {
        this.k = f;
    }

    public void a(int i2) {
        this.g = i2;
    }

    public void a(boolean z) {
        this.j = z;
    }

    /* access modifiers changed from: protected */
    public void a(float f, float f2, float f3, float f4) {
        float[] fArr = this.b;
        int i2 = this.a;
        this.a = i2 + 1;
        fArr[i2] = f;
        float[] fArr2 = this.b;
        int i3 = this.a;
        this.a = i3 + 1;
        fArr2[i3] = f2;
        float[] fArr3 = this.b;
        int i4 = this.a;
        this.a = i4 + 1;
        fArr3[i4] = f3;
        float[] fArr4 = this.b;
        int i5 = this.a;
        this.a = i5 + 1;
        fArr4[i5] = f4;
    }

    public void a(a aVar) {
        float f;
        float abs;
        float f2;
        float f3;
        float f4;
        float f5;
        float s = ((float) aVar.s()) * this.c;
        float f6 = this.k / 2.0f;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (((float) i3) < s) {
                BarEntry barEntry = (BarEntry) aVar.d(i3);
                if (barEntry != null) {
                    float h2 = barEntry.h();
                    float b = barEntry.b();
                    float[] a = barEntry.a();
                    if (!this.i || a == null) {
                        float f7 = h2 - f6;
                        float f8 = h2 + f6;
                        if (this.j) {
                            float f9 = b >= 0.0f ? b : 0.0f;
                            f = b <= 0.0f ? b : 0.0f;
                            b = f9;
                        } else {
                            f = b >= 0.0f ? b : 0.0f;
                            if (b > 0.0f) {
                                b = 0.0f;
                            }
                        }
                        if (f > 0.0f) {
                            f *= this.d;
                        } else {
                            b *= this.d;
                        }
                        a(f7, f, f8, b);
                    } else {
                        float f10 = 0.0f;
                        float f11 = -barEntry.f();
                        for (float f12 : a) {
                            if (f12 >= 0.0f) {
                                abs = f10 + f12;
                                f2 = f10;
                                f10 = abs;
                            } else {
                                abs = Math.abs(f12) + f11;
                                float abs2 = Math.abs(f12) + f11;
                                f2 = f11;
                                f11 = abs2;
                            }
                            float f13 = h2 - f6;
                            float f14 = h2 + f6;
                            if (this.j) {
                                if (f2 >= abs) {
                                    f5 = f2;
                                } else {
                                    f5 = abs;
                                }
                                if (f2 > abs) {
                                    f2 = abs;
                                }
                                f4 = f5;
                            } else {
                                if (f2 >= abs) {
                                    f3 = f2;
                                } else {
                                    f3 = abs;
                                }
                                if (f2 > abs) {
                                    f2 = abs;
                                }
                                f4 = f2;
                                f2 = f3;
                            }
                            a(f13, f2 * this.d, f14, f4 * this.d);
                        }
                    }
                }
                i2 = i3 + 1;
            } else {
                a();
                return;
            }
        }
    }
}
