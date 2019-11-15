package com.bumptech.glide.request;

import android.support.annotation.Nullable;

/* compiled from: ThumbnailRequestCoordinator */
public class f implements a, b {
    private a a;
    private a b;
    @Nullable
    private b c;
    private boolean d;

    public f() {
        this(null);
    }

    public f(b bVar) {
        this.c = bVar;
    }

    public void a(a aVar, a aVar2) {
        this.a = aVar;
        this.b = aVar2;
    }

    public boolean b(a aVar) {
        return j() && (aVar.equals(this.a) || !this.a.g());
    }

    private boolean j() {
        return this.c == null || this.c.b(this);
    }

    public boolean c(a aVar) {
        return k() && aVar.equals(this.a) && !d();
    }

    private boolean k() {
        return this.c == null || this.c.c(this);
    }

    public boolean d() {
        return l() || g();
    }

    public void d(a aVar) {
        if (!aVar.equals(this.b)) {
            if (this.c != null) {
                this.c.d(this);
            }
            if (!this.b.f()) {
                this.b.c();
            }
        }
    }

    private boolean l() {
        return this.c != null && this.c.d();
    }

    public void a() {
        this.d = true;
        if (!this.b.e()) {
            this.b.a();
        }
        if (this.d && !this.a.e()) {
            this.a.a();
        }
    }

    public void b() {
        this.d = false;
        this.a.b();
        this.b.b();
    }

    public void c() {
        this.d = false;
        this.b.c();
        this.a.c();
    }

    public boolean e() {
        return this.a.e();
    }

    public boolean f() {
        return this.a.f() || this.b.f();
    }

    public boolean g() {
        return this.a.g() || this.b.g();
    }

    public boolean h() {
        return this.a.h();
    }

    public void i() {
        this.a.i();
        this.b.i();
    }

    public boolean a(a aVar) {
        if (!(aVar instanceof f)) {
            return false;
        }
        f fVar = (f) aVar;
        if (this.a == null) {
            if (fVar.a != null) {
                return false;
            }
        } else if (!this.a.a(fVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (fVar.b != null) {
                return false;
            }
        } else if (!this.b.a(fVar.b)) {
            return false;
        }
        return true;
    }
}
