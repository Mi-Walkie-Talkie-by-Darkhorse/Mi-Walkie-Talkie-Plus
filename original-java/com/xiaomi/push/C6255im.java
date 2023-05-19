package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.im */
/* loaded from: classes2.dex */
public class C6255im implements InterfaceC6279jg<C6255im, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public C6253ik f22392a;

    /* renamed from: a */
    public String f22393a;

    /* renamed from: a */
    public Map<String, String> f22395a;

    /* renamed from: b */
    public String f22396b;

    /* renamed from: c */
    public String f22397c;

    /* renamed from: d */
    public String f22398d;

    /* renamed from: e */
    public String f22399e;

    /* renamed from: f */
    public String f22400f;

    /* renamed from: g */
    public String f22401g;

    /* renamed from: a */
    private static final C6297jw f22381a = new C6297jw("XmPushActionAckNotification");

    /* renamed from: a */
    private static final C6289jo f22380a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22382b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22383c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22384d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22385e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22386f = new C6289jo("", (byte) 10, 7);

    /* renamed from: g */
    private static final C6289jo f22387g = new C6289jo("", (byte) 11, 8);

    /* renamed from: h */
    private static final C6289jo f22388h = new C6289jo("", (byte) 13, 9);

    /* renamed from: i */
    private static final C6289jo f22389i = new C6289jo("", (byte) 11, 10);

    /* renamed from: j */
    private static final C6289jo f22390j = new C6289jo("", (byte) 11, 11);

    /* renamed from: a */
    private BitSet f22394a = new BitSet(1);

    /* renamed from: a */
    public long f22391a = 0;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6255im c6255im) {
        int m1924a;
        int m1924a2;
        int m1917a;
        int m1924a3;
        int m1926a;
        int m1924a4;
        int m1924a5;
        int m1924a6;
        int m1925a;
        int m1924a7;
        if (getClass().equals(c6255im.getClass())) {
            int compareTo = Boolean.valueOf(m2311a()).compareTo(Boolean.valueOf(c6255im.m2311a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2311a() || (m1924a7 = C6280jh.m1924a(this.f22393a, c6255im.f22393a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2303b()).compareTo(Boolean.valueOf(c6255im.m2303b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2303b() || (m1925a = C6280jh.m1925a(this.f22392a, c6255im.f22392a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2301c()).compareTo(Boolean.valueOf(c6255im.m2301c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2301c() || (m1924a6 = C6280jh.m1924a(this.f22396b, c6255im.f22396b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2299d()).compareTo(Boolean.valueOf(c6255im.m2299d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2299d() || (m1924a5 = C6280jh.m1924a(this.f22397c, c6255im.f22397c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2297e()).compareTo(Boolean.valueOf(c6255im.m2297e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2297e() || (m1924a4 = C6280jh.m1924a(this.f22398d, c6255im.f22398d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2295f()).compareTo(Boolean.valueOf(c6255im.m2295f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2295f() || (m1926a = C6280jh.m1926a(this.f22391a, c6255im.f22391a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2294g()).compareTo(Boolean.valueOf(c6255im.m2294g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2294g() || (m1924a3 = C6280jh.m1924a(this.f22399e, c6255im.f22399e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2293h()).compareTo(Boolean.valueOf(c6255im.m2293h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2293h() || (m1917a = C6280jh.m1917a(this.f22395a, c6255im.f22395a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2292i()).compareTo(Boolean.valueOf(c6255im.m2292i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2292i() || (m1924a2 = C6280jh.m1924a(this.f22400f, c6255im.f22400f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2291j()).compareTo(Boolean.valueOf(c6255im.m2291j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2291j() || (m1924a = C6280jh.m1924a(this.f22401g, c6255im.f22401g)) == 0) {
                                                    return 0;
                                                }
                                                return m1924a;
                                            }
                                            return m1924a2;
                                        }
                                        return m1917a;
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
            return m1924a7;
        }
        return getClass().getName().compareTo(c6255im.getClass().getName());
    }

    /* renamed from: a */
    public C6255im m2310a(long j) {
        this.f22391a = j;
        m2305a(true);
        return this;
    }

    /* renamed from: a */
    public C6255im m2309a(C6253ik c6253ik) {
        this.f22392a = c6253ik;
        return this;
    }

    /* renamed from: a */
    public C6255im m2306a(String str) {
        this.f22396b = str;
        return this;
    }

    /* renamed from: a */
    public String m2314a() {
        return this.f22396b;
    }

    /* renamed from: a */
    public Map<String, String> m2313a() {
        return this.f22395a;
    }

    /* renamed from: a */
    public void m2312a() {
        if (this.f22396b != null) {
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
                m2312a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22393a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22392a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22396b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22397c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22398d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 10) {
                        this.f22391a = abstractC6292jr.mo1901a();
                        m2305a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22399e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 13) {
                        C6291jq mo1871a = abstractC6292jr.mo1871a();
                        this.f22395a = new HashMap(mo1871a.f22804a * 2);
                        for (int i = 0; i < mo1871a.f22804a; i++) {
                            this.f22395a.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1878h();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 11) {
                        this.f22400f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 11:
                    if (b == 11) {
                        this.f22401g = abstractC6292jr.mo1869a();
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
    public void m2305a(boolean z) {
        this.f22394a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2311a() {
        return this.f22393a != null;
    }

    /* renamed from: a */
    public boolean m2307a(C6255im c6255im) {
        if (c6255im == null) {
            return false;
        }
        boolean m2311a = m2311a();
        boolean m2311a2 = c6255im.m2311a();
        if ((m2311a || m2311a2) && !(m2311a && m2311a2 && this.f22393a.equals(c6255im.f22393a))) {
            return false;
        }
        boolean m2303b = m2303b();
        boolean m2303b2 = c6255im.m2303b();
        if ((m2303b || m2303b2) && !(m2303b && m2303b2 && this.f22392a.m2356a(c6255im.f22392a))) {
            return false;
        }
        boolean m2301c = m2301c();
        boolean m2301c2 = c6255im.m2301c();
        if ((m2301c || m2301c2) && !(m2301c && m2301c2 && this.f22396b.equals(c6255im.f22396b))) {
            return false;
        }
        boolean m2299d = m2299d();
        boolean m2299d2 = c6255im.m2299d();
        if ((m2299d || m2299d2) && !(m2299d && m2299d2 && this.f22397c.equals(c6255im.f22397c))) {
            return false;
        }
        boolean m2297e = m2297e();
        boolean m2297e2 = c6255im.m2297e();
        if ((m2297e || m2297e2) && !(m2297e && m2297e2 && this.f22398d.equals(c6255im.f22398d))) {
            return false;
        }
        boolean m2295f = m2295f();
        boolean m2295f2 = c6255im.m2295f();
        if ((m2295f || m2295f2) && !(m2295f && m2295f2 && this.f22391a == c6255im.f22391a)) {
            return false;
        }
        boolean m2294g = m2294g();
        boolean m2294g2 = c6255im.m2294g();
        if ((m2294g || m2294g2) && !(m2294g && m2294g2 && this.f22399e.equals(c6255im.f22399e))) {
            return false;
        }
        boolean m2293h = m2293h();
        boolean m2293h2 = c6255im.m2293h();
        if ((m2293h || m2293h2) && !(m2293h && m2293h2 && this.f22395a.equals(c6255im.f22395a))) {
            return false;
        }
        boolean m2292i = m2292i();
        boolean m2292i2 = c6255im.m2292i();
        if ((m2292i || m2292i2) && !(m2292i && m2292i2 && this.f22400f.equals(c6255im.f22400f))) {
            return false;
        }
        boolean m2291j = m2291j();
        boolean m2291j2 = c6255im.m2291j();
        if (m2291j || m2291j2) {
            return m2291j && m2291j2 && this.f22401g.equals(c6255im.f22401g);
        }
        return true;
    }

    /* renamed from: b */
    public C6255im m2302b(String str) {
        this.f22397c = str;
        return this;
    }

    /* renamed from: b */
    public String m2304b() {
        return this.f22398d;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2312a();
        abstractC6292jr.mo1889a(f22381a);
        if (this.f22393a != null && m2311a()) {
            abstractC6292jr.mo1892a(f22380a);
            abstractC6292jr.mo1888a(this.f22393a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22392a != null && m2303b()) {
            abstractC6292jr.mo1892a(f22382b);
            this.f22392a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22396b != null) {
            abstractC6292jr.mo1892a(f22383c);
            abstractC6292jr.mo1888a(this.f22396b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22397c != null && m2299d()) {
            abstractC6292jr.mo1892a(f22384d);
            abstractC6292jr.mo1888a(this.f22397c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22398d != null && m2297e()) {
            abstractC6292jr.mo1892a(f22385e);
            abstractC6292jr.mo1888a(this.f22398d);
            abstractC6292jr.mo1884b();
        }
        if (m2295f()) {
            abstractC6292jr.mo1892a(f22386f);
            abstractC6292jr.mo1893a(this.f22391a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22399e != null && m2294g()) {
            abstractC6292jr.mo1892a(f22387g);
            abstractC6292jr.mo1888a(this.f22399e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22395a != null && m2293h()) {
            abstractC6292jr.mo1892a(f22388h);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22395a.size()));
            for (Map.Entry<String, String> entry : this.f22395a.entrySet()) {
                abstractC6292jr.mo1888a(entry.getKey());
                abstractC6292jr.mo1888a(entry.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        if (this.f22400f != null && m2292i()) {
            abstractC6292jr.mo1892a(f22389i);
            abstractC6292jr.mo1888a(this.f22400f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22401g != null && m2291j()) {
            abstractC6292jr.mo1892a(f22390j);
            abstractC6292jr.mo1888a(this.f22401g);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2303b() {
        return this.f22392a != null;
    }

    /* renamed from: c */
    public C6255im m2300c(String str) {
        this.f22398d = str;
        return this;
    }

    /* renamed from: c */
    public boolean m2301c() {
        return this.f22396b != null;
    }

    /* renamed from: d */
    public C6255im m2298d(String str) {
        this.f22399e = str;
        return this;
    }

    /* renamed from: d */
    public boolean m2299d() {
        return this.f22397c != null;
    }

    /* renamed from: e */
    public C6255im m2296e(String str) {
        this.f22400f = str;
        return this;
    }

    /* renamed from: e */
    public boolean m2297e() {
        return this.f22398d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6255im)) {
            return m2307a((C6255im) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2295f() {
        return this.f22394a.get(0);
    }

    /* renamed from: g */
    public boolean m2294g() {
        return this.f22399e != null;
    }

    /* renamed from: h */
    public boolean m2293h() {
        return this.f22395a != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2292i() {
        return this.f22400f != null;
    }

    /* renamed from: j */
    public boolean m2291j() {
        return this.f22401g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionAckNotification(");
        boolean z2 = false;
        if (m2311a()) {
            sb.append("debug:");
            String str = this.f22393a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2303b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22392a;
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
        String str2 = this.f22396b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (m2299d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f22397c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m2297e()) {
            sb.append(", ");
            sb.append("type:");
            String str4 = this.f22398d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2295f()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f22391a);
        }
        if (m2294g()) {
            sb.append(", ");
            sb.append("reason:");
            String str5 = this.f22399e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2293h()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f22395a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (m2292i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f22400f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2291j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22401g;
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
