package com.bumptech.glide.load.b;

import android.support.annotation.Nullable;
import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.Registry.NoModelLoaderAvailableException;
import com.bumptech.glide.load.e;
import com.bumptech.glide.util.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* compiled from: MultiModelLoaderFactory */
public class r {
    private static final c a = new c();
    private static final n<Object, Object> b = new a();
    private final List<b<?, ?>> c;
    private final c d;
    private final Set<b<?, ?>> e;
    private final Pool<List<Exception>> f;

    /* compiled from: MultiModelLoaderFactory */
    private static class a implements n<Object, Object> {
        a() {
        }

        @Nullable
        public com.bumptech.glide.load.b.n.a<Object> a(Object obj, int i, int i2, e eVar) {
            return null;
        }

        public boolean a(Object obj) {
            return false;
        }
    }

    /* compiled from: MultiModelLoaderFactory */
    private static class b<Model, Data> {
        final Class<Data> a;
        final o<Model, Data> b;
        private final Class<Model> c;

        public b(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
            this.c = cls;
            this.a = cls2;
            this.b = oVar;
        }

        public boolean a(Class<?> cls, Class<?> cls2) {
            return a(cls) && this.a.isAssignableFrom(cls2);
        }

        public boolean a(Class<?> cls) {
            return this.c.isAssignableFrom(cls);
        }
    }

    /* compiled from: MultiModelLoaderFactory */
    static class c {
        c() {
        }

        public <Model, Data> q<Model, Data> a(List<n<Model, Data>> list, Pool<List<Exception>> pool) {
            return new q<>(list, pool);
        }
    }

    public r(Pool<List<Exception>> pool) {
        this(pool, a);
    }

    r(Pool<List<Exception>> pool, c cVar) {
        this.c = new ArrayList();
        this.e = new HashSet();
        this.f = pool;
        this.d = cVar;
    }

    /* access modifiers changed from: 0000 */
    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        a(cls, cls2, oVar, true);
    }

    private <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar, boolean z) {
        this.c.add(z ? this.c.size() : 0, new b(cls, cls2, oVar));
    }

    /* access modifiers changed from: 0000 */
    public synchronized <Model> List<n<Model, ?>> a(Class<Model> cls) {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (b bVar : this.c) {
                if (!this.e.contains(bVar) && bVar.a(cls)) {
                    this.e.add(bVar);
                    arrayList.add(a(bVar));
                    this.e.remove(bVar);
                }
            }
        } catch (Throwable th) {
            this.e.clear();
            throw th;
        }
        return arrayList;
    }

    /* access modifiers changed from: 0000 */
    public synchronized List<Class<?>> b(Class<?> cls) {
        ArrayList arrayList;
        arrayList = new ArrayList();
        for (b bVar : this.c) {
            if (!arrayList.contains(bVar.a) && bVar.a(cls)) {
                arrayList.add(bVar.a);
            }
        }
        return arrayList;
    }

    public synchronized <Model, Data> n<Model, Data> a(Class<Model> cls, Class<Data> cls2) {
        n<Model, Data> a2;
        try {
            ArrayList arrayList = new ArrayList();
            boolean z = false;
            for (b bVar : this.c) {
                if (this.e.contains(bVar)) {
                    z = true;
                } else if (bVar.a(cls, cls2)) {
                    this.e.add(bVar);
                    arrayList.add(a(bVar));
                    this.e.remove(bVar);
                }
            }
            if (arrayList.size() > 1) {
                a2 = this.d.a(arrayList, this.f);
            } else if (arrayList.size() == 1) {
                a2 = (n) arrayList.get(0);
            } else if (z) {
                a2 = a();
            } else {
                throw new NoModelLoaderAvailableException(cls, cls2);
            }
        } catch (Throwable th) {
            this.e.clear();
            throw th;
        }
        return a2;
    }

    private <Model, Data> n<Model, Data> a(b<?, ?> bVar) {
        return (n) h.a(bVar.b.a(this));
    }

    private static <Model, Data> n<Model, Data> a() {
        return b;
    }
}
