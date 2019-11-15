package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.FontMetrics;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Typeface;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.Legend.LegendForm;
import com.github.mikephil.charting.components.e;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.data.h;
import com.github.mikephil.charting.e.b.a;
import com.github.mikephil.charting.e.b.d;
import com.github.mikephil.charting.g.j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: LegendRenderer */
public class i extends o {
    protected Paint a;
    protected Paint b;
    protected Legend c;
    protected List<e> d = new ArrayList(16);
    protected FontMetrics e = new FontMetrics();
    private Path f = new Path();

    public i(j jVar, Legend legend) {
        super(jVar);
        this.c = legend;
        this.a = new Paint(1);
        this.a.setTextSize(com.github.mikephil.charting.g.i.a(9.0f));
        this.a.setTextAlign(Align.LEFT);
        this.b = new Paint(1);
        this.b.setStyle(Style.FILL);
    }

    public Paint a() {
        return this.a;
    }

    public void a(h<?> hVar) {
        String e2;
        if (!this.c.c()) {
            this.d.clear();
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= hVar.d()) {
                    break;
                }
                com.github.mikephil.charting.e.b.e a2 = hVar.a(i2);
                List b2 = a2.b();
                int s = a2.s();
                if ((a2 instanceof a) && ((a) a2).d()) {
                    a aVar = (a) a2;
                    String[] B = aVar.B();
                    int i3 = 0;
                    while (true) {
                        int i4 = i3;
                        if (i4 < b2.size() && i4 < aVar.r()) {
                            this.d.add(new e(B[i4 % B.length], a2.k(), a2.l(), a2.m(), a2.n(), ((Integer) b2.get(i4)).intValue()));
                            i3 = i4 + 1;
                        }
                    }
                    if (aVar.e() != null) {
                        this.d.add(new e(a2.e(), LegendForm.NONE, Float.NaN, Float.NaN, null, 1122867));
                    }
                } else if (a2 instanceof com.github.mikephil.charting.e.b.i) {
                    com.github.mikephil.charting.e.b.i iVar = (com.github.mikephil.charting.e.b.i) a2;
                    int i5 = 0;
                    while (true) {
                        int i6 = i5;
                        if (i6 < b2.size() && i6 < s) {
                            this.d.add(new e(((PieEntry) iVar.d(i6)).a(), a2.k(), a2.l(), a2.m(), a2.n(), ((Integer) b2.get(i6)).intValue()));
                            i5 = i6 + 1;
                        }
                    }
                    if (iVar.e() != null) {
                        this.d.add(new e(a2.e(), LegendForm.NONE, Float.NaN, Float.NaN, null, 1122867));
                    }
                } else if (!(a2 instanceof d) || ((d) a2).B() == 1122867) {
                    int i7 = 0;
                    while (true) {
                        int i8 = i7;
                        if (i8 >= b2.size() || i8 >= s) {
                            break;
                        }
                        if (i8 >= b2.size() - 1 || i8 >= s - 1) {
                            e2 = hVar.a(i2).e();
                        } else {
                            e2 = null;
                        }
                        this.d.add(new e(e2, a2.k(), a2.l(), a2.m(), a2.n(), ((Integer) b2.get(i8)).intValue()));
                        i7 = i8 + 1;
                    }
                } else {
                    int B2 = ((d) a2).B();
                    int A = ((d) a2).A();
                    this.d.add(new e(null, a2.k(), a2.l(), a2.m(), a2.n(), B2));
                    this.d.add(new e(a2.e(), a2.k(), a2.l(), a2.m(), a2.n(), A));
                }
                i = i2 + 1;
            }
            if (this.c.b() != null) {
                Collections.addAll(this.d, this.c.b());
            }
            this.c.a(this.d);
        }
        Typeface u = this.c.u();
        if (u != null) {
            this.a.setTypeface(u);
        }
        this.a.setTextSize(this.c.v());
        this.a.setColor(this.c.w());
        this.c.a(this.a, this.o);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:161:0x041f, code lost:
        r8 = r2;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(android.graphics.Canvas r30) {
        /*
            r29 = this;
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            boolean r2 = r2.x()
            if (r2 != 0) goto L_0x000b
        L_0x000a:
            return
        L_0x000b:
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            android.graphics.Typeface r2 = r2.u()
            if (r2 == 0) goto L_0x001c
            r0 = r29
            android.graphics.Paint r3 = r0.a
            r3.setTypeface(r2)
        L_0x001c:
            r0 = r29
            android.graphics.Paint r2 = r0.a
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.v()
            r2.setTextSize(r3)
            r0 = r29
            android.graphics.Paint r2 = r0.a
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            int r3 = r3.w()
            r2.setColor(r3)
            r0 = r29
            android.graphics.Paint r2 = r0.a
            r0 = r29
            android.graphics.Paint$FontMetrics r3 = r0.e
            float r19 = com.github.mikephil.charting.g.i.a(r2, r3)
            r0 = r29
            android.graphics.Paint r2 = r0.a
            r0 = r29
            android.graphics.Paint$FontMetrics r3 = r0.e
            float r2 = com.github.mikephil.charting.g.i.b(r2, r3)
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.n()
            float r3 = com.github.mikephil.charting.g.i.a(r3)
            float r20 = r2 + r3
            r0 = r29
            android.graphics.Paint r2 = r0.a
            java.lang.String r3 = "ABC"
            int r2 = com.github.mikephil.charting.g.i.b(r2, r3)
            float r2 = (float) r2
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r3
            float r21 = r19 - r2
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            com.github.mikephil.charting.components.e[] r22 = r2.a()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            float r2 = r2.o()
            float r13 = com.github.mikephil.charting.g.i.a(r2)
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            float r2 = r2.m()
            float r14 = com.github.mikephil.charting.g.i.a(r2)
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            com.github.mikephil.charting.components.Legend$LegendOrientation r6 = r2.f()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r23 = r2.d()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            com.github.mikephil.charting.components.Legend$LegendVerticalAlignment r7 = r2.e()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            com.github.mikephil.charting.components.Legend$LegendDirection r24 = r2.h()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            float r2 = r2.j()
            float r11 = com.github.mikephil.charting.g.i.a(r2)
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            float r2 = r2.p()
            float r15 = com.github.mikephil.charting.g.i.a(r2)
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            float r5 = r2.t()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            float r2 = r2.s()
            r3 = 0
            int[] r4 = com.github.mikephil.charting.f.i.AnonymousClass1.a
            int r8 = r23.ordinal()
            r4 = r4[r8]
            switch(r4) {
                case 1: goto L_0x01f7;
                case 2: goto L_0x0215;
                case 3: goto L_0x023e;
                default: goto L_0x00e4;
            }
        L_0x00e4:
            r8 = r3
        L_0x00e5:
            int[] r2 = com.github.mikephil.charting.f.i.AnonymousClass1.c
            int r3 = r6.ordinal()
            r2 = r2[r3]
            switch(r2) {
                case 1: goto L_0x00f2;
                case 2: goto L_0x02f9;
                default: goto L_0x00f0;
            }
        L_0x00f0:
            goto L_0x000a
        L_0x00f2:
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            java.util.List r25 = r2.z()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            java.util.List r26 = r2.r()
            r0 = r29
            com.github.mikephil.charting.components.Legend r2 = r0.c
            java.util.List r27 = r2.y()
            r2 = 0
            int[] r3 = com.github.mikephil.charting.f.i.AnonymousClass1.b
            int r4 = r7.ordinal()
            r3 = r3[r4]
            switch(r3) {
                case 1: goto L_0x029e;
                case 2: goto L_0x02a1;
                case 3: goto L_0x02b3;
                default: goto L_0x0116;
            }
        L_0x0116:
            r12 = 0
            r3 = 0
            r0 = r22
            int r0 = r0.length
            r28 = r0
            r18 = r3
            r4 = r2
            r5 = r8
            r3 = r12
        L_0x0122:
            r0 = r18
            r1 = r28
            if (r0 >= r1) goto L_0x000a
            r6 = r22[r18]
            com.github.mikephil.charting.components.Legend$LegendForm r2 = r6.b
            com.github.mikephil.charting.components.Legend$LegendForm r7 = com.github.mikephil.charting.components.Legend.LegendForm.NONE
            if (r2 == r7) goto L_0x02c8
            r2 = 1
            r9 = r2
        L_0x0132:
            float r2 = r6.c
            boolean r2 = java.lang.Float.isNaN(r2)
            if (r2 == 0) goto L_0x02cc
            r10 = r11
        L_0x013b:
            int r2 = r27.size()
            r0 = r18
            if (r0 >= r2) goto L_0x041a
            r0 = r27
            r1 = r18
            java.lang.Object r2 = r0.get(r1)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L_0x041a
            float r2 = r19 + r20
            float r2 = r2 + r4
            r17 = r2
            r4 = r8
        L_0x0159:
            int r2 = (r4 > r8 ? 1 : (r4 == r8 ? 0 : -1))
            if (r2 != 0) goto L_0x0416
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r2 = com.github.mikephil.charting.components.Legend.LegendHorizontalAlignment.CENTER
            r0 = r23
            if (r0 != r2) goto L_0x0416
            int r2 = r25.size()
            if (r3 >= r2) goto L_0x0416
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r2) goto L_0x02d5
            r0 = r25
            java.lang.Object r2 = r0.get(r3)
            com.github.mikephil.charting.g.b r2 = (com.github.mikephil.charting.g.b) r2
            float r2 = r2.a
        L_0x0179:
            r5 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r5
            float r4 = r4 + r2
            int r2 = r3 + 1
            r12 = r2
            r2 = r4
        L_0x0181:
            java.lang.String r3 = r6.a
            if (r3 != 0) goto L_0x02e2
            r3 = 1
            r16 = r3
        L_0x0188:
            if (r9 == 0) goto L_0x0413
            com.github.mikephil.charting.components.Legend$LegendDirection r3 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r3) goto L_0x0410
            float r4 = r2 - r10
        L_0x0192:
            float r5 = r17 + r21
            r0 = r29
            com.github.mikephil.charting.components.Legend r7 = r0.c
            r2 = r29
            r3 = r30
            r2.a(r3, r4, r5, r6, r7)
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r2) goto L_0x040d
            float r3 = r4 + r10
        L_0x01a7:
            if (r16 != 0) goto L_0x02ed
            if (r9 == 0) goto L_0x01b4
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r2) goto L_0x02e7
            float r2 = -r13
        L_0x01b2:
            float r2 = r2 + r3
            r3 = r2
        L_0x01b4:
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r2) goto L_0x01c7
            r0 = r26
            r1 = r18
            java.lang.Object r2 = r0.get(r1)
            com.github.mikephil.charting.g.b r2 = (com.github.mikephil.charting.g.b) r2
            float r2 = r2.a
            float r3 = r3 - r2
        L_0x01c7:
            float r2 = r17 + r19
            java.lang.String r4 = r6.a
            r0 = r29
            r1 = r30
            r0.a(r1, r3, r2, r4)
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r2) goto L_0x01e5
            r0 = r26
            r1 = r18
            java.lang.Object r2 = r0.get(r1)
            com.github.mikephil.charting.g.b r2 = (com.github.mikephil.charting.g.b) r2
            float r2 = r2.a
            float r3 = r3 + r2
        L_0x01e5:
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r2) goto L_0x02ea
            float r2 = -r14
        L_0x01ec:
            float r2 = r2 + r3
        L_0x01ed:
            int r3 = r18 + 1
            r18 = r3
            r4 = r17
            r5 = r2
            r3 = r12
            goto L_0x0122
        L_0x01f7:
            com.github.mikephil.charting.components.Legend$LegendOrientation r3 = com.github.mikephil.charting.components.Legend.LegendOrientation.VERTICAL
            if (r6 != r3) goto L_0x020b
        L_0x01fb:
            com.github.mikephil.charting.components.Legend$LegendDirection r3 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r3) goto L_0x041f
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.a
            float r2 = r2 + r3
            r8 = r2
            goto L_0x00e5
        L_0x020b:
            r0 = r29
            com.github.mikephil.charting.g.j r3 = r0.o
            float r3 = r3.f()
            float r2 = r2 + r3
            goto L_0x01fb
        L_0x0215:
            com.github.mikephil.charting.components.Legend$LegendOrientation r3 = com.github.mikephil.charting.components.Legend.LegendOrientation.VERTICAL
            if (r6 != r3) goto L_0x0233
            r0 = r29
            com.github.mikephil.charting.g.j r3 = r0.o
            float r3 = r3.n()
            float r2 = r3 - r2
        L_0x0223:
            com.github.mikephil.charting.components.Legend$LegendDirection r3 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r3) goto L_0x041f
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.a
            float r2 = r2 - r3
            r8 = r2
            goto L_0x00e5
        L_0x0233:
            r0 = r29
            com.github.mikephil.charting.g.j r3 = r0.o
            float r3 = r3.g()
            float r2 = r3 - r2
            goto L_0x0223
        L_0x023e:
            com.github.mikephil.charting.components.Legend$LegendOrientation r3 = com.github.mikephil.charting.components.Legend.LegendOrientation.VERTICAL
            if (r6 != r3) goto L_0x0276
            r0 = r29
            com.github.mikephil.charting.g.j r3 = r0.o
            float r3 = r3.n()
            r4 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r4
        L_0x024d:
            com.github.mikephil.charting.components.Legend$LegendDirection r4 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r4) goto L_0x028b
            r4 = r2
        L_0x0254:
            float r3 = r3 + r4
            com.github.mikephil.charting.components.Legend$LegendOrientation r4 = com.github.mikephil.charting.components.Legend.LegendOrientation.VERTICAL
            if (r6 != r4) goto L_0x00e4
            double r8 = (double) r3
            com.github.mikephil.charting.components.Legend$LegendDirection r3 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r3) goto L_0x028d
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.a
            float r3 = -r3
            double r0 = (double) r3
            r16 = r0
            r26 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r16 = r16 / r26
            double r2 = (double) r2
            double r2 = r2 + r16
        L_0x0271:
            double r2 = r2 + r8
            float r2 = (float) r2
            r8 = r2
            goto L_0x00e5
        L_0x0276:
            r0 = r29
            com.github.mikephil.charting.g.j r3 = r0.o
            float r3 = r3.f()
            r0 = r29
            com.github.mikephil.charting.g.j r4 = r0.o
            float r4 = r4.i()
            r8 = 1073741824(0x40000000, float:2.0)
            float r4 = r4 / r8
            float r3 = r3 + r4
            goto L_0x024d
        L_0x028b:
            float r4 = -r2
            goto L_0x0254
        L_0x028d:
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.a
            double r0 = (double) r3
            r16 = r0
            r26 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r16 = r16 / r26
            double r2 = (double) r2
            double r2 = r16 - r2
            goto L_0x0271
        L_0x029e:
            r2 = r5
            goto L_0x0116
        L_0x02a1:
            r0 = r29
            com.github.mikephil.charting.g.j r2 = r0.o
            float r2 = r2.m()
            float r2 = r2 - r5
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.b
            float r2 = r2 - r3
            goto L_0x0116
        L_0x02b3:
            r0 = r29
            com.github.mikephil.charting.g.j r2 = r0.o
            float r2 = r2.m()
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.b
            float r2 = r2 - r3
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r3
            float r2 = r2 + r5
            goto L_0x0116
        L_0x02c8:
            r2 = 0
            r9 = r2
            goto L_0x0132
        L_0x02cc:
            float r2 = r6.c
            float r2 = com.github.mikephil.charting.g.i.a(r2)
            r10 = r2
            goto L_0x013b
        L_0x02d5:
            r0 = r25
            java.lang.Object r2 = r0.get(r3)
            com.github.mikephil.charting.g.b r2 = (com.github.mikephil.charting.g.b) r2
            float r2 = r2.a
            float r2 = -r2
            goto L_0x0179
        L_0x02e2:
            r3 = 0
            r16 = r3
            goto L_0x0188
        L_0x02e7:
            r2 = r13
            goto L_0x01b2
        L_0x02ea:
            r2 = r14
            goto L_0x01ec
        L_0x02ed:
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r2) goto L_0x02f7
            float r2 = -r15
        L_0x02f4:
            float r2 = r2 + r3
            goto L_0x01ed
        L_0x02f7:
            r2 = r15
            goto L_0x02f4
        L_0x02f9:
            r6 = 0
            r4 = 0
            r2 = 0
            int[] r3 = com.github.mikephil.charting.f.i.AnonymousClass1.b
            int r7 = r7.ordinal()
            r3 = r3[r7]
            switch(r3) {
                case 1: goto L_0x0381;
                case 2: goto L_0x0394;
                case 3: goto L_0x03b5;
                default: goto L_0x0307;
            }
        L_0x0307:
            r3 = 0
            r9 = r3
            r10 = r2
            r12 = r4
            r14 = r6
        L_0x030c:
            r0 = r22
            int r2 = r0.length
            if (r9 >= r2) goto L_0x000a
            r6 = r22[r9]
            com.github.mikephil.charting.components.Legend$LegendForm r2 = r6.b
            com.github.mikephil.charting.components.Legend$LegendForm r3 = com.github.mikephil.charting.components.Legend.LegendForm.NONE
            if (r2 == r3) goto L_0x03d5
            r2 = 1
            r16 = r2
        L_0x031c:
            float r2 = r6.c
            boolean r2 = java.lang.Float.isNaN(r2)
            if (r2 == 0) goto L_0x03da
            r17 = r11
        L_0x0326:
            if (r16 == 0) goto L_0x040a
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r2) goto L_0x03e4
            float r4 = r8 + r14
        L_0x0330:
            float r5 = r10 + r21
            r0 = r29
            com.github.mikephil.charting.components.Legend r7 = r0.c
            r2 = r29
            r3 = r30
            r2.a(r3, r4, r5, r6, r7)
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r2) goto L_0x0345
            float r4 = r4 + r17
        L_0x0345:
            java.lang.String r2 = r6.a
            if (r2 == 0) goto L_0x0402
            if (r16 == 0) goto L_0x03ed
            if (r12 != 0) goto L_0x03ed
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.LEFT_TO_RIGHT
            r0 = r24
            if (r0 != r2) goto L_0x03ea
            r2 = r13
        L_0x0354:
            float r4 = r4 + r2
        L_0x0355:
            com.github.mikephil.charting.components.Legend$LegendDirection r2 = com.github.mikephil.charting.components.Legend.LegendDirection.RIGHT_TO_LEFT
            r0 = r24
            if (r0 != r2) goto L_0x0367
            r0 = r29
            android.graphics.Paint r2 = r0.a
            java.lang.String r3 = r6.a
            int r2 = com.github.mikephil.charting.g.i.a(r2, r3)
            float r2 = (float) r2
            float r4 = r4 - r2
        L_0x0367:
            if (r12 != 0) goto L_0x03f2
            float r2 = r10 + r19
            java.lang.String r3 = r6.a
            r0 = r29
            r1 = r30
            r0.a(r1, r4, r2, r3)
        L_0x0374:
            float r2 = r19 + r20
            float r3 = r10 + r2
            r5 = 0
            r4 = r12
        L_0x037a:
            int r2 = r9 + 1
            r9 = r2
            r10 = r3
            r12 = r4
            r14 = r5
            goto L_0x030c
        L_0x0381:
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r2 = com.github.mikephil.charting.components.Legend.LegendHorizontalAlignment.CENTER
            r0 = r23
            if (r0 != r2) goto L_0x038b
            r2 = 0
        L_0x0388:
            float r2 = r2 + r5
            goto L_0x0307
        L_0x038b:
            r0 = r29
            com.github.mikephil.charting.g.j r2 = r0.o
            float r2 = r2.e()
            goto L_0x0388
        L_0x0394:
            com.github.mikephil.charting.components.Legend$LegendHorizontalAlignment r2 = com.github.mikephil.charting.components.Legend.LegendHorizontalAlignment.CENTER
            r0 = r23
            if (r0 != r2) goto L_0x03ac
            r0 = r29
            com.github.mikephil.charting.g.j r2 = r0.o
            float r2 = r2.m()
        L_0x03a2:
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.b
            float r3 = r3 + r5
            float r2 = r2 - r3
            goto L_0x0307
        L_0x03ac:
            r0 = r29
            com.github.mikephil.charting.g.j r2 = r0.o
            float r2 = r2.h()
            goto L_0x03a2
        L_0x03b5:
            r0 = r29
            com.github.mikephil.charting.g.j r2 = r0.o
            float r2 = r2.m()
            r3 = 1073741824(0x40000000, float:2.0)
            float r2 = r2 / r3
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.b
            r5 = 1073741824(0x40000000, float:2.0)
            float r3 = r3 / r5
            float r2 = r2 - r3
            r0 = r29
            com.github.mikephil.charting.components.Legend r3 = r0.c
            float r3 = r3.t()
            float r2 = r2 + r3
            goto L_0x0307
        L_0x03d5:
            r2 = 0
            r16 = r2
            goto L_0x031c
        L_0x03da:
            float r2 = r6.c
            float r2 = com.github.mikephil.charting.g.i.a(r2)
            r17 = r2
            goto L_0x0326
        L_0x03e4:
            float r2 = r17 - r14
            float r4 = r8 - r2
            goto L_0x0330
        L_0x03ea:
            float r2 = -r13
            goto L_0x0354
        L_0x03ed:
            if (r12 == 0) goto L_0x0355
            r4 = r8
            goto L_0x0355
        L_0x03f2:
            float r2 = r19 + r20
            float r10 = r10 + r2
            float r2 = r10 + r19
            java.lang.String r3 = r6.a
            r0 = r29
            r1 = r30
            r0.a(r1, r4, r2, r3)
            goto L_0x0374
        L_0x0402:
            float r2 = r17 + r15
            float r5 = r14 + r2
            r4 = 1
            r3 = r10
            goto L_0x037a
        L_0x040a:
            r4 = r8
            goto L_0x0345
        L_0x040d:
            r3 = r4
            goto L_0x01a7
        L_0x0410:
            r4 = r2
            goto L_0x0192
        L_0x0413:
            r3 = r2
            goto L_0x01a7
        L_0x0416:
            r12 = r3
            r2 = r4
            goto L_0x0181
        L_0x041a:
            r17 = r4
            r4 = r5
            goto L_0x0159
        L_0x041f:
            r8 = r2
            goto L_0x00e5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.mikephil.charting.f.i.a(android.graphics.Canvas):void");
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f2, float f3, e eVar, Legend legend) {
        if (eVar.f != 1122868 && eVar.f != 1122867 && eVar.f != 0) {
            int save = canvas.save();
            LegendForm legendForm = eVar.b;
            if (legendForm == LegendForm.DEFAULT) {
                legendForm = legend.i();
            }
            this.b.setColor(eVar.f);
            float a2 = com.github.mikephil.charting.g.i.a(Float.isNaN(eVar.c) ? legend.j() : eVar.c);
            float f4 = a2 / 2.0f;
            switch (legendForm) {
                case DEFAULT:
                case CIRCLE:
                    this.b.setStyle(Style.FILL);
                    canvas.drawCircle(f2 + f4, f3, f4, this.b);
                    break;
                case SQUARE:
                    this.b.setStyle(Style.FILL);
                    canvas.drawRect(f2, f3 - f4, f2 + a2, f4 + f3, this.b);
                    break;
                case LINE:
                    float a3 = com.github.mikephil.charting.g.i.a(Float.isNaN(eVar.d) ? legend.k() : eVar.d);
                    DashPathEffect dashPathEffect = eVar.e == null ? legend.l() : eVar.e;
                    this.b.setStyle(Style.STROKE);
                    this.b.setStrokeWidth(a3);
                    this.b.setPathEffect(dashPathEffect);
                    this.f.reset();
                    this.f.moveTo(f2, f3);
                    this.f.lineTo(a2 + f2, f3);
                    canvas.drawPath(this.f, this.b);
                    break;
            }
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f2, float f3, String str) {
        canvas.drawText(str, f2, f3, this.a);
    }
}
