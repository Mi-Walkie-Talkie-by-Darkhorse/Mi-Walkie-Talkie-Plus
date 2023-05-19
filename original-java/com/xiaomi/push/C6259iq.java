package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* renamed from: com.xiaomi.push.iq */
/* loaded from: classes2.dex */
public class C6259iq implements InterfaceC6279jg<C6259iq, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22444a;

    /* renamed from: a */
    public C6253ik f22445a;

    /* renamed from: a */
    public String f22446a;

    /* renamed from: a */
    public List<String> f22448a;

    /* renamed from: b */
    public String f22450b;

    /* renamed from: c */
    public String f22451c;

    /* renamed from: d */
    public String f22452d;

    /* renamed from: e */
    public String f22453e;

    /* renamed from: f */
    public String f22454f;

    /* renamed from: a */
    private static final C6297jw f22434a = new C6297jw("XmPushActionCommandResult");

    /* renamed from: a */
    private static final C6289jo f22433a = new C6289jo("", (byte) 12, 2);

    /* renamed from: b */
    private static final C6289jo f22435b = new C6289jo("", (byte) 11, 3);

    /* renamed from: c */
    private static final C6289jo f22436c = new C6289jo("", (byte) 11, 4);

    /* renamed from: d */
    private static final C6289jo f22437d = new C6289jo("", (byte) 11, 5);

    /* renamed from: e */
    private static final C6289jo f22438e = new C6289jo("", (byte) 10, 7);

    /* renamed from: f */
    private static final C6289jo f22439f = new C6289jo("", (byte) 11, 8);

    /* renamed from: g */
    private static final C6289jo f22440g = new C6289jo("", (byte) 11, 9);

    /* renamed from: h */
    private static final C6289jo f22441h = new C6289jo("", (byte) 15, 10);

    /* renamed from: i */
    private static final C6289jo f22442i = new C6289jo("", (byte) 11, 12);

    /* renamed from: j */
    private static final C6289jo f22443j = new C6289jo("", (byte) 2, 13);

    /* renamed from: a */
    private BitSet f22447a = new BitSet(2);

    /* renamed from: a */
    public boolean f22449a = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6259iq c6259iq) {
        int m1914a;
        int m1924a;
        int m1918a;
        int m1924a2;
        int m1924a3;
        int m1926a;
        int m1924a4;
        int m1924a5;
        int m1924a6;
        int m1925a;
        if (getClass().equals(c6259iq.getClass())) {
            int compareTo = Boolean.valueOf(m2250a()).compareTo(Boolean.valueOf(c6259iq.m2250a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2250a() || (m1925a = C6280jh.m1925a(this.f22445a, c6259iq.f22445a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2245b()).compareTo(Boolean.valueOf(c6259iq.m2245b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2245b() || (m1924a6 = C6280jh.m1924a(this.f22446a, c6259iq.f22446a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2242c()).compareTo(Boolean.valueOf(c6259iq.m2242c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2242c() || (m1924a5 = C6280jh.m1924a(this.f22450b, c6259iq.f22450b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2241d()).compareTo(Boolean.valueOf(c6259iq.m2241d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2241d() || (m1924a4 = C6280jh.m1924a(this.f22451c, c6259iq.f22451c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2240e()).compareTo(Boolean.valueOf(c6259iq.m2240e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2240e() || (m1926a = C6280jh.m1926a(this.f22444a, c6259iq.f22444a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2239f()).compareTo(Boolean.valueOf(c6259iq.m2239f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2239f() || (m1924a3 = C6280jh.m1924a(this.f22452d, c6259iq.f22452d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2238g()).compareTo(Boolean.valueOf(c6259iq.m2238g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2238g() || (m1924a2 = C6280jh.m1924a(this.f22453e, c6259iq.f22453e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2237h()).compareTo(Boolean.valueOf(c6259iq.m2237h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2237h() || (m1918a = C6280jh.m1918a(this.f22448a, c6259iq.f22448a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2236i()).compareTo(Boolean.valueOf(c6259iq.m2236i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2236i() || (m1924a = C6280jh.m1924a(this.f22454f, c6259iq.f22454f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2235j()).compareTo(Boolean.valueOf(c6259iq.m2235j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2235j() || (m1914a = C6280jh.m1914a(this.f22449a, c6259iq.f22449a)) == 0) {
                                                    return 0;
                                                }
                                                return m1914a;
                                            }
                                            return m1924a;
                                        }
                                        return m1918a;
                                    }
                                    return m1924a2;
                                }
                                return m1924a3;
                            }
                            return m1926a;
                        }
                        return m1924a4;
                    }
                    return m1924a5;
                }
                return m1924a6;
            }
            return m1925a;
        }
        return getClass().getName().compareTo(c6259iq.getClass().getName());
    }

    /* renamed from: a */
    public String m2253a() {
        return this.f22446a;
    }

    /* renamed from: a */
    public List<String> m2252a() {
        return this.f22448a;
    }

    /* renamed from: a */
    public void m2251a() {
        if (this.f22446a == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22450b == null) {
            throw new C6293js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f22451c != null) {
        } else {
            throw new C6293js("Required field 'cmdName' was not present! Struct: " + toString());
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
                if (m2240e()) {
                    m2251a();
                    return;
                }
                throw new C6293js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (mo1900a.f22800a) {
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22445a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22446a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22450b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22451c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 10) {
                        this.f22444a = abstractC6292jr.mo1901a();
                        m2247a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22452d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22453e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 15) {
                        C6290jp mo1872a = abstractC6292jr.mo1872a();
                        this.f22448a = new ArrayList(mo1872a.f22802a);
                        for (int i = 0; i < mo1872a.f22802a; i++) {
                            this.f22448a.add(abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1877i();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 12:
                    if (b == 11) {
                        this.f22454f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 13:
                    if (b == 2) {
                        this.f22449a = abstractC6292jr.mo1896a();
                        m2244b(true);
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
    public void m2247a(boolean z) {
        this.f22447a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2250a() {
        return this.f22445a != null;
    }

    /* renamed from: a */
    public boolean m2248a(C6259iq c6259iq) {
        if (c6259iq == null) {
            return false;
        }
        boolean m2250a = m2250a();
        boolean m2250a2 = c6259iq.m2250a();
        if ((m2250a || m2250a2) && !(m2250a && m2250a2 && this.f22445a.m2356a(c6259iq.f22445a))) {
            return false;
        }
        boolean m2245b = m2245b();
        boolean m2245b2 = c6259iq.m2245b();
        if ((m2245b || m2245b2) && !(m2245b && m2245b2 && this.f22446a.equals(c6259iq.f22446a))) {
            return false;
        }
        boolean m2242c = m2242c();
        boolean m2242c2 = c6259iq.m2242c();
        if ((m2242c || m2242c2) && !(m2242c && m2242c2 && this.f22450b.equals(c6259iq.f22450b))) {
            return false;
        }
        boolean m2241d = m2241d();
        boolean m2241d2 = c6259iq.m2241d();
        if (((m2241d || m2241d2) && !(m2241d && m2241d2 && this.f22451c.equals(c6259iq.f22451c))) || this.f22444a != c6259iq.f22444a) {
            return false;
        }
        boolean m2239f = m2239f();
        boolean m2239f2 = c6259iq.m2239f();
        if ((m2239f || m2239f2) && !(m2239f && m2239f2 && this.f22452d.equals(c6259iq.f22452d))) {
            return false;
        }
        boolean m2238g = m2238g();
        boolean m2238g2 = c6259iq.m2238g();
        if ((m2238g || m2238g2) && !(m2238g && m2238g2 && this.f22453e.equals(c6259iq.f22453e))) {
            return false;
        }
        boolean m2237h = m2237h();
        boolean m2237h2 = c6259iq.m2237h();
        if ((m2237h || m2237h2) && !(m2237h && m2237h2 && this.f22448a.equals(c6259iq.f22448a))) {
            return false;
        }
        boolean m2236i = m2236i();
        boolean m2236i2 = c6259iq.m2236i();
        if ((m2236i || m2236i2) && !(m2236i && m2236i2 && this.f22454f.equals(c6259iq.f22454f))) {
            return false;
        }
        boolean m2235j = m2235j();
        boolean m2235j2 = c6259iq.m2235j();
        if (m2235j || m2235j2) {
            return m2235j && m2235j2 && this.f22449a == c6259iq.f22449a;
        }
        return true;
    }

    /* renamed from: b */
    public String m2246b() {
        return this.f22451c;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2251a();
        abstractC6292jr.mo1889a(f22434a);
        if (this.f22445a != null && m2250a()) {
            abstractC6292jr.mo1892a(f22433a);
            this.f22445a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22446a != null) {
            abstractC6292jr.mo1892a(f22435b);
            abstractC6292jr.mo1888a(this.f22446a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22450b != null) {
            abstractC6292jr.mo1892a(f22436c);
            abstractC6292jr.mo1888a(this.f22450b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22451c != null) {
            abstractC6292jr.mo1892a(f22437d);
            abstractC6292jr.mo1888a(this.f22451c);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22438e);
        abstractC6292jr.mo1893a(this.f22444a);
        abstractC6292jr.mo1884b();
        if (this.f22452d != null && m2239f()) {
            abstractC6292jr.mo1892a(f22439f);
            abstractC6292jr.mo1888a(this.f22452d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22453e != null && m2238g()) {
            abstractC6292jr.mo1892a(f22440g);
            abstractC6292jr.mo1888a(this.f22453e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22448a != null && m2237h()) {
            abstractC6292jr.mo1892a(f22441h);
            abstractC6292jr.mo1891a(new C6290jp((byte) 11, this.f22448a.size()));
            for (String str : this.f22448a) {
                abstractC6292jr.mo1888a(str);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        if (this.f22454f != null && m2236i()) {
            abstractC6292jr.mo1892a(f22442i);
            abstractC6292jr.mo1888a(this.f22454f);
            abstractC6292jr.mo1884b();
        }
        if (m2235j()) {
            abstractC6292jr.mo1892a(f22443j);
            abstractC6292jr.mo1885a(this.f22449a);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2244b(boolean z) {
        this.f22447a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2245b() {
        return this.f22446a != null;
    }

    /* renamed from: c */
    public String m2243c() {
        return this.f22454f;
    }

    /* renamed from: c */
    public boolean m2242c() {
        return this.f22450b != null;
    }

    /* renamed from: d */
    public boolean m2241d() {
        return this.f22451c != null;
    }

    /* renamed from: e */
    public boolean m2240e() {
        return this.f22447a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6259iq)) {
            return m2248a((C6259iq) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2239f() {
        return this.f22452d != null;
    }

    /* renamed from: g */
    public boolean m2238g() {
        return this.f22453e != null;
    }

    /* renamed from: h */
    public boolean m2237h() {
        return this.f22448a != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2236i() {
        return this.f22454f != null;
    }

    /* renamed from: j */
    public boolean m2235j() {
        return this.f22447a.get(1);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionCommandResult(");
        if (m2250a()) {
            sb.append("target:");
            C6253ik c6253ik = this.f22445a;
            if (c6253ik == null) {
                sb.append("null");
            } else {
                sb.append(c6253ik);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("id:");
        String str = this.f22446a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("appId:");
        String str2 = this.f22450b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("cmdName:");
        String str3 = this.f22451c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f22444a);
        if (m2239f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f22452d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2238g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f22453e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2237h()) {
            sb.append(", ");
            sb.append("cmdArgs:");
            List<String> list = this.f22448a;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (m2236i()) {
            sb.append(", ");
            sb.append("category:");
            String str6 = this.f22454f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2235j()) {
            sb.append(", ");
            sb.append("response2Client:");
            sb.append(this.f22449a);
        }
        sb.append(")");
        return sb.toString();
    }
}
