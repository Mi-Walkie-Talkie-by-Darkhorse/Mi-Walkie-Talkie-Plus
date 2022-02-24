package com.ifengyu.library.widget.view;

import android.view.View;
import androidx.annotation.NonNull;

/* compiled from: QMUIAlphaViewHelper.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private View f7228a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f7229b = true;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7230c = true;
    private float d = 1.0f;
    private float e = 0.5f;
    private float f = 0.5f;

    public a(@NonNull View view) {
        this.f7228a = view;
    }

    public void a(View view, boolean z) {
        float f;
        if (this.f7230c) {
            f = z ? this.d : this.f;
        } else {
            f = this.d;
        }
        view.setAlpha(f);
    }

    public void b(View view, boolean z) {
        if (this.f7228a.isEnabled()) {
            this.f7228a.setAlpha((!this.f7229b || !z || !view.isClickable()) ? this.d : this.e);
        } else if (this.f7230c) {
            view.setAlpha(this.f);
        }
    }

    public void a(boolean z) {
        this.f7230c = z;
        View view = this.f7228a;
        a(view, view.isEnabled());
    }

    public void b(boolean z) {
        this.f7229b = z;
    }
}
