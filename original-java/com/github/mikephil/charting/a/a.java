package com.github.mikephil.charting.a;

import android.animation.ValueAnimator.AnimatorUpdateListener;

/* compiled from: ChartAnimator */
public class a {
    protected float a = 1.0f;
    protected float b = 1.0f;
    private AnimatorUpdateListener c;

    public a() {
    }

    public a(AnimatorUpdateListener animatorUpdateListener) {
        this.c = animatorUpdateListener;
    }

    public float a() {
        return this.a;
    }

    public float b() {
        return this.b;
    }
}
