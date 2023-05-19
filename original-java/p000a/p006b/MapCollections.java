package p000a.p006b;

import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: a.b.f */
/* loaded from: classes.dex */
public abstract class MapCollections<K, V> {
    @Nullable

    /* renamed from: a */
    MapCollections<K, V>.C0011b f51a;
    @Nullable

    /* renamed from: b */
    MapCollections<K, V>.C0012c f52b;
    @Nullable

    /* renamed from: c */
    MapCollections<K, V>.C0014e f53c;

    /* compiled from: MapCollections.java */
    /* renamed from: a.b.f$a */
    /* loaded from: classes.dex */
    final class C0010a<T> implements Iterator<T> {

        /* renamed from: a */
        final int f54a;

        /* renamed from: b */
        int f55b;

        /* renamed from: c */
        int f56c;

        /* renamed from: d */
        boolean f57d = false;

        C0010a(int i) {
            this.f54a = i;
            this.f55b = MapCollections.this.mo26478d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f56c < this.f55b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) MapCollections.this.mo26480b(this.f56c, this.f54a);
                this.f56c++;
                this.f57d = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f57d) {
                int i = this.f56c - 1;
                this.f56c = i;
                this.f55b--;
                this.f57d = false;
                MapCollections.this.mo26474h(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: a.b.f$b */
    /* loaded from: classes.dex */
    final class C0011b implements Set<Map.Entry<K, V>> {
        C0011b() {
        }

        /* renamed from: a */
        public boolean m26463a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            m26463a((Map.Entry) obj);
            throw null;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo26478d = MapCollections.this.mo26478d();
            for (Map.Entry<K, V> entry : collection) {
                MapCollections.this.mo26475g(entry.getKey(), entry.getValue());
            }
            return mo26478d != MapCollections.this.mo26478d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MapCollections.this.mo26481a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                int mo26477e = MapCollections.this.mo26477e(entry.getKey());
                if (mo26477e < 0) {
                    return false;
                }
                return ContainerHelpers.m26507c(MapCollections.this.mo26480b(mo26477e, 1), entry.getValue());
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return MapCollections.m26471k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo26478d = MapCollections.this.mo26478d() - 1; mo26478d >= 0; mo26478d--) {
                Object mo26480b = MapCollections.this.mo26480b(mo26478d, 0);
                Object mo26480b2 = MapCollections.this.mo26480b(mo26478d, 1);
                i += (mo26480b == null ? 0 : mo26480b.hashCode()) ^ (mo26480b2 == null ? 0 : mo26480b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.mo26478d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C0013d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return MapCollections.this.mo26478d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: a.b.f$c */
    /* loaded from: classes.dex */
    final class C0012c implements Set<K> {
        C0012c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            MapCollections.this.mo26481a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return MapCollections.this.mo26477e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return MapCollections.m26472j(MapCollections.this.mo26479c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return MapCollections.m26471k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo26478d = MapCollections.this.mo26478d() - 1; mo26478d >= 0; mo26478d--) {
                Object mo26480b = MapCollections.this.mo26480b(mo26478d, 0);
                i += mo26480b == null ? 0 : mo26480b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.mo26478d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C0010a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo26477e = MapCollections.this.mo26477e(obj);
            if (mo26477e >= 0) {
                MapCollections.this.mo26474h(mo26477e);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return MapCollections.m26467o(MapCollections.this.mo26479c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return MapCollections.m26466p(MapCollections.this.mo26479c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return MapCollections.this.mo26478d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return MapCollections.this.m26465q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.m26464r(tArr, 0);
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: a.b.f$d */
    /* loaded from: classes.dex */
    final class C0013d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: a */
        int f61a;

        /* renamed from: c */
        boolean f63c = false;

        /* renamed from: b */
        int f62b = -1;

        C0013d() {
            this.f61a = MapCollections.this.mo26478d() - 1;
        }

        /* renamed from: a */
        public Map.Entry<K, V> m26462a() {
            if (hasNext()) {
                this.f62b++;
                this.f63c = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f63c) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    return ContainerHelpers.m26507c(entry.getKey(), MapCollections.this.mo26480b(this.f62b, 0)) && ContainerHelpers.m26507c(entry.getValue(), MapCollections.this.mo26480b(this.f62b, 1));
                }
                return false;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f63c) {
                return (K) MapCollections.this.mo26480b(this.f62b, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f63c) {
                return (V) MapCollections.this.mo26480b(this.f62b, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f62b < this.f61a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f63c) {
                Object mo26480b = MapCollections.this.mo26480b(this.f62b, 0);
                Object mo26480b2 = MapCollections.this.mo26480b(this.f62b, 1);
                return (mo26480b == null ? 0 : mo26480b.hashCode()) ^ (mo26480b2 != null ? mo26480b2.hashCode() : 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            m26462a();
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f63c) {
                MapCollections.this.mo26474h(this.f62b);
                this.f62b--;
                this.f61a--;
                this.f63c = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f63c) {
                return (V) MapCollections.this.mo26473i(this.f62b, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + ContainerUtils.KEY_VALUE_DELIMITER + getValue();
        }
    }

    /* compiled from: MapCollections.java */
    /* renamed from: a.b.f$e */
    /* loaded from: classes.dex */
    final class C0014e implements Collection<V> {
        C0014e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            MapCollections.this.mo26481a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return MapCollections.this.mo26476f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return MapCollections.this.mo26478d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C0010a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo26476f = MapCollections.this.mo26476f(obj);
            if (mo26476f >= 0) {
                MapCollections.this.mo26474h(mo26476f);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo26478d = MapCollections.this.mo26478d();
            int i = 0;
            boolean z = false;
            while (i < mo26478d) {
                if (collection.contains(MapCollections.this.mo26480b(i, 1))) {
                    MapCollections.this.mo26474h(i);
                    i--;
                    mo26478d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo26478d = MapCollections.this.mo26478d();
            int i = 0;
            boolean z = false;
            while (i < mo26478d) {
                if (!collection.contains(MapCollections.this.mo26480b(i, 1))) {
                    MapCollections.this.mo26474h(i);
                    i--;
                    mo26478d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return MapCollections.this.mo26478d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return MapCollections.this.m26465q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) MapCollections.this.m26464r(tArr, 1);
        }
    }

    /* renamed from: j */
    public static <K, V> boolean m26472j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!map.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public static <T> boolean m26471k(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: o */
    public static <K, V> boolean m26467o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            map.remove(it2.next());
        }
        return size != map.size();
    }

    /* renamed from: p */
    public static <K, V> boolean m26466p(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: a */
    protected abstract void mo26481a();

    /* renamed from: b */
    protected abstract Object mo26480b(int i, int i2);

    /* renamed from: c */
    protected abstract Map<K, V> mo26479c();

    /* renamed from: d */
    protected abstract int mo26478d();

    /* renamed from: e */
    protected abstract int mo26477e(Object obj);

    /* renamed from: f */
    protected abstract int mo26476f(Object obj);

    /* renamed from: g */
    protected abstract void mo26475g(K k, V v);

    /* renamed from: h */
    protected abstract void mo26474h(int i);

    /* renamed from: i */
    protected abstract V mo26473i(int i, V v);

    /* renamed from: l */
    public Set<Map.Entry<K, V>> m26470l() {
        if (this.f51a == null) {
            this.f51a = new C0011b();
        }
        return this.f51a;
    }

    /* renamed from: m */
    public Set<K> m26469m() {
        if (this.f52b == null) {
            this.f52b = new C0012c();
        }
        return this.f52b;
    }

    /* renamed from: n */
    public Collection<V> m26468n() {
        if (this.f53c == null) {
            this.f53c = new C0014e();
        }
        return this.f53c;
    }

    /* renamed from: q */
    public Object[] m26465q(int i) {
        int mo26478d = mo26478d();
        Object[] objArr = new Object[mo26478d];
        for (int i2 = 0; i2 < mo26478d; i2++) {
            objArr[i2] = mo26480b(i2, i);
        }
        return objArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: r */
    public <T> T[] m26464r(T[] tArr, int i) {
        int mo26478d = mo26478d();
        if (tArr.length < mo26478d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo26478d));
        }
        for (int i2 = 0; i2 < mo26478d; i2++) {
            tArr[i2] = mo26480b(i2, i);
        }
        if (tArr.length > mo26478d) {
            tArr[mo26478d] = null;
        }
        return tArr;
    }
}
