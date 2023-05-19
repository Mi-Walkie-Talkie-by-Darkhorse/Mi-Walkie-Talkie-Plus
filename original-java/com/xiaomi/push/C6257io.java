package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.io */
/* loaded from: classes2.dex */
public class C6257io implements InterfaceC6279jg<C6257io, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public List<C6246id> f22410a;

    /* renamed from: a */
    private static final C6297jw f22409a = new C6297jw("XmPushActionCollectData");

    /* renamed from: a */
    private static final C6289jo f22408a = new C6289jo("", (byte) 15, 1);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6257io c6257io) {
        int m1918a;
        if (getClass().equals(c6257io.getClass())) {
            int compareTo = Boolean.valueOf(m2280a()).compareTo(Boolean.valueOf(c6257io.m2280a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2280a() || (m1918a = C6280jh.m1918a(this.f22410a, c6257io.f22410a)) == 0) {
                return 0;
            }
            return m1918a;
        }
        return getClass().getName().compareTo(c6257io.getClass().getName());
    }

    /* renamed from: a */
    public C6257io m2277a(List<C6246id> list) {
        this.f22410a = list;
        return this;
    }

    /* renamed from: a */
    public void m2281a() {
        if (this.f22410a != null) {
            return;
        }
        throw new C6293js("Required field 'dataCollectionItems' was not present! Struct: " + toString());
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
                m2281a();
                return;
            }
            if (mo1900a.f22800a == 1 && b == 15) {
                C6290jp mo1872a = abstractC6292jr.mo1872a();
                this.f22410a = new ArrayList(mo1872a.f22802a);
                for (int i = 0; i < mo1872a.f22802a; i++) {
                    C6246id c6246id = new C6246id();
                    c6246id.mo1931a(abstractC6292jr);
                    this.f22410a.add(c6246id);
                }
                abstractC6292jr.mo1877i();
            } else {
                C6295ju.m1874a(abstractC6292jr, b);
            }
            abstractC6292jr.mo1879g();
        }
    }

    /* renamed from: a */
    public boolean m2280a() {
        return this.f22410a != null;
    }

    /* renamed from: a */
    public boolean m2278a(C6257io c6257io) {
        if (c6257io == null) {
            return false;
        }
        boolean m2280a = m2280a();
        boolean m2280a2 = c6257io.m2280a();
        if (m2280a || m2280a2) {
            return m2280a && m2280a2 && this.f22410a.equals(c6257io.f22410a);
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2281a();
        abstractC6292jr.mo1889a(f22409a);
        if (this.f22410a != null) {
            abstractC6292jr.mo1892a(f22408a);
            abstractC6292jr.mo1891a(new C6290jp((byte) 12, this.f22410a.size()));
            for (C6246id c6246id : this.f22410a) {
                c6246id.mo1930b(abstractC6292jr);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6257io)) {
            return m2278a((C6257io) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCollectData(");
        sb.append("dataCollectionItems:");
        List<C6246id> list = this.f22410a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
