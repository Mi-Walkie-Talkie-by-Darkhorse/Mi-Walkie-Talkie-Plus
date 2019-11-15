package com.ifengyu.library.widget.recyclerview.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;

/* compiled from: AlphaInAnimation */
public class a implements b {
    private final float a;

    public a() {
        this(0.0f);
    }

    public a(float f) {
        this.a = f;
    }

    public Animator[] a(View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "alpha", new float[]{this.a, 1.0f})};
    }
}
