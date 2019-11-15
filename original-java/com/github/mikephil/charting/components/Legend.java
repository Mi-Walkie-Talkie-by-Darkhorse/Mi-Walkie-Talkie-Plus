package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import android.graphics.Paint;
import com.github.mikephil.charting.g.b;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.util.ArrayList;
import java.util.List;

public class Legend extends b {
    private boolean B;
    private List<b> C;
    private List<Boolean> D;
    private List<b> E;
    public float a;
    public float b;
    public float c;
    public float d;
    private e[] e;
    private e[] f;
    private boolean g;
    private LegendHorizontalAlignment h;
    private LegendVerticalAlignment i;
    private LegendOrientation j;
    private boolean k;
    private LegendDirection l;
    private LegendForm m;
    private float n;
    private float o;
    private DashPathEffect p;
    private float q;
    private float r;
    private float s;
    private float t;
    private float u;

    /* renamed from: com.github.mikephil.charting.components.Legend$1 reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[LegendPosition.values().length];

        static {
            b = new int[LegendOrientation.values().length];
            try {
                b[LegendOrientation.VERTICAL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[LegendOrientation.HORIZONTAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[LegendPosition.LEFT_OF_CHART.ordinal()] = 1;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[LegendPosition.LEFT_OF_CHART_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[LegendPosition.LEFT_OF_CHART_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[LegendPosition.RIGHT_OF_CHART.ordinal()] = 4;
            } catch (NoSuchFieldError e6) {
            }
            try {
                a[LegendPosition.RIGHT_OF_CHART_INSIDE.ordinal()] = 5;
            } catch (NoSuchFieldError e7) {
            }
            try {
                a[LegendPosition.RIGHT_OF_CHART_CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e8) {
            }
            try {
                a[LegendPosition.ABOVE_CHART_LEFT.ordinal()] = 7;
            } catch (NoSuchFieldError e9) {
            }
            try {
                a[LegendPosition.ABOVE_CHART_CENTER.ordinal()] = 8;
            } catch (NoSuchFieldError e10) {
            }
            try {
                a[LegendPosition.ABOVE_CHART_RIGHT.ordinal()] = 9;
            } catch (NoSuchFieldError e11) {
            }
            try {
                a[LegendPosition.BELOW_CHART_LEFT.ordinal()] = 10;
            } catch (NoSuchFieldError e12) {
            }
            try {
                a[LegendPosition.BELOW_CHART_CENTER.ordinal()] = 11;
            } catch (NoSuchFieldError e13) {
            }
            try {
                a[LegendPosition.BELOW_CHART_RIGHT.ordinal()] = 12;
            } catch (NoSuchFieldError e14) {
            }
            try {
                a[LegendPosition.PIECHART_CENTER.ordinal()] = 13;
            } catch (NoSuchFieldError e15) {
            }
        }
    }

    public enum LegendDirection {
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT
    }

    public enum LegendForm {
        NONE,
        EMPTY,
        DEFAULT,
        SQUARE,
        CIRCLE,
        LINE
    }

    public enum LegendHorizontalAlignment {
        LEFT,
        CENTER,
        RIGHT
    }

    public enum LegendOrientation {
        HORIZONTAL,
        VERTICAL
    }

    @Deprecated
    public enum LegendPosition {
        RIGHT_OF_CHART,
        RIGHT_OF_CHART_CENTER,
        RIGHT_OF_CHART_INSIDE,
        LEFT_OF_CHART,
        LEFT_OF_CHART_CENTER,
        LEFT_OF_CHART_INSIDE,
        BELOW_CHART_LEFT,
        BELOW_CHART_RIGHT,
        BELOW_CHART_CENTER,
        ABOVE_CHART_LEFT,
        ABOVE_CHART_RIGHT,
        ABOVE_CHART_CENTER,
        PIECHART_CENTER
    }

    public enum LegendVerticalAlignment {
        TOP,
        CENTER,
        BOTTOM
    }

    public Legend() {
        this.e = new e[0];
        this.g = false;
        this.h = LegendHorizontalAlignment.LEFT;
        this.i = LegendVerticalAlignment.BOTTOM;
        this.j = LegendOrientation.HORIZONTAL;
        this.k = false;
        this.l = LegendDirection.LEFT_TO_RIGHT;
        this.m = LegendForm.SQUARE;
        this.n = 8.0f;
        this.o = 3.0f;
        this.p = null;
        this.q = 6.0f;
        this.r = 0.0f;
        this.s = 5.0f;
        this.t = 3.0f;
        this.u = 0.95f;
        this.a = 0.0f;
        this.b = 0.0f;
        this.c = 0.0f;
        this.d = 0.0f;
        this.B = false;
        this.C = new ArrayList(16);
        this.D = new ArrayList(16);
        this.E = new ArrayList(16);
        this.z = i.a(10.0f);
        this.w = i.a(5.0f);
        this.x = i.a(3.0f);
    }

    public void a(List<e> list) {
        this.e = (e[]) list.toArray(new e[list.size()]);
    }

    public e[] a() {
        return this.e;
    }

    public float a(Paint paint) {
        float a2;
        float f2 = 0.0f;
        float a3 = i.a(this.s);
        e[] eVarArr = this.e;
        int length = eVarArr.length;
        int i2 = 0;
        float f3 = 0.0f;
        while (i2 < length) {
            e eVar = eVarArr[i2];
            float a4 = i.a(Float.isNaN(eVar.c) ? this.n : eVar.c);
            if (a4 <= f2) {
                a4 = f2;
            }
            String str = eVar.a;
            if (str == null) {
                a2 = f3;
            } else {
                a2 = (float) i.a(paint, str);
                if (a2 <= f3) {
                    a2 = f3;
                }
            }
            i2++;
            f3 = a2;
            f2 = a4;
        }
        return f3 + f2 + a3;
    }

    public float b(Paint paint) {
        float f2 = 0.0f;
        for (e eVar : this.e) {
            String str = eVar.a;
            if (str != null) {
                float b2 = (float) i.b(paint, str);
                if (b2 > f2) {
                    f2 = b2;
                }
            }
        }
        return f2;
    }

    public e[] b() {
        return this.f;
    }

    public boolean c() {
        return this.g;
    }

    public LegendHorizontalAlignment d() {
        return this.h;
    }

    public LegendVerticalAlignment e() {
        return this.i;
    }

    public LegendOrientation f() {
        return this.j;
    }

    public boolean g() {
        return this.k;
    }

    public LegendDirection h() {
        return this.l;
    }

    public LegendForm i() {
        return this.m;
    }

    public float j() {
        return this.n;
    }

    public float k() {
        return this.o;
    }

    public DashPathEffect l() {
        return this.p;
    }

    public float m() {
        return this.q;
    }

    public float n() {
        return this.r;
    }

    public float o() {
        return this.s;
    }

    public float p() {
        return this.t;
    }

    public float q() {
        return this.u;
    }

    public List<b> r() {
        return this.C;
    }

    public List<Boolean> y() {
        return this.D;
    }

    public List<b> z() {
        return this.E;
    }

    public void a(Paint paint, j jVar) {
        int size;
        float a2;
        float f2;
        int i2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i3;
        float a3;
        boolean z;
        float f7;
        float f8;
        float f9;
        float f10;
        float a4 = i.a(this.n);
        float a5 = i.a(this.t);
        float a6 = i.a(this.s);
        float a7 = i.a(this.q);
        float a8 = i.a(this.r);
        boolean z2 = this.B;
        e[] eVarArr = this.e;
        int length = eVarArr.length;
        this.d = a(paint);
        this.c = b(paint);
        switch (this.j) {
            case VERTICAL:
                float f11 = 0.0f;
                float f12 = 0.0f;
                float f13 = 0.0f;
                float a9 = i.a(paint);
                boolean z3 = false;
                int i4 = 0;
                while (i4 < length) {
                    e eVar = eVarArr[i4];
                    boolean z4 = eVar.b != LegendForm.NONE;
                    if (Float.isNaN(eVar.c)) {
                        a3 = a4;
                    } else {
                        a3 = i.a(eVar.c);
                    }
                    String str = eVar.a;
                    if (!z3) {
                        f13 = 0.0f;
                    }
                    if (z4) {
                        if (z3) {
                            f13 += a5;
                        }
                        f13 += a3;
                    }
                    if (str != null) {
                        if (z4 && !z3) {
                            f9 = f13 + a6;
                            f10 = f12;
                            z = z3;
                            f8 = f11;
                        } else if (z3) {
                            f8 = Math.max(f11, f13);
                            f10 = f12 + a9 + a8;
                            f9 = 0.0f;
                            z = false;
                        } else {
                            z = z3;
                            f9 = f13;
                            f10 = f12;
                            f8 = f11;
                        }
                        f7 = f9 + ((float) i.a(paint, str));
                        if (i4 < length - 1) {
                            f12 = a9 + a8 + f10;
                        } else {
                            f12 = f10;
                        }
                    } else {
                        z = true;
                        f7 = a3 + f13;
                        if (i4 < length - 1) {
                            f7 += a5;
                            f8 = f11;
                        } else {
                            f8 = f11;
                        }
                    }
                    f11 = Math.max(f8, f7);
                    i4++;
                    z3 = z;
                    f13 = f7;
                }
                this.a = f11;
                this.b = f12;
                break;
            case HORIZONTAL:
                float a10 = i.a(paint);
                float b2 = i.b(paint) + a8;
                float i5 = jVar.i() * this.u;
                float f14 = 0.0f;
                float f15 = 0.0f;
                int i6 = -1;
                this.D.clear();
                this.C.clear();
                this.E.clear();
                int i7 = 0;
                float f16 = 0.0f;
                while (i7 < length) {
                    e eVar2 = eVarArr[i7];
                    boolean z5 = eVar2.b != LegendForm.NONE;
                    if (Float.isNaN(eVar2.c)) {
                        a2 = a4;
                    } else {
                        a2 = i.a(eVar2.c);
                    }
                    String str2 = eVar2.a;
                    this.D.add(Boolean.valueOf(false));
                    if (i6 == -1) {
                        f2 = 0.0f;
                    } else {
                        f2 = f16 + a5;
                    }
                    if (str2 != null) {
                        this.C.add(i.c(paint, str2));
                        float f17 = z5 ? a6 + a2 : 0.0f;
                        i2 = i6;
                        f3 = ((b) this.C.get(i7)).a + f2 + f17;
                    } else {
                        this.C.add(b.a(0.0f, 0.0f));
                        if (!z5) {
                            a2 = 0.0f;
                        }
                        float f18 = f2 + a2;
                        if (i6 == -1) {
                            i2 = i7;
                            f3 = f18;
                        } else {
                            i2 = i6;
                            f3 = f18;
                        }
                    }
                    if (str2 != null || i7 == length - 1) {
                        if (f15 == 0.0f) {
                            f6 = 0.0f;
                        } else {
                            f6 = a7;
                        }
                        if (!z2 || f15 == 0.0f || i5 - f15 >= f6 + f3) {
                            f5 = f6 + f3 + f15;
                            f4 = f14;
                        } else {
                            this.E.add(b.a(f15, a10));
                            f4 = Math.max(f14, f15);
                            List<Boolean> list = this.D;
                            if (i2 > -1) {
                                i3 = i2;
                            } else {
                                i3 = i7;
                            }
                            list.set(i3, Boolean.valueOf(true));
                            f5 = f3;
                        }
                        if (i7 == length - 1) {
                            this.E.add(b.a(f5, a10));
                            f4 = Math.max(f4, f5);
                        }
                    } else {
                        f5 = f15;
                        f4 = f14;
                    }
                    if (str2 != null) {
                        i2 = -1;
                    }
                    i7++;
                    f16 = f3;
                    f14 = f4;
                    f15 = f5;
                    i6 = i2;
                }
                this.a = f14;
                float size2 = a10 * ((float) this.E.size());
                if (this.E.size() == 0) {
                    size = 0;
                } else {
                    size = this.E.size() - 1;
                }
                this.b = (((float) size) * b2) + size2;
                break;
        }
        this.b += this.x;
        this.a += this.w;
    }
}
