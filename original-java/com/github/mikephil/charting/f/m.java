package com.github.mikephil.charting.f;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.support.v4.view.ViewCompat;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.c.f;
import com.github.mikephil.charting.charts.PieChart;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.PieDataSet.ValuePosition;
import com.github.mikephil.charting.data.PieEntry;
import com.github.mikephil.charting.g.e;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: PieChartRenderer */
public class m extends g {
    protected PieChart a;
    protected Paint b;
    protected Paint c;
    protected Paint d;
    protected WeakReference<Bitmap> e;
    protected Canvas f;
    protected Path l = new Path();
    protected RectF m = new RectF();
    private TextPaint n;
    private Paint p;
    private StaticLayout q;
    private CharSequence r;
    private RectF s = new RectF();
    private RectF[] t = {new RectF(), new RectF(), new RectF()};
    private Path u = new Path();
    private RectF v = new RectF();
    private Path w = new Path();

    public m(PieChart pieChart, a aVar, j jVar) {
        super(aVar, jVar);
        this.a = pieChart;
        this.b = new Paint(1);
        this.b.setColor(-1);
        this.b.setStyle(Style.FILL);
        this.c = new Paint(1);
        this.c.setColor(-1);
        this.c.setStyle(Style.FILL);
        this.c.setAlpha(105);
        this.n = new TextPaint(1);
        this.n.setColor(ViewCompat.MEASURED_STATE_MASK);
        this.n.setTextSize(i.a(12.0f));
        this.k.setTextSize(i.a(13.0f));
        this.k.setColor(-1);
        this.k.setTextAlign(Align.CENTER);
        this.p = new Paint(1);
        this.p.setColor(-1);
        this.p.setTextAlign(Align.CENTER);
        this.p.setTextSize(i.a(13.0f));
        this.d = new Paint(1);
        this.d.setStyle(Style.STROKE);
    }

    public Paint b() {
        return this.b;
    }

    public Paint c() {
        return this.c;
    }

    public TextPaint d() {
        return this.n;
    }

    public Paint e() {
        return this.p;
    }

    public void a() {
    }

    public void a(Canvas canvas) {
        int n2 = (int) this.o.n();
        int m2 = (int) this.o.m();
        if (!(this.e != null && ((Bitmap) this.e.get()).getWidth() == n2 && ((Bitmap) this.e.get()).getHeight() == m2)) {
            if (n2 > 0 && m2 > 0) {
                this.e = new WeakReference<>(Bitmap.createBitmap(n2, m2, Config.ARGB_4444));
                this.f = new Canvas((Bitmap) this.e.get());
            } else {
                return;
            }
        }
        ((Bitmap) this.e.get()).eraseColor(0);
        for (com.github.mikephil.charting.e.b.i iVar : ((com.github.mikephil.charting.data.m) this.a.getData()).i()) {
            if (iVar.p() && iVar.s() > 0) {
                a(canvas, iVar);
            }
        }
    }

    /* access modifiers changed from: protected */
    public float a(e eVar, float f2, float f3, float f4, float f5, float f6, float f7) {
        float f8 = (f7 / 2.0f) + f6;
        float cos = eVar.a + (((float) Math.cos((double) ((f6 + f7) * 0.017453292f))) * f2);
        float sin = eVar.b + (((float) Math.sin((double) ((f6 + f7) * 0.017453292f))) * f2);
        float cos2 = eVar.a + (((float) Math.cos((double) (0.017453292f * f8))) * f2);
        float sin2 = (((float) Math.sin((double) (f8 * 0.017453292f))) * f2) + eVar.b;
        return (float) (((double) (f2 - ((float) ((Math.sqrt(Math.pow((double) (cos - f4), 2.0d) + Math.pow((double) (sin - f5), 2.0d)) / 2.0d) * Math.tan(((180.0d - ((double) f3)) / 2.0d) * 0.017453292519943295d))))) - Math.sqrt(Math.pow((double) (sin2 - ((sin + f5) / 2.0f)), 2.0d) + Math.pow((double) (cos2 - ((cos + f4) / 2.0f)), 2.0d)));
    }

    /* access modifiers changed from: protected */
    public float a(com.github.mikephil.charting.e.b.i iVar) {
        if (!iVar.y()) {
            return iVar.a();
        }
        if (iVar.a() / this.o.o() > (iVar.u() / ((com.github.mikephil.charting.data.m) this.a.getData()).l()) * 2.0f) {
            return 0.0f;
        }
        return iVar.a();
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, com.github.mikephil.charting.e.b.i iVar) {
        float f2;
        float a2;
        float f3;
        float f4;
        float f5;
        int i;
        float f6 = 0.0f;
        float rotationAngle = this.a.getRotationAngle();
        float b2 = this.g.b();
        float a3 = this.g.a();
        RectF circleBox = this.a.getCircleBox();
        int s2 = iVar.s();
        float[] drawAngles = this.a.getDrawAngles();
        e centerCircleBox = this.a.getCenterCircleBox();
        float radius = this.a.getRadius();
        boolean z = this.a.d() && !this.a.c();
        if (z) {
            f2 = (this.a.getHoleRadius() / 100.0f) * radius;
        } else {
            f2 = 0.0f;
        }
        int i2 = 0;
        int i3 = 0;
        while (i3 < s2) {
            if (Math.abs(((PieEntry) iVar.d(i3)).b()) > i.b) {
                i = i2 + 1;
            } else {
                i = i2;
            }
            i3++;
            i2 = i;
        }
        if (i2 <= 1) {
            a2 = 0.0f;
        } else {
            a2 = a(iVar);
        }
        int i4 = 0;
        while (true) {
            int i5 = i4;
            float f7 = f6;
            if (i5 < s2) {
                float f8 = drawAngles[i5];
                if (Math.abs(iVar.d(i5).b()) > i.b && !this.a.a(i5)) {
                    boolean z2 = a2 > 0.0f && f8 <= 180.0f;
                    this.h.setColor(iVar.a(i5));
                    if (i2 == 1) {
                        f3 = 0.0f;
                    } else {
                        f3 = a2 / (0.017453292f * radius);
                    }
                    float f9 = rotationAngle + (((f3 / 2.0f) + f7) * a3);
                    float f10 = (f8 - f3) * a3;
                    if (f10 < 0.0f) {
                        f10 = 0.0f;
                    }
                    this.u.reset();
                    float cos = (((float) Math.cos((double) (0.017453292f * f9))) * radius) + centerCircleBox.a;
                    float sin = (((float) Math.sin((double) (0.017453292f * f9))) * radius) + centerCircleBox.b;
                    if (f10 < 360.0f || f10 % 360.0f > i.b) {
                        this.u.moveTo(cos, sin);
                        this.u.arcTo(circleBox, f9, f10);
                    } else {
                        this.u.addCircle(centerCircleBox.a, centerCircleBox.b, radius, Direction.CW);
                    }
                    this.v.set(centerCircleBox.a - f2, centerCircleBox.b - f2, centerCircleBox.a + f2, centerCircleBox.b + f2);
                    if (z && (f2 > 0.0f || z2)) {
                        if (z2) {
                            float a4 = a(centerCircleBox, radius, f8 * a3, cos, sin, f9, f10);
                            if (a4 < 0.0f) {
                                a4 = -a4;
                            }
                            f4 = Math.max(f2, a4);
                        } else {
                            f4 = f2;
                        }
                        if (i2 == 1 || f4 == 0.0f) {
                            f5 = 0.0f;
                        } else {
                            f5 = a2 / (0.017453292f * f4);
                        }
                        float f11 = (((f5 / 2.0f) + f7) * a3) + rotationAngle;
                        float f12 = (f8 - f5) * a3;
                        if (f12 < 0.0f) {
                            f12 = 0.0f;
                        }
                        float f13 = f11 + f12;
                        if (f10 < 360.0f || f10 % 360.0f > i.b) {
                            this.u.lineTo(centerCircleBox.a + (((float) Math.cos((double) (0.017453292f * f13))) * f4), (f4 * ((float) Math.sin((double) (0.017453292f * f13)))) + centerCircleBox.b);
                            this.u.arcTo(this.v, f13, -f12);
                        } else {
                            this.u.addCircle(centerCircleBox.a, centerCircleBox.b, f4, Direction.CCW);
                        }
                    } else if (f10 % 360.0f > i.b) {
                        if (z2) {
                            float f14 = f9 + (f10 / 2.0f);
                            float a5 = a(centerCircleBox, radius, f8 * a3, cos, sin, f9, f10);
                            this.u.lineTo(centerCircleBox.a + (((float) Math.cos((double) (0.017453292f * f14))) * a5), (a5 * ((float) Math.sin((double) (0.017453292f * f14)))) + centerCircleBox.b);
                        } else {
                            this.u.lineTo(centerCircleBox.a, centerCircleBox.b);
                        }
                    }
                    this.u.close();
                    this.f.drawPath(this.u, this.h);
                }
                f6 = f7 + (f8 * b2);
                i4 = i5 + 1;
            } else {
                e.a(centerCircleBox);
                return;
            }
        }
    }

    public void b(Canvas canvas) {
        float f2;
        float b2;
        boolean z;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        e centerCircleBox = this.a.getCenterCircleBox();
        float radius = this.a.getRadius();
        float rotationAngle = this.a.getRotationAngle();
        float[] drawAngles = this.a.getDrawAngles();
        float[] absoluteAngles = this.a.getAbsoluteAngles();
        float b3 = this.g.b();
        float a2 = this.g.a();
        float holeRadius = this.a.getHoleRadius() / 100.0f;
        float f8 = (radius / 10.0f) * 3.6f;
        if (this.a.d()) {
            f8 = (radius - (radius * holeRadius)) / 2.0f;
        }
        float f9 = radius - f8;
        com.github.mikephil.charting.data.m mVar = (com.github.mikephil.charting.data.m) this.a.getData();
        List i = mVar.i();
        float l2 = mVar.l();
        boolean f10 = this.a.f();
        int i2 = 0;
        canvas.save();
        float a3 = i.a(5.0f);
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < i.size()) {
                com.github.mikephil.charting.e.b.i iVar = (com.github.mikephil.charting.e.b.i) i.get(i4);
                boolean o = iVar.o();
                if (o || f10) {
                    ValuePosition A = iVar.A();
                    ValuePosition B = iVar.B();
                    b((com.github.mikephil.charting.e.b.e) iVar);
                    float b4 = ((float) i.b(this.k, "Q")) + i.a(4.0f);
                    f g = iVar.g();
                    int s2 = iVar.s();
                    this.d.setColor(iVar.C());
                    this.d.setStrokeWidth(i.a(iVar.D()));
                    float a4 = a(iVar);
                    int i5 = i2;
                    for (int i6 = 0; i6 < s2; i6++) {
                        PieEntry pieEntry = (PieEntry) iVar.d(i6);
                        if (i5 == 0) {
                            f2 = 0.0f;
                        } else {
                            f2 = absoluteAngles[i5 - 1] * b3;
                        }
                        float f11 = rotationAngle + ((f2 + ((drawAngles[i5] - ((a4 / (0.017453292f * f9)) / 2.0f)) / 2.0f)) * a2);
                        if (this.a.g()) {
                            b2 = (pieEntry.b() / l2) * 100.0f;
                        } else {
                            b2 = pieEntry.b();
                        }
                        float cos = (float) Math.cos((double) (0.017453292f * f11));
                        float sin = (float) Math.sin((double) (0.017453292f * f11));
                        boolean z2 = f10 && A == ValuePosition.OUTSIDE_SLICE;
                        boolean z3 = o && B == ValuePosition.OUTSIDE_SLICE;
                        boolean z4 = f10 && A == ValuePosition.INSIDE_SLICE;
                        if (!o || B != ValuePosition.INSIDE_SLICE) {
                            z = false;
                        } else {
                            z = true;
                        }
                        if (z2 || z3) {
                            float F = iVar.F();
                            float G = iVar.G();
                            float E = iVar.E() / 100.0f;
                            if (this.a.d()) {
                                f3 = (E * (radius - (radius * holeRadius))) + (radius * holeRadius);
                            } else {
                                f3 = E * radius;
                            }
                            float f12 = iVar.H() ? G * f9 * ((float) Math.abs(Math.sin((double) (0.017453292f * f11)))) : G * f9;
                            float f13 = (f3 * cos) + centerCircleBox.a;
                            float f14 = centerCircleBox.b + (f3 * sin);
                            float f15 = centerCircleBox.a + ((1.0f + F) * f9 * cos);
                            float f16 = centerCircleBox.b + ((1.0f + F) * f9 * sin);
                            if (((double) f11) % 360.0d < 90.0d || ((double) f11) % 360.0d > 270.0d) {
                                float f17 = f12 + f15;
                                this.k.setTextAlign(Align.LEFT);
                                if (z2) {
                                    this.p.setTextAlign(Align.LEFT);
                                }
                                f4 = f16;
                                f5 = f17 + a3;
                                f6 = f16;
                                f7 = f17;
                            } else {
                                float f18 = f15 - f12;
                                this.k.setTextAlign(Align.RIGHT);
                                if (z2) {
                                    this.p.setTextAlign(Align.RIGHT);
                                }
                                f4 = f16;
                                f5 = f18 - a3;
                                f6 = f16;
                                f7 = f18;
                            }
                            if (iVar.C() != 1122867) {
                                canvas.drawLine(f13, f14, f15, f16, this.d);
                                canvas.drawLine(f15, f16, f7, f6, this.d);
                            }
                            if (z2 && z3) {
                                a(canvas, g, b2, pieEntry, 0, f5, f4, iVar.c(i6));
                                if (i6 < mVar.j() && pieEntry.a() != null) {
                                    a(canvas, pieEntry.a(), f5, f4 + b4);
                                }
                            } else if (z2) {
                                if (i6 < mVar.j() && pieEntry.a() != null) {
                                    a(canvas, pieEntry.a(), f5, (b4 / 2.0f) + f4);
                                }
                            } else if (z3) {
                                a(canvas, g, b2, pieEntry, 0, f5, f4 + (b4 / 2.0f), iVar.c(i6));
                            }
                        }
                        if (z4 || z) {
                            float f19 = (f9 * cos) + centerCircleBox.a;
                            float f20 = (f9 * sin) + centerCircleBox.b;
                            this.k.setTextAlign(Align.CENTER);
                            if (z4 && z) {
                                a(canvas, g, b2, pieEntry, 0, f19, f20, iVar.c(i6));
                                if (i6 < mVar.j() && pieEntry.a() != null) {
                                    a(canvas, pieEntry.a(), f19, f20 + b4);
                                }
                            } else if (z4) {
                                if (i6 < mVar.j() && pieEntry.a() != null) {
                                    a(canvas, pieEntry.a(), f19, (b4 / 2.0f) + f20);
                                }
                            } else if (z) {
                                a(canvas, g, b2, pieEntry, 0, f19, f20 + (b4 / 2.0f), iVar.c(i6));
                            }
                        }
                        i5++;
                    }
                    i2 = i5;
                }
                i3 = i4 + 1;
            } else {
                e.a(centerCircleBox);
                canvas.restore();
                return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, String str, float f2, float f3) {
        canvas.drawText(str, f2, f3, this.p);
    }

    public void c(Canvas canvas) {
        d(canvas);
        canvas.drawBitmap((Bitmap) this.e.get(), 0.0f, 0.0f, null);
        e(canvas);
    }

    /* access modifiers changed from: protected */
    public void d(Canvas canvas) {
        if (this.a.d() && this.f != null) {
            float radius = this.a.getRadius();
            float holeRadius = (this.a.getHoleRadius() / 100.0f) * radius;
            e centerCircleBox = this.a.getCenterCircleBox();
            if (Color.alpha(this.b.getColor()) > 0) {
                this.f.drawCircle(centerCircleBox.a, centerCircleBox.b, holeRadius, this.b);
            }
            if (Color.alpha(this.c.getColor()) > 0 && this.a.getTransparentCircleRadius() > this.a.getHoleRadius()) {
                int alpha = this.c.getAlpha();
                float transparentCircleRadius = radius * (this.a.getTransparentCircleRadius() / 100.0f);
                this.c.setAlpha((int) (((float) alpha) * this.g.b() * this.g.a()));
                this.w.reset();
                this.w.addCircle(centerCircleBox.a, centerCircleBox.b, transparentCircleRadius, Direction.CW);
                this.w.addCircle(centerCircleBox.a, centerCircleBox.b, holeRadius, Direction.CCW);
                this.f.drawPath(this.w, this.c);
                this.c.setAlpha(alpha);
            }
            e.a(centerCircleBox);
        }
    }

    /* access modifiers changed from: protected */
    public void e(Canvas canvas) {
        float radius;
        CharSequence centerText = this.a.getCenterText();
        if (this.a.e() && centerText != null) {
            e centerCircleBox = this.a.getCenterCircleBox();
            e centerTextOffset = this.a.getCenterTextOffset();
            float f2 = centerTextOffset.a + centerCircleBox.a;
            float f3 = centerTextOffset.b + centerCircleBox.b;
            if (!this.a.d() || this.a.c()) {
                radius = this.a.getRadius();
            } else {
                radius = this.a.getRadius() * (this.a.getHoleRadius() / 100.0f);
            }
            RectF rectF = this.t[0];
            rectF.left = f2 - radius;
            rectF.top = f3 - radius;
            rectF.right = f2 + radius;
            rectF.bottom = radius + f3;
            RectF rectF2 = this.t[1];
            rectF2.set(rectF);
            float centerTextRadiusPercent = this.a.getCenterTextRadiusPercent() / 100.0f;
            if (((double) centerTextRadiusPercent) > 0.0d) {
                rectF2.inset((rectF2.width() - (rectF2.width() * centerTextRadiusPercent)) / 2.0f, (rectF2.height() - (centerTextRadiusPercent * rectF2.height())) / 2.0f);
            }
            if (!centerText.equals(this.r) || !rectF2.equals(this.s)) {
                this.s.set(rectF2);
                this.r = centerText;
                this.q = new StaticLayout(centerText, 0, centerText.length(), this.n, (int) Math.max(Math.ceil((double) this.s.width()), 1.0d), Alignment.ALIGN_CENTER, 1.0f, 0.0f, false);
            }
            float height = (float) this.q.getHeight();
            canvas.save();
            if (VERSION.SDK_INT >= 18) {
                Path path = this.l;
                path.reset();
                path.addOval(rectF, Direction.CW);
                canvas.clipPath(path);
            }
            canvas.translate(rectF2.left, ((rectF2.height() - height) / 2.0f) + rectF2.top);
            this.q.draw(canvas);
            canvas.restore();
            e.a(centerCircleBox);
            e.a(centerTextOffset);
        }
    }

    public void a(Canvas canvas, d[] dVarArr) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        int i;
        float b2 = this.g.b();
        float a2 = this.g.a();
        float rotationAngle = this.a.getRotationAngle();
        float[] drawAngles = this.a.getDrawAngles();
        float[] absoluteAngles = this.a.getAbsoluteAngles();
        e centerCircleBox = this.a.getCenterCircleBox();
        float radius = this.a.getRadius();
        boolean z = this.a.d() && !this.a.c();
        if (z) {
            f2 = (this.a.getHoleRadius() / 100.0f) * radius;
        } else {
            f2 = 0.0f;
        }
        RectF rectF = this.m;
        rectF.set(0.0f, 0.0f, 0.0f, 0.0f);
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < dVarArr.length) {
                int a3 = (int) dVarArr[i3].a();
                if (a3 < drawAngles.length) {
                    com.github.mikephil.charting.e.b.i b3 = ((com.github.mikephil.charting.data.m) this.a.getData()).a(dVarArr[i3].f());
                    if (b3 != null && b3.f()) {
                        int s2 = b3.s();
                        int i4 = 0;
                        int i5 = 0;
                        while (i5 < s2) {
                            if (Math.abs(((PieEntry) b3.d(i5)).b()) > i.b) {
                                i = i4 + 1;
                            } else {
                                i = i4;
                            }
                            i5++;
                            i4 = i;
                        }
                        if (a3 == 0) {
                            f3 = 0.0f;
                        } else {
                            f3 = absoluteAngles[a3 - 1] * b2;
                        }
                        float a4 = i4 <= 1 ? 0.0f : b3.a();
                        float f7 = drawAngles[a3];
                        float z2 = b3.z();
                        float f8 = radius + z2;
                        rectF.set(this.a.getCircleBox());
                        rectF.inset(-z2, -z2);
                        boolean z3 = a4 > 0.0f && f7 <= 180.0f;
                        this.h.setColor(b3.a(a3));
                        float f9 = i4 == 1 ? 0.0f : a4 / (0.017453292f * radius);
                        if (i4 == 1) {
                            f4 = 0.0f;
                        } else {
                            f4 = a4 / (0.017453292f * f8);
                        }
                        float f10 = rotationAngle + (((f9 / 2.0f) + f3) * a2);
                        float f11 = (f7 - f9) * a2;
                        if (f11 < 0.0f) {
                            f11 = 0.0f;
                        }
                        float f12 = (((f4 / 2.0f) + f3) * a2) + rotationAngle;
                        float f13 = (f7 - f4) * a2;
                        if (f13 < 0.0f) {
                            f13 = 0.0f;
                        }
                        this.u.reset();
                        if (f11 < 360.0f || f11 % 360.0f > i.b) {
                            this.u.moveTo(centerCircleBox.a + (((float) Math.cos((double) (0.017453292f * f12))) * f8), (f8 * ((float) Math.sin((double) (0.017453292f * f12)))) + centerCircleBox.b);
                            this.u.arcTo(rectF, f12, f13);
                        } else {
                            this.u.addCircle(centerCircleBox.a, centerCircleBox.b, f8, Direction.CW);
                        }
                        float f14 = 0.0f;
                        if (z3) {
                            f14 = a(centerCircleBox, radius, f7 * a2, (((float) Math.cos((double) (0.017453292f * f10))) * radius) + centerCircleBox.a, (((float) Math.sin((double) (0.017453292f * f10))) * radius) + centerCircleBox.b, f10, f11);
                        }
                        this.v.set(centerCircleBox.a - f2, centerCircleBox.b - f2, centerCircleBox.a + f2, centerCircleBox.b + f2);
                        if (z && (f2 > 0.0f || z3)) {
                            if (z3) {
                                if (f14 < 0.0f) {
                                    f14 = -f14;
                                }
                                f5 = Math.max(f2, f14);
                            } else {
                                f5 = f2;
                            }
                            if (i4 == 1 || f5 == 0.0f) {
                                f6 = 0.0f;
                            } else {
                                f6 = a4 / (0.017453292f * f5);
                            }
                            float f15 = (((f6 / 2.0f) + f3) * a2) + rotationAngle;
                            float f16 = (f7 - f6) * a2;
                            if (f16 < 0.0f) {
                                f16 = 0.0f;
                            }
                            float f17 = f15 + f16;
                            if (f11 < 360.0f || f11 % 360.0f > i.b) {
                                this.u.lineTo(centerCircleBox.a + (((float) Math.cos((double) (0.017453292f * f17))) * f5), (f5 * ((float) Math.sin((double) (0.017453292f * f17)))) + centerCircleBox.b);
                                this.u.arcTo(this.v, f17, -f16);
                            } else {
                                this.u.addCircle(centerCircleBox.a, centerCircleBox.b, f5, Direction.CCW);
                            }
                        } else if (f11 % 360.0f > i.b) {
                            if (z3) {
                                float f18 = (f11 / 2.0f) + f10;
                                this.u.lineTo(centerCircleBox.a + (((float) Math.cos((double) (0.017453292f * f18))) * f14), (f14 * ((float) Math.sin((double) (f18 * 0.017453292f)))) + centerCircleBox.b);
                            } else {
                                this.u.lineTo(centerCircleBox.a, centerCircleBox.b);
                            }
                        }
                        this.u.close();
                        this.f.drawPath(this.u, this.h);
                    }
                }
                i2 = i3 + 1;
            } else {
                e.a(centerCircleBox);
                return;
            }
        }
    }

    public void f() {
        if (this.f != null) {
            this.f.setBitmap(null);
            this.f = null;
        }
        if (this.e != null) {
            ((Bitmap) this.e.get()).recycle();
            this.e.clear();
            this.e = null;
        }
    }
}
