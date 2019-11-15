package com.bumptech.glide.load.engine;

import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry.NoModelLoaderAvailableException;
import com.bumptech.glide.Registry.NoSourceEncoderAvailableException;
import com.bumptech.glide.load.b.n;
import com.bumptech.glide.load.b.n.a;
import com.bumptech.glide.load.c;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.resource.b;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* compiled from: DecodeHelper */
final class e<Transcode> {
    private final List<a<?>> a = new ArrayList();
    private final List<c> b = new ArrayList();
    private com.bumptech.glide.e c;
    private Object d;
    private int e;
    private int f;
    private Class<?> g;
    private d h;
    private com.bumptech.glide.load.e i;
    private Map<Class<?>, h<?>> j;
    private Class<Transcode> k;
    private boolean l;
    private boolean m;
    private c n;
    private Priority o;
    private g p;
    private boolean q;
    private boolean r;

    e() {
    }

    /* access modifiers changed from: 0000 */
    public <R> e<R> a(com.bumptech.glide.e eVar, Object obj, c cVar, int i2, int i3, g gVar, Class<?> cls, Class<R> cls2, Priority priority, com.bumptech.glide.load.e eVar2, Map<Class<?>, h<?>> map, boolean z, boolean z2, d dVar) {
        this.c = eVar;
        this.d = obj;
        this.n = cVar;
        this.e = i2;
        this.f = i3;
        this.p = gVar;
        this.g = cls;
        this.h = dVar;
        this.k = cls2;
        this.o = priority;
        this.i = eVar2;
        this.j = map;
        this.q = z;
        this.r = z2;
        return this;
    }

    /* access modifiers changed from: 0000 */
    public void a() {
        this.c = null;
        this.d = null;
        this.n = null;
        this.g = null;
        this.k = null;
        this.i = null;
        this.o = null;
        this.j = null;
        this.p = null;
        this.a.clear();
        this.l = false;
        this.b.clear();
        this.m = false;
    }

    /* access modifiers changed from: 0000 */
    public com.bumptech.glide.load.engine.b.a b() {
        return this.h.a();
    }

    /* access modifiers changed from: 0000 */
    public g c() {
        return this.p;
    }

    /* access modifiers changed from: 0000 */
    public Priority d() {
        return this.o;
    }

    /* access modifiers changed from: 0000 */
    public com.bumptech.glide.load.e e() {
        return this.i;
    }

    /* access modifiers changed from: 0000 */
    public c f() {
        return this.n;
    }

    /* access modifiers changed from: 0000 */
    public int g() {
        return this.e;
    }

    /* access modifiers changed from: 0000 */
    public int h() {
        return this.f;
    }

    /* access modifiers changed from: 0000 */
    public List<Class<?>> i() {
        return this.c.c().b(this.d.getClass(), this.g, this.k);
    }

    /* access modifiers changed from: 0000 */
    public boolean a(Class<?> cls) {
        return b(cls) != null;
    }

    /* access modifiers changed from: 0000 */
    public <Data> o<Data, ?, Transcode> b(Class<Data> cls) {
        return this.c.c().a(cls, this.g, this.k);
    }

    /* access modifiers changed from: 0000 */
    public boolean j() {
        return this.r;
    }

    /* access modifiers changed from: 0000 */
    public <Z> h<Z> c(Class<Z> cls) {
        h<Z> hVar = (h) this.j.get(cls);
        if (hVar != null) {
            return hVar;
        }
        if (!this.j.isEmpty() || !this.q) {
            return b.a();
        }
        throw new IllegalArgumentException("Missing transformation for " + cls + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
    }

    /* access modifiers changed from: 0000 */
    public boolean a(q<?> qVar) {
        return this.c.c().a(qVar);
    }

    /* access modifiers changed from: 0000 */
    public <Z> g<Z> b(q<Z> qVar) {
        return this.c.c().b(qVar);
    }

    /* access modifiers changed from: 0000 */
    public List<n<File, ?>> a(File file) throws NoModelLoaderAvailableException {
        return this.c.c().c(file);
    }

    /* access modifiers changed from: 0000 */
    public boolean a(c cVar) {
        List k2 = k();
        int size = k2.size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((a) k2.get(i2)).a.equals(cVar)) {
                return true;
            }
        }
        return false;
    }

    /* access modifiers changed from: 0000 */
    public List<a<?>> k() {
        if (!this.l) {
            this.l = true;
            this.a.clear();
            List c2 = this.c.c().c(this.d);
            int size = c2.size();
            for (int i2 = 0; i2 < size; i2++) {
                a a2 = ((n) c2.get(i2)).a(this.d, this.e, this.f, this.i);
                if (a2 != null) {
                    this.a.add(a2);
                }
            }
        }
        return this.a;
    }

    /* access modifiers changed from: 0000 */
    public List<c> l() {
        if (!this.m) {
            this.m = true;
            this.b.clear();
            List k2 = k();
            int size = k2.size();
            for (int i2 = 0; i2 < size; i2++) {
                a aVar = (a) k2.get(i2);
                if (!this.b.contains(aVar.a)) {
                    this.b.add(aVar.a);
                }
                for (int i3 = 0; i3 < aVar.b.size(); i3++) {
                    if (!this.b.contains(aVar.b.get(i3))) {
                        this.b.add(aVar.b.get(i3));
                    }
                }
            }
        }
        return this.b;
    }

    /* access modifiers changed from: 0000 */
    public <X> com.bumptech.glide.load.a<X> a(X x) throws NoSourceEncoderAvailableException {
        return this.c.c().a(x);
    }
}
