package com.bumptech.glide.load.b.a;

import android.support.annotation.Nullable;
import com.bumptech.glide.load.a.h;
import com.bumptech.glide.load.b.g;
import com.bumptech.glide.load.b.m;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.b.o;
import com.bumptech.glide.load.b.r;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import java.io.InputStream;

/* compiled from: HttpGlideUrlLoader */
public class a implements n<g, InputStream> {
    public static final d<Integer> a = d.a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf(2500));
    @Nullable
    private final m<g, g> b;

    /* renamed from: com.bumptech.glide.load.b.a.a$a reason: collision with other inner class name */
    /* compiled from: HttpGlideUrlLoader */
    public static class C0013a implements o<g, InputStream> {
        private final m<g, g> a = new m<>(500);

        public n<g, InputStream> a(r rVar) {
            return new a(this.a);
        }
    }

    public a() {
        this(null);
    }

    public a(m<g, g> mVar) {
        this.b = mVar;
    }

    public com.bumptech.glide.load.b.n.a<InputStream> a(g gVar, int i, int i2, e eVar) {
        if (this.b != null) {
            g gVar2 = (g) this.b.a(gVar, 0, 0);
            if (gVar2 == null) {
                this.b.a(gVar, 0, 0, gVar);
            } else {
                gVar = gVar2;
            }
        }
        return new com.bumptech.glide.load.b.n.a<>(gVar, new h(gVar, ((Integer) eVar.a(a)).intValue()));
    }

    public boolean a(g gVar) {
        return true;
    }
}
