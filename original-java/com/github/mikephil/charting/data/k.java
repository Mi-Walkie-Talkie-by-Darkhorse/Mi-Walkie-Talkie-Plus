package com.github.mikephil.charting.data;

import android.annotation.TargetApi;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.e.b.g;
import com.github.mikephil.charting.g.i;
import java.util.List;

/* compiled from: LineRadarDataSet */
public abstract class k<T extends Entry> extends l<T> implements g<T> {
    protected Drawable p;
    private int u = Color.rgb(140, 234, 255);
    private int v = 85;
    private float w = 2.5f;
    private boolean x = false;

    public k(List<T> list, String str) {
        super(list, str);
    }

    public int K() {
        return this.u;
    }

    public void f(int i) {
        this.u = i;
        this.p = null;
    }

    public Drawable L() {
        return this.p;
    }

    @TargetApi(18)
    public void a(Drawable drawable) {
        this.p = drawable;
    }

    public int M() {
        return this.v;
    }

    public void g(int i) {
        this.v = i;
    }

    public void c(float f) {
        float f2 = 10.0f;
        float f3 = 0.2f;
        if (f >= 0.2f) {
            f3 = f;
        }
        if (f3 <= 10.0f) {
            f2 = f3;
        }
        this.w = i.a(f2);
    }

    public float N() {
        return this.w;
    }

    public void c(boolean z) {
        this.x = z;
    }

    public boolean O() {
        return this.x;
    }
}
