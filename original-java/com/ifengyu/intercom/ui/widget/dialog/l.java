package com.ifengyu.intercom.ui.widget.dialog;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: HeightAnimation */
class l extends Animation {
    protected final int a;
    protected final View b;
    protected float c;

    public l(View view, int i, int i2) {
        this.b = view;
        this.a = i;
        this.c = (float) (i2 - i);
    }

    /* access modifiers changed from: protected */
    public void applyTransformation(float f, Transformation transformation) {
        this.b.getLayoutParams().height = (int) (((float) this.a) + (this.c * f));
        this.b.requestLayout();
    }

    public boolean willChangeBounds() {
        return true;
    }
}
