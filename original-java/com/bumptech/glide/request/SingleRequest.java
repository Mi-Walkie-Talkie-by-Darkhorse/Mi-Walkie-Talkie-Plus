package com.bumptech.glide.request;

import android.graphics.drawable.Drawable;
import android.support.annotation.DrawableRes;
import android.support.annotation.Nullable;
import android.support.v4.content.res.ResourcesCompat;
import android.support.v4.util.Pools.Pool;
import android.support.v7.content.res.AppCompatResources;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.e;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.h.d;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.request.a.g;
import com.bumptech.glide.request.a.h;
import com.bumptech.glide.util.a.a;
import com.bumptech.glide.util.a.a.C0023a;
import com.bumptech.glide.util.a.a.c;
import com.bumptech.glide.util.a.b;
import com.bumptech.glide.util.i;
import org.bouncycastle.crypto.tls.CipherSuite;

public final class SingleRequest<R> implements a, g, e, c {
    private static final Pool<SingleRequest<?>> a = a.a((int) CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, (C0023a<T>) new C0023a<SingleRequest<?>>() {
        /* renamed from: a */
        public SingleRequest<?> b() {
            return new SingleRequest<>();
        }
    });
    private static boolean z = true;
    private boolean b;
    private final String c = String.valueOf(super.hashCode());
    private final b d = b.a();
    private b e;
    private e f;
    @Nullable
    private Object g;
    private Class<R> h;
    private d i;
    private int j;
    private int k;
    private Priority l;
    private h<R> m;
    private c<R> n;
    private com.bumptech.glide.load.engine.h o;
    private com.bumptech.glide.request.b.e<? super R> p;
    private q<R> q;
    private d r;
    private long s;
    private Status t;
    private Drawable u;
    private Drawable v;
    private Drawable w;
    private int x;
    private int y;

    private enum Status {
        PENDING,
        RUNNING,
        WAITING_FOR_SIZE,
        COMPLETE,
        FAILED,
        CANCELLED,
        CLEARED,
        PAUSED
    }

    public static <R> SingleRequest<R> a(e eVar, Object obj, Class<R> cls, d dVar, int i2, int i3, Priority priority, h<R> hVar, c<R> cVar, b bVar, com.bumptech.glide.load.engine.h hVar2, com.bumptech.glide.request.b.e<? super R> eVar2) {
        SingleRequest<R> singleRequest = (SingleRequest) a.acquire();
        if (singleRequest == null) {
            singleRequest = new SingleRequest<>();
        }
        singleRequest.b(eVar, obj, cls, dVar, i2, i3, priority, hVar, cVar, bVar, hVar2, eVar2);
        return singleRequest;
    }

    SingleRequest() {
    }

    private void b(e eVar, Object obj, Class<R> cls, d dVar, int i2, int i3, Priority priority, h<R> hVar, c<R> cVar, b bVar, com.bumptech.glide.load.engine.h hVar2, com.bumptech.glide.request.b.e<? super R> eVar2) {
        this.f = eVar;
        this.g = obj;
        this.h = cls;
        this.i = dVar;
        this.j = i2;
        this.k = i3;
        this.l = priority;
        this.m = hVar;
        this.n = cVar;
        this.e = bVar;
        this.o = hVar2;
        this.p = eVar2;
        this.t = Status.PENDING;
    }

    public b b_() {
        return this.d;
    }

    public void i() {
        k();
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = -1;
        this.k = -1;
        this.m = null;
        this.n = null;
        this.e = null;
        this.p = null;
        this.r = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = -1;
        this.y = -1;
        a.release(this);
    }

    public void a() {
        k();
        this.d.b();
        this.s = com.bumptech.glide.util.d.a();
        if (this.g == null) {
            if (i.a(this.j, this.k)) {
                this.x = this.j;
                this.y = this.k;
            }
            a(new GlideException("Received null model"), n() == null ? 5 : 3);
        } else if (this.t == Status.RUNNING) {
            throw new IllegalArgumentException("Cannot restart a running request");
        } else if (this.t == Status.COMPLETE) {
            a(this.q, DataSource.MEMORY_CACHE);
        } else {
            this.t = Status.WAITING_FOR_SIZE;
            if (i.a(this.j, this.k)) {
                a(this.j, this.k);
            } else {
                this.m.a((g) this);
            }
            if ((this.t == Status.RUNNING || this.t == Status.WAITING_FOR_SIZE) && q()) {
                this.m.b(m());
            }
            if (Log.isLoggable("Request", 2)) {
                a("finished run method in " + com.bumptech.glide.util.d.a(this.s));
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void j() {
        k();
        this.d.b();
        this.m.b((g) this);
        this.t = Status.CANCELLED;
        if (this.r != null) {
            this.r.a();
            this.r = null;
        }
    }

    private void k() {
        if (this.b) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you must do so, consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
    }

    public void c() {
        i.a();
        k();
        if (this.t != Status.CLEARED) {
            j();
            if (this.q != null) {
                a(this.q);
            }
            if (q()) {
                this.m.a(m());
            }
            this.t = Status.CLEARED;
        }
    }

    public void b() {
        c();
        this.t = Status.PAUSED;
    }

    private void a(q<?> qVar) {
        this.o.a(qVar);
        this.q = null;
    }

    public boolean e() {
        return this.t == Status.RUNNING || this.t == Status.WAITING_FOR_SIZE;
    }

    public boolean f() {
        return this.t == Status.COMPLETE;
    }

    public boolean g() {
        return f();
    }

    public boolean h() {
        return this.t == Status.CANCELLED || this.t == Status.CLEARED;
    }

    private Drawable l() {
        if (this.u == null) {
            this.u = this.i.n();
            if (this.u == null && this.i.o() > 0) {
                this.u = a(this.i.o());
            }
        }
        return this.u;
    }

    private Drawable m() {
        if (this.v == null) {
            this.v = this.i.q();
            if (this.v == null && this.i.p() > 0) {
                this.v = a(this.i.p());
            }
        }
        return this.v;
    }

    private Drawable n() {
        if (this.w == null) {
            this.w = this.i.s();
            if (this.w == null && this.i.r() > 0) {
                this.w = a(this.i.r());
            }
        }
        return this.w;
    }

    private Drawable a(@DrawableRes int i2) {
        if (z) {
            return b(i2);
        }
        return c(i2);
    }

    private Drawable b(@DrawableRes int i2) {
        try {
            return AppCompatResources.getDrawable(this.f, i2);
        } catch (NoClassDefFoundError e2) {
            z = false;
            return c(i2);
        }
    }

    private Drawable c(@DrawableRes int i2) {
        return ResourcesCompat.getDrawable(this.f.getResources(), i2, this.i.t());
    }

    private void o() {
        if (q()) {
            Drawable drawable = null;
            if (this.g == null) {
                drawable = n();
            }
            if (drawable == null) {
                drawable = l();
            }
            if (drawable == null) {
                drawable = m();
            }
            this.m.c(drawable);
        }
    }

    public void a(int i2, int i3) {
        this.d.b();
        if (Log.isLoggable("Request", 2)) {
            a("Got onSizeReady in " + com.bumptech.glide.util.d.a(this.s));
        }
        if (this.t == Status.WAITING_FOR_SIZE) {
            this.t = Status.RUNNING;
            float B = this.i.B();
            this.x = a(i2, B);
            this.y = a(i3, B);
            if (Log.isLoggable("Request", 2)) {
                a("finished setup for calling load in " + com.bumptech.glide.util.d.a(this.s));
            }
            this.r = this.o.a(this.f, this.g, this.i.v(), this.x, this.y, this.i.l(), this.h, this.l, this.i.m(), this.i.i(), this.i.j(), this.i.C(), this.i.k(), this.i.u(), this.i.D(), this.i.E(), this);
            if (Log.isLoggable("Request", 2)) {
                a("finished onSizeReady in " + com.bumptech.glide.util.d.a(this.s));
            }
        }
    }

    private static int a(int i2, float f2) {
        return i2 == Integer.MIN_VALUE ? i2 : Math.round(((float) i2) * f2);
    }

    private boolean p() {
        return this.e == null || this.e.b(this);
    }

    private boolean q() {
        return this.e == null || this.e.c(this);
    }

    private boolean r() {
        return this.e == null || !this.e.d();
    }

    private void s() {
        if (this.e != null) {
            this.e.d(this);
        }
    }

    public void a(q<?> qVar, DataSource dataSource) {
        this.d.b();
        this.r = null;
        if (qVar == null) {
            a(new GlideException("Expected to receive a Resource<R> with an object of " + this.h + " inside, but instead got null."));
            return;
        }
        Object c2 = qVar.c();
        if (c2 == null || !this.h.isAssignableFrom(c2.getClass())) {
            a(qVar);
            a(new GlideException("Expected to receive an object of " + this.h + " but instead got " + (c2 != null ? c2.getClass() : "") + "{" + c2 + "} inside Resource{" + qVar + "}." + (c2 != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.")));
        } else if (!p()) {
            a(qVar);
            this.t = Status.COMPLETE;
        } else {
            a(qVar, c2, dataSource);
        }
    }

    /* JADX INFO: finally extract failed */
    /* JADX WARNING: Code restructure failed: missing block: B:8:0x008b, code lost:
        if (r7.n.a(r9, r7.g, r7.m, r10, r5) == false) goto L_0x008d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(com.bumptech.glide.load.engine.q<R> r8, R r9, com.bumptech.glide.load.DataSource r10) {
        /*
            r7 = this;
            r6 = 0
            boolean r5 = r7.r()
            com.bumptech.glide.request.SingleRequest$Status r0 = com.bumptech.glide.request.SingleRequest.Status.COMPLETE
            r7.t = r0
            r7.q = r8
            com.bumptech.glide.e r0 = r7.f
            int r0 = r0.d()
            r1 = 3
            if (r0 > r1) goto L_0x0078
            java.lang.String r0 = "Glide"
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Finished loading "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.Class r2 = r9.getClass()
            java.lang.String r2 = r2.getSimpleName()
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " from "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.StringBuilder r1 = r1.append(r10)
            java.lang.String r2 = " for "
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.Object r2 = r7.g
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " with size ["
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r7.x
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "x"
            java.lang.StringBuilder r1 = r1.append(r2)
            int r2 = r7.y
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = "] in "
            java.lang.StringBuilder r1 = r1.append(r2)
            long r2 = r7.s
            double r2 = com.bumptech.glide.util.d.a(r2)
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r2 = " ms"
            java.lang.StringBuilder r1 = r1.append(r2)
            java.lang.String r1 = r1.toString()
            android.util.Log.d(r0, r1)
        L_0x0078:
            r0 = 1
            r7.b = r0
            com.bumptech.glide.request.c<R> r0 = r7.n     // Catch:{ all -> 0x009e }
            if (r0 == 0) goto L_0x008d
            com.bumptech.glide.request.c<R> r0 = r7.n     // Catch:{ all -> 0x009e }
            java.lang.Object r2 = r7.g     // Catch:{ all -> 0x009e }
            com.bumptech.glide.request.a.h<R> r3 = r7.m     // Catch:{ all -> 0x009e }
            r1 = r9
            r4 = r10
            boolean r0 = r0.a(r1, r2, r3, r4, r5)     // Catch:{ all -> 0x009e }
            if (r0 != 0) goto L_0x0098
        L_0x008d:
            com.bumptech.glide.request.b.e<? super R> r0 = r7.p     // Catch:{ all -> 0x009e }
            com.bumptech.glide.request.b.d r0 = r0.a(r10, r5)     // Catch:{ all -> 0x009e }
            com.bumptech.glide.request.a.h<R> r1 = r7.m     // Catch:{ all -> 0x009e }
            r1.a(r9, r0)     // Catch:{ all -> 0x009e }
        L_0x0098:
            r7.b = r6
            r7.s()
            return
        L_0x009e:
            r0 = move-exception
            r7.b = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.SingleRequest.a(com.bumptech.glide.load.engine.q, java.lang.Object, com.bumptech.glide.load.DataSource):void");
    }

    public void a(GlideException glideException) {
        a(glideException, 5);
    }

    private void a(GlideException glideException, int i2) {
        this.d.b();
        int d2 = this.f.d();
        if (d2 <= i2) {
            Log.w("Glide", "Load failed for " + this.g + " with size [" + this.x + "x" + this.y + "]", glideException);
            if (d2 <= 4) {
                glideException.a("Glide");
            }
        }
        this.r = null;
        this.t = Status.FAILED;
        this.b = true;
        try {
            if (this.n == null || !this.n.a(glideException, this.g, this.m, r())) {
                o();
            }
        } finally {
            this.b = false;
        }
    }

    public boolean a(a aVar) {
        if (!(aVar instanceof SingleRequest)) {
            return false;
        }
        SingleRequest singleRequest = (SingleRequest) aVar;
        if (this.j != singleRequest.j || this.k != singleRequest.k || !i.b(this.g, singleRequest.g) || !this.h.equals(singleRequest.h) || !this.i.equals(singleRequest.i) || this.l != singleRequest.l) {
            return false;
        }
        return true;
    }

    private void a(String str) {
        Log.v("Request", str + " this: " + this.c);
    }
}
