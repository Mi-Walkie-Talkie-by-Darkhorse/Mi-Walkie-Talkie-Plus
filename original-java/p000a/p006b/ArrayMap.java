package p000a.p006b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: a.b.a */
/* loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    @Nullable

    /* renamed from: h */
    MapCollections<K, V> f22h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArrayMap.java */
    /* renamed from: a.b.a$a */
    /* loaded from: classes.dex */
    public class C0008a extends MapCollections<K, V> {
        C0008a() {
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: a */
        protected void mo26481a() {
            ArrayMap.this.clear();
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: b */
        protected Object mo26480b(int i, int i2) {
            return ArrayMap.this.f71b[(i << 1) + i2];
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: c */
        protected Map<K, V> mo26479c() {
            return ArrayMap.this;
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: d */
        protected int mo26478d() {
            return ArrayMap.this.f72c;
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: e */
        protected int mo26477e(Object obj) {
            return ArrayMap.this.m26456f(obj);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: f */
        protected int mo26476f(Object obj) {
            return ArrayMap.this.m26454h(obj);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: g */
        protected void mo26475g(K k, V v) {
            ArrayMap.this.put(k, v);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: h */
        protected void mo26474h(int i) {
            ArrayMap.this.mo17153k(i);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: i */
        protected V mo26473i(int i, V v) {
            return ArrayMap.this.mo17152l(i, v);
        }
    }

    public ArrayMap() {
    }

    /* renamed from: n */
    private MapCollections<K, V> m26519n() {
        if (this.f22h == null) {
            this.f22h = new C0008a();
        }
        return this.f22h;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m26519n().m26470l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m26519n().m26469m();
    }

    /* renamed from: o */
    public boolean m26518o(@NonNull Collection<?> collection) {
        return MapCollections.m26466p(this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m26459c(this.f72c + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m26519n().m26468n();
    }

    public ArrayMap(int i) {
        super(i);
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }
}
