package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Paint.Style;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.c.f;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.a.e;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: DataRenderer */
public abstract class g extends o {
    protected a g;
    protected Paint h = new Paint(1);
    protected Paint i;
    protected Paint j;
    protected Paint k;

    public abstract void a();

    public abstract void a(Canvas canvas);

    public abstract void a(Canvas canvas, d[] dVarArr);

    public abstract void b(Canvas canvas);

    public abstract void c(Canvas canvas);

    public g(a aVar, j jVar) {
        super(jVar);
        this.g = aVar;
        this.h.setStyle(Style.FILL);
        this.j = new Paint(4);
        this.k = new Paint(1);
        this.k.setColor(Color.rgb(63, 63, 63));
        this.k.setTextAlign(Align.CENTER);
        this.k.setTextSize(i.a(9.0f));
        this.i = new Paint(1);
        this.i.setStyle(Style.STROKE);
        this.i.setStrokeWidth(2.0f);
        this.i.setColor(Color.rgb(255, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256, 115));
    }

    /* access modifiers changed from: protected */
    public boolean a(e eVar) {
        return ((float) eVar.getData().j()) < ((float) eVar.getMaxVisibleCount()) * this.o.q();
    }

    /* access modifiers changed from: protected */
    public void b(com.github.mikephil.charting.e.b.e eVar) {
        this.k.setTypeface(eVar.i());
        this.k.setTextSize(eVar.j());
    }

    public void a(Canvas canvas, f fVar, float f, Entry entry, int i2, float f2, float f3, int i3) {
        this.k.setColor(i3);
        canvas.drawText(fVar.a(f, entry, i2, this.o), f2, f3, this.k);
    }
}
