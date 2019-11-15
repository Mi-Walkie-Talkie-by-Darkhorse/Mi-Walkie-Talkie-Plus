package com.bumptech.glide.load.engine.a;

import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import android.util.Log;
import com.bumptech.glide.util.h;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: LruArrayPool */
public final class j implements b {
    private final h<a, Object> a;
    private final b b;
    private final Map<Class<?>, NavigableMap<Integer, Integer>> c;
    private final Map<Class<?>, a<?>> d;
    private final int e;
    private int f;

    /* compiled from: LruArrayPool */
    private static final class a implements m {
        int a;
        private final b b;
        private Class<?> c;

        a(b bVar) {
            this.b = bVar;
        }

        /* access modifiers changed from: 0000 */
        public void a(int i, Class<?> cls) {
            this.a = i;
            this.c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a == aVar.a && this.c == aVar.c) {
                return true;
            }
            return false;
        }

        public String toString() {
            return "Key{size=" + this.a + "array=" + this.c + '}';
        }

        public void a() {
            this.b.a(this);
        }

        public int hashCode() {
            return (this.c != null ? this.c.hashCode() : 0) + (this.a * 31);
        }
    }

    /* compiled from: LruArrayPool */
    private static final class b extends d<a> {
        b() {
        }

        /* access modifiers changed from: 0000 */
        public a a(int i, Class<?> cls) {
            a aVar = (a) c();
            aVar.a(i, cls);
            return aVar;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public a b() {
            return new a(this);
        }
    }

    @VisibleForTesting
    public j() {
        this.a = new h<>();
        this.b = new b();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = 4194304;
    }

    public j(int i) {
        this.a = new h<>();
        this.b = new b();
        this.c = new HashMap();
        this.d = new HashMap();
        this.e = i;
    }

    public synchronized <T> void a(T t, Class<T> cls) {
        a b2 = b(cls);
        int a2 = b2.a(t);
        int b3 = a2 * b2.b();
        if (b(b3)) {
            a a3 = this.b.a(a2, cls);
            this.a.a(a3, t);
            NavigableMap a4 = a(cls);
            Integer num = (Integer) a4.get(Integer.valueOf(a3.a));
            a4.put(Integer.valueOf(a3.a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
            this.f += b3;
            c();
        }
    }

    public <T> T a(int i, Class<T> cls) {
        a a2;
        T a3;
        a b2 = b(cls);
        synchronized (this) {
            Integer num = (Integer) a(cls).ceilingKey(Integer.valueOf(i));
            if (a(i, num)) {
                a2 = this.b.a(num.intValue(), cls);
            } else {
                a2 = this.b.a(i, cls);
            }
            a3 = a(a2);
            if (a3 != null) {
                this.f -= b2.a(a3) * b2.b();
                b(b2.a(a3), cls);
            }
        }
        if (a3 != null) {
            return a3;
        }
        if (Log.isLoggable(b2.a(), 2)) {
            Log.v(b2.a(), "Allocated " + i + " bytes");
        }
        return b2.a(i);
    }

    @Nullable
    private <T> T a(a aVar) {
        return this.a.a(aVar);
    }

    private boolean b(int i) {
        return i <= this.e / 2;
    }

    private boolean a(int i, Integer num) {
        return num != null && (b() || num.intValue() <= i * 8);
    }

    private boolean b() {
        return this.f == 0 || this.e / this.f >= 2;
    }

    public synchronized void a() {
        c(0);
    }

    public synchronized void a(int i) {
        if (i >= 40) {
            a();
        } else if (i >= 20) {
            c(this.e / 2);
        }
    }

    private void c() {
        c(this.e);
    }

    private void c(int i) {
        while (this.f > i) {
            Object a2 = this.a.a();
            h.a(a2);
            a a3 = a((T) a2);
            this.f -= a3.a(a2) * a3.b();
            b(a3.a(a2), a2.getClass());
            if (Log.isLoggable(a3.a(), 2)) {
                Log.v(a3.a(), "evicted: " + a3.a(a2));
            }
        }
    }

    private void b(int i, Class<?> cls) {
        NavigableMap a2 = a(cls);
        Integer num = (Integer) a2.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        } else if (num.intValue() == 1) {
            a2.remove(Integer.valueOf(i));
        } else {
            a2.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    private NavigableMap<Integer, Integer> a(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = (NavigableMap) this.c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.c.put(cls, treeMap);
        return treeMap;
    }

    private <T> a<T> a(T t) {
        return b(t.getClass());
    }

    private <T> a<T> b(Class<T> cls) {
        a<T> aVar = (a) this.d.get(cls);
        if (aVar == null) {
            if (cls.equals(int[].class)) {
                aVar = new i<>();
            } else if (cls.equals(byte[].class)) {
                aVar = new g<>();
            } else {
                throw new IllegalArgumentException("No array pool found for: " + cls.getSimpleName());
            }
            this.d.put(cls, aVar);
        }
        return aVar;
    }
}
