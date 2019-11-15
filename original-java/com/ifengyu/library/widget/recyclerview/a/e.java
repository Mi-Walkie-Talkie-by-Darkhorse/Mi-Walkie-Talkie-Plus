package com.ifengyu.library.widget.recyclerview.a;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;

/* compiled from: SlideInLeftAnimation */
public class e implements b {
    public Animator[] a(View view) {
        return new Animator[]{ObjectAnimator.ofFloat(view, "translationX", new float[]{(float) (-view.getRootView().getWidth()), 0.0f})};
    }
}
