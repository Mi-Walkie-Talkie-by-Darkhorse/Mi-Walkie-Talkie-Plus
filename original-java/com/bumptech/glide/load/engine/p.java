package com.bumptech.glide.load.engine;

import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.util.a.a;
import com.bumptech.glide.util.a.a.C0023a;
import com.bumptech.glide.util.a.a.c;
import com.bumptech.glide.util.a.b;

/* compiled from: LockedResource */
final class p<Z> implements q<Z>, c {
    private static final Pool<p<?>> a = a.b(20, new C0023a<p<?>>() {
        /* renamed from: a */
        public p<?> b() {
            return new p<>();
        }
    });
    private final b b = b.a();
    private q<Z> c;
    private boolean d;
    private boolean e;

    static <Z> p<Z> a(q<Z> qVar) {
        p<Z> pVar = (p) a.acquire();
        pVar.b(qVar);
        return pVar;
    }

    p() {
    }

    private void b(q<Z> qVar) {
        this.e = false;
        this.d = true;
        this.c = qVar;
    }

    private void f() {
        this.c = null;
        a.release(this);
    }

    public synchronized void a() {
        this.b.b();
        if (!this.d) {
            throw new IllegalStateException("Already unlocked");
        }
        this.d = false;
        if (this.e) {
            e();
        }
    }

    public Class<Z> b() {
        return this.c.b();
    }

    public Z c() {
        return this.c.c();
    }

    public int d() {
        return this.c.d();
    }

    public synchronized void e() {
        this.b.b();
        this.e = true;
        if (!this.d) {
            this.c.e();
            f();
        }
    }

    public b b_() {
        return this.b;
    }
}
