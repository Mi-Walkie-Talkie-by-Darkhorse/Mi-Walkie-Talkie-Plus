package com.ifengyu.intercom.p216ui.widget.dialog;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.j */
/* loaded from: classes2.dex */
class HeightAnimation extends Animation {

    /* renamed from: a */
    protected final int f15939a;

    /* renamed from: b */
    protected final View f15940b;

    /* renamed from: c */
    protected float f15941c;

    public HeightAnimation(View view, int i, int i2) {
        this.f15940b = view;
        this.f15939a = i;
        this.f15941c = i2 - i;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        this.f15940b.getLayoutParams().height = (int) (this.f15939a + (this.f15941c * f));
        this.f15940b.requestLayout();
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }
}
