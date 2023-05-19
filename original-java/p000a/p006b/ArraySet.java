package p000a.p006b;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: a.b.b */
/* loaded from: classes.dex */
public final class ArraySet<E> implements Collection<E>, Set<E> {

    /* renamed from: e */
    private static final int[] f24e = new int[0];

    /* renamed from: f */
    private static final Object[] f25f = new Object[0];
    @Nullable

    /* renamed from: g */
    private static Object[] f26g;

    /* renamed from: h */
    private static int f27h;
    @Nullable

    /* renamed from: i */
    private static Object[] f28i;

    /* renamed from: j */
    private static int f29j;

    /* renamed from: a */
    private int[] f30a;

    /* renamed from: b */
    Object[] f31b;

    /* renamed from: c */
    int f32c;

    /* renamed from: d */
    private MapCollections<E, E> f33d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ArraySet.java */
    /* renamed from: a.b.b$a */
    /* loaded from: classes.dex */
    public class C0009a extends MapCollections<E, E> {
        C0009a() {
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: a */
        protected void mo26481a() {
            ArraySet.this.clear();
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: b */
        protected Object mo26480b(int i, int i2) {
            return ArraySet.this.f31b[i];
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: c */
        protected Map<E, E> mo26479c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: d */
        protected int mo26478d() {
            return ArraySet.this.f32c;
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: e */
        protected int mo26477e(Object obj) {
            return ArraySet.this.indexOf(obj);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: f */
        protected int mo26476f(Object obj) {
            return ArraySet.this.indexOf(obj);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: g */
        protected void mo26475g(E e, E e2) {
            ArraySet.this.add(e);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: h */
        protected void mo26474h(int i) {
            ArraySet.this.m26511g(i);
        }

        @Override // p000a.p006b.MapCollections
        /* renamed from: i */
        protected E mo26473i(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public ArraySet() {
        this(0);
    }

    /* renamed from: a */
    private void m26517a(int i) {
        if (i == 8) {
            synchronized (ArraySet.class) {
                Object[] objArr = f28i;
                if (objArr != null) {
                    this.f31b = objArr;
                    f28i = (Object[]) objArr[0];
                    this.f30a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f29j--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (ArraySet.class) {
                Object[] objArr2 = f26g;
                if (objArr2 != null) {
                    this.f31b = objArr2;
                    f26g = (Object[]) objArr2[0];
                    this.f30a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f27h--;
                    return;
                }
            }
        }
        this.f30a = new int[i];
        this.f31b = new Object[i];
    }

    /* renamed from: c */
    private static void m26515c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (ArraySet.class) {
                if (f29j < 10) {
                    objArr[0] = f28i;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f28i = objArr;
                    f29j++;
                }
            }
        } else if (iArr.length == 4) {
            synchronized (ArraySet.class) {
                if (f27h < 10) {
                    objArr[0] = f26g;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f26g = objArr;
                    f27h++;
                }
            }
        }
    }

    /* renamed from: d */
    private MapCollections<E, E> m26514d() {
        if (this.f33d == null) {
            this.f33d = new C0009a();
        }
        return this.f33d;
    }

    /* renamed from: e */
    private int m26513e(Object obj, int i) {
        int i2 = this.f32c;
        if (i2 == 0) {
            return -1;
        }
        int m26509a = ContainerHelpers.m26509a(this.f30a, i2, i);
        if (m26509a >= 0 && !obj.equals(this.f31b[m26509a])) {
            int i3 = m26509a + 1;
            while (i3 < i2 && this.f30a[i3] == i) {
                if (obj.equals(this.f31b[i3])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = m26509a - 1; i4 >= 0 && this.f30a[i4] == i; i4--) {
                if (obj.equals(this.f31b[i4])) {
                    return i4;
                }
            }
            return ~i3;
        }
        return m26509a;
    }

    /* renamed from: f */
    private int m26512f() {
        int i = this.f32c;
        if (i == 0) {
            return -1;
        }
        int m26509a = ContainerHelpers.m26509a(this.f30a, i, 0);
        if (m26509a >= 0 && this.f31b[m26509a] != null) {
            int i2 = m26509a + 1;
            while (i2 < i && this.f30a[i2] == 0) {
                if (this.f31b[i2] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = m26509a - 1; i3 >= 0 && this.f30a[i3] == 0; i3--) {
                if (this.f31b[i3] == null) {
                    return i3;
                }
            }
            return ~i2;
        }
        return m26509a;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(@Nullable E e) {
        int i;
        int m26513e;
        if (e == null) {
            m26513e = m26512f();
            i = 0;
        } else {
            int hashCode = e.hashCode();
            i = hashCode;
            m26513e = m26513e(e, hashCode);
        }
        if (m26513e >= 0) {
            return false;
        }
        int i2 = ~m26513e;
        int i3 = this.f32c;
        int[] iArr = this.f30a;
        if (i3 >= iArr.length) {
            int i4 = 4;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i4 = 8;
            }
            Object[] objArr = this.f31b;
            m26517a(i4);
            int[] iArr2 = this.f30a;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f31b, 0, objArr.length);
            }
            m26515c(iArr, objArr, this.f32c);
        }
        int i5 = this.f32c;
        if (i2 < i5) {
            int[] iArr3 = this.f30a;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f31b;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f32c - i2);
        }
        this.f30a[i2] = i;
        this.f31b[i2] = e;
        this.f32c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(@NonNull Collection<? extends E> collection) {
        m26516b(this.f32c + collection.size());
        boolean z = false;
        for (E e : collection) {
            z |= add(e);
        }
        return z;
    }

    /* renamed from: b */
    public void m26516b(int i) {
        int[] iArr = this.f30a;
        if (iArr.length < i) {
            Object[] objArr = this.f31b;
            m26517a(i);
            int i2 = this.f32c;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f30a, 0, i2);
                System.arraycopy(objArr, 0, this.f31b, 0, this.f32c);
            }
            m26515c(iArr, objArr, this.f32c);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f32c;
        if (i != 0) {
            m26515c(this.f30a, this.f31b, i);
            this.f30a = f24e;
            this.f31b = f25f;
            this.f32c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(@Nullable Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(@NonNull Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f32c; i++) {
                try {
                    if (!set.contains(m26510h(i))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: g */
    public E m26511g(int i) {
        Object[] objArr = this.f31b;
        E e = (E) objArr[i];
        int i2 = this.f32c;
        if (i2 <= 1) {
            m26515c(this.f30a, objArr, i2);
            this.f30a = f24e;
            this.f31b = f25f;
            this.f32c = 0;
        } else {
            int[] iArr = this.f30a;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                m26517a(i2 > 8 ? i2 + (i2 >> 1) : 8);
                this.f32c--;
                if (i > 0) {
                    System.arraycopy(iArr, 0, this.f30a, 0, i);
                    System.arraycopy(objArr, 0, this.f31b, 0, i);
                }
                int i3 = this.f32c;
                if (i < i3) {
                    int i4 = i + 1;
                    System.arraycopy(iArr, i4, this.f30a, i, i3 - i);
                    System.arraycopy(objArr, i4, this.f31b, i, this.f32c - i);
                }
            } else {
                int i5 = i2 - 1;
                this.f32c = i5;
                if (i < i5) {
                    int i6 = i + 1;
                    System.arraycopy(iArr, i6, iArr, i, i5 - i);
                    Object[] objArr2 = this.f31b;
                    System.arraycopy(objArr2, i6, objArr2, i, this.f32c - i);
                }
                this.f31b[this.f32c] = null;
            }
        }
        return e;
    }

    @Nullable
    /* renamed from: h */
    public E m26510h(int i) {
        return (E) this.f31b[i];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f30a;
        int i = this.f32c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(@Nullable Object obj) {
        return obj == null ? m26512f() : m26513e(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f32c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m26514d().m26469m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(@Nullable Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            m26511g(indexOf);
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(@NonNull Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= remove(it2.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(@NonNull Collection<?> collection) {
        boolean z = false;
        for (int i = this.f32c - 1; i >= 0; i--) {
            if (!collection.contains(this.f31b[i])) {
                m26511g(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f32c;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public Object[] toArray() {
        int i = this.f32c;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f31b, 0, objArr, 0, i);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f32c * 14);
        sb.append('{');
        for (int i = 0; i < this.f32c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E m26510h = m26510h(i);
            if (m26510h != this) {
                sb.append(m26510h);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public ArraySet(int i) {
        if (i == 0) {
            this.f30a = f24e;
            this.f31b = f25f;
        } else {
            m26517a(i);
        }
        this.f32c = 0;
    }

    @Override // java.util.Collection, java.util.Set
    @NonNull
    public <T> T[] toArray(@NonNull T[] tArr) {
        if (tArr.length < this.f32c) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f32c));
        }
        System.arraycopy(this.f31b, 0, tArr, 0, this.f32c);
        int length = tArr.length;
        int i = this.f32c;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ArraySet(@Nullable Collection<E> collection) {
        this();
        if (collection != 0) {
            addAll(collection);
        }
    }
}
