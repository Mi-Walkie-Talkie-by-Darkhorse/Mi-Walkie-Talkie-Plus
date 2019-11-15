package com.github.mikephil.charting.f;

import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.support.v4.view.ViewCompat;
import com.github.mikephil.charting.g.d;
import com.github.mikephil.charting.g.g;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;

/* compiled from: AxisRenderer */
public abstract class a extends o {
    protected com.github.mikephil.charting.components.a a;
    protected g b;
    protected Paint c;
    protected Paint d;
    protected Paint e;
    protected Paint f;

    public a(j jVar, g gVar, com.github.mikephil.charting.components.a aVar) {
        super(jVar);
        this.b = gVar;
        this.a = aVar;
        if (this.o != null) {
            this.d = new Paint(1);
            this.c = new Paint();
            this.c.setColor(-7829368);
            this.c.setStrokeWidth(1.0f);
            this.c.setStyle(Style.STROKE);
            this.c.setAlpha(90);
            this.e = new Paint();
            this.e.setColor(ViewCompat.MEASURED_STATE_MASK);
            this.e.setStrokeWidth(1.0f);
            this.e.setStyle(Style.STROKE);
            this.f = new Paint(1);
            this.f.setStyle(Style.STROKE);
        }
    }

    public Paint a() {
        return this.d;
    }

    public void a(float f2, float f3, boolean z) {
        float f4;
        float f5;
        if (this.o != null && this.o.i() > 10.0f && !this.o.t()) {
            d a2 = this.b.a(this.o.f(), this.o.e());
            d a3 = this.b.a(this.o.f(), this.o.h());
            if (!z) {
                f4 = (float) a3.b;
                f5 = (float) a2.b;
            } else {
                f4 = (float) a2.b;
                f5 = (float) a3.b;
            }
            d.a(a2);
            d.a(a3);
            f3 = f5;
            f2 = f4;
        }
        a(f2, f3);
    }

    /* access modifiers changed from: protected */
    public void a(float f2, float f3) {
        double b2;
        int j = this.a.j();
        double abs = (double) Math.abs(f3 - f2);
        if (j == 0 || abs <= 0.0d || Double.isInfinite(abs)) {
            this.a.b = new float[0];
            this.a.c = new float[0];
            this.a.d = 0;
            return;
        }
        double a2 = (double) i.a(abs / ((double) j));
        if (this.a.k() && a2 < ((double) this.a.l())) {
            a2 = (double) this.a.l();
        }
        double a3 = (double) i.a(Math.pow(10.0d, (double) ((int) Math.log10(a2))));
        if (((int) (a2 / a3)) > 5) {
            a2 = Math.floor(10.0d * a3);
        }
        int i = this.a.c() ? 1 : 0;
        if (this.a.i()) {
            a2 = (double) (((float) abs) / ((float) (j - 1)));
            this.a.d = j;
            if (this.a.b.length < j) {
                this.a.b = new float[j];
            }
            for (int i2 = 0; i2 < j; i2++) {
                this.a.b[i2] = f2;
                f2 = (float) (((double) f2) + a2);
            }
            i = j;
        } else {
            double ceil = a2 == 0.0d ? 0.0d : Math.ceil(((double) f2) / a2) * a2;
            if (this.a.c()) {
                ceil -= a2;
            }
            if (a2 == 0.0d) {
                b2 = 0.0d;
            } else {
                b2 = i.b(Math.floor(((double) f3) / a2) * a2);
            }
            if (a2 != 0.0d) {
                double d2 = ceil;
                while (d2 <= b2) {
                    d2 += a2;
                    i++;
                }
            }
            this.a.d = i;
            if (this.a.b.length < i) {
                this.a.b = new float[i];
            }
            for (int i3 = 0; i3 < i; i3++) {
                if (ceil == 0.0d) {
                    ceil = 0.0d;
                }
                this.a.b[i3] = (float) ceil;
                ceil += a2;
            }
        }
        if (a2 < 1.0d) {
            this.a.e = (int) Math.ceil(-Math.log10(a2));
        } else {
            this.a.e = 0;
        }
        if (this.a.c()) {
            if (this.a.c.length < i) {
                this.a.c = new float[i];
            }
            float f4 = ((float) a2) / 2.0f;
            for (int i4 = 0; i4 < i; i4++) {
                this.a.c[i4] = this.a.b[i4] + f4;
            }
        }
    }
}
