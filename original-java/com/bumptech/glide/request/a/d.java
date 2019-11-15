package com.bumptech.glide.request.a;

import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.widget.ImageView;
import com.bumptech.glide.request.b.d.a;

/* compiled from: ImageViewTarget */
public abstract class d<Z> extends i<ImageView, Z> implements a {
    @Nullable
    private Animatable b;

    /* access modifiers changed from: protected */
    public abstract void a(@Nullable Z z);

    public d(ImageView imageView) {
        super(imageView);
    }

    @Nullable
    public Drawable a() {
        return ((ImageView) this.a).getDrawable();
    }

    public void e(Drawable drawable) {
        ((ImageView) this.a).setImageDrawable(drawable);
    }

    public void b(@Nullable Drawable drawable) {
        super.b(drawable);
        b((Z) null);
        e(drawable);
    }

    public void c(@Nullable Drawable drawable) {
        super.c(drawable);
        b((Z) null);
        e(drawable);
    }

    public void a(@Nullable Drawable drawable) {
        super.a(drawable);
        b((Z) null);
        e(drawable);
    }

    public void a(Z z, @Nullable com.bumptech.glide.request.b.d<? super Z> dVar) {
        if (dVar == null || !dVar.a(z, this)) {
            b(z);
        } else {
            c(z);
        }
    }

    public void c() {
        if (this.b != null) {
            this.b.start();
        }
    }

    public void d() {
        if (this.b != null) {
            this.b.stop();
        }
    }

    private void b(@Nullable Z z) {
        c(z);
        a(z);
    }

    private void c(@Nullable Z z) {
        if (z instanceof Animatable) {
            this.b = (Animatable) z;
            this.b.start();
            return;
        }
        this.b = null;
    }
}
