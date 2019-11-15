package com.bumptech.glide.load.resource.d;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.f;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.h;
import com.bumptech.glide.request.b.d;
import com.bumptech.glide.util.i;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GifFrameLoader */
class g {
    final com.bumptech.glide.g a;
    private final GifDecoder b;
    private final Handler c;
    private final List<b> d;
    private final e e;
    private boolean f;
    private boolean g;
    private boolean h;
    private f<Bitmap> i;
    private a j;
    private boolean k;
    private a l;
    private Bitmap m;
    private h<Bitmap> n;

    /* compiled from: GifFrameLoader */
    static class a extends com.bumptech.glide.request.a.f<Bitmap> {
        final int a;
        private final Handler b;
        private final long c;
        private Bitmap d;

        a(Handler handler, int i, long j) {
            this.b = handler;
            this.a = i;
            this.c = j;
        }

        /* access modifiers changed from: 0000 */
        public Bitmap a() {
            return this.d;
        }

        public void a(Bitmap bitmap, d<? super Bitmap> dVar) {
            this.d = bitmap;
            this.b.sendMessageAtTime(this.b.obtainMessage(1, this), this.c);
        }
    }

    /* compiled from: GifFrameLoader */
    public interface b {
        void f();
    }

    /* compiled from: GifFrameLoader */
    private class c implements Callback {
        c() {
        }

        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                g.this.a((a) message.obj);
                return true;
            }
            if (message.what == 2) {
                g.this.a.a((com.bumptech.glide.request.a.h<?>) (a) message.obj);
            }
            return false;
        }
    }

    public g(com.bumptech.glide.c cVar, GifDecoder gifDecoder, int i2, int i3, h<Bitmap> hVar, Bitmap bitmap) {
        this(cVar.a(), com.bumptech.glide.c.b(cVar.c()), gifDecoder, null, a(com.bumptech.glide.c.b(cVar.c()), i2, i3), hVar, bitmap);
    }

    g(e eVar, com.bumptech.glide.g gVar, GifDecoder gifDecoder, Handler handler, f<Bitmap> fVar, h<Bitmap> hVar, Bitmap bitmap) {
        this.d = new ArrayList();
        this.f = false;
        this.g = false;
        this.h = false;
        this.a = gVar;
        if (handler == null) {
            handler = new Handler(Looper.getMainLooper(), new c());
        }
        this.e = eVar;
        this.c = handler;
        this.i = fVar;
        this.b = gifDecoder;
        a(hVar, bitmap);
    }

    /* access modifiers changed from: 0000 */
    public void a(h<Bitmap> hVar, Bitmap bitmap) {
        this.n = (h) com.bumptech.glide.util.h.a(hVar);
        this.m = (Bitmap) com.bumptech.glide.util.h.a(bitmap);
        this.i = this.i.a(new com.bumptech.glide.request.d().a(hVar));
    }

    /* access modifiers changed from: 0000 */
    public Bitmap a() {
        return this.m;
    }

    /* access modifiers changed from: 0000 */
    public void a(b bVar) {
        if (this.k) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        boolean isEmpty = this.d.isEmpty();
        if (this.d.contains(bVar)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        this.d.add(bVar);
        if (isEmpty) {
            l();
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(b bVar) {
        this.d.remove(bVar);
        if (this.d.isEmpty()) {
            m();
        }
    }

    /* access modifiers changed from: 0000 */
    public int b() {
        return i().getWidth();
    }

    /* access modifiers changed from: 0000 */
    public int c() {
        return i().getHeight();
    }

    /* access modifiers changed from: 0000 */
    public int d() {
        return this.b.g() + k();
    }

    /* access modifiers changed from: 0000 */
    public int e() {
        if (this.j != null) {
            return this.j.a;
        }
        return -1;
    }

    private int k() {
        return i.a(i().getWidth(), i().getHeight(), i().getConfig());
    }

    /* access modifiers changed from: 0000 */
    public ByteBuffer f() {
        return this.b.a().asReadOnlyBuffer();
    }

    /* access modifiers changed from: 0000 */
    public int g() {
        return this.b.d();
    }

    private void l() {
        if (!this.f) {
            this.f = true;
            this.k = false;
            n();
        }
    }

    private void m() {
        this.f = false;
    }

    /* access modifiers changed from: 0000 */
    public void h() {
        this.d.clear();
        o();
        m();
        if (this.j != null) {
            this.a.a((com.bumptech.glide.request.a.h<?>) this.j);
            this.j = null;
        }
        if (this.l != null) {
            this.a.a((com.bumptech.glide.request.a.h<?>) this.l);
            this.l = null;
        }
        this.b.i();
        this.k = true;
    }

    /* access modifiers changed from: 0000 */
    public Bitmap i() {
        return this.j != null ? this.j.a() : this.m;
    }

    private void n() {
        if (this.f && !this.g) {
            if (this.h) {
                this.b.f();
                this.h = false;
            }
            this.g = true;
            long c2 = ((long) this.b.c()) + SystemClock.uptimeMillis();
            this.b.b();
            this.l = new a(this.c, this.b.e(), c2);
            this.i.clone().a(com.bumptech.glide.request.d.a(j())).a((Object) this.b).a(this.l);
        }
    }

    private void o() {
        if (this.m != null) {
            this.e.a(this.m);
            this.m = null;
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(a aVar) {
        if (this.k) {
            this.c.obtainMessage(2, aVar).sendToTarget();
            return;
        }
        if (aVar.a() != null) {
            o();
            a aVar2 = this.j;
            this.j = aVar;
            for (int size = this.d.size() - 1; size >= 0; size--) {
                ((b) this.d.get(size)).f();
            }
            if (aVar2 != null) {
                this.c.obtainMessage(2, aVar2).sendToTarget();
            }
        }
        this.g = false;
        n();
    }

    private static f<Bitmap> a(com.bumptech.glide.g gVar, int i2, int i3) {
        return gVar.f().a(com.bumptech.glide.request.d.a(com.bumptech.glide.load.engine.g.b).a(true).a(i2, i3));
    }

    static com.bumptech.glide.load.c j() {
        return new com.bumptech.glide.d.b(Double.valueOf(Math.random()));
    }
}
