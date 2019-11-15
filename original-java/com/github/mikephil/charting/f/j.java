package com.github.mikephil.charting.f;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineDataSet.Mode;
import com.github.mikephil.charting.e.a.g;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.e.b.f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;

/* compiled from: LineChartRenderer */
public class j extends k {
    protected g a;
    protected Paint b;
    protected WeakReference<Bitmap> c;
    protected Canvas d;
    protected Config e = Config.ARGB_8888;
    protected Path l = new Path();
    protected Path m = new Path();
    protected Path n = new Path();
    private float[] p = new float[4];
    private HashMap<e, a> q = new HashMap<>();
    private float[] r = new float[2];

    /* compiled from: LineChartRenderer */
    private class a {
        private Path b;
        private Bitmap[] c;

        private a() {
            this.b = new Path();
        }

        /* access modifiers changed from: protected */
        public boolean a(f fVar) {
            int G = fVar.G();
            if (this.c == null) {
                this.c = new Bitmap[G];
                return true;
            } else if (this.c.length == G) {
                return false;
            } else {
                this.c = new Bitmap[G];
                return true;
            }
        }

        /* access modifiers changed from: protected */
        public void a(f fVar, boolean z, boolean z2) {
            int G = fVar.G();
            float A = fVar.A();
            float B = fVar.B();
            for (int i = 0; i < G; i++) {
                Bitmap createBitmap = Bitmap.createBitmap((int) (((double) A) * 2.1d), (int) (((double) A) * 2.1d), Config.ARGB_4444);
                Canvas canvas = new Canvas(createBitmap);
                this.c[i] = createBitmap;
                j.this.h.setColor(fVar.e(i));
                if (z2) {
                    this.b.reset();
                    this.b.addCircle(A, A, A, Direction.CW);
                    this.b.addCircle(A, A, B, Direction.CCW);
                    canvas.drawPath(this.b, j.this.h);
                } else {
                    canvas.drawCircle(A, A, A, j.this.h);
                    if (z) {
                        canvas.drawCircle(A, A, B, j.this.b);
                    }
                }
            }
        }

        /* access modifiers changed from: protected */
        public Bitmap a(int i) {
            return this.c[i % this.c.length];
        }
    }

    public j(g gVar, com.github.mikephil.charting.a.a aVar, com.github.mikephil.charting.g.j jVar) {
        super(aVar, jVar);
        this.a = gVar;
        this.b = new Paint(1);
        this.b.setStyle(Style.FILL);
        this.b.setColor(-1);
    }

    public void a() {
    }

    public void a(Canvas canvas) {
        int n2 = (int) this.o.n();
        int m2 = (int) this.o.m();
        if (!(this.c != null && ((Bitmap) this.c.get()).getWidth() == n2 && ((Bitmap) this.c.get()).getHeight() == m2)) {
            if (n2 > 0 && m2 > 0) {
                this.c = new WeakReference<>(Bitmap.createBitmap(n2, m2, this.e));
                this.d = new Canvas((Bitmap) this.c.get());
            } else {
                return;
            }
        }
        ((Bitmap) this.c.get()).eraseColor(0);
        for (f fVar : this.a.getLineData().i()) {
            if (fVar.p()) {
                a(canvas, fVar);
            }
        }
        canvas.drawBitmap((Bitmap) this.c.get(), 0.0f, 0.0f, this.h);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, f fVar) {
        if (fVar.s() >= 1) {
            this.h.setStrokeWidth(fVar.N());
            this.h.setPathEffect(fVar.D());
            switch (fVar.y()) {
                case CUBIC_BEZIER:
                    b(fVar);
                    break;
                case HORIZONTAL_BEZIER:
                    a(fVar);
                    break;
                default:
                    b(canvas, fVar);
                    break;
            }
            this.h.setPathEffect(null);
        }
    }

    /* access modifiers changed from: protected */
    public void a(f fVar) {
        float a2 = this.g.a();
        com.github.mikephil.charting.g.g a3 = this.a.a(fVar.q());
        this.f.a(this.a, fVar);
        this.l.reset();
        if (this.f.c >= 1) {
            Entry d2 = fVar.d(this.f.a);
            this.l.moveTo(d2.h(), d2.b() * a2);
            int i = this.f.a + 1;
            Entry entry = d2;
            while (i <= this.f.c + this.f.a) {
                Entry d3 = fVar.d(i);
                float h = ((d3.h() - entry.h()) / 2.0f) + entry.h();
                this.l.cubicTo(h, entry.b() * a2, h, d3.b() * a2, d3.h(), d3.b() * a2);
                i++;
                entry = d3;
            }
        }
        if (fVar.O()) {
            this.m.reset();
            this.m.addPath(this.l);
            a(this.d, fVar, this.m, a3, this.f);
        }
        this.h.setColor(fVar.c());
        this.h.setStyle(Style.STROKE);
        a3.a(this.l);
        this.d.drawPath(this.l, this.h);
        this.h.setPathEffect(null);
    }

    /* access modifiers changed from: protected */
    public void b(f fVar) {
        int i;
        Math.max(0.0f, Math.min(1.0f, this.g.b()));
        float a2 = this.g.a();
        com.github.mikephil.charting.g.g a3 = this.a.a(fVar.q());
        this.f.a(this.a, fVar);
        float z = fVar.z();
        this.l.reset();
        if (this.f.c >= 1) {
            int i2 = this.f.a + 1;
            int i3 = this.f.a + this.f.c;
            Entry d2 = fVar.d(Math.max(i2 - 2, 0));
            Entry d3 = fVar.d(Math.max(i2 - 1, 0));
            if (d3 != null) {
                this.l.moveTo(d3.h(), d3.b() * a2);
                int i4 = this.f.a + 1;
                int i5 = -1;
                Entry entry = d3;
                Entry entry2 = d3;
                Entry entry3 = d2;
                Entry entry4 = entry2;
                while (i4 <= this.f.c + this.f.a) {
                    Entry d4 = i5 == i4 ? entry : fVar.d(i4);
                    if (i4 + 1 < fVar.s()) {
                        i = i4 + 1;
                    } else {
                        i = i4;
                    }
                    Entry d5 = fVar.d(i);
                    this.l.cubicTo(((d4.h() - entry3.h()) * z) + entry4.h(), (((d4.b() - entry3.b()) * z) + entry4.b()) * a2, d4.h() - ((d5.h() - entry4.h()) * z), (d4.b() - ((d5.b() - entry4.b()) * z)) * a2, d4.h(), d4.b() * a2);
                    i4++;
                    entry = d5;
                    entry3 = entry4;
                    entry4 = d4;
                    i5 = i;
                }
            } else {
                return;
            }
        }
        if (fVar.O()) {
            this.m.reset();
            this.m.addPath(this.l);
            a(this.d, fVar, this.m, a3, this.f);
        }
        this.h.setColor(fVar.c());
        this.h.setStyle(Style.STROKE);
        a3.a(this.l);
        this.d.drawPath(this.l, this.h);
        this.h.setPathEffect(null);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, f fVar, Path path, com.github.mikephil.charting.g.g gVar, a aVar) {
        float a2 = fVar.J().a(fVar, this.a);
        path.lineTo(fVar.d(aVar.a + aVar.c).h(), a2);
        path.lineTo(fVar.d(aVar.a).h(), a2);
        path.close();
        gVar.a(path);
        Drawable L = fVar.L();
        if (L != null) {
            a(canvas, path, L);
        } else {
            a(canvas, path, fVar.K(), fVar.M());
        }
    }

    /* access modifiers changed from: protected */
    public void b(Canvas canvas, f fVar) {
        Canvas canvas2;
        int s = fVar.s();
        boolean F = fVar.F();
        int i = F ? 4 : 2;
        com.github.mikephil.charting.g.g a2 = this.a.a(fVar.q());
        float a3 = this.g.a();
        this.h.setStyle(Style.STROKE);
        if (fVar.C()) {
            canvas2 = this.d;
        } else {
            canvas2 = canvas;
        }
        this.f.a(this.a, fVar);
        if (fVar.O() && s > 0) {
            a(canvas, fVar, a2, this.f);
        }
        if (fVar.b().size() > 1) {
            if (this.p.length <= i * 2) {
                this.p = new float[(i * 4)];
            }
            for (int i2 = this.f.a; i2 <= this.f.c + this.f.a; i2++) {
                Entry d2 = fVar.d(i2);
                if (d2 != null) {
                    this.p[0] = d2.h();
                    this.p[1] = d2.b() * a3;
                    if (i2 < this.f.b) {
                        Entry d3 = fVar.d(i2 + 1);
                        if (d3 == null) {
                            break;
                        } else if (F) {
                            this.p[2] = d3.h();
                            this.p[3] = this.p[1];
                            this.p[4] = this.p[2];
                            this.p[5] = this.p[3];
                            this.p[6] = d3.h();
                            this.p[7] = d3.b() * a3;
                        } else {
                            this.p[2] = d3.h();
                            this.p[3] = d3.b() * a3;
                        }
                    } else {
                        this.p[2] = this.p[0];
                        this.p[3] = this.p[1];
                    }
                    a2.a(this.p);
                    if (!this.o.h(this.p[0])) {
                        break;
                    } else if (this.o.g(this.p[2]) && (this.o.i(this.p[1]) || this.o.j(this.p[3]))) {
                        this.h.setColor(fVar.a(i2));
                        canvas2.drawLines(this.p, 0, i * 2, this.h);
                    }
                }
            }
        } else {
            if (this.p.length < Math.max(s * i, i) * 2) {
                this.p = new float[(Math.max(s * i, i) * 4)];
            }
            if (fVar.d(this.f.a) != null) {
                int i3 = 0;
                int i4 = this.f.a;
                while (i4 <= this.f.c + this.f.a) {
                    Entry d4 = fVar.d(i4 == 0 ? 0 : i4 - 1);
                    Entry d5 = fVar.d(i4);
                    if (!(d4 == null || d5 == null)) {
                        int i5 = i3 + 1;
                        this.p[i3] = d4.h();
                        int i6 = i5 + 1;
                        this.p[i5] = d4.b() * a3;
                        if (F) {
                            int i7 = i6 + 1;
                            this.p[i6] = d5.h();
                            int i8 = i7 + 1;
                            this.p[i7] = d4.b() * a3;
                            int i9 = i8 + 1;
                            this.p[i8] = d5.h();
                            i6 = i9 + 1;
                            this.p[i9] = d4.b() * a3;
                        }
                        int i10 = i6 + 1;
                        this.p[i6] = d5.h();
                        i3 = i10 + 1;
                        this.p[i10] = d5.b() * a3;
                    }
                    i4++;
                }
                if (i3 > 0) {
                    a2.a(this.p);
                    int max = Math.max((this.f.c + 1) * i, i) * 2;
                    this.h.setColor(fVar.c());
                    canvas2.drawLines(this.p, 0, max, this.h);
                }
            }
        }
        this.h.setPathEffect(null);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, f fVar, com.github.mikephil.charting.g.g gVar, a aVar) {
        int i;
        int i2;
        Path path = this.n;
        int i3 = aVar.a;
        int i4 = aVar.a + aVar.c;
        int i5 = 0;
        do {
            i = i3 + (i5 * 128);
            i2 = i + 128;
            if (i2 > i4) {
                i2 = i4;
            }
            if (i <= i2) {
                a(fVar, i, i2, path);
                gVar.a(path);
                Drawable L = fVar.L();
                if (L != null) {
                    a(canvas, path, L);
                } else {
                    a(canvas, path, fVar.K(), fVar.M());
                }
            }
            i5++;
        } while (i <= i2);
    }

    private void a(f fVar, int i, int i2, Path path) {
        Entry entry = null;
        float a2 = fVar.J().a(fVar, this.a);
        float a3 = this.g.a();
        boolean z = fVar.y() == Mode.STEPPED;
        path.reset();
        Entry d2 = fVar.d(i);
        path.moveTo(d2.h(), a2);
        path.lineTo(d2.h(), d2.b() * a3);
        int i3 = i + 1;
        Entry entry2 = null;
        while (i3 <= i2) {
            entry2 = fVar.d(i3);
            if (z && entry != null) {
                path.lineTo(entry2.h(), entry.b() * a3);
            }
            path.lineTo(entry2.h(), entry2.b() * a3);
            i3++;
            entry = entry2;
        }
        if (entry2 != null) {
            path.lineTo(entry2.h(), a2);
        }
        path.close();
    }

    public void b(Canvas canvas) {
        int i;
        if (a((com.github.mikephil.charting.e.a.e) this.a)) {
            List i2 = this.a.getLineData().i();
            for (int i3 = 0; i3 < i2.size(); i3++) {
                f fVar = (f) i2.get(i3);
                if (a(fVar)) {
                    b((e) fVar);
                    com.github.mikephil.charting.g.g a2 = this.a.a(fVar.q());
                    int A = (int) (fVar.A() * 1.75f);
                    if (!fVar.E()) {
                        i = A / 2;
                    } else {
                        i = A;
                    }
                    this.f.a(this.a, fVar);
                    float[] a3 = a2.a(fVar, this.g.b(), this.g.a(), this.f.a, this.f.b);
                    for (int i4 = 0; i4 < a3.length; i4 += 2) {
                        float f = a3[i4];
                        float f2 = a3[i4 + 1];
                        if (!this.o.h(f)) {
                            break;
                        }
                        if (this.o.g(f) && this.o.f(f2)) {
                            Entry d2 = fVar.d((i4 / 2) + this.f.a);
                            a(canvas, fVar.g(), d2.b(), d2, i3, f, f2 - ((float) i), fVar.c(i4 / 2));
                        }
                    }
                }
            }
        }
    }

    public void c(Canvas canvas) {
        d(canvas);
    }

    /* access modifiers changed from: protected */
    public void d(Canvas canvas) {
        a aVar;
        this.h.setStyle(Style.FILL);
        float a2 = this.g.a();
        this.r[0] = 0.0f;
        this.r[1] = 0.0f;
        List i = this.a.getLineData().i();
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < i.size()) {
                f fVar = (f) i.get(i3);
                if (fVar.p() && fVar.E() && fVar.s() != 0) {
                    this.b.setColor(fVar.H());
                    com.github.mikephil.charting.g.g a3 = this.a.a(fVar.q());
                    this.f.a(this.a, fVar);
                    float A = fVar.A();
                    float B = fVar.B();
                    boolean z = fVar.I() && B < A && B > 0.0f;
                    boolean z2 = z && fVar.H() == 1122867;
                    if (this.q.containsKey(fVar)) {
                        aVar = (a) this.q.get(fVar);
                    } else {
                        aVar = new a();
                        this.q.put(fVar, aVar);
                    }
                    if (aVar.a(fVar)) {
                        aVar.a(fVar, z, z2);
                    }
                    int i4 = this.f.a + this.f.c;
                    for (int i5 = this.f.a; i5 <= i4; i5++) {
                        Entry d2 = fVar.d(i5);
                        if (d2 == null) {
                            break;
                        }
                        this.r[0] = d2.h();
                        this.r[1] = d2.b() * a2;
                        a3.a(this.r);
                        if (!this.o.h(this.r[0])) {
                            break;
                        }
                        if (this.o.g(this.r[0]) && this.o.f(this.r[1])) {
                            Bitmap a4 = aVar.a(i5);
                            if (a4 != null) {
                                canvas.drawBitmap(a4, this.r[0] - A, this.r[1] - A, this.h);
                            }
                        }
                    }
                }
                i2 = i3 + 1;
            } else {
                return;
            }
        }
    }

    public void a(Canvas canvas, d[] dVarArr) {
        com.github.mikephil.charting.data.j lineData = this.a.getLineData();
        for (d dVar : dVarArr) {
            f fVar = (f) lineData.a(dVar.f());
            if (fVar != null && fVar.f()) {
                Entry b2 = fVar.b(dVar.a(), dVar.b());
                if (a(b2, fVar)) {
                    com.github.mikephil.charting.g.d b3 = this.a.a(fVar.q()).b(b2.h(), b2.b() * this.g.a());
                    dVar.a((float) b3.a, (float) b3.b);
                    a(canvas, (float) b3.a, (float) b3.b, fVar);
                }
            }
        }
    }

    public void b() {
        if (this.d != null) {
            this.d.setBitmap(null);
            this.d = null;
        }
        if (this.c != null) {
            ((Bitmap) this.c.get()).recycle();
            this.c.clear();
            this.c = null;
        }
    }
}
