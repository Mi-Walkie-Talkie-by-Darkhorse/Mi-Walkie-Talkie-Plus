package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.jc */
/* loaded from: classes2.dex */
public class C6275jc implements InterfaceC6279jg<C6275jc, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22729a;

    /* renamed from: a */
    public C6253ik f22730a;

    /* renamed from: a */
    public String f22731a;

    /* renamed from: a */
    private BitSet f22732a = new BitSet(3);

    /* renamed from: b */
    public long f22733b;

    /* renamed from: b */
    public String f22734b;

    /* renamed from: c */
    public long f22735c;

    /* renamed from: c */
    public String f22736c;

    /* renamed from: d */
    public String f22737d;

    /* renamed from: e */
    public String f22738e;

    /* renamed from: a */
    private static final C6297jw f22720a = new C6297jw("XmPushActionUnRegistrationResult");

    /* renamed from: a */
    private static final C6289jo f22719a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22721b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22722c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22723d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22724e = new C6289jo("", (byte) 10, 6);

    /* renamed from: f */
    private static final C6289jo f22725f = new C6289jo("", (byte) 11, 7);

    /* renamed from: g */
    private static final C6289jo f22726g = new C6289jo("", (byte) 11, 8);

    /* renamed from: h */
    private static final C6289jo f22727h = new C6289jo("", (byte) 10, 9);

    /* renamed from: i */
    private static final C6289jo f22728i = new C6289jo("", (byte) 10, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6275jc c6275jc) {
        int m1926a;
        int m1926a2;
        int m1924a;
        int m1924a2;
        int m1926a3;
        int m1924a3;
        int m1924a4;
        int m1925a;
        int m1924a5;
        if (getClass().equals(c6275jc.getClass())) {
            int compareTo = Boolean.valueOf(m1981a()).compareTo(Boolean.valueOf(c6275jc.m1981a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1981a() || (m1924a5 = C6280jh.m1924a(this.f22731a, c6275jc.f22731a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1977b()).compareTo(Boolean.valueOf(c6275jc.m1977b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1977b() || (m1925a = C6280jh.m1925a(this.f22730a, c6275jc.f22730a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1975c()).compareTo(Boolean.valueOf(c6275jc.m1975c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1975c() || (m1924a4 = C6280jh.m1924a(this.f22734b, c6275jc.f22734b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m1973d()).compareTo(Boolean.valueOf(c6275jc.m1973d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m1973d() || (m1924a3 = C6280jh.m1924a(this.f22736c, c6275jc.f22736c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m1972e()).compareTo(Boolean.valueOf(c6275jc.m1972e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m1972e() || (m1926a3 = C6280jh.m1926a(this.f22729a, c6275jc.f22729a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m1971f()).compareTo(Boolean.valueOf(c6275jc.m1971f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m1971f() || (m1924a2 = C6280jh.m1924a(this.f22737d, c6275jc.f22737d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m1970g()).compareTo(Boolean.valueOf(c6275jc.m1970g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m1970g() || (m1924a = C6280jh.m1924a(this.f22738e, c6275jc.f22738e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m1969h()).compareTo(Boolean.valueOf(c6275jc.m1969h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m1969h() || (m1926a2 = C6280jh.m1926a(this.f22733b, c6275jc.f22733b)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m1968i()).compareTo(Boolean.valueOf(c6275jc.m1968i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m1968i() || (m1926a = C6280jh.m1926a(this.f22735c, c6275jc.f22735c)) == 0) {
                                                return 0;
                                            }
                                            return m1926a;
                                        }
                                        return m1926a2;
                                    }
                                    return m1924a;
                                }
                                return m1924a2;
                            }
                            return m1926a3;
                        }
                        return m1924a3;
                    }
                    return m1924a4;
                }
                return m1925a;
            }
            return m1924a5;
        }
        return getClass().getName().compareTo(c6275jc.getClass().getName());
    }

    /* renamed from: a */
    public String m1983a() {
        return this.f22738e;
    }

    /* renamed from: a */
    public void m1982a() {
        if (this.f22734b == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22736c != null) {
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
                if (m1972e()) {
                    m1982a();
                    return;
                }
                throw new C6293js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22731a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22730a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22734b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22736c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 10) {
                        this.f22729a = abstractC6292jr.mo1901a();
                        m1978a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22737d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22738e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 10) {
                        this.f22733b = abstractC6292jr.mo1901a();
                        m1976b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 10) {
                        this.f22735c = abstractC6292jr.mo1901a();
                        m1974c(true);
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
    public void m1978a(boolean z) {
        this.f22732a.set(0, z);
    }

    /* renamed from: a */
    public boolean m1981a() {
        return this.f22731a != null;
    }

    /* renamed from: a */
    public boolean m1979a(C6275jc c6275jc) {
        if (c6275jc == null) {
            return false;
        }
        boolean m1981a = m1981a();
        boolean m1981a2 = c6275jc.m1981a();
        if ((m1981a || m1981a2) && !(m1981a && m1981a2 && this.f22731a.equals(c6275jc.f22731a))) {
            return false;
        }
        boolean m1977b = m1977b();
        boolean m1977b2 = c6275jc.m1977b();
        if ((m1977b || m1977b2) && !(m1977b && m1977b2 && this.f22730a.m2356a(c6275jc.f22730a))) {
            return false;
        }
        boolean m1975c = m1975c();
        boolean m1975c2 = c6275jc.m1975c();
        if ((m1975c || m1975c2) && !(m1975c && m1975c2 && this.f22734b.equals(c6275jc.f22734b))) {
            return false;
        }
        boolean m1973d = m1973d();
        boolean m1973d2 = c6275jc.m1973d();
        if (((m1973d || m1973d2) && !(m1973d && m1973d2 && this.f22736c.equals(c6275jc.f22736c))) || this.f22729a != c6275jc.f22729a) {
            return false;
        }
        boolean m1971f = m1971f();
        boolean m1971f2 = c6275jc.m1971f();
        if ((m1971f || m1971f2) && !(m1971f && m1971f2 && this.f22737d.equals(c6275jc.f22737d))) {
            return false;
        }
        boolean m1970g = m1970g();
        boolean m1970g2 = c6275jc.m1970g();
        if ((m1970g || m1970g2) && !(m1970g && m1970g2 && this.f22738e.equals(c6275jc.f22738e))) {
            return false;
        }
        boolean m1969h = m1969h();
        boolean m1969h2 = c6275jc.m1969h();
        if ((m1969h || m1969h2) && !(m1969h && m1969h2 && this.f22733b == c6275jc.f22733b)) {
            return false;
        }
        boolean m1968i = m1968i();
        boolean m1968i2 = c6275jc.m1968i();
        if (m1968i || m1968i2) {
            return m1968i && m1968i2 && this.f22735c == c6275jc.f22735c;
        }
        return true;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m1982a();
        abstractC6292jr.mo1889a(f22720a);
        if (this.f22731a != null && m1981a()) {
            abstractC6292jr.mo1892a(f22719a);
            abstractC6292jr.mo1888a(this.f22731a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22730a != null && m1977b()) {
            abstractC6292jr.mo1892a(f22721b);
            this.f22730a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22734b != null) {
            abstractC6292jr.mo1892a(f22722c);
            abstractC6292jr.mo1888a(this.f22734b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22736c != null) {
            abstractC6292jr.mo1892a(f22723d);
            abstractC6292jr.mo1888a(this.f22736c);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22724e);
        abstractC6292jr.mo1893a(this.f22729a);
        abstractC6292jr.mo1884b();
        if (this.f22737d != null && m1971f()) {
            abstractC6292jr.mo1892a(f22725f);
            abstractC6292jr.mo1888a(this.f22737d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22738e != null && m1970g()) {
            abstractC6292jr.mo1892a(f22726g);
            abstractC6292jr.mo1888a(this.f22738e);
            abstractC6292jr.mo1884b();
        }
        if (m1969h()) {
            abstractC6292jr.mo1892a(f22727h);
            abstractC6292jr.mo1893a(this.f22733b);
            abstractC6292jr.mo1884b();
        }
        if (m1968i()) {
            abstractC6292jr.mo1892a(f22728i);
            abstractC6292jr.mo1893a(this.f22735c);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m1976b(boolean z) {
        this.f22732a.set(1, z);
    }

    /* renamed from: b */
    public boolean m1977b() {
        return this.f22730a != null;
    }

    /* renamed from: c */
    public void m1974c(boolean z) {
        this.f22732a.set(2, z);
    }

    /* renamed from: c */
    public boolean m1975c() {
        return this.f22734b != null;
    }

    /* renamed from: d */
    public boolean m1973d() {
        return this.f22736c != null;
    }

    /* renamed from: e */
    public boolean m1972e() {
        return this.f22732a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6275jc)) {
            return m1979a((C6275jc) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m1971f() {
        return this.f22737d != null;
    }

    /* renamed from: g */
    public boolean m1970g() {
        return this.f22738e != null;
    }

    /* renamed from: h */
    public boolean m1969h() {
        return this.f22732a.get(1);
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m1968i() {
        return this.f22732a.get(2);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnRegistrationResult(");
        boolean z2 = false;
        if (m1981a()) {
            sb.append("debug:");
            String str = this.f22731a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m1977b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22730a;
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
        String str2 = this.f22734b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f22736c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f22729a);
        if (m1971f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f22737d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m1970g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f22738e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m1969h()) {
            sb.append(", ");
            sb.append("unRegisteredAt:");
            sb.append(this.f22733b);
        }
        if (m1968i()) {
            sb.append(", ");
            sb.append("costTime:");
            sb.append(this.f22735c);
        }
        sb.append(")");
        return sb.toString();
    }
}
