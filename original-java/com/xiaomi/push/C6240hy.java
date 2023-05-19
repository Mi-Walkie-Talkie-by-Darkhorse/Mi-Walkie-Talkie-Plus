package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.hy */
/* loaded from: classes2.dex */
public class C6240hy implements InterfaceC6279jg<C6240hy, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public List<C6241hz> f21986a;

    /* renamed from: a */
    private static final C6297jw f21985a = new C6297jw("ClientUploadData");

    /* renamed from: a */
    private static final C6289jo f21984a = new C6289jo("", (byte) 15, 1);

    /* renamed from: a */
    public int m2558a() {
        List<C6241hz> list = this.f21986a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6240hy c6240hy) {
        int m1918a;
        if (getClass().equals(c6240hy.getClass())) {
            int compareTo = Boolean.valueOf(m2556a()).compareTo(Boolean.valueOf(c6240hy.m2556a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2556a() || (m1918a = C6280jh.m1918a(this.f21986a, c6240hy.f21986a)) == 0) {
                return 0;
            }
            return m1918a;
        }
        return getClass().getName().compareTo(c6240hy.getClass().getName());
    }

    /* renamed from: a */
    public void m2557a() {
        if (this.f21986a != null) {
            return;
        }
        throw new C6293js("Required field 'uploadDataItems' was not present! Struct: " + toString());
    }

    /* renamed from: a */
    public void m2553a(C6241hz c6241hz) {
        if (this.f21986a == null) {
            this.f21986a = new ArrayList();
        }
        this.f21986a.add(c6241hz);
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
                m2557a();
                return;
            }
            if (mo1900a.f22800a == 1 && b == 15) {
                C6290jp mo1872a = abstractC6292jr.mo1872a();
                this.f21986a = new ArrayList(mo1872a.f22802a);
                for (int i = 0; i < mo1872a.f22802a; i++) {
                    C6241hz c6241hz = new C6241hz();
                    c6241hz.mo1931a(abstractC6292jr);
                    this.f21986a.add(c6241hz);
                }
                abstractC6292jr.mo1877i();
            } else {
                C6295ju.m1874a(abstractC6292jr, b);
            }
            abstractC6292jr.mo1879g();
        }
    }

    /* renamed from: a */
    public boolean m2556a() {
        return this.f21986a != null;
    }

    /* renamed from: a */
    public boolean m2554a(C6240hy c6240hy) {
        if (c6240hy == null) {
            return false;
        }
        boolean m2556a = m2556a();
        boolean m2556a2 = c6240hy.m2556a();
        if (m2556a || m2556a2) {
            return m2556a && m2556a2 && this.f21986a.equals(c6240hy.f21986a);
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2557a();
        abstractC6292jr.mo1889a(f21985a);
        if (this.f21986a != null) {
            abstractC6292jr.mo1892a(f21984a);
            abstractC6292jr.mo1891a(new C6290jp((byte) 12, this.f21986a.size()));
            for (C6241hz c6241hz : this.f21986a) {
                c6241hz.mo1930b(abstractC6292jr);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6240hy)) {
            return m2554a((C6240hy) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientUploadData(");
        sb.append("uploadDataItems:");
        List<C6241hz> list = this.f21986a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
