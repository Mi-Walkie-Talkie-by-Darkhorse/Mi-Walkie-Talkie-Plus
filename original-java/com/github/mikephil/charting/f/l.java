package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Path;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.e.b.h;
import com.github.mikephil.charting.g.j;

/* compiled from: LineScatterCandleRadarRenderer */
public abstract class l extends c {
    private Path a = new Path();

    public l(a aVar, j jVar) {
        super(aVar, jVar);
    }

    /* access modifiers changed from: protected */
    public void a(Canvas canvas, float f, float f2, h hVar) {
        this.i.setColor(hVar.a());
        this.i.setStrokeWidth(hVar.R());
        this.i.setPathEffect(hVar.S());
        if (hVar.P()) {
            this.a.reset();
            this.a.moveTo(f, this.o.e());
            this.a.lineTo(f, this.o.h());
            canvas.drawPath(this.a, this.i);
        }
        if (hVar.Q()) {
            this.a.reset();
            this.a.moveTo(this.o.f(), f2);
            this.a.lineTo(this.o.g(), f2);
            canvas.drawPath(this.a, this.i);
        }
    }
}
