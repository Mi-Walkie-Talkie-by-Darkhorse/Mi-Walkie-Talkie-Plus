package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* renamed from: com.xiaomi.push.ip */
/* loaded from: classes2.dex */
public class C6258ip implements InterfaceC6279jg<C6258ip, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22422a;

    /* renamed from: a */
    public C6253ik f22423a;

    /* renamed from: a */
    public String f22424a;

    /* renamed from: a */
    public List<String> f22426a;

    /* renamed from: b */
    public String f22428b;

    /* renamed from: c */
    public String f22430c;

    /* renamed from: d */
    public String f22431d;

    /* renamed from: e */
    public String f22432e;

    /* renamed from: a */
    private static final C6297jw f22412a = new C6297jw("XmPushActionCommand");

    /* renamed from: a */
    private static final C6289jo f22411a = new C6289jo("", (byte) 12, 2);

    /* renamed from: b */
    private static final C6289jo f22413b = new C6289jo("", (byte) 11, 3);

    /* renamed from: c */
    private static final C6289jo f22414c = new C6289jo("", (byte) 11, 4);

    /* renamed from: d */
    private static final C6289jo f22415d = new C6289jo("", (byte) 11, 5);

    /* renamed from: e */
    private static final C6289jo f22416e = new C6289jo("", (byte) 15, 6);

    /* renamed from: f */
    private static final C6289jo f22417f = new C6289jo("", (byte) 11, 7);

    /* renamed from: g */
    private static final C6289jo f22418g = new C6289jo("", (byte) 11, 9);

    /* renamed from: h */
    private static final C6289jo f22419h = new C6289jo("", (byte) 2, 10);

    /* renamed from: i */
    private static final C6289jo f22420i = new C6289jo("", (byte) 2, 11);

    /* renamed from: j */
    private static final C6289jo f22421j = new C6289jo("", (byte) 10, 12);

    /* renamed from: a */
    private BitSet f22425a = new BitSet(3);

    /* renamed from: a */
    public boolean f22427a = false;

    /* renamed from: b */
    public boolean f22429b = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6258ip c6258ip) {
        int m1926a;
        int m1914a;
        int m1914a2;
        int m1924a;
        int m1924a2;
        int m1918a;
        int m1924a3;
        int m1924a4;
        int m1924a5;
        int m1925a;
        if (getClass().equals(c6258ip.getClass())) {
            int compareTo = Boolean.valueOf(m2274a()).compareTo(Boolean.valueOf(c6258ip.m2274a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2274a() || (m1925a = C6280jh.m1925a(this.f22423a, c6258ip.f22423a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2268b()).compareTo(Boolean.valueOf(c6258ip.m2268b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2268b() || (m1924a5 = C6280jh.m1924a(this.f22424a, c6258ip.f22424a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2265c()).compareTo(Boolean.valueOf(c6258ip.m2265c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2265c() || (m1924a4 = C6280jh.m1924a(this.f22428b, c6258ip.f22428b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2262d()).compareTo(Boolean.valueOf(c6258ip.m2262d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2262d() || (m1924a3 = C6280jh.m1924a(this.f22430c, c6258ip.f22430c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2260e()).compareTo(Boolean.valueOf(c6258ip.m2260e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2260e() || (m1918a = C6280jh.m1918a(this.f22426a, c6258ip.f22426a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2258f()).compareTo(Boolean.valueOf(c6258ip.m2258f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2258f() || (m1924a2 = C6280jh.m1924a(this.f22431d, c6258ip.f22431d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2257g()).compareTo(Boolean.valueOf(c6258ip.m2257g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2257g() || (m1924a = C6280jh.m1924a(this.f22432e, c6258ip.f22432e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2256h()).compareTo(Boolean.valueOf(c6258ip.m2256h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2256h() || (m1914a2 = C6280jh.m1914a(this.f22427a, c6258ip.f22427a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2255i()).compareTo(Boolean.valueOf(c6258ip.m2255i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2255i() || (m1914a = C6280jh.m1914a(this.f22429b, c6258ip.f22429b)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2254j()).compareTo(Boolean.valueOf(c6258ip.m2254j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2254j() || (m1926a = C6280jh.m1926a(this.f22422a, c6258ip.f22422a)) == 0) {
                                                    return 0;
                                                }
                                                return m1926a;
                                            }
                                            return m1914a;
                                        }
                                        return m1914a2;
                                    }
                                    return m1924a;
                                }
                                return m1924a2;
                            }
                            return m1918a;
                        }
                        return m1924a3;
                    }
                    return m1924a4;
                }
                return m1924a5;
            }
            return m1925a;
        }
        return getClass().getName().compareTo(c6258ip.getClass().getName());
    }

    /* renamed from: a */
    public C6258ip m2271a(String str) {
        this.f22424a = str;
        return this;
    }

    /* renamed from: a */
    public String m2276a() {
        return this.f22430c;
    }

    /* renamed from: a */
    public void m2275a() {
        if (this.f22424a == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22428b == null) {
            throw new C6293js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f22430c != null) {
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
                m2275a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22423a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22424a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22428b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22430c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 15) {
                        C6290jp mo1872a = abstractC6292jr.mo1872a();
                        this.f22426a = new ArrayList(mo1872a.f22802a);
                        for (int i = 0; i < mo1872a.f22802a; i++) {
                            this.f22426a.add(abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1877i();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22431d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22432e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 2) {
                        this.f22427a = abstractC6292jr.mo1896a();
                        m2269a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 11:
                    if (b == 2) {
                        this.f22429b = abstractC6292jr.mo1896a();
                        m2266b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 12:
                    if (b == 10) {
                        this.f22422a = abstractC6292jr.mo1901a();
                        m2263c(true);
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
    public void m2270a(String str) {
        if (this.f22426a == null) {
            this.f22426a = new ArrayList();
        }
        this.f22426a.add(str);
    }

    /* renamed from: a */
    public void m2269a(boolean z) {
        this.f22425a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2274a() {
        return this.f22423a != null;
    }

    /* renamed from: a */
    public boolean m2272a(C6258ip c6258ip) {
        if (c6258ip == null) {
            return false;
        }
        boolean m2274a = m2274a();
        boolean m2274a2 = c6258ip.m2274a();
        if ((m2274a || m2274a2) && !(m2274a && m2274a2 && this.f22423a.m2356a(c6258ip.f22423a))) {
            return false;
        }
        boolean m2268b = m2268b();
        boolean m2268b2 = c6258ip.m2268b();
        if ((m2268b || m2268b2) && !(m2268b && m2268b2 && this.f22424a.equals(c6258ip.f22424a))) {
            return false;
        }
        boolean m2265c = m2265c();
        boolean m2265c2 = c6258ip.m2265c();
        if ((m2265c || m2265c2) && !(m2265c && m2265c2 && this.f22428b.equals(c6258ip.f22428b))) {
            return false;
        }
        boolean m2262d = m2262d();
        boolean m2262d2 = c6258ip.m2262d();
        if ((m2262d || m2262d2) && !(m2262d && m2262d2 && this.f22430c.equals(c6258ip.f22430c))) {
            return false;
        }
        boolean m2260e = m2260e();
        boolean m2260e2 = c6258ip.m2260e();
        if ((m2260e || m2260e2) && !(m2260e && m2260e2 && this.f22426a.equals(c6258ip.f22426a))) {
            return false;
        }
        boolean m2258f = m2258f();
        boolean m2258f2 = c6258ip.m2258f();
        if ((m2258f || m2258f2) && !(m2258f && m2258f2 && this.f22431d.equals(c6258ip.f22431d))) {
            return false;
        }
        boolean m2257g = m2257g();
        boolean m2257g2 = c6258ip.m2257g();
        if ((m2257g || m2257g2) && !(m2257g && m2257g2 && this.f22432e.equals(c6258ip.f22432e))) {
            return false;
        }
        boolean m2256h = m2256h();
        boolean m2256h2 = c6258ip.m2256h();
        if ((m2256h || m2256h2) && !(m2256h && m2256h2 && this.f22427a == c6258ip.f22427a)) {
            return false;
        }
        boolean m2255i = m2255i();
        boolean m2255i2 = c6258ip.m2255i();
        if ((m2255i || m2255i2) && !(m2255i && m2255i2 && this.f22429b == c6258ip.f22429b)) {
            return false;
        }
        boolean m2254j = m2254j();
        boolean m2254j2 = c6258ip.m2254j();
        if (m2254j || m2254j2) {
            return m2254j && m2254j2 && this.f22422a == c6258ip.f22422a;
        }
        return true;
    }

    /* renamed from: b */
    public C6258ip m2267b(String str) {
        this.f22428b = str;
        return this;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2275a();
        abstractC6292jr.mo1889a(f22412a);
        if (this.f22423a != null && m2274a()) {
            abstractC6292jr.mo1892a(f22411a);
            this.f22423a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22424a != null) {
            abstractC6292jr.mo1892a(f22413b);
            abstractC6292jr.mo1888a(this.f22424a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22428b != null) {
            abstractC6292jr.mo1892a(f22414c);
            abstractC6292jr.mo1888a(this.f22428b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22430c != null) {
            abstractC6292jr.mo1892a(f22415d);
            abstractC6292jr.mo1888a(this.f22430c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22426a != null && m2260e()) {
            abstractC6292jr.mo1892a(f22416e);
            abstractC6292jr.mo1891a(new C6290jp((byte) 11, this.f22426a.size()));
            for (String str : this.f22426a) {
                abstractC6292jr.mo1888a(str);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        if (this.f22431d != null && m2258f()) {
            abstractC6292jr.mo1892a(f22417f);
            abstractC6292jr.mo1888a(this.f22431d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22432e != null && m2257g()) {
            abstractC6292jr.mo1892a(f22418g);
            abstractC6292jr.mo1888a(this.f22432e);
            abstractC6292jr.mo1884b();
        }
        if (m2256h()) {
            abstractC6292jr.mo1892a(f22419h);
            abstractC6292jr.mo1885a(this.f22427a);
            abstractC6292jr.mo1884b();
        }
        if (m2255i()) {
            abstractC6292jr.mo1892a(f22420i);
            abstractC6292jr.mo1885a(this.f22429b);
            abstractC6292jr.mo1884b();
        }
        if (m2254j()) {
            abstractC6292jr.mo1892a(f22421j);
            abstractC6292jr.mo1893a(this.f22422a);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2266b(boolean z) {
        this.f22425a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2268b() {
        return this.f22424a != null;
    }

    /* renamed from: c */
    public C6258ip m2264c(String str) {
        this.f22430c = str;
        return this;
    }

    /* renamed from: c */
    public void m2263c(boolean z) {
        this.f22425a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2265c() {
        return this.f22428b != null;
    }

    /* renamed from: d */
    public C6258ip m2261d(String str) {
        this.f22431d = str;
        return this;
    }

    /* renamed from: d */
    public boolean m2262d() {
        return this.f22430c != null;
    }

    /* renamed from: e */
    public C6258ip m2259e(String str) {
        this.f22432e = str;
        return this;
    }

    /* renamed from: e */
    public boolean m2260e() {
        return this.f22426a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6258ip)) {
            return m2272a((C6258ip) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2258f() {
        return this.f22431d != null;
    }

    /* renamed from: g */
    public boolean m2257g() {
        return this.f22432e != null;
    }

    /* renamed from: h */
    public boolean m2256h() {
        return this.f22425a.get(0);
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2255i() {
        return this.f22425a.get(1);
    }

    /* renamed from: j */
    public boolean m2254j() {
        return this.f22425a.get(2);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionCommand(");
        if (m2274a()) {
            sb.append("target:");
            C6253ik c6253ik = this.f22423a;
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
        String str = this.f22424a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("appId:");
        String str2 = this.f22428b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("cmdName:");
        String str3 = this.f22430c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (m2260e()) {
            sb.append(", ");
            sb.append("cmdArgs:");
            List<String> list = this.f22426a;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (m2258f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str4 = this.f22431d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2257g()) {
            sb.append(", ");
            sb.append("category:");
            String str5 = this.f22432e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2256h()) {
            sb.append(", ");
            sb.append("updateCache:");
            sb.append(this.f22427a);
        }
        if (m2255i()) {
            sb.append(", ");
            sb.append("response2Client:");
            sb.append(this.f22429b);
        }
        if (m2254j()) {
            sb.append(", ");
            sb.append("createdTs:");
            sb.append(this.f22422a);
        }
        sb.append(")");
        return sb.toString();
    }
}
