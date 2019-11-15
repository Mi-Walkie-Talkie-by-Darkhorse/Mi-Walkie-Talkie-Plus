package com.yalantis.ucrop.model;

import android.graphics.RectF;

/* compiled from: ImageState */
public class c {
    private RectF a;
    private RectF b;
    private float c;
    private float d;

    public c(RectF rectF, RectF rectF2, float f, float f2) {
        this.a = rectF;
        this.b = rectF2;
        this.c = f;
        this.d = f2;
    }

    public RectF a() {
        return this.a;
    }

    public RectF b() {
        return this.b;
    }

    public float c() {
        return this.c;
    }

    public float d() {
        return this.d;
    }
}
