package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.jd */
/* loaded from: classes2.dex */
public class C6276jd implements InterfaceC6279jg<C6276jd, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public C6253ik f22748a;

    /* renamed from: a */
    public String f22749a;

    /* renamed from: a */
    public List<String> f22750a;

    /* renamed from: b */
    public String f22751b;

    /* renamed from: c */
    public String f22752c;

    /* renamed from: d */
    public String f22753d;

    /* renamed from: e */
    public String f22754e;

    /* renamed from: f */
    public String f22755f;

    /* renamed from: a */
    private static final C6297jw f22740a = new C6297jw("XmPushActionUnSubscription");

    /* renamed from: a */
    private static final C6289jo f22739a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22741b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22742c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22743d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22744e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22745f = new C6289jo("", (byte) 11, 6);

    /* renamed from: g */
    private static final C6289jo f22746g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22747h = new C6289jo("", (byte) 15, 8);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6276jd c6276jd) {
        int m1918a;
        int m1924a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1924a5;
        int m1925a;
        int m1924a6;
        if (getClass().equals(c6276jd.getClass())) {
            int compareTo = Boolean.valueOf(m1966a()).compareTo(Boolean.valueOf(c6276jd.m1966a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1966a() || (m1924a6 = C6280jh.m1924a(this.f22749a, c6276jd.f22749a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1962b()).compareTo(Boolean.valueOf(c6276jd.m1962b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1962b() || (m1925a = C6280jh.m1925a(this.f22748a, c6276jd.f22748a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1960c()).compareTo(Boolean.valueOf(c6276jd.m1960c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1960c() || (m1924a5 = C6280jh.m1924a(this.f22751b, c6276jd.f22751b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m1958d()).compareTo(Boolean.valueOf(c6276jd.m1958d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m1958d() || (m1924a4 = C6280jh.m1924a(this.f22752c, c6276jd.f22752c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m1956e()).compareTo(Boolean.valueOf(c6276jd.m1956e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m1956e() || (m1924a3 = C6280jh.m1924a(this.f22753d, c6276jd.f22753d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m1954f()).compareTo(Boolean.valueOf(c6276jd.m1954f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m1954f() || (m1924a2 = C6280jh.m1924a(this.f22754e, c6276jd.f22754e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m1953g()).compareTo(Boolean.valueOf(c6276jd.m1953g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m1953g() || (m1924a = C6280jh.m1924a(this.f22755f, c6276jd.f22755f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m1952h()).compareTo(Boolean.valueOf(c6276jd.m1952h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m1952h() || (m1918a = C6280jh.m1918a(this.f22750a, c6276jd.f22750a)) == 0) {
                                            return 0;
                                        }
                                        return m1918a;
                                    }
                                    return m1924a;
                                }
                                return m1924a2;
                            }
                            return m1924a3;
                        }
                        return m1924a4;
                    }
                    return m1924a5;
                }
                return m1925a;
            }
            return m1924a6;
        }
        return getClass().getName().compareTo(c6276jd.getClass().getName());
    }

    /* renamed from: a */
    public C6276jd m1963a(String str) {
        this.f22751b = str;
        return this;
    }

    /* renamed from: a */
    public void m1967a() {
        if (this.f22751b == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22752c == null) {
            throw new C6293js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f22753d != null) {
        } else {
            throw new C6293js("Required field 'topic' was not present! Struct: " + toString());
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
                m1967a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22749a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22748a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22751b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22752c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22753d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 11) {
                        this.f22754e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22755f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 15) {
                        C6290jp mo1872a = abstractC6292jr.mo1872a();
                        this.f22750a = new ArrayList(mo1872a.f22802a);
                        for (int i = 0; i < mo1872a.f22802a; i++) {
                            this.f22750a.add(abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1877i();
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
    public boolean m1966a() {
        return this.f22749a != null;
    }

    /* renamed from: a */
    public boolean m1964a(C6276jd c6276jd) {
        if (c6276jd == null) {
            return false;
        }
        boolean m1966a = m1966a();
        boolean m1966a2 = c6276jd.m1966a();
        if ((m1966a || m1966a2) && !(m1966a && m1966a2 && this.f22749a.equals(c6276jd.f22749a))) {
            return false;
        }
        boolean m1962b = m1962b();
        boolean m1962b2 = c6276jd.m1962b();
        if ((m1962b || m1962b2) && !(m1962b && m1962b2 && this.f22748a.m2356a(c6276jd.f22748a))) {
            return false;
        }
        boolean m1960c = m1960c();
        boolean m1960c2 = c6276jd.m1960c();
        if ((m1960c || m1960c2) && !(m1960c && m1960c2 && this.f22751b.equals(c6276jd.f22751b))) {
            return false;
        }
        boolean m1958d = m1958d();
        boolean m1958d2 = c6276jd.m1958d();
        if ((m1958d || m1958d2) && !(m1958d && m1958d2 && this.f22752c.equals(c6276jd.f22752c))) {
            return false;
        }
        boolean m1956e = m1956e();
        boolean m1956e2 = c6276jd.m1956e();
        if ((m1956e || m1956e2) && !(m1956e && m1956e2 && this.f22753d.equals(c6276jd.f22753d))) {
            return false;
        }
        boolean m1954f = m1954f();
        boolean m1954f2 = c6276jd.m1954f();
        if ((m1954f || m1954f2) && !(m1954f && m1954f2 && this.f22754e.equals(c6276jd.f22754e))) {
            return false;
        }
        boolean m1953g = m1953g();
        boolean m1953g2 = c6276jd.m1953g();
        if ((m1953g || m1953g2) && !(m1953g && m1953g2 && this.f22755f.equals(c6276jd.f22755f))) {
            return false;
        }
        boolean m1952h = m1952h();
        boolean m1952h2 = c6276jd.m1952h();
        if (m1952h || m1952h2) {
            return m1952h && m1952h2 && this.f22750a.equals(c6276jd.f22750a);
        }
        return true;
    }

    /* renamed from: b */
    public C6276jd m1961b(String str) {
        this.f22752c = str;
        return this;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m1967a();
        abstractC6292jr.mo1889a(f22740a);
        if (this.f22749a != null && m1966a()) {
            abstractC6292jr.mo1892a(f22739a);
            abstractC6292jr.mo1888a(this.f22749a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22748a != null && m1962b()) {
            abstractC6292jr.mo1892a(f22741b);
            this.f22748a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22751b != null) {
            abstractC6292jr.mo1892a(f22742c);
            abstractC6292jr.mo1888a(this.f22751b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22752c != null) {
            abstractC6292jr.mo1892a(f22743d);
            abstractC6292jr.mo1888a(this.f22752c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22753d != null) {
            abstractC6292jr.mo1892a(f22744e);
            abstractC6292jr.mo1888a(this.f22753d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22754e != null && m1954f()) {
            abstractC6292jr.mo1892a(f22745f);
            abstractC6292jr.mo1888a(this.f22754e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22755f != null && m1953g()) {
            abstractC6292jr.mo1892a(f22746g);
            abstractC6292jr.mo1888a(this.f22755f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22750a != null && m1952h()) {
            abstractC6292jr.mo1892a(f22747h);
            abstractC6292jr.mo1891a(new C6290jp((byte) 11, this.f22750a.size()));
            for (String str : this.f22750a) {
                abstractC6292jr.mo1888a(str);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m1962b() {
        return this.f22748a != null;
    }

    /* renamed from: c */
    public C6276jd m1959c(String str) {
        this.f22753d = str;
        return this;
    }

    /* renamed from: c */
    public boolean m1960c() {
        return this.f22751b != null;
    }

    /* renamed from: d */
    public C6276jd m1957d(String str) {
        this.f22754e = str;
        return this;
    }

    /* renamed from: d */
    public boolean m1958d() {
        return this.f22752c != null;
    }

    /* renamed from: e */
    public C6276jd m1955e(String str) {
        this.f22755f = str;
        return this;
    }

    /* renamed from: e */
    public boolean m1956e() {
        return this.f22753d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6276jd)) {
            return m1964a((C6276jd) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m1954f() {
        return this.f22754e != null;
    }

    /* renamed from: g */
    public boolean m1953g() {
        return this.f22755f != null;
    }

    /* renamed from: h */
    public boolean m1952h() {
        return this.f22750a != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnSubscription(");
        boolean z2 = false;
        if (m1966a()) {
            sb.append("debug:");
            String str = this.f22749a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m1962b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22748a;
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
        String str2 = this.f22751b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f22752c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("topic:");
        String str4 = this.f22753d;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        if (m1954f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f22754e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m1953g()) {
            sb.append(", ");
            sb.append("category:");
            String str6 = this.f22755f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m1952h()) {
            sb.append(", ");
            sb.append("aliases:");
            List<String> list = this.f22750a;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
