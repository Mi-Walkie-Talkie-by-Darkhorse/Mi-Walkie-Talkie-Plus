package com.bumptech.glide.load.engine;

import android.os.Looper;
import com.bumptech.glide.load.c;
import com.bumptech.glide.util.h;

/* compiled from: EngineResource */
class m<Z> implements q<Z> {
    private final boolean a;
    private a b;
    private c c;
    private int d;
    private boolean e;
    private final q<Z> f;

    /* compiled from: EngineResource */
    interface a {
        void b(c cVar, m<?> mVar);
    }

    m(q<Z> qVar, boolean z) {
        this.f = (q) h.a(qVar);
        this.a = z;
    }

    /* access modifiers changed from: 0000 */
    public void a(c cVar, a aVar) {
        this.c = cVar;
        this.b = aVar;
    }

    /* access modifiers changed from: 0000 */
    public boolean a() {
        return this.a;
    }

    public Class<Z> b() {
        return this.f.b();
    }

    public Z c() {
        return this.f.c();
    }

    public int d() {
        return this.f.d();
    }

    public void e() {
        if (this.d > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        } else if (this.e) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        } else {
            this.e = true;
            this.f.e();
        }
    }

    /* access modifiers changed from: 0000 */
    public void f() {
        if (this.e) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        } else if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        } else {
            this.d++;
        }
    }

    /* access modifiers changed from: 0000 */
    public void g() {
        if (this.d <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        } else if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        } else {
            int i = this.d - 1;
            this.d = i;
            if (i == 0) {
                this.b.b(this.c, this);
            }
        }
    }

    public String toString() {
        return "EngineResource{isCacheable=" + this.a + ", listener=" + this.b + ", key=" + this.c + ", acquired=" + this.d + ", isRecycled=" + this.e + ", resource=" + this.f + '}';
    }
}
