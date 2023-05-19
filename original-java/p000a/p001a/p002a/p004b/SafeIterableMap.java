package p000a.p001a.p002a.p004b;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: a.a.a.b.b */
/* loaded from: classes.dex */
public class SafeIterableMap<K, V> implements Iterable<Map.Entry<K, V>> {

    /* renamed from: a */
    C0004c<K, V> f9a;

    /* renamed from: b */
    private C0004c<K, V> f10b;

    /* renamed from: c */
    private WeakHashMap<InterfaceC0007f<K, V>, Boolean> f11c = new WeakHashMap<>();

    /* renamed from: d */
    private int f12d = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.a.a.b.b$a */
    /* loaded from: classes.dex */
    public static class C0002a<K, V> extends AbstractC0006e<K, V> {
        C0002a(C0004c<K, V> c0004c, C0004c<K, V> c0004c2) {
            super(c0004c, c0004c2);
        }

        @Override // p000a.p001a.p002a.p004b.SafeIterableMap.AbstractC0006e
        /* renamed from: b */
        C0004c<K, V> mo26524b(C0004c<K, V> c0004c) {
            return c0004c.f16d;
        }

        @Override // p000a.p001a.p002a.p004b.SafeIterableMap.AbstractC0006e
        /* renamed from: c */
        C0004c<K, V> mo26523c(C0004c<K, V> c0004c) {
            return c0004c.f15c;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.a.a.b.b$b */
    /* loaded from: classes.dex */
    private static class C0003b<K, V> extends AbstractC0006e<K, V> {
        C0003b(C0004c<K, V> c0004c, C0004c<K, V> c0004c2) {
            super(c0004c, c0004c2);
        }

        @Override // p000a.p001a.p002a.p004b.SafeIterableMap.AbstractC0006e
        /* renamed from: b */
        C0004c<K, V> mo26524b(C0004c<K, V> c0004c) {
            return c0004c.f15c;
        }

        @Override // p000a.p001a.p002a.p004b.SafeIterableMap.AbstractC0006e
        /* renamed from: c */
        C0004c<K, V> mo26523c(C0004c<K, V> c0004c) {
            return c0004c.f16d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.a.a.b.b$c */
    /* loaded from: classes.dex */
    public static class C0004c<K, V> implements Map.Entry<K, V> {
        @NonNull

        /* renamed from: a */
        final K f13a;
        @NonNull

        /* renamed from: b */
        final V f14b;

        /* renamed from: c */
        C0004c<K, V> f15c;

        /* renamed from: d */
        C0004c<K, V> f16d;

        C0004c(@NonNull K k, @NonNull V v) {
            this.f13a = k;
            this.f14b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof C0004c) {
                C0004c c0004c = (C0004c) obj;
                return this.f13a.equals(c0004c.f13a) && this.f14b.equals(c0004c.f14b);
            }
            return false;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public K getKey() {
            return this.f13a;
        }

        @Override // java.util.Map.Entry
        @NonNull
        public V getValue() {
            return this.f14b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f13a.hashCode() ^ this.f14b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f13a + ContainerUtils.KEY_VALUE_DELIMITER + this.f14b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.a.a.b.b$d */
    /* loaded from: classes.dex */
    public class C0005d implements Iterator<Map.Entry<K, V>>, InterfaceC0007f<K, V> {

        /* renamed from: a */
        private C0004c<K, V> f17a;

        /* renamed from: b */
        private boolean f18b = true;

        C0005d() {
        }

        @Override // p000a.p001a.p002a.p004b.SafeIterableMap.InterfaceC0007f
        /* renamed from: a */
        public void mo26520a(@NonNull C0004c<K, V> c0004c) {
            C0004c<K, V> c0004c2 = this.f17a;
            if (c0004c == c0004c2) {
                C0004c<K, V> c0004c3 = c0004c2.f16d;
                this.f17a = c0004c3;
                this.f18b = c0004c3 == null;
            }
        }

        @Override // java.util.Iterator
        /* renamed from: b */
        public Map.Entry<K, V> next() {
            if (this.f18b) {
                this.f18b = false;
                this.f17a = SafeIterableMap.this.f9a;
            } else {
                C0004c<K, V> c0004c = this.f17a;
                this.f17a = c0004c != null ? c0004c.f15c : null;
            }
            return this.f17a;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f18b) {
                return SafeIterableMap.this.f9a != null;
            }
            C0004c<K, V> c0004c = this.f17a;
            return (c0004c == null || c0004c.f15c == null) ? false : true;
        }
    }

    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.a.a.b.b$e */
    /* loaded from: classes.dex */
    private static abstract class AbstractC0006e<K, V> implements Iterator<Map.Entry<K, V>>, InterfaceC0007f<K, V> {

        /* renamed from: a */
        C0004c<K, V> f20a;

        /* renamed from: b */
        C0004c<K, V> f21b;

        AbstractC0006e(C0004c<K, V> c0004c, C0004c<K, V> c0004c2) {
            this.f20a = c0004c2;
            this.f21b = c0004c;
        }

        /* renamed from: e */
        private C0004c<K, V> m26521e() {
            C0004c<K, V> c0004c = this.f21b;
            C0004c<K, V> c0004c2 = this.f20a;
            if (c0004c == c0004c2 || c0004c2 == null) {
                return null;
            }
            return mo26523c(c0004c);
        }

        @Override // p000a.p001a.p002a.p004b.SafeIterableMap.InterfaceC0007f
        /* renamed from: a */
        public void mo26520a(@NonNull C0004c<K, V> c0004c) {
            if (this.f20a == c0004c && c0004c == this.f21b) {
                this.f21b = null;
                this.f20a = null;
            }
            C0004c<K, V> c0004c2 = this.f20a;
            if (c0004c2 == c0004c) {
                this.f20a = mo26524b(c0004c2);
            }
            if (this.f21b == c0004c) {
                this.f21b = m26521e();
            }
        }

        /* renamed from: b */
        abstract C0004c<K, V> mo26524b(C0004c<K, V> c0004c);

        /* renamed from: c */
        abstract C0004c<K, V> mo26523c(C0004c<K, V> c0004c);

        @Override // java.util.Iterator
        /* renamed from: d */
        public Map.Entry<K, V> next() {
            C0004c<K, V> c0004c = this.f21b;
            this.f21b = m26521e();
            return c0004c;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f21b != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SafeIterableMap.java */
    /* renamed from: a.a.a.b.b$f */
    /* loaded from: classes.dex */
    public interface InterfaceC0007f<K, V> {
        /* renamed from: a */
        void mo26520a(@NonNull C0004c<K, V> c0004c);
    }

    /* renamed from: a */
    public Map.Entry<K, V> m26532a() {
        return this.f9a;
    }

    /* renamed from: b */
    protected C0004c<K, V> mo26531b(K k) {
        C0004c<K, V> c0004c = this.f9a;
        while (c0004c != null && !c0004c.f13a.equals(k)) {
            c0004c = c0004c.f15c;
        }
        return c0004c;
    }

    /* renamed from: c */
    public SafeIterableMap<K, V>.C0005d m26530c() {
        SafeIterableMap<K, V>.C0005d c0005d = new C0005d();
        this.f11c.put(c0005d, Boolean.FALSE);
        return c0005d;
    }

    /* renamed from: d */
    public Map.Entry<K, V> m26529d() {
        return this.f10b;
    }

    public Iterator<Map.Entry<K, V>> descendingIterator() {
        C0003b c0003b = new C0003b(this.f10b, this.f9a);
        this.f11c.put(c0003b, Boolean.FALSE);
        return c0003b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: e */
    public C0004c<K, V> m26528e(@NonNull K k, @NonNull V v) {
        C0004c<K, V> c0004c = new C0004c<>(k, v);
        this.f12d++;
        C0004c<K, V> c0004c2 = this.f10b;
        if (c0004c2 == null) {
            this.f9a = c0004c;
            this.f10b = c0004c;
            return c0004c;
        }
        c0004c2.f15c = c0004c;
        c0004c.f16d = c0004c2;
        this.f10b = c0004c;
        return c0004c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof SafeIterableMap) {
            SafeIterableMap safeIterableMap = (SafeIterableMap) obj;
            if (size() != safeIterableMap.size()) {
                return false;
            }
            Iterator<Map.Entry<K, V>> it2 = iterator();
            Iterator<Map.Entry<K, V>> it3 = safeIterableMap.iterator();
            while (it2.hasNext() && it3.hasNext()) {
                Map.Entry<K, V> next = it2.next();
                Map.Entry<K, V> next2 = it3.next();
                if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                    return false;
                }
            }
            return (it2.hasNext() || it3.hasNext()) ? false : true;
        }
        return false;
    }

    /* renamed from: f */
    public V mo26527f(@NonNull K k, @NonNull V v) {
        C0004c<K, V> mo26531b = mo26531b(k);
        if (mo26531b != null) {
            return mo26531b.f14b;
        }
        m26528e(k, v);
        return null;
    }

    /* renamed from: g */
    public V mo26526g(@NonNull K k) {
        C0004c<K, V> mo26531b = mo26531b(k);
        if (mo26531b == null) {
            return null;
        }
        this.f12d--;
        if (!this.f11c.isEmpty()) {
            for (InterfaceC0007f<K, V> interfaceC0007f : this.f11c.keySet()) {
                interfaceC0007f.mo26520a(mo26531b);
            }
        }
        C0004c<K, V> c0004c = mo26531b.f16d;
        if (c0004c != null) {
            c0004c.f15c = mo26531b.f15c;
        } else {
            this.f9a = mo26531b.f15c;
        }
        C0004c<K, V> c0004c2 = mo26531b.f15c;
        if (c0004c2 != null) {
            c0004c2.f16d = c0004c;
        } else {
            this.f10b = c0004c;
        }
        mo26531b.f15c = null;
        mo26531b.f16d = null;
        return mo26531b.f14b;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().hashCode();
        }
        return i;
    }

    @Override // java.lang.Iterable
    @NonNull
    public Iterator<Map.Entry<K, V>> iterator() {
        C0002a c0002a = new C0002a(this.f9a, this.f10b);
        this.f11c.put(c0002a, Boolean.FALSE);
        return c0002a;
    }

    public int size() {
        return this.f12d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it2 = iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().toString());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
