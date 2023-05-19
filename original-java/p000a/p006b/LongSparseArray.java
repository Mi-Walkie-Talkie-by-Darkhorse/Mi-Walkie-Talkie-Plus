package p000a.p006b;

import androidx.annotation.Nullable;

/* renamed from: a.b.d */
/* loaded from: classes.dex */
public class LongSparseArray<E> implements Cloneable {

    /* renamed from: e */
    private static final Object f38e = new Object();

    /* renamed from: a */
    private boolean f39a;

    /* renamed from: b */
    private long[] f40b;

    /* renamed from: c */
    private Object[] f41c;

    /* renamed from: d */
    private int f42d;

    public LongSparseArray() {
        this(10);
    }

    /* renamed from: e */
    private void m26499e() {
        int i = this.f42d;
        long[] jArr = this.f40b;
        Object[] objArr = this.f41c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f38e) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f39a = false;
        this.f42d = i2;
    }

    /* renamed from: a */
    public void m26503a(long j, E e) {
        int i = this.f42d;
        if (i != 0 && j <= this.f40b[i - 1]) {
            m26493k(j, e);
            return;
        }
        if (this.f39a && i >= this.f40b.length) {
            m26499e();
        }
        int i2 = this.f42d;
        if (i2 >= this.f40b.length) {
            int m26504f = ContainerHelpers.m26504f(i2 + 1);
            long[] jArr = new long[m26504f];
            Object[] objArr = new Object[m26504f];
            long[] jArr2 = this.f40b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f41c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f40b = jArr;
            this.f41c = objArr;
        }
        this.f40b[i2] = j;
        this.f41c[i2] = e;
        this.f42d = i2 + 1;
    }

    /* renamed from: b */
    public void m26502b() {
        int i = this.f42d;
        Object[] objArr = this.f41c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f42d = 0;
        this.f39a = false;
    }

    /* renamed from: c */
    public LongSparseArray<E> clone() {
        try {
            LongSparseArray<E> longSparseArray = (LongSparseArray) super.clone();
            longSparseArray.f40b = (long[]) this.f40b.clone();
            longSparseArray.f41c = (Object[]) this.f41c.clone();
            return longSparseArray;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: d */
    public boolean m26500d(long j) {
        return m26496h(j) >= 0;
    }

    @Nullable
    /* renamed from: f */
    public E m26498f(long j) {
        return m26497g(j, null);
    }

    /* renamed from: g */
    public E m26497g(long j, E e) {
        int m26508b = ContainerHelpers.m26508b(this.f40b, this.f42d, j);
        if (m26508b >= 0) {
            Object[] objArr = this.f41c;
            if (objArr[m26508b] != f38e) {
                return (E) objArr[m26508b];
            }
        }
        return e;
    }

    /* renamed from: h */
    public int m26496h(long j) {
        if (this.f39a) {
            m26499e();
        }
        return ContainerHelpers.m26508b(this.f40b, this.f42d, j);
    }

    /* renamed from: i */
    public boolean m26495i() {
        return m26490n() == 0;
    }

    /* renamed from: j */
    public long m26494j(int i) {
        if (this.f39a) {
            m26499e();
        }
        return this.f40b[i];
    }

    /* renamed from: k */
    public void m26493k(long j, E e) {
        int m26508b = ContainerHelpers.m26508b(this.f40b, this.f42d, j);
        if (m26508b >= 0) {
            this.f41c[m26508b] = e;
            return;
        }
        int i = ~m26508b;
        int i2 = this.f42d;
        if (i < i2) {
            Object[] objArr = this.f41c;
            if (objArr[i] == f38e) {
                this.f40b[i] = j;
                objArr[i] = e;
                return;
            }
        }
        if (this.f39a && i2 >= this.f40b.length) {
            m26499e();
            i = ~ContainerHelpers.m26508b(this.f40b, this.f42d, j);
        }
        int i3 = this.f42d;
        if (i3 >= this.f40b.length) {
            int m26504f = ContainerHelpers.m26504f(i3 + 1);
            long[] jArr = new long[m26504f];
            Object[] objArr2 = new Object[m26504f];
            long[] jArr2 = this.f40b;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f41c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f40b = jArr;
            this.f41c = objArr2;
        }
        int i4 = this.f42d;
        if (i4 - i != 0) {
            long[] jArr3 = this.f40b;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.f41c;
            System.arraycopy(objArr4, i, objArr4, i5, this.f42d - i);
        }
        this.f40b[i] = j;
        this.f41c[i] = e;
        this.f42d++;
    }

    /* renamed from: l */
    public void m26492l(long j) {
        int m26508b = ContainerHelpers.m26508b(this.f40b, this.f42d, j);
        if (m26508b >= 0) {
            Object[] objArr = this.f41c;
            Object obj = objArr[m26508b];
            Object obj2 = f38e;
            if (obj != obj2) {
                objArr[m26508b] = obj2;
                this.f39a = true;
            }
        }
    }

    /* renamed from: m */
    public void m26491m(int i) {
        Object[] objArr = this.f41c;
        Object obj = objArr[i];
        Object obj2 = f38e;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f39a = true;
        }
    }

    /* renamed from: n */
    public int m26490n() {
        if (this.f39a) {
            m26499e();
        }
        return this.f42d;
    }

    /* renamed from: o */
    public E m26489o(int i) {
        if (this.f39a) {
            m26499e();
        }
        return (E) this.f41c[i];
    }

    public String toString() {
        if (m26490n() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f42d * 28);
        sb.append('{');
        for (int i = 0; i < this.f42d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m26494j(i));
            sb.append('=');
            E m26489o = m26489o(i);
            if (m26489o != this) {
                sb.append(m26489o);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public LongSparseArray(int i) {
        this.f39a = false;
        if (i == 0) {
            this.f40b = ContainerHelpers.f36b;
            this.f41c = ContainerHelpers.f37c;
            return;
        }
        int m26504f = ContainerHelpers.m26504f(i);
        this.f40b = new long[m26504f];
        this.f41c = new Object[m26504f];
    }
}
