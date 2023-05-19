package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* renamed from: com.xiaomi.push.ie */
/* loaded from: classes2.dex */
public class C6247ie implements InterfaceC6279jg<C6247ie, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public int f22172a;

    /* renamed from: a */
    public EnumC6244ib f22173a;

    /* renamed from: a */
    private BitSet f22174a = new BitSet(1);

    /* renamed from: a */
    public List<C6249ig> f22175a;

    /* renamed from: a */
    private static final C6297jw f22169a = new C6297jw("NormalConfig");

    /* renamed from: a */
    private static final C6289jo f22168a = new C6289jo("", (byte) 8, 1);

    /* renamed from: b */
    private static final C6289jo f22170b = new C6289jo("", (byte) 15, 2);

    /* renamed from: c */
    private static final C6289jo f22171c = new C6289jo("", (byte) 8, 3);

    /* renamed from: a */
    public int m2466a() {
        return this.f22172a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6247ie c6247ie) {
        int m1925a;
        int m1918a;
        int m1927a;
        if (getClass().equals(c6247ie.getClass())) {
            int compareTo = Boolean.valueOf(m2463a()).compareTo(Boolean.valueOf(c6247ie.m2463a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2463a() || (m1927a = C6280jh.m1927a(this.f22172a, c6247ie.f22172a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2459b()).compareTo(Boolean.valueOf(c6247ie.m2459b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2459b() || (m1918a = C6280jh.m1918a(this.f22175a, c6247ie.f22175a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2458c()).compareTo(Boolean.valueOf(c6247ie.m2458c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2458c() || (m1925a = C6280jh.m1925a(this.f22173a, c6247ie.f22173a)) == 0) {
                        return 0;
                    }
                    return m1925a;
                }
                return m1918a;
            }
            return m1927a;
        }
        return getClass().getName().compareTo(c6247ie.getClass().getName());
    }

    /* renamed from: a */
    public EnumC6244ib m2465a() {
        return this.f22173a;
    }

    /* renamed from: a */
    public void m2464a() {
        if (this.f22175a != null) {
            return;
        }
        throw new C6293js("Required field 'configItems' was not present! Struct: " + toString());
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
            if (s == 1) {
                if (b == 8) {
                    this.f22172a = abstractC6292jr.mo1902a();
                    m2460a(true);
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s != 2) {
                if (s == 3 && b == 8) {
                    this.f22173a = EnumC6244ib.m2480a(abstractC6292jr.mo1902a());
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else {
                if (b == 15) {
                    C6290jp mo1872a = abstractC6292jr.mo1872a();
                    this.f22175a = new ArrayList(mo1872a.f22802a);
                    for (int i = 0; i < mo1872a.f22802a; i++) {
                        C6249ig c6249ig = new C6249ig();
                        c6249ig.mo1931a(abstractC6292jr);
                        this.f22175a.add(c6249ig);
                    }
                    abstractC6292jr.mo1877i();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            }
        }
        abstractC6292jr.mo1880f();
        if (m2463a()) {
            m2464a();
            return;
        }
        throw new C6293js("Required field 'version' was not found in serialized data! Struct: " + toString());
    }

    /* renamed from: a */
    public void m2460a(boolean z) {
        this.f22174a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2463a() {
        return this.f22174a.get(0);
    }

    /* renamed from: a */
    public boolean m2461a(C6247ie c6247ie) {
        if (c6247ie != null && this.f22172a == c6247ie.f22172a) {
            boolean m2459b = m2459b();
            boolean m2459b2 = c6247ie.m2459b();
            if ((m2459b || m2459b2) && !(m2459b && m2459b2 && this.f22175a.equals(c6247ie.f22175a))) {
                return false;
            }
            boolean m2458c = m2458c();
            boolean m2458c2 = c6247ie.m2458c();
            if (m2458c || m2458c2) {
                return m2458c && m2458c2 && this.f22173a.equals(c6247ie.f22173a);
            }
            return true;
        }
        return false;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2464a();
        abstractC6292jr.mo1889a(f22169a);
        abstractC6292jr.mo1892a(f22168a);
        abstractC6292jr.mo1894a(this.f22172a);
        abstractC6292jr.mo1884b();
        if (this.f22175a != null) {
            abstractC6292jr.mo1892a(f22170b);
            abstractC6292jr.mo1891a(new C6290jp((byte) 12, this.f22175a.size()));
            for (C6249ig c6249ig : this.f22175a) {
                c6249ig.mo1930b(abstractC6292jr);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        if (this.f22173a != null && m2458c()) {
            abstractC6292jr.mo1892a(f22171c);
            abstractC6292jr.mo1894a(this.f22173a.m2482a());
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2459b() {
        return this.f22175a != null;
    }

    /* renamed from: c */
    public boolean m2458c() {
        return this.f22173a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6247ie)) {
            return m2461a((C6247ie) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NormalConfig(");
        sb.append("version:");
        sb.append(this.f22172a);
        sb.append(", ");
        sb.append("configItems:");
        List<C6249ig> list = this.f22175a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        if (m2458c()) {
            sb.append(", ");
            sb.append("type:");
            EnumC6244ib enumC6244ib = this.f22173a;
            if (enumC6244ib == null) {
                sb.append("null");
            } else {
                sb.append(enumC6244ib);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
