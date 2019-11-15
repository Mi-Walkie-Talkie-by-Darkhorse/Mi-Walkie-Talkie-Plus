package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;
import com.github.mikephil.charting.d.j;

@SuppressLint({"ParcelCreator"})
public class BarEntry extends Entry {
    private float[] a;
    private j[] b;
    private float c;
    private float d;

    public float[] a() {
        return this.a;
    }

    public float b() {
        return super.b();
    }

    public j[] c() {
        return this.b;
    }

    public boolean d() {
        return this.a != null;
    }

    public float e() {
        return this.d;
    }

    public float f() {
        return this.c;
    }
}
