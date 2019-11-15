package com.ifengyu.library.widget.recyclerview.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;

/* compiled from: ScaleInAnimation */
public class c implements b {
    private final float a;

    public c() {
        this(0.5f);
    }

    public c(float f) {
        this.a = f;
    }

    public Animator[] a(View view) {
        return new ObjectAnimator[]{ObjectAnimator.ofFloat(view, "scaleX", new float[]{this.a, 1.0f}), ObjectAnimator.ofFloat(view, "scaleY", new float[]{this.a, 1.0f})};
    }
}
