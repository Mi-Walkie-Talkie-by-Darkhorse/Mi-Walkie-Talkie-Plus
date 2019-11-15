package com.ifengyu.library.widget.view;

import android.support.annotation.NonNull;
import android.view.View;

/* compiled from: QMUIAlphaViewHelper */
public class a {
    private View a;
    private boolean b = true;
    private boolean c = true;
    private float d = 1.0f;
    private float e = 0.5f;
    private float f = 0.5f;

    public a(@NonNull View view) {
        this.a = view;
    }

    public void a(View view, boolean z) {
        if (this.a.isEnabled()) {
            this.a.setAlpha((!this.b || !z || !view.isClickable()) ? this.d : this.e);
        } else if (this.c) {
            view.setAlpha(this.f);
        }
    }

    public void b(View view, boolean z) {
        float f2 = this.c ? z ? this.d : this.f : this.d;
        view.setAlpha(f2);
    }

    public void a(boolean z) {
        this.b = z;
    }

    public void b(boolean z) {
        this.c = z;
        b(this.a, this.a.isEnabled());
    }
}
