package com.github.mikephil.charting.components;

import android.graphics.Canvas;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.github.mikephil.charting.charts.Chart;
import com.github.mikephil.charting.d.d;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.g.e;
import java.lang.ref.WeakReference;

public class MarkerView extends RelativeLayout implements d {
    private e a;
    private e b;
    private WeakReference<Chart> c;

    private void setupLayoutResource(int i) {
        View inflate = LayoutInflater.from(getContext()).inflate(i, this);
        inflate.setLayoutParams(new LayoutParams(-2, -2));
        inflate.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        inflate.layout(0, 0, inflate.getMeasuredWidth(), inflate.getMeasuredHeight());
    }

    public void setOffset(e eVar) {
        this.a = eVar;
        if (this.a == null) {
            this.a = new e();
        }
    }

    public void setOffset(float f, float f2) {
        this.a.a = f;
        this.a.b = f2;
    }

    public e getOffset() {
        return this.a;
    }

    public void setChartView(Chart chart) {
        this.c = new WeakReference<>(chart);
    }

    public Chart getChartView() {
        if (this.c == null) {
            return null;
        }
        return (Chart) this.c.get();
    }

    public e a(float f, float f2) {
        e offset = getOffset();
        this.b.a = offset.a;
        this.b.b = offset.b;
        Chart chartView = getChartView();
        float width = (float) getWidth();
        float height = (float) getHeight();
        if (this.b.a + f < 0.0f) {
            this.b.a = -f;
        } else if (chartView != null && f + width + this.b.a > ((float) chartView.getWidth())) {
            this.b.a = (((float) chartView.getWidth()) - f) - width;
        }
        if (this.b.b + f2 < 0.0f) {
            this.b.b = -f2;
        } else if (chartView != null && f2 + height + this.b.b > ((float) chartView.getHeight())) {
            this.b.b = (((float) chartView.getHeight()) - f2) - height;
        }
        return this.b;
    }

    public void a(Entry entry, d dVar) {
        measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }

    public void a(Canvas canvas, float f, float f2) {
        e a2 = a(f, f2);
        int save = canvas.save();
        canvas.translate(a2.a + f, a2.b + f2);
        draw(canvas);
        canvas.restoreToCount(save);
    }
}
