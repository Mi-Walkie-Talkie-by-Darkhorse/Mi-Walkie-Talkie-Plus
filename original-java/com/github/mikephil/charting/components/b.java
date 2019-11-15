package com.github.mikephil.charting.components;

import android.graphics.Typeface;
import android.support.v4.view.ViewCompat;

/* compiled from: ComponentBase */
public abstract class b {
    protected int A = ViewCompat.MEASURED_STATE_MASK;
    protected boolean v = true;
    protected float w = 5.0f;
    protected float x = 5.0f;
    protected Typeface y = null;
    protected float z = 10.0f;

    public float s() {
        return this.w;
    }

    public float t() {
        return this.x;
    }

    public Typeface u() {
        return this.y;
    }

    public float v() {
        return this.z;
    }

    public void d(int i) {
        this.A = i;
    }

    public int w() {
        return this.A;
    }

    public void b(boolean z2) {
        this.v = z2;
    }

    public boolean x() {
        return this.v;
    }
}
