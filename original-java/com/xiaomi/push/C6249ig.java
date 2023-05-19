package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.ig */
/* loaded from: classes2.dex */
public class C6249ig implements InterfaceC6279jg<C6249ig, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public int f22245a;

    /* renamed from: a */
    public long f22246a;

    /* renamed from: a */
    public String f22247a;

    /* renamed from: a */
    private BitSet f22248a = new BitSet(6);

    /* renamed from: a */
    public boolean f22249a;

    /* renamed from: b */
    public int f22250b;

    /* renamed from: b */
    public boolean f22251b;

    /* renamed from: c */
    public int f22252c;

    /* renamed from: a */
    private static final C6297jw f22238a = new C6297jw("OnlineConfigItem");

    /* renamed from: a */
    private static final C6289jo f22237a = new C6289jo("", (byte) 8, 1);

    /* renamed from: b */
    private static final C6289jo f22239b = new C6289jo("", (byte) 8, 2);

    /* renamed from: c */
    private static final C6289jo f22240c = new C6289jo("", (byte) 2, 3);

    /* renamed from: d */
    private static final C6289jo f22241d = new C6289jo("", (byte) 8, 4);

    /* renamed from: e */
    private static final C6289jo f22242e = new C6289jo("", (byte) 10, 5);

    /* renamed from: f */
    private static final C6289jo f22243f = new C6289jo("", (byte) 11, 6);

    /* renamed from: g */
    private static final C6289jo f22244g = new C6289jo("", (byte) 2, 7);

    /* renamed from: a */
    public int m2456a() {
        return this.f22245a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6249ig c6249ig) {
        int m1914a;
        int m1924a;
        int m1926a;
        int m1927a;
        int m1914a2;
        int m1927a2;
        int m1927a3;
        if (getClass().equals(c6249ig.getClass())) {
            int compareTo = Boolean.valueOf(m2452a()).compareTo(Boolean.valueOf(c6249ig.m2452a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2452a() || (m1927a3 = C6280jh.m1927a(this.f22245a, c6249ig.f22245a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2447b()).compareTo(Boolean.valueOf(c6249ig.m2447b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2447b() || (m1927a2 = C6280jh.m1927a(this.f22250b, c6249ig.f22250b)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2444c()).compareTo(Boolean.valueOf(c6249ig.m2444c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2444c() || (m1914a2 = C6280jh.m1914a(this.f22249a, c6249ig.f22249a)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2442d()).compareTo(Boolean.valueOf(c6249ig.m2442d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2442d() || (m1927a = C6280jh.m1927a(this.f22252c, c6249ig.f22252c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2440e()).compareTo(Boolean.valueOf(c6249ig.m2440e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2440e() || (m1926a = C6280jh.m1926a(this.f22246a, c6249ig.f22246a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2438f()).compareTo(Boolean.valueOf(c6249ig.m2438f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2438f() || (m1924a = C6280jh.m1924a(this.f22247a, c6249ig.f22247a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2435h()).compareTo(Boolean.valueOf(c6249ig.m2435h()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2435h() || (m1914a = C6280jh.m1914a(this.f22251b, c6249ig.f22251b)) == 0) {
                                        return 0;
                                    }
                                    return m1914a;
                                }
                                return m1924a;
                            }
                            return m1926a;
                        }
                        return m1927a;
                    }
                    return m1914a2;
                }
                return m1927a2;
            }
            return m1927a3;
        }
        return getClass().getName().compareTo(c6249ig.getClass().getName());
    }

    /* renamed from: a */
    public long m2455a() {
        return this.f22246a;
    }

    /* renamed from: a */
    public String m2454a() {
        return this.f22247a;
    }

    /* renamed from: a */
    public void m2453a() {
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
                m2453a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 8) {
                        this.f22245a = abstractC6292jr.mo1902a();
                        m2449a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 8) {
                        this.f22250b = abstractC6292jr.mo1902a();
                        m2446b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 2) {
                        this.f22249a = abstractC6292jr.mo1896a();
                        m2443c(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 8) {
                        this.f22252c = abstractC6292jr.mo1902a();
                        m2441d(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 10) {
                        this.f22246a = abstractC6292jr.mo1901a();
                        m2439e(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 11) {
                        this.f22247a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 2) {
                        this.f22251b = abstractC6292jr.mo1896a();
                        m2437f(true);
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
    public void m2449a(boolean z) {
        this.f22248a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2452a() {
        return this.f22248a.get(0);
    }

    /* renamed from: a */
    public boolean m2450a(C6249ig c6249ig) {
        if (c6249ig == null) {
            return false;
        }
        boolean m2452a = m2452a();
        boolean m2452a2 = c6249ig.m2452a();
        if ((m2452a || m2452a2) && !(m2452a && m2452a2 && this.f22245a == c6249ig.f22245a)) {
            return false;
        }
        boolean m2447b = m2447b();
        boolean m2447b2 = c6249ig.m2447b();
        if ((m2447b || m2447b2) && !(m2447b && m2447b2 && this.f22250b == c6249ig.f22250b)) {
            return false;
        }
        boolean m2444c = m2444c();
        boolean m2444c2 = c6249ig.m2444c();
        if ((m2444c || m2444c2) && !(m2444c && m2444c2 && this.f22249a == c6249ig.f22249a)) {
            return false;
        }
        boolean m2442d = m2442d();
        boolean m2442d2 = c6249ig.m2442d();
        if ((m2442d || m2442d2) && !(m2442d && m2442d2 && this.f22252c == c6249ig.f22252c)) {
            return false;
        }
        boolean m2440e = m2440e();
        boolean m2440e2 = c6249ig.m2440e();
        if ((m2440e || m2440e2) && !(m2440e && m2440e2 && this.f22246a == c6249ig.f22246a)) {
            return false;
        }
        boolean m2438f = m2438f();
        boolean m2438f2 = c6249ig.m2438f();
        if ((m2438f || m2438f2) && !(m2438f && m2438f2 && this.f22247a.equals(c6249ig.f22247a))) {
            return false;
        }
        boolean m2435h = m2435h();
        boolean m2435h2 = c6249ig.m2435h();
        if (m2435h || m2435h2) {
            return m2435h && m2435h2 && this.f22251b == c6249ig.f22251b;
        }
        return true;
    }

    /* renamed from: b */
    public int m2448b() {
        return this.f22250b;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2453a();
        abstractC6292jr.mo1889a(f22238a);
        if (m2452a()) {
            abstractC6292jr.mo1892a(f22237a);
            abstractC6292jr.mo1894a(this.f22245a);
            abstractC6292jr.mo1884b();
        }
        if (m2447b()) {
            abstractC6292jr.mo1892a(f22239b);
            abstractC6292jr.mo1894a(this.f22250b);
            abstractC6292jr.mo1884b();
        }
        if (m2444c()) {
            abstractC6292jr.mo1892a(f22240c);
            abstractC6292jr.mo1885a(this.f22249a);
            abstractC6292jr.mo1884b();
        }
        if (m2442d()) {
            abstractC6292jr.mo1892a(f22241d);
            abstractC6292jr.mo1894a(this.f22252c);
            abstractC6292jr.mo1884b();
        }
        if (m2440e()) {
            abstractC6292jr.mo1892a(f22242e);
            abstractC6292jr.mo1893a(this.f22246a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22247a != null && m2438f()) {
            abstractC6292jr.mo1892a(f22243f);
            abstractC6292jr.mo1888a(this.f22247a);
            abstractC6292jr.mo1884b();
        }
        if (m2435h()) {
            abstractC6292jr.mo1892a(f22244g);
            abstractC6292jr.mo1885a(this.f22251b);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2446b(boolean z) {
        this.f22248a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2447b() {
        return this.f22248a.get(1);
    }

    /* renamed from: c */
    public int m2445c() {
        return this.f22252c;
    }

    /* renamed from: c */
    public void m2443c(boolean z) {
        this.f22248a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2444c() {
        return this.f22248a.get(2);
    }

    /* renamed from: d */
    public void m2441d(boolean z) {
        this.f22248a.set(3, z);
    }

    /* renamed from: d */
    public boolean m2442d() {
        return this.f22248a.get(3);
    }

    /* renamed from: e */
    public void m2439e(boolean z) {
        this.f22248a.set(4, z);
    }

    /* renamed from: e */
    public boolean m2440e() {
        return this.f22248a.get(4);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6249ig)) {
            return m2450a((C6249ig) obj);
        }
        return false;
    }

    /* renamed from: f */
    public void m2437f(boolean z) {
        this.f22248a.set(5, z);
    }

    /* renamed from: f */
    public boolean m2438f() {
        return this.f22247a != null;
    }

    /* renamed from: g */
    public boolean m2436g() {
        return this.f22251b;
    }

    /* renamed from: h */
    public boolean m2435h() {
        return this.f22248a.get(5);
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("OnlineConfigItem(");
        boolean z2 = false;
        if (m2452a()) {
            sb.append("key:");
            sb.append(this.f22245a);
            z = false;
        } else {
            z = true;
        }
        if (m2447b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("type:");
            sb.append(this.f22250b);
            z = false;
        }
        if (m2444c()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("clear:");
            sb.append(this.f22249a);
            z = false;
        }
        if (m2442d()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("intValue:");
            sb.append(this.f22252c);
            z = false;
        }
        if (m2440e()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("longValue:");
            sb.append(this.f22246a);
            z = false;
        }
        if (m2438f()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("stringValue:");
            String str = this.f22247a;
            if (str == null) {
                str = "null";
            }
            sb.append(str);
        } else {
            z2 = z;
        }
        if (m2435h()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("boolValue:");
            sb.append(this.f22251b);
        }
        sb.append(")");
        return sb.toString();
    }
}
