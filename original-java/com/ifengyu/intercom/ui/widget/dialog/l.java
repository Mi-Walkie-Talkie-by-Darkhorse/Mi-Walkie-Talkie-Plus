package com.ifengyu.intercom.ui.widget.dialog;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: HeightAnimation.java */
/* loaded from: classes2.dex */
class l extends Animation {

    /* renamed from: a  reason: collision with root package name */
    protected final int f6961a;

    /* renamed from: b  reason: collision with root package name */
    protected final View f6962b;

    /* renamed from: c  reason: collision with root package name */
    protected float f6963c;

    public l(View view, int i, int i2) {
        this.f6962b = view;
        this.f6961a = i;
        this.f6963c = i2 - i;
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        this.f6962b.getLayoutParams().height = (int) (this.f6961a + (this.f6963c * f));
        this.f6962b.requestLayout();
    }

    @Override // android.view.animation.Animation
    public boolean willChangeBounds() {
        return true;
    }
}
