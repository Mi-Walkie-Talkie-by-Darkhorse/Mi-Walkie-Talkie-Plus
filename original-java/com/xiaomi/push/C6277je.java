package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.je */
/* loaded from: classes2.dex */
public class C6277je implements InterfaceC6279jg<C6277je, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22766a;

    /* renamed from: a */
    public C6253ik f22767a;

    /* renamed from: a */
    public String f22768a;

    /* renamed from: a */
    private BitSet f22769a = new BitSet(1);

    /* renamed from: b */
    public String f22770b;

    /* renamed from: c */
    public String f22771c;

    /* renamed from: d */
    public String f22772d;

    /* renamed from: e */
    public String f22773e;

    /* renamed from: f */
    public String f22774f;

    /* renamed from: g */
    public String f22775g;

    /* renamed from: a */
    private static final C6297jw f22757a = new C6297jw("XmPushActionUnSubscriptionResult");

    /* renamed from: a */
    private static final C6289jo f22756a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22758b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22759c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22760d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22761e = new C6289jo("", (byte) 10, 6);

    /* renamed from: f */
    private static final C6289jo f22762f = new C6289jo("", (byte) 11, 7);

    /* renamed from: g */
    private static final C6289jo f22763g = new C6289jo("", (byte) 11, 8);

    /* renamed from: h */
    private static final C6289jo f22764h = new C6289jo("", (byte) 11, 9);

    /* renamed from: i */
    private static final C6289jo f22765i = new C6289jo("", (byte) 11, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6277je c6277je) {
        int m1924a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1926a;
        int m1924a5;
        int m1924a6;
        int m1925a;
        int m1924a7;
        if (getClass().equals(c6277je.getClass())) {
            int compareTo = Boolean.valueOf(m1949a()).compareTo(Boolean.valueOf(c6277je.m1949a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m1949a() || (m1924a7 = C6280jh.m1924a(this.f22768a, c6277je.f22768a)) == 0) {
                int compareTo2 = Boolean.valueOf(m1944b()).compareTo(Boolean.valueOf(c6277je.m1944b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m1944b() || (m1925a = C6280jh.m1925a(this.f22767a, c6277je.f22767a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m1942c()).compareTo(Boolean.valueOf(c6277je.m1942c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m1942c() || (m1924a6 = C6280jh.m1924a(this.f22770b, c6277je.f22770b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m1941d()).compareTo(Boolean.valueOf(c6277je.m1941d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m1941d() || (m1924a5 = C6280jh.m1924a(this.f22771c, c6277je.f22771c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m1940e()).compareTo(Boolean.valueOf(c6277je.m1940e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m1940e() || (m1926a = C6280jh.m1926a(this.f22766a, c6277je.f22766a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m1939f()).compareTo(Boolean.valueOf(c6277je.m1939f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m1939f() || (m1924a4 = C6280jh.m1924a(this.f22772d, c6277je.f22772d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m1938g()).compareTo(Boolean.valueOf(c6277je.m1938g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m1938g() || (m1924a3 = C6280jh.m1924a(this.f22773e, c6277je.f22773e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m1937h()).compareTo(Boolean.valueOf(c6277je.m1937h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m1937h() || (m1924a2 = C6280jh.m1924a(this.f22774f, c6277je.f22774f)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m1936i()).compareTo(Boolean.valueOf(c6277je.m1936i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m1936i() || (m1924a = C6280jh.m1924a(this.f22775g, c6277je.f22775g)) == 0) {
                                                return 0;
                                            }
                                            return m1924a;
                                        }
                                        return m1924a2;
                                    }
                                    return m1924a3;
                                }
                                return m1924a4;
                            }
                            return m1926a;
                        }
                        return m1924a5;
                    }
                    return m1924a6;
                }
                return m1925a;
            }
            return m1924a7;
        }
        return getClass().getName().compareTo(c6277je.getClass().getName());
    }

    /* renamed from: a */
    public String m1951a() {
        return this.f22770b;
    }

    /* renamed from: a */
    public void m1950a() {
        if (this.f22770b != null) {
            return;
        }
        throw new C6293js("Required field 'id' was not present! Struct: " + toString());
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
                m1950a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22768a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22767a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22770b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22771c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 10) {
                        this.f22766a = abstractC6292jr.mo1901a();
                        m1946a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22772d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22773e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22774f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 11) {
                        this.f22775g = abstractC6292jr.mo1869a();
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
    public void m1946a(boolean z) {
        this.f22769a.set(0, z);
    }

    /* renamed from: a */
    public boolean m1949a() {
        return this.f22768a != null;
    }

    /* renamed from: a */
    public boolean m1947a(C6277je c6277je) {
        if (c6277je == null) {
            return false;
        }
        boolean m1949a = m1949a();
        boolean m1949a2 = c6277je.m1949a();
        if ((m1949a || m1949a2) && !(m1949a && m1949a2 && this.f22768a.equals(c6277je.f22768a))) {
            return false;
        }
        boolean m1944b = m1944b();
        boolean m1944b2 = c6277je.m1944b();
        if ((m1944b || m1944b2) && !(m1944b && m1944b2 && this.f22767a.m2356a(c6277je.f22767a))) {
            return false;
        }
        boolean m1942c = m1942c();
        boolean m1942c2 = c6277je.m1942c();
        if ((m1942c || m1942c2) && !(m1942c && m1942c2 && this.f22770b.equals(c6277je.f22770b))) {
            return false;
        }
        boolean m1941d = m1941d();
        boolean m1941d2 = c6277je.m1941d();
        if ((m1941d || m1941d2) && !(m1941d && m1941d2 && this.f22771c.equals(c6277je.f22771c))) {
            return false;
        }
        boolean m1940e = m1940e();
        boolean m1940e2 = c6277je.m1940e();
        if ((m1940e || m1940e2) && !(m1940e && m1940e2 && this.f22766a == c6277je.f22766a)) {
            return false;
        }
        boolean m1939f = m1939f();
        boolean m1939f2 = c6277je.m1939f();
        if ((m1939f || m1939f2) && !(m1939f && m1939f2 && this.f22772d.equals(c6277je.f22772d))) {
            return false;
        }
        boolean m1938g = m1938g();
        boolean m1938g2 = c6277je.m1938g();
        if ((m1938g || m1938g2) && !(m1938g && m1938g2 && this.f22773e.equals(c6277je.f22773e))) {
            return false;
        }
        boolean m1937h = m1937h();
        boolean m1937h2 = c6277je.m1937h();
        if ((m1937h || m1937h2) && !(m1937h && m1937h2 && this.f22774f.equals(c6277je.f22774f))) {
            return false;
        }
        boolean m1936i = m1936i();
        boolean m1936i2 = c6277je.m1936i();
        if (m1936i || m1936i2) {
            return m1936i && m1936i2 && this.f22775g.equals(c6277je.f22775g);
        }
        return true;
    }

    /* renamed from: b */
    public String m1945b() {
        return this.f22773e;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m1950a();
        abstractC6292jr.mo1889a(f22757a);
        if (this.f22768a != null && m1949a()) {
            abstractC6292jr.mo1892a(f22756a);
            abstractC6292jr.mo1888a(this.f22768a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22767a != null && m1944b()) {
            abstractC6292jr.mo1892a(f22758b);
            this.f22767a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22770b != null) {
            abstractC6292jr.mo1892a(f22759c);
            abstractC6292jr.mo1888a(this.f22770b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22771c != null && m1941d()) {
            abstractC6292jr.mo1892a(f22760d);
            abstractC6292jr.mo1888a(this.f22771c);
            abstractC6292jr.mo1884b();
        }
        if (m1940e()) {
            abstractC6292jr.mo1892a(f22761e);
            abstractC6292jr.mo1893a(this.f22766a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22772d != null && m1939f()) {
            abstractC6292jr.mo1892a(f22762f);
            abstractC6292jr.mo1888a(this.f22772d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22773e != null && m1938g()) {
            abstractC6292jr.mo1892a(f22763g);
            abstractC6292jr.mo1888a(this.f22773e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22774f != null && m1937h()) {
            abstractC6292jr.mo1892a(f22764h);
            abstractC6292jr.mo1888a(this.f22774f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22775g != null && m1936i()) {
            abstractC6292jr.mo1892a(f22765i);
            abstractC6292jr.mo1888a(this.f22775g);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m1944b() {
        return this.f22767a != null;
    }

    /* renamed from: c */
    public String m1943c() {
        return this.f22775g;
    }

    /* renamed from: c */
    public boolean m1942c() {
        return this.f22770b != null;
    }

    /* renamed from: d */
    public boolean m1941d() {
        return this.f22771c != null;
    }

    /* renamed from: e */
    public boolean m1940e() {
        return this.f22769a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6277je)) {
            return m1947a((C6277je) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m1939f() {
        return this.f22772d != null;
    }

    /* renamed from: g */
    public boolean m1938g() {
        return this.f22773e != null;
    }

    /* renamed from: h */
    public boolean m1937h() {
        return this.f22774f != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m1936i() {
        return this.f22775g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnSubscriptionResult(");
        boolean z2 = false;
        if (m1949a()) {
            sb.append("debug:");
            String str = this.f22768a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m1944b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22767a;
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
        String str2 = this.f22770b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (m1941d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f22771c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m1940e()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f22766a);
        }
        if (m1939f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f22772d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m1938g()) {
            sb.append(", ");
            sb.append("topic:");
            String str5 = this.f22773e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m1937h()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f22774f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m1936i()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22775g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
