package com.github.mikephil.charting.b;

import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.e.b.a;

/* compiled from: HorizontalBarBuffer */
public class c extends b {
    public c(int i, int i2, boolean z) {
        super(i, i2, z);
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
        int i = 0;
        while (true) {
            int i2 = i;
            if (((float) i2) < s) {
                BarEntry barEntry = (BarEntry) aVar.d(i2);
                if (barEntry != null) {
                    float h = barEntry.h();
                    float b = barEntry.b();
                    float[] a = barEntry.a();
                    if (!this.i || a == null) {
                        float f7 = h - f6;
                        float f8 = h + f6;
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
                        a(b, f8, f, f7);
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
                            float f13 = h - f6;
                            float f14 = h + f6;
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
                            a(f4 * this.d, f14, f2 * this.d, f13);
                        }
                    }
                }
                i = i2 + 1;
            } else {
                a();
                return;
            }
        }
    }
}
