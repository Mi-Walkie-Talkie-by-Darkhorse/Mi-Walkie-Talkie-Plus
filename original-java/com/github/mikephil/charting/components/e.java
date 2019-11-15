package com.github.mikephil.charting.components;

import android.graphics.DashPathEffect;
import com.github.mikephil.charting.components.Legend.LegendForm;

/* compiled from: LegendEntry */
public class e {
    public String a;
    public LegendForm b = LegendForm.DEFAULT;
    public float c = Float.NaN;
    public float d = Float.NaN;
    public DashPathEffect e = null;
    public int f = 1122867;

    public e() {
    }

    public e(String str, LegendForm legendForm, float f2, float f3, DashPathEffect dashPathEffect, int i) {
        this.a = str;
        this.b = legendForm;
        this.c = f2;
        this.d = f3;
        this.e = dashPathEffect;
        this.f = i;
    }
}
