package p000a.p006b;

import androidx.annotation.Nullable;

/* renamed from: a.b.h */
/* loaded from: classes.dex */
public class SparseArrayCompat<E> implements Cloneable {

    /* renamed from: e */
    private static final Object f73e = new Object();

    /* renamed from: a */
    private boolean f74a;

    /* renamed from: b */
    private int[] f75b;

    /* renamed from: c */
    private Object[] f76c;

    /* renamed from: d */
    private int f77d;

    public SparseArrayCompat() {
        this(10);
    }

    /* renamed from: d */
    private void m26448d() {
        int i = this.f77d;
        int[] iArr = this.f75b;
        Object[] objArr = this.f76c;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f73e) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f74a = false;
        this.f77d = i2;
    }

    /* renamed from: a */
    public void m26451a(int i, E e) {
        int i2 = this.f77d;
        if (i2 != 0 && i <= this.f75b[i2 - 1]) {
            m26443i(i, e);
            return;
        }
        if (this.f74a && i2 >= this.f75b.length) {
            m26448d();
        }
        int i3 = this.f77d;
        if (i3 >= this.f75b.length) {
            int m26505e = ContainerHelpers.m26505e(i3 + 1);
            int[] iArr = new int[m26505e];
            Object[] objArr = new Object[m26505e];
            int[] iArr2 = this.f75b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f76c;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f75b = iArr;
            this.f76c = objArr;
        }
        this.f75b[i3] = i;
        this.f76c[i3] = e;
        this.f77d = i3 + 1;
    }

    /* renamed from: b */
    public void m26450b() {
        int i = this.f77d;
        Object[] objArr = this.f76c;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f77d = 0;
        this.f74a = false;
    }

    /* renamed from: c */
    public SparseArrayCompat<E> clone() {
        try {
            SparseArrayCompat<E> sparseArrayCompat = (SparseArrayCompat) super.clone();
            sparseArrayCompat.f75b = (int[]) this.f75b.clone();
            sparseArrayCompat.f76c = (Object[]) this.f76c.clone();
            return sparseArrayCompat;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    @Nullable
    /* renamed from: e */
    public E m26447e(int i) {
        return m26446f(i, null);
    }

    /* renamed from: f */
    public E m26446f(int i, E e) {
        int m26509a = ContainerHelpers.m26509a(this.f75b, this.f77d, i);
        if (m26509a >= 0) {
            Object[] objArr = this.f76c;
            if (objArr[m26509a] != f73e) {
                return (E) objArr[m26509a];
            }
        }
        return e;
    }

    /* renamed from: g */
    public int m26445g(E e) {
        if (this.f74a) {
            m26448d();
        }
        for (int i = 0; i < this.f77d; i++) {
            if (this.f76c[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: h */
    public int m26444h(int i) {
        if (this.f74a) {
            m26448d();
        }
        return this.f75b[i];
    }

    /* renamed from: i */
    public void m26443i(int i, E e) {
        int m26509a = ContainerHelpers.m26509a(this.f75b, this.f77d, i);
        if (m26509a >= 0) {
            this.f76c[m26509a] = e;
            return;
        }
        int i2 = ~m26509a;
        int i3 = this.f77d;
        if (i2 < i3) {
            Object[] objArr = this.f76c;
            if (objArr[i2] == f73e) {
                this.f75b[i2] = i;
                objArr[i2] = e;
                return;
            }
        }
        if (this.f74a && i3 >= this.f75b.length) {
            m26448d();
            i2 = ~ContainerHelpers.m26509a(this.f75b, this.f77d, i);
        }
        int i4 = this.f77d;
        if (i4 >= this.f75b.length) {
            int m26505e = ContainerHelpers.m26505e(i4 + 1);
            int[] iArr = new int[m26505e];
            Object[] objArr2 = new Object[m26505e];
            int[] iArr2 = this.f75b;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f76c;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f75b = iArr;
            this.f76c = objArr2;
        }
        int i5 = this.f77d;
        if (i5 - i2 != 0) {
            int[] iArr3 = this.f75b;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr4 = this.f76c;
            System.arraycopy(objArr4, i2, objArr4, i6, this.f77d - i2);
        }
        this.f75b[i2] = i;
        this.f76c[i2] = e;
        this.f77d++;
    }

    /* renamed from: j */
    public void m26442j(int i) {
        int m26509a = ContainerHelpers.m26509a(this.f75b, this.f77d, i);
        if (m26509a >= 0) {
            Object[] objArr = this.f76c;
            Object obj = objArr[m26509a];
            Object obj2 = f73e;
            if (obj != obj2) {
                objArr[m26509a] = obj2;
                this.f74a = true;
            }
        }
    }

    /* renamed from: k */
    public int m26441k() {
        if (this.f74a) {
            m26448d();
        }
        return this.f77d;
    }

    /* renamed from: l */
    public E m26440l(int i) {
        if (this.f74a) {
            m26448d();
        }
        return (E) this.f76c[i];
    }

    public String toString() {
        if (m26441k() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f77d * 28);
        sb.append('{');
        for (int i = 0; i < this.f77d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m26444h(i));
            sb.append('=');
            E m26440l = m26440l(i);
            if (m26440l != this) {
                sb.append(m26440l);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public SparseArrayCompat(int i) {
        this.f74a = false;
        if (i == 0) {
            this.f75b = ContainerHelpers.f35a;
            this.f76c = ContainerHelpers.f37c;
            return;
        }
        int m26505e = ContainerHelpers.m26505e(i);
        this.f75b = new int[m26505e];
        this.f76c = new Object[m26505e];
    }
}
