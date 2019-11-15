package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.util.h;

/* compiled from: SimpleResource */
public class a<T> implements q<T> {
    protected final T a;

    public a(T t) {
        this.a = h.a(t);
    }

    public Class<T> b() {
        return this.a.getClass();
    }

    public final T c() {
        return this.a;
    }

    public final int d() {
        return 1;
    }

    public void e() {
    }
}
