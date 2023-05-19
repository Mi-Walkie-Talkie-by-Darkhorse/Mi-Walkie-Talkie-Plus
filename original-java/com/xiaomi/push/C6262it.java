package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.it */
/* loaded from: classes2.dex */
public class C6262it implements InterfaceC6279jg<C6262it, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public List<C6247ie> f22478a;

    /* renamed from: a */
    private static final C6297jw f22477a = new C6297jw("XmPushActionNormalConfig");

    /* renamed from: a */
    private static final C6289jo f22476a = new C6289jo("", (byte) 15, 1);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6262it c6262it) {
        int m1918a;
        if (getClass().equals(c6262it.getClass())) {
            int compareTo = Boolean.valueOf(m2200a()).compareTo(Boolean.valueOf(c6262it.m2200a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2200a() || (m1918a = C6280jh.m1918a(this.f22478a, c6262it.f22478a)) == 0) {
                return 0;
            }
            return m1918a;
        }
        return getClass().getName().compareTo(c6262it.getClass().getName());
    }

    /* renamed from: a */
    public List<C6247ie> m2202a() {
        return this.f22478a;
    }

    /* renamed from: a */
    public void m2201a() {
        if (this.f22478a != null) {
            return;
        }
        throw new C6293js("Required field 'normalConfigs' was not present! Struct: " + toString());
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
                m2201a();
                return;
            }
            if (mo1900a.f22800a == 1 && b == 15) {
                C6290jp mo1872a = abstractC6292jr.mo1872a();
                this.f22478a = new ArrayList(mo1872a.f22802a);
                for (int i = 0; i < mo1872a.f22802a; i++) {
                    C6247ie c6247ie = new C6247ie();
                    c6247ie.mo1931a(abstractC6292jr);
                    this.f22478a.add(c6247ie);
                }
                abstractC6292jr.mo1877i();
            } else {
                C6295ju.m1874a(abstractC6292jr, b);
            }
            abstractC6292jr.mo1879g();
        }
    }

    /* renamed from: a */
    public boolean m2200a() {
        return this.f22478a != null;
    }

    /* renamed from: a */
    public boolean m2198a(C6262it c6262it) {
        if (c6262it == null) {
            return false;
        }
        boolean m2200a = m2200a();
        boolean m2200a2 = c6262it.m2200a();
        if (m2200a || m2200a2) {
            return m2200a && m2200a2 && this.f22478a.equals(c6262it.f22478a);
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2201a();
        abstractC6292jr.mo1889a(f22477a);
        if (this.f22478a != null) {
            abstractC6292jr.mo1892a(f22476a);
            abstractC6292jr.mo1891a(new C6290jp((byte) 12, this.f22478a.size()));
            for (C6247ie c6247ie : this.f22478a) {
                c6247ie.mo1930b(abstractC6292jr);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6262it)) {
            return m2198a((C6262it) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionNormalConfig(");
        sb.append("normalConfigs:");
        List<C6247ie> list = this.f22478a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
