package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.fo */
/* loaded from: classes2.dex */
public class C6160fo implements InterfaceC6279jg<C6160fo, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public String f21639a;

    /* renamed from: a */
    public List<C6159fn> f21640a;

    /* renamed from: b */
    public String f21641b;

    /* renamed from: a */
    private static final C6297jw f21636a = new C6297jw("StatsEvents");

    /* renamed from: a */
    private static final C6289jo f21635a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f21637b = new C6289jo("", (byte) 11, 2);

    /* renamed from: c */
    private static final C6289jo f21638c = new C6289jo("", (byte) 15, 3);

    public C6160fo() {
    }

    public C6160fo(String str, List<C6159fn> list) {
        this();
        this.f21639a = str;
        this.f21640a = list;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6160fo c6160fo) {
        int m1918a;
        int m1924a;
        int m1924a2;
        if (getClass().equals(c6160fo.getClass())) {
            int compareTo = Boolean.valueOf(m2887a()).compareTo(Boolean.valueOf(c6160fo.m2887a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2887a() || (m1924a2 = C6280jh.m1924a(this.f21639a, c6160fo.f21639a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2883b()).compareTo(Boolean.valueOf(c6160fo.m2883b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2883b() || (m1924a = C6280jh.m1924a(this.f21641b, c6160fo.f21641b)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2882c()).compareTo(Boolean.valueOf(c6160fo.m2882c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2882c() || (m1918a = C6280jh.m1918a(this.f21640a, c6160fo.f21640a)) == 0) {
                        return 0;
                    }
                    return m1918a;
                }
                return m1924a;
            }
            return m1924a2;
        }
        return getClass().getName().compareTo(c6160fo.getClass().getName());
    }

    /* renamed from: a */
    public C6160fo m2884a(String str) {
        this.f21641b = str;
        return this;
    }

    /* renamed from: a */
    public void m2888a() {
        if (this.f21639a == null) {
            throw new C6293js("Required field 'uuid' was not present! Struct: " + toString());
        } else if (this.f21640a != null) {
        } else {
            throw new C6293js("Required field 'events' was not present! Struct: " + toString());
        }
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: a */
    public void mo1931a(AbstractC6292jr abstractC6292jr) {
        abstractC6292jr.mo1899a();
        while (true) {
            C6289jo mo1900a = abstractC6292jr.mo1900a();
            byte b = mo1900a.f22798a;
            if (b == 0) {
                abstractC6292jr.mo1880f();
                m2888a();
                return;
            }
            short s = mo1900a.f22800a;
            if (s == 1) {
                if (b == 11) {
                    this.f21639a = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s != 2) {
                if (s == 3 && b == 15) {
                    C6290jp mo1872a = abstractC6292jr.mo1872a();
                    this.f21640a = new ArrayList(mo1872a.f22802a);
                    for (int i = 0; i < mo1872a.f22802a; i++) {
                        C6159fn c6159fn = new C6159fn();
                        c6159fn.mo1931a(abstractC6292jr);
                        this.f21640a.add(c6159fn);
                    }
                    abstractC6292jr.mo1877i();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else {
                if (b == 11) {
                    this.f21641b = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            }
        }
    }

    /* renamed from: a */
    public boolean m2887a() {
        return this.f21639a != null;
    }

    /* renamed from: a */
    public boolean m2885a(C6160fo c6160fo) {
        if (c6160fo == null) {
            return false;
        }
        boolean m2887a = m2887a();
        boolean m2887a2 = c6160fo.m2887a();
        if ((m2887a || m2887a2) && !(m2887a && m2887a2 && this.f21639a.equals(c6160fo.f21639a))) {
            return false;
        }
        boolean m2883b = m2883b();
        boolean m2883b2 = c6160fo.m2883b();
        if ((m2883b || m2883b2) && !(m2883b && m2883b2 && this.f21641b.equals(c6160fo.f21641b))) {
            return false;
        }
        boolean m2882c = m2882c();
        boolean m2882c2 = c6160fo.m2882c();
        if (m2882c || m2882c2) {
            return m2882c && m2882c2 && this.f21640a.equals(c6160fo.f21640a);
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2888a();
        abstractC6292jr.mo1889a(f21636a);
        if (this.f21639a != null) {
            abstractC6292jr.mo1892a(f21635a);
            abstractC6292jr.mo1888a(this.f21639a);
            abstractC6292jr.mo1884b();
        }
        if (this.f21641b != null && m2883b()) {
            abstractC6292jr.mo1892a(f21637b);
            abstractC6292jr.mo1888a(this.f21641b);
            abstractC6292jr.mo1884b();
        }
        if (this.f21640a != null) {
            abstractC6292jr.mo1892a(f21638c);
            abstractC6292jr.mo1891a(new C6290jp((byte) 12, this.f21640a.size()));
            for (C6159fn c6159fn : this.f21640a) {
                c6159fn.mo1930b(abstractC6292jr);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2883b() {
        return this.f21641b != null;
    }

    /* renamed from: c */
    public boolean m2882c() {
        return this.f21640a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6160fo)) {
            return m2885a((C6160fo) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvents(");
        sb.append("uuid:");
        String str = this.f21639a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (m2883b()) {
            sb.append(", ");
            sb.append("operator:");
            String str2 = this.f21641b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("events:");
        List<C6159fn> list = this.f21640a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
