package p000a.p006b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ConcurrentModificationException;
import java.util.Map;

/* renamed from: a.b.g */
/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    @Nullable

    /* renamed from: d */
    static Object[] f66d;

    /* renamed from: e */
    static int f67e;
    @Nullable

    /* renamed from: f */
    static Object[] f68f;

    /* renamed from: g */
    static int f69g;

    /* renamed from: a */
    int[] f70a;

    /* renamed from: b */
    Object[] f71b;

    /* renamed from: c */
    int f72c;

    public SimpleArrayMap() {
        this.f70a = ContainerHelpers.f35a;
        this.f71b = ContainerHelpers.f37c;
        this.f72c = 0;
    }

    /* renamed from: a */
    private void m26461a(int i) {
        if (i == 8) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr = f68f;
                if (objArr != null) {
                    this.f71b = objArr;
                    f68f = (Object[]) objArr[0];
                    this.f70a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f69g--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (SimpleArrayMap.class) {
                Object[] objArr2 = f66d;
                if (objArr2 != null) {
                    this.f71b = objArr2;
                    f66d = (Object[]) objArr2[0];
                    this.f70a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f67e--;
                    return;
                }
            }
        }
        this.f70a = new int[i];
        this.f71b = new Object[i << 1];
    }

    /* renamed from: b */
    private static int m26460b(int[] iArr, int i, int i2) {
        try {
            return ContainerHelpers.m26509a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: d */
    private static void m26458d(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (SimpleArrayMap.class) {
                if (f69g < 10) {
                    objArr[0] = f68f;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f68f = objArr;
                    f69g++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (SimpleArrayMap.class) {
                if (f67e < 10) {
                    objArr[0] = f66d;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f66d = objArr;
                    f67e++;
                }
            }
        }
    }

    /* renamed from: c */
    public void m26459c(int i) {
        int i2 = this.f72c;
        int[] iArr = this.f70a;
        if (iArr.length < i) {
            Object[] objArr = this.f71b;
            m26461a(i);
            if (this.f72c > 0) {
                System.arraycopy(iArr, 0, this.f70a, 0, i2);
                System.arraycopy(objArr, 0, this.f71b, 0, i2 << 1);
            }
            m26458d(iArr, objArr, i2);
        }
        if (this.f72c != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.f72c;
        if (i > 0) {
            int[] iArr = this.f70a;
            Object[] objArr = this.f71b;
            this.f70a = ContainerHelpers.f35a;
            this.f71b = ContainerHelpers.f37c;
            this.f72c = 0;
            m26458d(iArr, objArr, i);
        }
        if (this.f72c > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(@Nullable Object obj) {
        return m26456f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m26454h(obj) >= 0;
    }

    /* renamed from: e */
    int m26457e(Object obj, int i) {
        int i2 = this.f72c;
        if (i2 == 0) {
            return -1;
        }
        int m26460b = m26460b(this.f70a, i2, i);
        if (m26460b >= 0 && !obj.equals(this.f71b[m26460b << 1])) {
            int i3 = m26460b + 1;
            while (i3 < i2 && this.f70a[i3] == i) {
                if (obj.equals(this.f71b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m26460b - 1; i4 >= 0 && this.f70a[i4] == i; i4--) {
                if (obj.equals(this.f71b[i4 << 1])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return m26460b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimpleArrayMap) {
            SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
            if (size() != simpleArrayMap.size()) {
                return false;
            }
            for (int i = 0; i < this.f72c; i++) {
                try {
                    K m26453i = m26453i(i);
                    V m26452m = m26452m(i);
                    Object obj2 = simpleArrayMap.get(m26453i);
                    if (m26452m == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(m26453i)) {
                            return false;
                        }
                    } else if (!m26452m.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f72c; i2++) {
                try {
                    K m26453i2 = m26453i(i2);
                    V m26452m2 = m26452m(i2);
                    Object obj3 = map.get(m26453i2);
                    if (m26452m2 == null) {
                        if (obj3 != null || !map.containsKey(m26453i2)) {
                            return false;
                        }
                    } else if (!m26452m2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: f */
    public int m26456f(@Nullable Object obj) {
        return obj == null ? m26455g() : m26457e(obj, obj.hashCode());
    }

    /* renamed from: g */
    int m26455g() {
        int i = this.f72c;
        if (i == 0) {
            return -1;
        }
        int m26460b = m26460b(this.f70a, i, 0);
        if (m26460b >= 0 && this.f71b[m26460b << 1] != null) {
            int i2 = m26460b + 1;
            while (i2 < i && this.f70a[i2] == 0) {
                if (this.f71b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m26460b - 1; i3 >= 0 && this.f70a[i3] == 0; i3--) {
                if (this.f71b[i3 << 1] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return m26460b;
    }

    @Nullable
    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int m26456f = m26456f(obj);
        return m26456f >= 0 ? (V) this.f71b[(m26456f << 1) + 1] : v;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public int m26454h(Object obj) {
        int i = this.f72c * 2;
        Object[] objArr = this.f71b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public int hashCode() {
        int[] iArr = this.f70a;
        Object[] objArr = this.f71b;
        int i = this.f72c;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    /* renamed from: i */
    public K m26453i(int i) {
        return (K) this.f71b[i << 1];
    }

    public boolean isEmpty() {
        return this.f72c <= 0;
    }

    /* renamed from: j */
    public void mo17154j(@NonNull SimpleArrayMap<? extends K, ? extends V> simpleArrayMap) {
        int i = simpleArrayMap.f72c;
        m26459c(this.f72c + i);
        if (this.f72c != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(simpleArrayMap.m26453i(i2), simpleArrayMap.m26452m(i2));
            }
        } else if (i > 0) {
            System.arraycopy(simpleArrayMap.f70a, 0, this.f70a, 0, i);
            System.arraycopy(simpleArrayMap.f71b, 0, this.f71b, 0, i << 1);
            this.f72c = i;
        }
    }

    /* renamed from: k */
    public V mo17153k(int i) {
        Object[] objArr = this.f71b;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f72c;
        int i4 = 0;
        if (i3 <= 1) {
            m26458d(this.f70a, objArr, i3);
            this.f70a = ContainerHelpers.f35a;
            this.f71b = ContainerHelpers.f37c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f70a;
            if (iArr.length > 8 && i3 < iArr.length / 3) {
                m26461a(i3 > 8 ? i3 + (i3 >> 1) : 8);
                if (i3 != this.f72c) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f70a, 0, i);
                    System.arraycopy(objArr, 0, this.f71b, 0, i2);
                }
                if (i < i5) {
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr, i6, this.f70a, i, i7);
                    System.arraycopy(objArr, i6 << 1, this.f71b, i2, i7 << 1);
                }
            } else {
                if (i < i5) {
                    int i8 = i + 1;
                    int i9 = i5 - i;
                    System.arraycopy(iArr, i8, iArr, i, i9);
                    Object[] objArr2 = this.f71b;
                    System.arraycopy(objArr2, i8 << 1, objArr2, i2, i9 << 1);
                }
                Object[] objArr3 = this.f71b;
                int i10 = i5 << 1;
                objArr3[i10] = null;
                objArr3[i10 + 1] = null;
            }
            i4 = i5;
        }
        if (i3 == this.f72c) {
            this.f72c = i4;
            return v;
        }
        throw new ConcurrentModificationException();
    }

    /* renamed from: l */
    public V mo17152l(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f71b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* renamed from: m */
    public V m26452m(int i) {
        return (V) this.f71b[(i << 1) + 1];
    }

    @Nullable
    public V put(K k, V v) {
        int i;
        int m26457e;
        int i2 = this.f72c;
        if (k == null) {
            m26457e = m26455g();
            i = 0;
        } else {
            int hashCode = k.hashCode();
            i = hashCode;
            m26457e = m26457e(k, hashCode);
        }
        if (m26457e >= 0) {
            int i3 = (m26457e << 1) + 1;
            Object[] objArr = this.f71b;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = ~m26457e;
        int[] iArr = this.f70a;
        if (i2 >= iArr.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            Object[] objArr2 = this.f71b;
            m26461a(i5);
            if (i2 == this.f72c) {
                int[] iArr2 = this.f70a;
                if (iArr2.length > 0) {
                    System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                    System.arraycopy(objArr2, 0, this.f71b, 0, objArr2.length);
                }
                m26458d(iArr, objArr2, i2);
            } else {
                throw new ConcurrentModificationException();
            }
        }
        if (i4 < i2) {
            int[] iArr3 = this.f70a;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f71b;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f72c - i4) << 1);
        }
        int i7 = this.f72c;
        if (i2 == i7) {
            int[] iArr4 = this.f70a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f71b;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f72c = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Nullable
    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        return v2 == null ? put(k, v) : v2;
    }

    @Nullable
    public V remove(Object obj) {
        int m26456f = m26456f(obj);
        if (m26456f >= 0) {
            return mo17153k(m26456f);
        }
        return null;
    }

    @Nullable
    public V replace(K k, V v) {
        int m26456f = m26456f(k);
        if (m26456f >= 0) {
            return mo17152l(m26456f, v);
        }
        return null;
    }

    public int size() {
        return this.f72c;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f72c * 28);
        sb.append('{');
        for (int i = 0; i < this.f72c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K m26453i = m26453i(i);
            if (m26453i != this) {
                sb.append(m26453i);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V m26452m = m26452m(i);
            if (m26452m != this) {
                sb.append(m26452m);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int m26456f = m26456f(obj);
        if (m26456f >= 0) {
            V m26452m = m26452m(m26456f);
            if (obj2 == m26452m || (obj2 != null && obj2.equals(m26452m))) {
                mo17153k(m26456f);
                return true;
            }
            return false;
        }
        return false;
    }

    public boolean replace(K k, V v, V v2) {
        int m26456f = m26456f(k);
        if (m26456f >= 0) {
            V m26452m = m26452m(m26456f);
            if (m26452m == v || (v != null && v.equals(m26452m))) {
                mo17152l(m26456f, v2);
                return true;
            }
            return false;
        }
        return false;
    }

    public SimpleArrayMap(int i) {
        if (i == 0) {
            this.f70a = ContainerHelpers.f35a;
            this.f71b = ContainerHelpers.f37c;
        } else {
            m26461a(i);
        }
        this.f72c = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SimpleArrayMap(SimpleArrayMap<K, V> simpleArrayMap) {
        this();
        if (simpleArrayMap != 0) {
            mo17154j(simpleArrayMap);
        }
    }
}
