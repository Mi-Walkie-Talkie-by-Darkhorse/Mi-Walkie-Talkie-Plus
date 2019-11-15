package com.bumptech.glide.load.resource.d;

import com.bumptech.glide.load.engine.n;
import com.bumptech.glide.load.resource.b.a;

/* compiled from: GifDrawableResource */
public class e extends a<c> implements n {
    public e(c cVar) {
        super(cVar);
    }

    public Class<c> b() {
        return c.class;
    }

    public int d() {
        return ((c) this.a).a();
    }

    public void e() {
        ((c) this.a).stop();
        ((c) this.a).g();
    }

    public void a() {
        ((c) this.a).b().prepareToDraw();
    }
}
