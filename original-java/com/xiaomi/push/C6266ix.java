package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.ix */
/* loaded from: classes2.dex */
public class C6266ix implements InterfaceC6279jg<C6266ix, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22617a;

    /* renamed from: a */
    public C6253ik f22618a;

    /* renamed from: a */
    public String f22619a;

    /* renamed from: a */
    private BitSet f22620a = new BitSet(1);

    /* renamed from: b */
    public String f22621b;

    /* renamed from: c */
    public String f22622c;

    /* renamed from: d */
    public String f22623d;

    /* renamed from: e */
    public String f22624e;

    /* renamed from: a */
    private static final C6297jw f22610a = new C6297jw("XmPushActionSendFeedbackResult");

    /* renamed from: a */
    private static final C6289jo f22609a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22611b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22612c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22613d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22614e = new C6289jo("", (byte) 10, 6);

    /* renamed from: f */
    private static final C6289jo f22615f = new C6289jo("", (byte) 11, 7);

    /* renamed from: g */
    private static final C6289jo f22616g = new C6289jo("", (byte) 11, 8);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6266ix c6266ix) {
        int m1924a;
        int m1924a2;
        int m1926a;
        int m1924a3;
        int m1924a4;
        int m1925a;
        int m1924a5;
        if (getClass().equals(c6266ix.getClass())) {
            int compareTo = Boolean.valueOf(m2074a()).compareTo(Boolean.valueOf(c6266ix.m2074a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2074a() || (m1924a5 = C6280jh.m1924a(this.f22619a, c6266ix.f22619a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2070b()).compareTo(Boolean.valueOf(c6266ix.m2070b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2070b() || (m1925a = C6280jh.m1925a(this.f22618a, c6266ix.f22618a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2069c()).compareTo(Boolean.valueOf(c6266ix.m2069c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2069c() || (m1924a4 = C6280jh.m1924a(this.f22621b, c6266ix.f22621b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2068d()).compareTo(Boolean.valueOf(c6266ix.m2068d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2068d() || (m1924a3 = C6280jh.m1924a(this.f22622c, c6266ix.f22622c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2067e()).compareTo(Boolean.valueOf(c6266ix.m2067e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2067e() || (m1926a = C6280jh.m1926a(this.f22617a, c6266ix.f22617a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2066f()).compareTo(Boolean.valueOf(c6266ix.m2066f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2066f() || (m1924a2 = C6280jh.m1924a(this.f22623d, c6266ix.f22623d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2065g()).compareTo(Boolean.valueOf(c6266ix.m2065g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2065g() || (m1924a = C6280jh.m1924a(this.f22624e, c6266ix.f22624e)) == 0) {
                                        return 0;
                                    }
                                    return m1924a;
                                }
                                return m1924a2;
                            }
                            return m1926a;
                        }
                        return m1924a3;
                    }
                    return m1924a4;
                }
                return m1925a;
            }
            return m1924a5;
        }
        return getClass().getName().compareTo(c6266ix.getClass().getName());
    }

    /* renamed from: a */
    public void m2075a() {
        if (this.f22621b == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22622c != null) {
        } else {
            throw new C6293js("Required field 'appId' was not present! Struct: " + toString());
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
                if (m2067e()) {
                    m2075a();
                    return;
                }
                throw new C6293js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22619a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22618a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22621b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22622c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 10) {
                        this.f22617a = abstractC6292jr.mo1901a();
                        m2071a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22623d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22624e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
            }
            C6295ju.m1874a(abstractC6292jr, b);
            abstractC6292jr.mo1879g();
        }
    }

    /* renamed from: a */
    public void m2071a(boolean z) {
        this.f22620a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2074a() {
        return this.f22619a != null;
    }

    /* renamed from: a */
    public boolean m2072a(C6266ix c6266ix) {
        if (c6266ix == null) {
            return false;
        }
        boolean m2074a = m2074a();
        boolean m2074a2 = c6266ix.m2074a();
        if ((m2074a || m2074a2) && !(m2074a && m2074a2 && this.f22619a.equals(c6266ix.f22619a))) {
            return false;
        }
        boolean m2070b = m2070b();
        boolean m2070b2 = c6266ix.m2070b();
        if ((m2070b || m2070b2) && !(m2070b && m2070b2 && this.f22618a.m2356a(c6266ix.f22618a))) {
            return false;
        }
        boolean m2069c = m2069c();
        boolean m2069c2 = c6266ix.m2069c();
        if ((m2069c || m2069c2) && !(m2069c && m2069c2 && this.f22621b.equals(c6266ix.f22621b))) {
            return false;
        }
        boolean m2068d = m2068d();
        boolean m2068d2 = c6266ix.m2068d();
        if (((m2068d || m2068d2) && !(m2068d && m2068d2 && this.f22622c.equals(c6266ix.f22622c))) || this.f22617a != c6266ix.f22617a) {
            return false;
        }
        boolean m2066f = m2066f();
        boolean m2066f2 = c6266ix.m2066f();
        if ((m2066f || m2066f2) && !(m2066f && m2066f2 && this.f22623d.equals(c6266ix.f22623d))) {
            return false;
        }
        boolean m2065g = m2065g();
        boolean m2065g2 = c6266ix.m2065g();
        if (m2065g || m2065g2) {
            return m2065g && m2065g2 && this.f22624e.equals(c6266ix.f22624e);
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2075a();
        abstractC6292jr.mo1889a(f22610a);
        if (this.f22619a != null && m2074a()) {
            abstractC6292jr.mo1892a(f22609a);
            abstractC6292jr.mo1888a(this.f22619a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22618a != null && m2070b()) {
            abstractC6292jr.mo1892a(f22611b);
            this.f22618a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22621b != null) {
            abstractC6292jr.mo1892a(f22612c);
            abstractC6292jr.mo1888a(this.f22621b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22622c != null) {
            abstractC6292jr.mo1892a(f22613d);
            abstractC6292jr.mo1888a(this.f22622c);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22614e);
        abstractC6292jr.mo1893a(this.f22617a);
        abstractC6292jr.mo1884b();
        if (this.f22623d != null && m2066f()) {
            abstractC6292jr.mo1892a(f22615f);
            abstractC6292jr.mo1888a(this.f22623d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22624e != null && m2065g()) {
            abstractC6292jr.mo1892a(f22616g);
            abstractC6292jr.mo1888a(this.f22624e);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2070b() {
        return this.f22618a != null;
    }

    /* renamed from: c */
    public boolean m2069c() {
        return this.f22621b != null;
    }

    /* renamed from: d */
    public boolean m2068d() {
        return this.f22622c != null;
    }

    /* renamed from: e */
    public boolean m2067e() {
        return this.f22620a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6266ix)) {
            return m2072a((C6266ix) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2066f() {
        return this.f22623d != null;
    }

    /* renamed from: g */
    public boolean m2065g() {
        return this.f22624e != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSendFeedbackResult(");
        boolean z2 = false;
        if (m2074a()) {
            sb.append("debug:");
            String str = this.f22619a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2070b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22618a;
            if (c6253ik == null) {
                sb.append("null");
            } else {
                sb.append(c6253ik);
            }
        } else {
            z2 = z;
        }
        if (!z2) {
            sb.append(", ");
        }
        sb.append("id:");
        String str2 = this.f22621b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f22622c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f22617a);
        if (m2066f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f22623d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2065g()) {
            sb.append(", ");
            sb.append("category:");
            String str5 = this.f22624e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
