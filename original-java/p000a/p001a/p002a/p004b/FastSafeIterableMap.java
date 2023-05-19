package p000a.p001a.p002a.p004b;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;
import p000a.p001a.p002a.p004b.SafeIterableMap;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* renamed from: a.a.a.b.a */
/* loaded from: classes.dex */
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {

    /* renamed from: e */
    private HashMap<K, SafeIterableMap.C0004c<K, V>> f8e = new HashMap<>();

    @Override // p000a.p001a.p002a.p004b.SafeIterableMap
    /* renamed from: b */
    protected SafeIterableMap.C0004c<K, V> mo26531b(K k) {
        return this.f8e.get(k);
    }

    public boolean contains(K k) {
        return this.f8e.containsKey(k);
    }

    @Override // p000a.p001a.p002a.p004b.SafeIterableMap
    /* renamed from: f */
    public V mo26527f(@NonNull K k, @NonNull V v) {
        SafeIterableMap.C0004c<K, V> mo26531b = mo26531b(k);
        if (mo26531b != null) {
            return mo26531b.f14b;
        }
        this.f8e.put(k, m26528e(k, v));
        return null;
    }

    @Override // p000a.p001a.p002a.p004b.SafeIterableMap
    /* renamed from: g */
    public V mo26526g(@NonNull K k) {
        V v = (V) super.mo26526g(k);
        this.f8e.remove(k);
        return v;
    }

    /* renamed from: h */
    public Map.Entry<K, V> m26533h(K k) {
        if (contains(k)) {
            return this.f8e.get(k).f16d;
        }
        return null;
    }
}
