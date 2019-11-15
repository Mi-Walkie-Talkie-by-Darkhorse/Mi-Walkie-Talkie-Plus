package com.github.mikephil.charting.g;

/* compiled from: TransformerHorizontalBarChart */
public class h extends g {
    public h(j jVar) {
        super(jVar);
    }

    public void a(boolean z) {
        this.b.reset();
        if (!z) {
            this.b.postTranslate(this.c.a(), this.c.m() - this.c.d());
            return;
        }
        this.b.setTranslate(-(this.c.n() - this.c.b()), this.c.m() - this.c.d());
        this.b.postScale(-1.0f, 1.0f);
    }
}
