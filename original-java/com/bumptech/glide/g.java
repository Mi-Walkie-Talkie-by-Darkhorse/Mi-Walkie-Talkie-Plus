package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.load.resource.d.c;
import com.bumptech.glide.manager.h;
import com.bumptech.glide.manager.i;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.manager.m;
import com.bumptech.glide.manager.n;
import com.bumptech.glide.request.d;

/* compiled from: RequestManager */
public class g implements i {
    private static final d c = d.a(Bitmap.class).g();
    private static final d d = d.a(c.class).g();
    private static final d e = d.a(com.bumptech.glide.load.engine.g.c).a(Priority.LOW).a(true);
    protected final c a;
    final h b;
    private final m f;
    private final l g;
    private final n h;
    private final Runnable i;
    private final Handler j;
    private final com.bumptech.glide.manager.c k;
    @NonNull
    private d l;

    /* compiled from: RequestManager */
    private static class a implements com.bumptech.glide.manager.c.a {
        private final m a;

        public a(m mVar) {
            this.a = mVar;
        }

        public void a(boolean z) {
            if (z) {
                this.a.d();
            }
        }
    }

    public g(c cVar, h hVar, l lVar) {
        this(cVar, hVar, lVar, new m(), cVar.d());
    }

    g(c cVar, h hVar, l lVar, m mVar, com.bumptech.glide.manager.d dVar) {
        this.h = new n();
        this.i = new Runnable() {
            public void run() {
                g.this.b.a(g.this);
            }
        };
        this.j = new Handler(Looper.getMainLooper());
        this.a = cVar;
        this.b = hVar;
        this.g = lVar;
        this.f = mVar;
        this.k = dVar.a(cVar.e().getBaseContext(), new a(mVar));
        if (com.bumptech.glide.util.i.c()) {
            this.j.post(this.i);
        } else {
            hVar.a(this);
        }
        hVar.a(this.k);
        a(cVar.e().a());
        cVar.a(this);
    }

    /* access modifiers changed from: protected */
    public void a(@NonNull d dVar) {
        this.l = dVar.clone().h();
    }

    public void a() {
        com.bumptech.glide.util.i.a();
        this.f.a();
    }

    public void b() {
        com.bumptech.glide.util.i.a();
        this.f.b();
    }

    public void c() {
        b();
        this.h.c();
    }

    public void d() {
        a();
        this.h.d();
    }

    public void e() {
        this.h.e();
        for (com.bumptech.glide.request.a.h a2 : this.h.a()) {
            a(a2);
        }
        this.h.b();
        this.f.c();
        this.b.b(this);
        this.b.b(this.k);
        this.j.removeCallbacks(this.i);
        this.a.b(this);
    }

    public f<Bitmap> f() {
        return a(Bitmap.class).a(c);
    }

    public f<Drawable> g() {
        return a(Drawable.class);
    }

    public f<Drawable> a(@Nullable Object obj) {
        return g().a(obj);
    }

    public <ResourceType> f<ResourceType> a(Class<ResourceType> cls) {
        return new f<>(this.a, this, cls);
    }

    public void a(@Nullable final com.bumptech.glide.request.a.h<?> hVar) {
        if (hVar != null) {
            if (com.bumptech.glide.util.i.b()) {
                c(hVar);
            } else {
                this.j.post(new Runnable() {
                    public void run() {
                        g.this.a(hVar);
                    }
                });
            }
        }
    }

    private void c(com.bumptech.glide.request.a.h<?> hVar) {
        if (!b(hVar)) {
            this.a.a(hVar);
        }
    }

    /* access modifiers changed from: 0000 */
    public boolean b(com.bumptech.glide.request.a.h<?> hVar) {
        com.bumptech.glide.request.a b2 = hVar.b();
        if (b2 == null) {
            return true;
        }
        if (!this.f.b(b2)) {
            return false;
        }
        this.h.b(hVar);
        hVar.a((com.bumptech.glide.request.a) null);
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void a(com.bumptech.glide.request.a.h<?> hVar, com.bumptech.glide.request.a aVar) {
        this.h.a(hVar);
        this.f.a(aVar);
    }

    /* access modifiers changed from: 0000 */
    public d h() {
        return this.l;
    }

    /* access modifiers changed from: 0000 */
    @NonNull
    public <T> h<?, T> b(Class<T> cls) {
        return this.a.e().a(cls);
    }

    public String toString() {
        return super.toString() + "{tracker=" + this.f + ", treeNode=" + this.g + "}";
    }
}
