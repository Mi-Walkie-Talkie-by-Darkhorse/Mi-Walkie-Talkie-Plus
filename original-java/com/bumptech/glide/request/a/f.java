package com.bumptech.glide.request.a;

import com.bumptech.glide.util.i;

/* compiled from: SimpleTarget */
public abstract class f<Z> extends a<Z> {
    private final int a;
    private final int b;

    public f() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    public f(int i, int i2) {
        this.a = i;
        this.b = i2;
    }

    public final void a(g gVar) {
        if (!i.a(this.a, this.b)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.a + " and height: " + this.b + ", either provide dimensions in the constructor or call override()");
        }
        gVar.a(this.a, this.b);
    }

    public void b(g gVar) {
    }
}
