package com.bumptech.glide.request;

import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.CheckResult;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.d.a;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.engine.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.i;
import com.bumptech.glide.load.resource.bitmap.k;
import com.bumptech.glide.load.resource.bitmap.l;
import com.bumptech.glide.load.resource.d.f;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RequestOptions */
public class d implements Cloneable {
    private int a;
    private float b = 1.0f;
    @NonNull
    private g c = g.e;
    @NonNull
    private Priority d = Priority.NORMAL;
    @Nullable
    private Drawable e;
    private int f;
    @Nullable
    private Drawable g;
    private int h;
    private boolean i = true;
    private int j = -1;
    private int k = -1;
    @NonNull
    private c l = a.a();
    private boolean m;
    private boolean n = true;
    @Nullable
    private Drawable o;
    private int p;
    @NonNull
    private e q = new e();
    @NonNull
    private Map<Class<?>, h<?>> r = new HashMap();
    @NonNull
    private Class<?> s = Object.class;
    private boolean t;
    @Nullable
    private Theme u;
    private boolean v;
    private boolean w;
    private boolean x;
    private boolean y = true;

    @CheckResult
    public static d a(@NonNull g gVar) {
        return new d().b(gVar);
    }

    @CheckResult
    public static d a(@NonNull c cVar) {
        return new d().b(cVar);
    }

    @CheckResult
    public static d a(@NonNull Class<?> cls) {
        return new d().b(cls);
    }

    private static boolean b(int i2, int i3) {
        return (i2 & i3) != 0;
    }

    @CheckResult
    public d a(float f2) {
        if (this.v) {
            return clone().a(f2);
        }
        if (f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("sizeMultiplier must be between 0 and 1");
        }
        this.b = f2;
        this.a |= 2;
        return F();
    }

    @CheckResult
    public d b(@NonNull g gVar) {
        if (this.v) {
            return clone().b(gVar);
        }
        this.c = (g) com.bumptech.glide.util.h.a(gVar);
        this.a |= 4;
        return F();
    }

    @CheckResult
    public d a(@NonNull Priority priority) {
        if (this.v) {
            return clone().a(priority);
        }
        this.d = (Priority) com.bumptech.glide.util.h.a(priority);
        this.a |= 8;
        return F();
    }

    @CheckResult
    public d a(int i2) {
        if (this.v) {
            return clone().a(i2);
        }
        this.h = i2;
        this.a |= 128;
        return F();
    }

    @CheckResult
    public d b(int i2) {
        if (this.v) {
            return clone().b(i2);
        }
        this.f = i2;
        this.a |= 32;
        return F();
    }

    @CheckResult
    public d a(boolean z) {
        boolean z2 = true;
        if (this.v) {
            return clone().a(true);
        }
        if (z) {
            z2 = false;
        }
        this.i = z2;
        this.a |= 256;
        return F();
    }

    @CheckResult
    public d a(int i2, int i3) {
        if (this.v) {
            return clone().a(i2, i3);
        }
        this.k = i2;
        this.j = i3;
        this.a |= 512;
        return F();
    }

    @CheckResult
    public d b(@NonNull c cVar) {
        if (this.v) {
            return clone().b(cVar);
        }
        this.l = (c) com.bumptech.glide.util.h.a(cVar);
        this.a |= 1024;
        return F();
    }

    @CheckResult
    /* renamed from: a */
    public d clone() {
        try {
            d dVar = (d) super.clone();
            dVar.q = new e();
            dVar.q.a(this.q);
            dVar.r = new HashMap();
            dVar.r.putAll(this.r);
            dVar.t = false;
            dVar.v = false;
            return dVar;
        } catch (CloneNotSupportedException e2) {
            throw new RuntimeException(e2);
        }
    }

    @CheckResult
    public <T> d a(@NonNull com.bumptech.glide.load.d<T> dVar, @NonNull T t2) {
        if (this.v) {
            return clone().a(dVar, t2);
        }
        com.bumptech.glide.util.h.a(dVar);
        com.bumptech.glide.util.h.a(t2);
        this.q.a(dVar, t2);
        return F();
    }

    @CheckResult
    public d b(@NonNull Class<?> cls) {
        if (this.v) {
            return clone().b(cls);
        }
        this.s = (Class) com.bumptech.glide.util.h.a(cls);
        this.a |= 4096;
        return F();
    }

    public final boolean b() {
        return this.n;
    }

    public final boolean c() {
        return c(2048);
    }

    @CheckResult
    public d a(@NonNull DownsampleStrategy downsampleStrategy) {
        return a(k.b, (T) com.bumptech.glide.util.h.a(downsampleStrategy));
    }

    @CheckResult
    public d d() {
        return a(DownsampleStrategy.b, (h<Bitmap>) new com.bumptech.glide.load.resource.bitmap.h<Bitmap>());
    }

    @CheckResult
    public d e() {
        return c(DownsampleStrategy.a, new l());
    }

    @CheckResult
    public d f() {
        return c(DownsampleStrategy.e, new i());
    }

    /* access modifiers changed from: 0000 */
    public final d a(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar) {
        if (this.v) {
            return clone().a(downsampleStrategy, hVar);
        }
        a(downsampleStrategy);
        return b(hVar);
    }

    /* access modifiers changed from: 0000 */
    @CheckResult
    public final d b(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar) {
        if (this.v) {
            return clone().b(downsampleStrategy, hVar);
        }
        a(downsampleStrategy);
        return a(hVar);
    }

    private d c(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar) {
        return a(downsampleStrategy, hVar, false);
    }

    private d a(DownsampleStrategy downsampleStrategy, h<Bitmap> hVar, boolean z) {
        d a2 = z ? b(downsampleStrategy, hVar) : a(downsampleStrategy, hVar);
        a2.y = true;
        return a2;
    }

    @CheckResult
    public d a(@NonNull h<Bitmap> hVar) {
        if (this.v) {
            return clone().a(hVar);
        }
        b(hVar);
        this.m = true;
        this.a |= 131072;
        return F();
    }

    @CheckResult
    public d b(h<Bitmap> hVar) {
        if (this.v) {
            return clone().b(hVar);
        }
        a(Bitmap.class, hVar);
        a(BitmapDrawable.class, (h<T>) new com.bumptech.glide.load.resource.bitmap.c<T>(hVar));
        a(com.bumptech.glide.load.resource.d.c.class, (h<T>) new f<T>(hVar));
        return F();
    }

    @CheckResult
    public <T> d a(Class<T> cls, h<T> hVar) {
        if (this.v) {
            return clone().a(cls, hVar);
        }
        com.bumptech.glide.util.h.a(cls);
        com.bumptech.glide.util.h.a(hVar);
        this.r.put(cls, hVar);
        this.a |= 2048;
        this.n = true;
        this.a |= 65536;
        this.y = false;
        return F();
    }

    @CheckResult
    public d a(d dVar) {
        if (this.v) {
            return clone().a(dVar);
        }
        if (b(dVar.a, 2)) {
            this.b = dVar.b;
        }
        if (b(dVar.a, 262144)) {
            this.w = dVar.w;
        }
        if (b(dVar.a, 4)) {
            this.c = dVar.c;
        }
        if (b(dVar.a, 8)) {
            this.d = dVar.d;
        }
        if (b(dVar.a, 16)) {
            this.e = dVar.e;
        }
        if (b(dVar.a, 32)) {
            this.f = dVar.f;
        }
        if (b(dVar.a, 64)) {
            this.g = dVar.g;
        }
        if (b(dVar.a, 128)) {
            this.h = dVar.h;
        }
        if (b(dVar.a, 256)) {
            this.i = dVar.i;
        }
        if (b(dVar.a, 512)) {
            this.k = dVar.k;
            this.j = dVar.j;
        }
        if (b(dVar.a, 1024)) {
            this.l = dVar.l;
        }
        if (b(dVar.a, 4096)) {
            this.s = dVar.s;
        }
        if (b(dVar.a, 8192)) {
            this.o = dVar.o;
        }
        if (b(dVar.a, 16384)) {
            this.p = dVar.p;
        }
        if (b(dVar.a, 32768)) {
            this.u = dVar.u;
        }
        if (b(dVar.a, 65536)) {
            this.n = dVar.n;
        }
        if (b(dVar.a, 131072)) {
            this.m = dVar.m;
        }
        if (b(dVar.a, 2048)) {
            this.r.putAll(dVar.r);
            this.y = dVar.y;
        }
        if (b(dVar.a, 524288)) {
            this.x = dVar.x;
        }
        if (!this.n) {
            this.r.clear();
            this.a &= -2049;
            this.m = false;
            this.a &= -131073;
            this.y = true;
        }
        this.a |= dVar.a;
        this.q.a(dVar.q);
        return F();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        if (Float.compare(dVar.b, this.b) == 0 && this.f == dVar.f && com.bumptech.glide.util.i.a((Object) this.e, (Object) dVar.e) && this.h == dVar.h && com.bumptech.glide.util.i.a((Object) this.g, (Object) dVar.g) && this.p == dVar.p && com.bumptech.glide.util.i.a((Object) this.o, (Object) dVar.o) && this.i == dVar.i && this.j == dVar.j && this.k == dVar.k && this.m == dVar.m && this.n == dVar.n && this.w == dVar.w && this.x == dVar.x && this.c.equals(dVar.c) && this.d == dVar.d && this.q.equals(dVar.q) && this.r.equals(dVar.r) && this.s.equals(dVar.s) && com.bumptech.glide.util.i.a((Object) this.l, (Object) dVar.l) && com.bumptech.glide.util.i.a((Object) this.u, (Object) dVar.u)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return com.bumptech.glide.util.i.a((Object) this.u, com.bumptech.glide.util.i.a((Object) this.l, com.bumptech.glide.util.i.a((Object) this.s, com.bumptech.glide.util.i.a((Object) this.r, com.bumptech.glide.util.i.a((Object) this.q, com.bumptech.glide.util.i.a((Object) this.d, com.bumptech.glide.util.i.a((Object) this.c, com.bumptech.glide.util.i.a(this.x, com.bumptech.glide.util.i.a(this.w, com.bumptech.glide.util.i.a(this.n, com.bumptech.glide.util.i.a(this.m, com.bumptech.glide.util.i.b(this.k, com.bumptech.glide.util.i.b(this.j, com.bumptech.glide.util.i.a(this.i, com.bumptech.glide.util.i.a((Object) this.o, com.bumptech.glide.util.i.b(this.p, com.bumptech.glide.util.i.a((Object) this.g, com.bumptech.glide.util.i.b(this.h, com.bumptech.glide.util.i.a((Object) this.e, com.bumptech.glide.util.i.b(this.f, com.bumptech.glide.util.i.a(this.b)))))))))))))))))))));
    }

    public d g() {
        this.t = true;
        return this;
    }

    public d h() {
        if (!this.t || this.v) {
            this.v = true;
            return g();
        }
        throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
    }

    private d F() {
        if (!this.t) {
            return this;
        }
        throw new IllegalStateException("You cannot modify locked RequestOptions, consider clone()");
    }

    @NonNull
    public final Map<Class<?>, h<?>> i() {
        return this.r;
    }

    public final boolean j() {
        return this.m;
    }

    @NonNull
    public final e k() {
        return this.q;
    }

    @NonNull
    public final Class<?> l() {
        return this.s;
    }

    @NonNull
    public final g m() {
        return this.c;
    }

    @Nullable
    public final Drawable n() {
        return this.e;
    }

    public final int o() {
        return this.f;
    }

    public final int p() {
        return this.h;
    }

    @Nullable
    public final Drawable q() {
        return this.g;
    }

    public final int r() {
        return this.p;
    }

    @Nullable
    public final Drawable s() {
        return this.o;
    }

    @Nullable
    public final Theme t() {
        return this.u;
    }

    public final boolean u() {
        return this.i;
    }

    @NonNull
    public final c v() {
        return this.l;
    }

    public final boolean w() {
        return c(8);
    }

    @NonNull
    public final Priority x() {
        return this.d;
    }

    public final int y() {
        return this.k;
    }

    public final boolean z() {
        return com.bumptech.glide.util.i.a(this.k, this.j);
    }

    public final int A() {
        return this.j;
    }

    public final float B() {
        return this.b;
    }

    public boolean C() {
        return this.y;
    }

    private boolean c(int i2) {
        return b(this.a, i2);
    }

    public final boolean D() {
        return this.w;
    }

    public final boolean E() {
        return this.x;
    }
}
