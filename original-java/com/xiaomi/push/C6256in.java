package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.in */
/* loaded from: classes2.dex */
public class C6256in implements InterfaceC6279jg<C6256in, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public int f22405a;

    /* renamed from: a */
    private BitSet f22406a = new BitSet(2);

    /* renamed from: b */
    public int f22407b;

    /* renamed from: a */
    private static final C6297jw f22403a = new C6297jw("XmPushActionCheckClientInfo");

    /* renamed from: a */
    private static final C6289jo f22402a = new C6289jo("", (byte) 8, 1);

    /* renamed from: b */
    private static final C6289jo f22404b = new C6289jo("", (byte) 8, 2);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6256in c6256in) {
        int m1927a;
        int m1927a2;
        if (getClass().equals(c6256in.getClass())) {
            int compareTo = Boolean.valueOf(m2289a()).compareTo(Boolean.valueOf(c6256in.m2289a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2289a() || (m1927a2 = C6280jh.m1927a(this.f22405a, c6256in.f22405a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2284b()).compareTo(Boolean.valueOf(c6256in.m2284b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2284b() || (m1927a = C6280jh.m1927a(this.f22407b, c6256in.f22407b)) == 0) {
                    return 0;
                }
                return m1927a;
            }
            return m1927a2;
        }
        return getClass().getName().compareTo(c6256in.getClass().getName());
    }

    /* renamed from: a */
    public C6256in m2288a(int i) {
        this.f22405a = i;
        m2285a(true);
        return this;
    }

    /* renamed from: a */
    public void m2290a() {
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: a */
    public void mo1931a(AbstractC6292jr abstractC6292jr) {
        abstractC6292jr.mo1899a();
        while (true) {
            C6289jo mo1900a = abstractC6292jr.mo1900a();
            byte b = mo1900a.f22798a;
            if (b == 0) {
                break;
            }
            short s = mo1900a.f22800a;
            if (s != 1) {
                if (s == 2 && b == 8) {
                    this.f22407b = abstractC6292jr.mo1902a();
                    m2282b(true);
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else {
                if (b == 8) {
                    this.f22405a = abstractC6292jr.mo1902a();
                    m2285a(true);
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            }
        }
        abstractC6292jr.mo1880f();
        if (!m2289a()) {
            throw new C6293js("Required field 'miscConfigVersion' was not found in serialized data! Struct: " + toString());
        } else if (m2284b()) {
            m2290a();
        } else {
            throw new C6293js("Required field 'pluginConfigVersion' was not found in serialized data! Struct: " + toString());
        }
    }

    /* renamed from: a */
    public void m2285a(boolean z) {
        this.f22406a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2289a() {
        return this.f22406a.get(0);
    }

    /* renamed from: a */
    public boolean m2286a(C6256in c6256in) {
        return c6256in != null && this.f22405a == c6256in.f22405a && this.f22407b == c6256in.f22407b;
    }

    /* renamed from: b */
    public C6256in m2283b(int i) {
        this.f22407b = i;
        m2282b(true);
        return this;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2290a();
        abstractC6292jr.mo1889a(f22403a);
        abstractC6292jr.mo1892a(f22402a);
        abstractC6292jr.mo1894a(this.f22405a);
        abstractC6292jr.mo1884b();
        abstractC6292jr.mo1892a(f22404b);
        abstractC6292jr.mo1894a(this.f22407b);
        abstractC6292jr.mo1884b();
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2282b(boolean z) {
        this.f22406a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2284b() {
        return this.f22406a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6256in)) {
            return m2286a((C6256in) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "XmPushActionCheckClientInfo(miscConfigVersion:" + this.f22405a + ", pluginConfigVersion:" + this.f22407b + ")";
    }
}
