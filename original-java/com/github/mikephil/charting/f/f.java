package com.github.mikephil.charting.f;

import android.graphics.Canvas;
import com.github.mikephil.charting.a.a;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.charts.CombinedChart;
import com.github.mikephil.charting.charts.CombinedChart.DrawOrder;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.i;
import com.github.mikephil.charting.g.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CombinedChartRenderer */
public class f extends g {
    protected List<g> a = new ArrayList(5);
    protected WeakReference<Chart> b;
    protected List<d> c = new ArrayList();

    public f(CombinedChart combinedChart, a aVar, j jVar) {
        super(aVar, jVar);
        this.b = new WeakReference<>(combinedChart);
        b();
    }

    public void b() {
        this.a.clear();
        CombinedChart combinedChart = (CombinedChart) this.b.get();
        if (combinedChart != null) {
            for (DrawOrder drawOrder : combinedChart.getDrawOrder()) {
                switch (drawOrder) {
                    case BAR:
                        if (combinedChart.getBarData() == null) {
                            break;
                        } else {
                            this.a.add(new b(combinedChart, this.g, this.o));
                            break;
                        }
                    case BUBBLE:
                        if (combinedChart.getBubbleData() == null) {
                            break;
                        } else {
                            this.a.add(new d(combinedChart, this.g, this.o));
                            break;
                        }
                    case LINE:
                        if (combinedChart.getLineData() == null) {
                            break;
                        } else {
                            this.a.add(new j(combinedChart, this.g, this.o));
                            break;
                        }
                    case CANDLE:
                        if (combinedChart.getCandleData() == null) {
                            break;
                        } else {
                            this.a.add(new e(combinedChart, this.g, this.o));
                            break;
                        }
                    case SCATTER:
                        if (combinedChart.getScatterData() == null) {
                            break;
                        } else {
                            this.a.add(new p(combinedChart, this.g, this.o));
                            break;
                        }
                }
            }
        }
    }

    public void a() {
        for (g a2 : this.a) {
            a2.a();
        }
    }

    public void a(Canvas canvas) {
        for (g a2 : this.a) {
            a2.a(canvas);
        }
    }

    public void b(Canvas canvas) {
        for (g b2 : this.a) {
            b2.b(canvas);
        }
    }

    public void c(Canvas canvas) {
        for (g c2 : this.a) {
            c2.c(canvas);
        }
    }

    public void a(Canvas canvas, d[] dVarArr) {
        Object obj;
        int indexOf;
        Chart chart = (Chart) this.b.get();
        if (chart != null) {
            for (g gVar : this.a) {
                if (gVar instanceof b) {
                    obj = ((b) gVar).a.getBarData();
                } else if (gVar instanceof j) {
                    obj = ((j) gVar).a.getLineData();
                } else if (gVar instanceof e) {
                    obj = ((e) gVar).a.getCandleData();
                } else if (gVar instanceof p) {
                    obj = ((p) gVar).a.getScatterData();
                } else if (gVar instanceof d) {
                    obj = ((d) gVar).a.getBubbleData();
                } else {
                    obj = null;
                }
                if (obj == null) {
                    indexOf = -1;
                } else {
                    indexOf = ((i) chart.getData()).p().indexOf(obj);
                }
                this.c.clear();
                for (d dVar : dVarArr) {
                    if (dVar.e() == indexOf || dVar.e() == -1) {
                        this.c.add(dVar);
                    }
                }
                gVar.a(canvas, (d[]) this.c.toArray(new d[this.c.size()]));
            }
        }
    }
}
