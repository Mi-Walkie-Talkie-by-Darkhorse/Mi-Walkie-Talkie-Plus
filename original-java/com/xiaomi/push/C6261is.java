package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.is */
/* loaded from: classes2.dex */
public class C6261is implements InterfaceC6279jg<C6261is, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public List<C6249ig> f22475a;

    /* renamed from: a */
    private static final C6297jw f22474a = new C6297jw("XmPushActionCustomConfig");

    /* renamed from: a */
    private static final C6289jo f22473a = new C6289jo("", (byte) 15, 1);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6261is c6261is) {
        int m1918a;
        if (getClass().equals(c6261is.getClass())) {
            int compareTo = Boolean.valueOf(m2205a()).compareTo(Boolean.valueOf(c6261is.m2205a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2205a() || (m1918a = C6280jh.m1918a(this.f22475a, c6261is.f22475a)) == 0) {
                return 0;
            }
            return m1918a;
        }
        return getClass().getName().compareTo(c6261is.getClass().getName());
    }

    /* renamed from: a */
    public List<C6249ig> m2207a() {
        return this.f22475a;
    }

    /* renamed from: a */
    public void m2206a() {
        if (this.f22475a != null) {
            return;
        }
        throw new C6293js("Required field 'customConfigs' was not present! Struct: " + toString());
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
                m2206a();
                return;
            }
            if (mo1900a.f22800a == 1 && b == 15) {
                C6290jp mo1872a = abstractC6292jr.mo1872a();
                this.f22475a = new ArrayList(mo1872a.f22802a);
                for (int i = 0; i < mo1872a.f22802a; i++) {
                    C6249ig c6249ig = new C6249ig();
                    c6249ig.mo1931a(abstractC6292jr);
                    this.f22475a.add(c6249ig);
                }
                abstractC6292jr.mo1877i();
            } else {
                C6295ju.m1874a(abstractC6292jr, b);
            }
            abstractC6292jr.mo1879g();
        }
    }

    /* renamed from: a */
    public boolean m2205a() {
        return this.f22475a != null;
    }

    /* renamed from: a */
    public boolean m2203a(C6261is c6261is) {
        if (c6261is == null) {
            return false;
        }
        boolean m2205a = m2205a();
        boolean m2205a2 = c6261is.m2205a();
        if (m2205a || m2205a2) {
            return m2205a && m2205a2 && this.f22475a.equals(c6261is.f22475a);
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2206a();
        abstractC6292jr.mo1889a(f22474a);
        if (this.f22475a != null) {
            abstractC6292jr.mo1892a(f22473a);
            abstractC6292jr.mo1891a(new C6290jp((byte) 12, this.f22475a.size()));
            for (C6249ig c6249ig : this.f22475a) {
                c6249ig.mo1930b(abstractC6292jr);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6261is)) {
            return m2203a((C6261is) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCustomConfig(");
        sb.append("customConfigs:");
        List<C6249ig> list = this.f22475a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
