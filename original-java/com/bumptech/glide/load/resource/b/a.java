package com.bumptech.glide.load.resource.b;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.engine.n;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.resource.d.c;
import com.bumptech.glide.util.h;

/* compiled from: DrawableResource */
public abstract class a<T extends Drawable> implements n, q<T> {
    protected final T a;

    public a(T t) {
        this.a = (Drawable) h.a(t);
    }

    /* renamed from: f */
    public final T c() {
        return this.a.getConstantState().newDrawable();
    }

    public void a() {
        if (this.a instanceof BitmapDrawable) {
            ((BitmapDrawable) this.a).getBitmap().prepareToDraw();
        } else if (this.a instanceof c) {
            ((c) this.a).b().prepareToDraw();
        }
    }
}
