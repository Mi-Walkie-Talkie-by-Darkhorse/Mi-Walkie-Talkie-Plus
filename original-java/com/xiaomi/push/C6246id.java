package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.id */
/* loaded from: classes2.dex */
public class C6246id implements InterfaceC6279jg<C6246id, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22164a;

    /* renamed from: a */
    public EnumC6239hx f22165a;

    /* renamed from: a */
    public String f22166a;

    /* renamed from: a */
    private BitSet f22167a = new BitSet(1);

    /* renamed from: a */
    private static final C6297jw f22161a = new C6297jw("DataCollectionItem");

    /* renamed from: a */
    private static final C6289jo f22160a = new C6289jo("", (byte) 10, 1);

    /* renamed from: b */
    private static final C6289jo f22162b = new C6289jo("", (byte) 8, 2);

    /* renamed from: c */
    private static final C6289jo f22163c = new C6289jo("", (byte) 11, 3);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6246id c6246id) {
        int m1924a;
        int m1925a;
        int m1926a;
        if (getClass().equals(c6246id.getClass())) {
            int compareTo = Boolean.valueOf(m2475a()).compareTo(Boolean.valueOf(c6246id.m2475a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2475a() || (m1926a = C6280jh.m1926a(this.f22164a, c6246id.f22164a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2468b()).compareTo(Boolean.valueOf(c6246id.m2468b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2468b() || (m1925a = C6280jh.m1925a(this.f22165a, c6246id.f22165a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2467c()).compareTo(Boolean.valueOf(c6246id.m2467c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2467c() || (m1924a = C6280jh.m1924a(this.f22166a, c6246id.f22166a)) == 0) {
                        return 0;
                    }
                    return m1924a;
                }
                return m1925a;
            }
            return m1926a;
        }
        return getClass().getName().compareTo(c6246id.getClass().getName());
    }

    /* renamed from: a */
    public C6246id m2474a(long j) {
        this.f22164a = j;
        m2469a(true);
        return this;
    }

    /* renamed from: a */
    public C6246id m2473a(EnumC6239hx enumC6239hx) {
        this.f22165a = enumC6239hx;
        return this;
    }

    /* renamed from: a */
    public C6246id m2470a(String str) {
        this.f22166a = str;
        return this;
    }

    /* renamed from: a */
    public String m2477a() {
        return this.f22166a;
    }

    /* renamed from: a */
    public void m2476a() {
        if (this.f22165a == null) {
            throw new C6293js("Required field 'collectionType' was not present! Struct: " + toString());
        } else if (this.f22166a != null) {
        } else {
            throw new C6293js("Required field 'content' was not present! Struct: " + toString());
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
                break;
            }
            short s = mo1900a.f22800a;
            if (s == 1) {
                if (b == 10) {
                    this.f22164a = abstractC6292jr.mo1901a();
                    m2469a(true);
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s != 2) {
                if (s == 3 && b == 11) {
                    this.f22166a = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else {
                if (b == 8) {
                    this.f22165a = EnumC6239hx.m2559a(abstractC6292jr.mo1902a());
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            }
        }
        abstractC6292jr.mo1880f();
        if (m2475a()) {
            m2476a();
            return;
        }
        throw new C6293js("Required field 'collectedAt' was not found in serialized data! Struct: " + toString());
    }

    /* renamed from: a */
    public void m2469a(boolean z) {
        this.f22167a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2475a() {
        return this.f22167a.get(0);
    }

    /* renamed from: a */
    public boolean m2471a(C6246id c6246id) {
        if (c6246id != null && this.f22164a == c6246id.f22164a) {
            boolean m2468b = m2468b();
            boolean m2468b2 = c6246id.m2468b();
            if ((m2468b || m2468b2) && !(m2468b && m2468b2 && this.f22165a.equals(c6246id.f22165a))) {
                return false;
            }
            boolean m2467c = m2467c();
            boolean m2467c2 = c6246id.m2467c();
            if (m2467c || m2467c2) {
                return m2467c && m2467c2 && this.f22166a.equals(c6246id.f22166a);
            }
            return true;
        }
        return false;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2476a();
        abstractC6292jr.mo1889a(f22161a);
        abstractC6292jr.mo1892a(f22160a);
        abstractC6292jr.mo1893a(this.f22164a);
        abstractC6292jr.mo1884b();
        if (this.f22165a != null) {
            abstractC6292jr.mo1892a(f22162b);
            abstractC6292jr.mo1894a(this.f22165a.m2561a());
            abstractC6292jr.mo1884b();
        }
        if (this.f22166a != null) {
            abstractC6292jr.mo1892a(f22163c);
            abstractC6292jr.mo1888a(this.f22166a);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2468b() {
        return this.f22165a != null;
    }

    /* renamed from: c */
    public boolean m2467c() {
        return this.f22166a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6246id)) {
            return m2471a((C6246id) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DataCollectionItem(");
        sb.append("collectedAt:");
        sb.append(this.f22164a);
        sb.append(", ");
        sb.append("collectionType:");
        EnumC6239hx enumC6239hx = this.f22165a;
        if (enumC6239hx == null) {
            sb.append("null");
        } else {
            sb.append(enumC6239hx);
        }
        sb.append(", ");
        sb.append("content:");
        String str = this.f22166a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }
}
