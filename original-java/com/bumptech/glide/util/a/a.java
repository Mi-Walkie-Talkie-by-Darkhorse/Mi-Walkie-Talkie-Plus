package com.bumptech.glide.util.a;

import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import android.support.v4.util.Pools.SynchronizedPool;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* compiled from: FactoryPools */
public final class a {
    private static final d<Object> a = new d<Object>() {
        public void a(Object obj) {
        }
    };

    /* renamed from: com.bumptech.glide.util.a.a$a reason: collision with other inner class name */
    /* compiled from: FactoryPools */
    public interface C0023a<T> {
        T b();
    }

    /* compiled from: FactoryPools */
    private static final class b<T> implements Pool<T> {
        private final C0023a<T> a;
        private final d<T> b;
        private final Pool<T> c;

        b(Pool<T> pool, C0023a<T> aVar, d<T> dVar) {
            this.c = pool;
            this.a = aVar;
            this.b = dVar;
        }

        public T acquire() {
            T acquire = this.c.acquire();
            if (acquire == null) {
                acquire = this.a.b();
                if (Log.isLoggable("FactoryPools", 2)) {
                    Log.v("FactoryPools", "Created new " + acquire.getClass());
                }
            }
            if (acquire instanceof c) {
                ((c) acquire).b_().a(false);
            }
            return acquire;
        }

        public boolean release(T t) {
            if (t instanceof c) {
                ((c) t).b_().a(true);
            }
            this.b.a(t);
            return this.c.release(t);
        }
    }

    /* compiled from: FactoryPools */
    public interface c {
        b b_();
    }

    /* compiled from: FactoryPools */
    public interface d<T> {
        void a(T t);
    }

    public static <T extends c> Pool<T> a(int i, C0023a<T> aVar) {
        return a((Pool<T>) new SimplePool<T>(i), aVar);
    }

    public static <T extends c> Pool<T> b(int i, C0023a<T> aVar) {
        return a((Pool<T>) new SynchronizedPool<T>(i), aVar);
    }

    public static <T> Pool<List<T>> a() {
        return a(20);
    }

    public static <T> Pool<List<T>> a(int i) {
        return a(new SynchronizedPool(i), new C0023a<List<T>>() {
            /* renamed from: a */
            public List<T> b() {
                return new ArrayList();
            }
        }, new d<List<T>>() {
            public void a(List<T> list) {
                list.clear();
            }
        });
    }

    private static <T extends c> Pool<T> a(Pool<T> pool, C0023a<T> aVar) {
        return a(pool, aVar, b());
    }

    private static <T> Pool<T> a(Pool<T> pool, C0023a<T> aVar, d<T> dVar) {
        return new b(pool, aVar, dVar);
    }

    private static <T> d<T> b() {
        return a;
    }
}
