package com.github.mikephil.charting.data;

import android.graphics.DashPathEffect;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.b.h;
import com.github.mikephil.charting.g.i;
import java.util.List;

/* compiled from: LineScatterCandleRadarDataSet */
public abstract class l<T extends Entry> extends c<T> implements h<T> {
    protected boolean q;
    protected boolean r;
    protected float s;
    protected DashPathEffect t;

    public l(List<T> list, String str) {
        super(list, str);
        this.q = true;
        this.r = true;
        this.s = 0.5f;
        this.t = null;
        this.s = i.a(0.5f);
    }

    public boolean P() {
        return this.q;
    }

    public boolean Q() {
        return this.r;
    }

    public float R() {
        return this.s;
    }

    public DashPathEffect S() {
        return this.t;
    }
}
