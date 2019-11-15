package com.github.mikephil.charting.data;

import android.annotation.SuppressLint;

@SuppressLint({"ParcelCreator"})
public class CandleEntry extends Entry {
    private float a;
    private float b;
    private float c;
    private float d;

    public float b() {
        return super.b();
    }

    public float a() {
        return this.a;
    }

    public float c() {
        return this.b;
    }

    public float d() {
        return this.c;
    }

    public float e() {
        return this.d;
    }
}
