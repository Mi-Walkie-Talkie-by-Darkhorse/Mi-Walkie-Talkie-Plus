package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import com.github.mikephil.charting.charts.RadarChart;
import com.github.mikephil.charting.components.XAxis;
import com.github.mikephil.charting.data.n;
import com.github.mikephil.charting.g.e;
import com.github.mikephil.charting.g.i;
import com.github.mikephil.charting.g.j;

/* compiled from: XAxisRendererRadarChart */
public class s extends q {
    private RadarChart n;

    public s(j jVar, XAxis xAxis, RadarChart radarChart) {
        super(jVar, xAxis, null);
        this.n = radarChart;
    }

    public void a(Canvas canvas) {
        if (this.g.x() && this.g.h()) {
            float z = this.g.z();
            e a = e.a(0.5f, 0.25f);
            this.d.setTypeface(this.g.u());
            this.d.setTextSize(this.g.v());
            this.d.setColor(this.g.w());
            float sliceAngle = this.n.getSliceAngle();
            float factor = this.n.getFactor();
            e centerOffsets = this.n.getCenterOffsets();
            e a2 = e.a(0.0f, 0.0f);
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 < ((com.github.mikephil.charting.e.b.j) ((n) this.n.getData()).k()).s()) {
                    String a3 = this.g.p().a((float) i2, this.g);
                    i.a(centerOffsets, (this.n.getYRange() * factor) + (((float) this.g.D) / 2.0f), ((((float) i2) * sliceAngle) + this.n.getRotationAngle()) % 360.0f, a2);
                    a(canvas, a3, a2.a, a2.b - (((float) this.g.E) / 2.0f), a, z);
                    i = i2 + 1;
                } else {
                    e.a(centerOffsets);
                    e.a(a2);
                    e.a(a);
                    return;
                }
            }
        }
    }

    public void d(Canvas canvas) {
    }
}
