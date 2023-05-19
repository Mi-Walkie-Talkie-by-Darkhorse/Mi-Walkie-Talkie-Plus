package p000a.p006b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.huawei.hms.framework.common.ContainerUtils;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

/* renamed from: a.b.e */
/* loaded from: classes.dex */
public class LruCache<K, V> {

    /* renamed from: a */
    private final LinkedHashMap<K, V> f43a;

    /* renamed from: b */
    private int f44b;

    /* renamed from: c */
    private int f45c;

    /* renamed from: d */
    private int f46d;

    /* renamed from: e */
    private int f47e;

    /* renamed from: f */
    private int f48f;

    /* renamed from: g */
    private int f49g;

    /* renamed from: h */
    private int f50h;

    public LruCache(int i) {
        if (i > 0) {
            this.f45c = i;
            this.f43a = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: e */
    private int m26484e(K k, V v) {
        int m26483f = m26483f(k, v);
        if (m26483f >= 0) {
            return m26483f;
        }
        throw new IllegalStateException("Negative size: " + k + ContainerUtils.KEY_VALUE_DELIMITER + v);
    }

    @Nullable
    /* renamed from: a */
    protected V m26488a(@NonNull K k) {
        return null;
    }

    /* renamed from: b */
    protected void m26487b(boolean z, @NonNull K k, @NonNull V v, @Nullable V v2) {
    }

    @Nullable
    /* renamed from: c */
    public final V m26486c(@NonNull K k) {
        V put;
        Objects.requireNonNull(k, "key == null");
        synchronized (this) {
            V v = this.f43a.get(k);
            if (v != null) {
                this.f49g++;
                return v;
            }
            this.f50h++;
            V m26488a = m26488a(k);
            if (m26488a == null) {
                return null;
            }
            synchronized (this) {
                this.f47e++;
                put = this.f43a.put(k, m26488a);
                if (put != null) {
                    this.f43a.put(k, put);
                } else {
                    this.f44b += m26484e(k, m26488a);
                }
            }
            if (put != null) {
                m26487b(false, k, m26488a, put);
                return put;
            }
            m26482g(this.f45c);
            return m26488a;
        }
    }

    @Nullable
    /* renamed from: d */
    public final V m26485d(@NonNull K k, @NonNull V v) {
        V put;
        if (k != null && v != null) {
            synchronized (this) {
                this.f46d++;
                this.f44b += m26484e(k, v);
                put = this.f43a.put(k, v);
                if (put != null) {
                    this.f44b -= m26484e(k, put);
                }
            }
            if (put != null) {
                m26487b(false, k, put, v);
            }
            m26482g(this.f45c);
            return put;
        }
        throw new NullPointerException("key == null || value == null");
    }

    /* renamed from: f */
    protected int m26483f(@NonNull K k, @NonNull V v) {
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0070, code lost:
        throw new java.lang.IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m26482g(int i) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                if (this.f44b >= 0 && (!this.f43a.isEmpty() || this.f44b == 0)) {
                    if (this.f44b <= i || this.f43a.isEmpty()) {
                        break;
                    }
                    Map.Entry<K, V> next = this.f43a.entrySet().iterator().next();
                    key = next.getKey();
                    value = next.getValue();
                    this.f43a.remove(key);
                    this.f44b -= m26484e(key, value);
                    this.f48f++;
                } else {
                    break;
                }
            }
            m26487b(true, key, value, null);
        }
    }

    public final synchronized String toString() {
        int i;
        int i2;
        i = this.f49g;
        i2 = this.f50h + i;
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.f45c), Integer.valueOf(this.f49g), Integer.valueOf(this.f50h), Integer.valueOf(i2 != 0 ? (i * 100) / i2 : 0));
    }
}
