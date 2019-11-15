package com.github.mikephil.charting.data;

import android.graphics.Color;
import android.graphics.DashPathEffect;
import android.graphics.Typeface;
import android.support.v4.view.ViewCompat;
import com.github.mikephil.charting.c.f;
import com.github.mikephil.charting.components.Legend.LegendForm;
import com.github.mikephil.charting.components.YAxis.AxisDependency;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.b.e;
import com.github.mikephil.charting.g.i;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BaseDataSet */
public abstract class d<T extends Entry> implements e<T> {
    private String a;
    protected List<Integer> b;
    protected List<Integer> c;
    protected AxisDependency d;
    protected boolean e;
    protected transient f f;
    protected Typeface g;
    protected boolean h;
    protected float i;
    protected boolean j;
    private LegendForm k;
    private float l;
    private float m;
    private DashPathEffect n;

    public d() {
        this.b = null;
        this.c = null;
        this.a = "DataSet";
        this.d = AxisDependency.LEFT;
        this.e = true;
        this.k = LegendForm.DEFAULT;
        this.l = Float.NaN;
        this.m = Float.NaN;
        this.n = null;
        this.h = true;
        this.i = 17.0f;
        this.j = true;
        this.b = new ArrayList();
        this.c = new ArrayList();
        this.b.add(Integer.valueOf(Color.rgb(140, 234, 255)));
        this.c.add(Integer.valueOf(ViewCompat.MEASURED_STATE_MASK));
    }

    public d(String str) {
        this();
        this.a = str;
    }

    public List<Integer> b() {
        return this.b;
    }

    public int c() {
        return ((Integer) this.b.get(0)).intValue();
    }

    public int a(int i2) {
        return ((Integer) this.b.get(i2 % this.b.size())).intValue();
    }

    public void b(int i2) {
        d();
        this.b.add(Integer.valueOf(i2));
    }

    public void d() {
        if (this.b == null) {
            this.b = new ArrayList();
        }
        this.b.clear();
    }

    public String e() {
        return this.a;
    }

    public boolean f() {
        return this.e;
    }

    public void a(f fVar) {
        if (fVar != null) {
            this.f = fVar;
        }
    }

    public f g() {
        if (h()) {
            return i.a();
        }
        return this.f;
    }

    public boolean h() {
        return this.f == null;
    }

    public int c(int i2) {
        return ((Integer) this.c.get(i2 % this.c.size())).intValue();
    }

    public Typeface i() {
        return this.g;
    }

    public float j() {
        return this.i;
    }

    public LegendForm k() {
        return this.k;
    }

    public float l() {
        return this.l;
    }

    public float m() {
        return this.m;
    }

    public DashPathEffect n() {
        return this.n;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public boolean o() {
        return this.h;
    }

    public boolean p() {
        return this.j;
    }

    public AxisDependency q() {
        return this.d;
    }
}
