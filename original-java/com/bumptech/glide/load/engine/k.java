package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.c;
import com.bumptech.glide.load.e;
import com.bumptech.glide.load.h;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey */
class k implements c {
    private final Object b;
    private final int c;
    private final int d;
    private final Class<?> e;
    private final Class<?> f;
    private final c g;
    private final Map<Class<?>, h<?>> h;
    private final e i;
    private int j;

    public k(Object obj, c cVar, int i2, int i3, Map<Class<?>, h<?>> map, Class<?> cls, Class<?> cls2, e eVar) {
        this.b = com.bumptech.glide.util.h.a(obj);
        this.g = (c) com.bumptech.glide.util.h.a(cVar, "Signature must not be null");
        this.c = i2;
        this.d = i3;
        this.h = (Map) com.bumptech.glide.util.h.a(map);
        this.e = (Class) com.bumptech.glide.util.h.a(cls, "Resource class must not be null");
        this.f = (Class) com.bumptech.glide.util.h.a(cls2, "Transcode class must not be null");
        this.i = (e) com.bumptech.glide.util.h.a(eVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (!this.b.equals(kVar.b) || !this.g.equals(kVar.g) || this.d != kVar.d || this.c != kVar.c || !this.h.equals(kVar.h) || !this.e.equals(kVar.e) || !this.f.equals(kVar.f) || !this.i.equals(kVar.i)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.j == 0) {
            this.j = this.b.hashCode();
            this.j = (this.j * 31) + this.g.hashCode();
            this.j = (this.j * 31) + this.c;
            this.j = (this.j * 31) + this.d;
            this.j = (this.j * 31) + this.h.hashCode();
            this.j = (this.j * 31) + this.e.hashCode();
            this.j = (this.j * 31) + this.f.hashCode();
            this.j = (this.j * 31) + this.i.hashCode();
        }
        return this.j;
    }

    public String toString() {
        return "EngineKey{model=" + this.b + ", width=" + this.c + ", height=" + this.d + ", resourceClass=" + this.e + ", transcodeClass=" + this.f + ", signature=" + this.g + ", hashCode=" + this.j + ", transformations=" + this.h + ", options=" + this.i + '}';
    }

    public void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
