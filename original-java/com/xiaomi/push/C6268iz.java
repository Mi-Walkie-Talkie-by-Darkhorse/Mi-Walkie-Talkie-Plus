package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.xiaomi.push.iz */
/* loaded from: classes2.dex */
public class C6268iz implements InterfaceC6279jg<C6268iz, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public C6253ik f22660a;

    /* renamed from: a */
    public String f22661a;

    /* renamed from: a */
    public List<String> f22662a;

    /* renamed from: b */
    public String f22663b;

    /* renamed from: c */
    public String f22664c;

    /* renamed from: d */
    public String f22665d;

    /* renamed from: e */
    public String f22666e;

    /* renamed from: f */
    public String f22667f;

    /* renamed from: a */
    private static final C6297jw f22652a = new C6297jw("XmPushActionSubscription");

    /* renamed from: a */
    private static final C6289jo f22651a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22653b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22654c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22655d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22656e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22657f = new C6289jo("", (byte) 11, 6);

    /* renamed from: g */
    private static final C6289jo f22658g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22659h = new C6289jo("", (byte) 15, 8);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6268iz c6268iz) {
        int m1918a;
        int m1924a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1924a5;
        int m1925a;
        int m1924a6;
        if (getClass().equals(c6268iz.getClass())) {
            int compareTo = Boolean.valueOf(m2040a()).compareTo(Boolean.valueOf(c6268iz.m2040a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2040a() || (m1924a6 = C6280jh.m1924a(this.f22661a, c6268iz.f22661a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2036b()).compareTo(Boolean.valueOf(c6268iz.m2036b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2036b() || (m1925a = C6280jh.m1925a(this.f22660a, c6268iz.f22660a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2034c()).compareTo(Boolean.valueOf(c6268iz.m2034c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2034c() || (m1924a5 = C6280jh.m1924a(this.f22663b, c6268iz.f22663b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2032d()).compareTo(Boolean.valueOf(c6268iz.m2032d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2032d() || (m1924a4 = C6280jh.m1924a(this.f22664c, c6268iz.f22664c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2030e()).compareTo(Boolean.valueOf(c6268iz.m2030e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2030e() || (m1924a3 = C6280jh.m1924a(this.f22665d, c6268iz.f22665d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2028f()).compareTo(Boolean.valueOf(c6268iz.m2028f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2028f() || (m1924a2 = C6280jh.m1924a(this.f22666e, c6268iz.f22666e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2027g()).compareTo(Boolean.valueOf(c6268iz.m2027g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2027g() || (m1924a = C6280jh.m1924a(this.f22667f, c6268iz.f22667f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2026h()).compareTo(Boolean.valueOf(c6268iz.m2026h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2026h() || (m1918a = C6280jh.m1918a(this.f22662a, c6268iz.f22662a)) == 0) {
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
        return getClass().getName().compareTo(c6268iz.getClass().getName());
    }

    /* renamed from: a */
    public C6268iz m2037a(String str) {
        this.f22663b = str;
        return this;
    }

    /* renamed from: a */
    public void m2041a() {
        if (this.f22663b == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22664c == null) {
            throw new C6293js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f22665d != null) {
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
                m2041a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22661a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22660a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22663b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22664c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22665d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 11) {
                        this.f22666e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22667f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 15) {
                        C6290jp mo1872a = abstractC6292jr.mo1872a();
                        this.f22662a = new ArrayList(mo1872a.f22802a);
                        for (int i = 0; i < mo1872a.f22802a; i++) {
                            this.f22662a.add(abstractC6292jr.mo1869a());
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
    public boolean m2040a() {
        return this.f22661a != null;
    }

    /* renamed from: a */
    public boolean m2038a(C6268iz c6268iz) {
        if (c6268iz == null) {
            return false;
        }
        boolean m2040a = m2040a();
        boolean m2040a2 = c6268iz.m2040a();
        if ((m2040a || m2040a2) && !(m2040a && m2040a2 && this.f22661a.equals(c6268iz.f22661a))) {
            return false;
        }
        boolean m2036b = m2036b();
        boolean m2036b2 = c6268iz.m2036b();
        if ((m2036b || m2036b2) && !(m2036b && m2036b2 && this.f22660a.m2356a(c6268iz.f22660a))) {
            return false;
        }
        boolean m2034c = m2034c();
        boolean m2034c2 = c6268iz.m2034c();
        if ((m2034c || m2034c2) && !(m2034c && m2034c2 && this.f22663b.equals(c6268iz.f22663b))) {
            return false;
        }
        boolean m2032d = m2032d();
        boolean m2032d2 = c6268iz.m2032d();
        if ((m2032d || m2032d2) && !(m2032d && m2032d2 && this.f22664c.equals(c6268iz.f22664c))) {
            return false;
        }
        boolean m2030e = m2030e();
        boolean m2030e2 = c6268iz.m2030e();
        if ((m2030e || m2030e2) && !(m2030e && m2030e2 && this.f22665d.equals(c6268iz.f22665d))) {
            return false;
        }
        boolean m2028f = m2028f();
        boolean m2028f2 = c6268iz.m2028f();
        if ((m2028f || m2028f2) && !(m2028f && m2028f2 && this.f22666e.equals(c6268iz.f22666e))) {
            return false;
        }
        boolean m2027g = m2027g();
        boolean m2027g2 = c6268iz.m2027g();
        if ((m2027g || m2027g2) && !(m2027g && m2027g2 && this.f22667f.equals(c6268iz.f22667f))) {
            return false;
        }
        boolean m2026h = m2026h();
        boolean m2026h2 = c6268iz.m2026h();
        if (m2026h || m2026h2) {
            return m2026h && m2026h2 && this.f22662a.equals(c6268iz.f22662a);
        }
        return true;
    }

    /* renamed from: b */
    public C6268iz m2035b(String str) {
        this.f22664c = str;
        return this;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2041a();
        abstractC6292jr.mo1889a(f22652a);
        if (this.f22661a != null && m2040a()) {
            abstractC6292jr.mo1892a(f22651a);
            abstractC6292jr.mo1888a(this.f22661a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22660a != null && m2036b()) {
            abstractC6292jr.mo1892a(f22653b);
            this.f22660a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22663b != null) {
            abstractC6292jr.mo1892a(f22654c);
            abstractC6292jr.mo1888a(this.f22663b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22664c != null) {
            abstractC6292jr.mo1892a(f22655d);
            abstractC6292jr.mo1888a(this.f22664c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22665d != null) {
            abstractC6292jr.mo1892a(f22656e);
            abstractC6292jr.mo1888a(this.f22665d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22666e != null && m2028f()) {
            abstractC6292jr.mo1892a(f22657f);
            abstractC6292jr.mo1888a(this.f22666e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22667f != null && m2027g()) {
            abstractC6292jr.mo1892a(f22658g);
            abstractC6292jr.mo1888a(this.f22667f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22662a != null && m2026h()) {
            abstractC6292jr.mo1892a(f22659h);
            abstractC6292jr.mo1891a(new C6290jp((byte) 11, this.f22662a.size()));
            for (String str : this.f22662a) {
                abstractC6292jr.mo1888a(str);
            }
            abstractC6292jr.mo1881e();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2036b() {
        return this.f22660a != null;
    }

    /* renamed from: c */
    public C6268iz m2033c(String str) {
        this.f22665d = str;
        return this;
    }

    /* renamed from: c */
    public boolean m2034c() {
        return this.f22663b != null;
    }

    /* renamed from: d */
    public C6268iz m2031d(String str) {
        this.f22666e = str;
        return this;
    }

    /* renamed from: d */
    public boolean m2032d() {
        return this.f22664c != null;
    }

    /* renamed from: e */
    public C6268iz m2029e(String str) {
        this.f22667f = str;
        return this;
    }

    /* renamed from: e */
    public boolean m2030e() {
        return this.f22665d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6268iz)) {
            return m2038a((C6268iz) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2028f() {
        return this.f22666e != null;
    }

    /* renamed from: g */
    public boolean m2027g() {
        return this.f22667f != null;
    }

    /* renamed from: h */
    public boolean m2026h() {
        return this.f22662a != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSubscription(");
        boolean z2 = false;
        if (m2040a()) {
            sb.append("debug:");
            String str = this.f22661a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2036b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22660a;
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
        String str2 = this.f22663b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f22664c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("topic:");
        String str4 = this.f22665d;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        if (m2028f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f22666e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2027g()) {
            sb.append(", ");
            sb.append("category:");
            String str6 = this.f22667f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2026h()) {
            sb.append(", ");
            sb.append("aliases:");
            List<String> list = this.f22662a;
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
