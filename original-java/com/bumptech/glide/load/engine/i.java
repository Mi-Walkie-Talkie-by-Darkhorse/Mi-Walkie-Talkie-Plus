package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.request.e;
import com.bumptech.glide.util.a.a.c;
import java.util.ArrayList;
import java.util.List;

/* compiled from: EngineJob */
class i<R> implements a<R>, c {
    private static final a a = new a();
    private static final Handler b = new Handler(Looper.getMainLooper(), new b());
    private final List<e> c;
    private final com.bumptech.glide.util.a.b d;
    private final Pool<i<?>> e;
    private final a f;
    private final j g;
    private final com.bumptech.glide.load.engine.c.a h;
    private final com.bumptech.glide.load.engine.c.a i;
    private final com.bumptech.glide.load.engine.c.a j;
    private com.bumptech.glide.load.c k;
    private boolean l;
    private boolean m;
    private q<?> n;
    private DataSource o;
    private boolean p;
    private GlideException q;
    private boolean r;
    private List<e> s;
    private m<?> t;
    private DecodeJob<R> u;
    private volatile boolean v;

    /* compiled from: EngineJob */
    static class a {
        a() {
        }

        public <R> m<R> a(q<R> qVar, boolean z) {
            return new m<>(qVar, z);
        }
    }

    /* compiled from: EngineJob */
    private static class b implements Callback {
        b() {
        }

        public boolean handleMessage(Message message) {
            i iVar = (i) message.obj;
            switch (message.what) {
                case 1:
                    iVar.b();
                    break;
                case 2:
                    iVar.e();
                    break;
                case 3:
                    iVar.c();
                    break;
                default:
                    throw new IllegalStateException("Unrecognized message: " + message.what);
            }
            return true;
        }
    }

    i(com.bumptech.glide.load.engine.c.a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, j jVar, Pool<i<?>> pool) {
        this(aVar, aVar2, aVar3, jVar, pool, a);
    }

    i(com.bumptech.glide.load.engine.c.a aVar, com.bumptech.glide.load.engine.c.a aVar2, com.bumptech.glide.load.engine.c.a aVar3, j jVar, Pool<i<?>> pool, a aVar4) {
        this.c = new ArrayList(2);
        this.d = com.bumptech.glide.util.a.b.a();
        this.h = aVar;
        this.i = aVar2;
        this.j = aVar3;
        this.g = jVar;
        this.e = pool;
        this.f = aVar4;
    }

    /* access modifiers changed from: 0000 */
    public i<R> a(com.bumptech.glide.load.c cVar, boolean z, boolean z2) {
        this.k = cVar;
        this.l = z;
        this.m = z2;
        return this;
    }

    public void b(DecodeJob<R> decodeJob) {
        com.bumptech.glide.load.engine.c.a f2;
        this.u = decodeJob;
        if (decodeJob.a()) {
            f2 = this.h;
        } else {
            f2 = f();
        }
        f2.execute(decodeJob);
    }

    public void a(e eVar) {
        com.bumptech.glide.util.i.a();
        this.d.b();
        if (this.p) {
            eVar.a(this.t, this.o);
        } else if (this.r) {
            eVar.a(this.q);
        } else {
            this.c.add(eVar);
        }
    }

    public void b(e eVar) {
        com.bumptech.glide.util.i.a();
        this.d.b();
        if (this.p || this.r) {
            c(eVar);
            return;
        }
        this.c.remove(eVar);
        if (this.c.isEmpty()) {
            a();
        }
    }

    private com.bumptech.glide.load.engine.c.a f() {
        return this.m ? this.j : this.i;
    }

    private void c(e eVar) {
        if (this.s == null) {
            this.s = new ArrayList(2);
        }
        if (!this.s.contains(eVar)) {
            this.s.add(eVar);
        }
    }

    private boolean d(e eVar) {
        return this.s != null && this.s.contains(eVar);
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        if (!this.r && !this.p && !this.v) {
            this.v = true;
            this.u.b();
            this.g.a(this, this.k);
        }
    }

    /* access modifiers changed from: 0000 */
    public void b() {
        this.d.b();
        if (this.v) {
            this.n.e();
            a(false);
        } else if (this.c.isEmpty()) {
            throw new IllegalStateException("Received a resource without any callbacks to notify");
        } else if (this.p) {
            throw new IllegalStateException("Already have resource");
        } else {
            this.t = this.f.a(this.n, this.l);
            this.p = true;
            this.t.f();
            this.g.a(this.k, this.t);
            for (e eVar : this.c) {
                if (!d(eVar)) {
                    this.t.f();
                    eVar.a(this.t, this.o);
                }
            }
            this.t.g();
            a(false);
        }
    }

    /* access modifiers changed from: 0000 */
    public void c() {
        this.d.b();
        if (!this.v) {
            throw new IllegalStateException("Not cancelled");
        }
        this.g.a(this, this.k);
        a(false);
    }

    private void a(boolean z) {
        com.bumptech.glide.util.i.a();
        this.c.clear();
        this.k = null;
        this.t = null;
        this.n = null;
        if (this.s != null) {
            this.s.clear();
        }
        this.r = false;
        this.v = false;
        this.p = false;
        this.u.a(z);
        this.u = null;
        this.q = null;
        this.o = null;
        this.e.release(this);
    }

    public void a(q<R> qVar, DataSource dataSource) {
        this.n = qVar;
        this.o = dataSource;
        b.obtainMessage(1, this).sendToTarget();
    }

    public void a(GlideException glideException) {
        this.q = glideException;
        b.obtainMessage(2, this).sendToTarget();
    }

    public void a(DecodeJob<?> decodeJob) {
        f().execute(decodeJob);
    }

    /* access modifiers changed from: 0000 */
    public void e() {
        this.d.b();
        if (this.v) {
            a(false);
        } else if (this.c.isEmpty()) {
            throw new IllegalStateException("Received an exception without any callbacks to notify");
        } else if (this.r) {
            throw new IllegalStateException("Already failed once");
        } else {
            this.r = true;
            this.g.a(this.k, null);
            for (e eVar : this.c) {
                if (!d(eVar)) {
                    eVar.a(this.q);
                }
            }
            a(false);
        }
    }

    public com.bumptech.glide.util.a.b b_() {
        return this.d;
    }
}
