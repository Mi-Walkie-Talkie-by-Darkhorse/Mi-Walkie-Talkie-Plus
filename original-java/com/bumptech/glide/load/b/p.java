package com.bumptech.glide.load.b;

import android.support.v4.util.Pools.Pool;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ModelLoaderRegistry */
public class p {
    private final r a;
    private final a b;

    /* compiled from: ModelLoaderRegistry */
    private static class a {
        private final Map<Class<?>, C0015a<?>> a = new HashMap();

        /* renamed from: com.bumptech.glide.load.b.p$a$a reason: collision with other inner class name */
        /* compiled from: ModelLoaderRegistry */
        private static class C0015a<Model> {
            final List<n<Model, ?>> a;

            public C0015a(List<n<Model, ?>> list) {
                this.a = list;
            }
        }

        a() {
        }

        public void a() {
            this.a.clear();
        }

        public <Model> void a(Class<Model> cls, List<n<Model, ?>> list) {
            if (((C0015a) this.a.put(cls, new C0015a(list))) != null) {
                throw new IllegalStateException("Already cached loaders for model: " + cls);
            }
        }

        public <Model> List<n<Model, ?>> a(Class<Model> cls) {
            C0015a aVar = (C0015a) this.a.get(cls);
            if (aVar == null) {
                return null;
            }
            return aVar.a;
        }
    }

    public p(Pool<List<Exception>> pool) {
        this(new r(pool));
    }

    p(r rVar) {
        this.b = new a();
        this.a = rVar;
    }

    public synchronized <Model, Data> void a(Class<Model> cls, Class<Data> cls2, o<Model, Data> oVar) {
        this.a.a(cls, cls2, oVar);
        this.b.a();
    }

    public synchronized <A> List<n<A, ?>> a(A a2) {
        ArrayList arrayList;
        List b2 = b(b(a2));
        int size = b2.size();
        arrayList = new ArrayList(size);
        for (int i = 0; i < size; i++) {
            n nVar = (n) b2.get(i);
            if (nVar.a(a2)) {
                arrayList.add(nVar);
            }
        }
        return arrayList;
    }

    public synchronized List<Class<?>> a(Class<?> cls) {
        return this.a.b(cls);
    }

    private <A> List<n<A, ?>> b(Class<A> cls) {
        List<n<A, ?>> a2 = this.b.a(cls);
        if (a2 != null) {
            return a2;
        }
        List<n<A, ?>> unmodifiableList = Collections.unmodifiableList(this.a.a(cls));
        this.b.a(cls, unmodifiableList);
        return unmodifiableList;
    }

    private static <A> Class<A> b(A a2) {
        return a2.getClass();
    }
}
