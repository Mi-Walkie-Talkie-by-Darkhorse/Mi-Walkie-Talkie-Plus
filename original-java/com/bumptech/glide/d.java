package com.bumptech.glide;

import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.util.ArrayMap;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.a.j;
import com.bumptech.glide.load.engine.b.a.C0016a;
import com.bumptech.glide.load.engine.b.g;
import com.bumptech.glide.load.engine.b.i;
import com.bumptech.glide.load.engine.c.a;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.manager.f;
import com.bumptech.glide.manager.k;
import java.util.Map;

/* compiled from: GlideBuilder */
public final class d {
    private final Map<Class<?>, h<?, ?>> a = new ArrayMap();
    private h b;
    private e c;
    private b d;
    private com.bumptech.glide.load.engine.b.h e;
    private a f;
    private a g;
    private C0016a h;
    private i i;
    private com.bumptech.glide.manager.d j;
    private int k = 4;
    private com.bumptech.glide.request.d l = new com.bumptech.glide.request.d();
    @Nullable
    private k.a m;

    /* access modifiers changed from: 0000 */
    public d a(@Nullable k.a aVar) {
        this.m = aVar;
        return this;
    }

    public c a(Context context) {
        if (this.f == null) {
            this.f = a.b();
        }
        if (this.g == null) {
            this.g = a.a();
        }
        if (this.i == null) {
            this.i = new i.a(context).a();
        }
        if (this.j == null) {
            this.j = new f();
        }
        if (this.c == null) {
            int b2 = this.i.b();
            if (b2 > 0) {
                this.c = new com.bumptech.glide.load.engine.a.k(b2);
            } else {
                this.c = new com.bumptech.glide.load.engine.a.f();
            }
        }
        if (this.d == null) {
            this.d = new j(this.i.c());
        }
        if (this.e == null) {
            this.e = new g(this.i.a());
        }
        if (this.h == null) {
            this.h = new com.bumptech.glide.load.engine.b.f(context);
        }
        if (this.b == null) {
            this.b = new h(this.e, this.h, this.g, this.f, a.c());
        }
        return new c(context, this.b, this.e, this.c, this.d, new k(this.m), this.j, this.k, this.l.g(), this.a);
    }
}
