package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.hz */
/* loaded from: classes2.dex */
public class C6241hz implements InterfaceC6279jg<C6241hz, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f21999a;

    /* renamed from: a */
    public String f22000a;

    /* renamed from: a */
    private BitSet f22001a = new BitSet(3);

    /* renamed from: a */
    public Map<String, String> f22002a;

    /* renamed from: a */
    public boolean f22003a;

    /* renamed from: b */
    public long f22004b;

    /* renamed from: b */
    public String f22005b;

    /* renamed from: c */
    public String f22006c;

    /* renamed from: d */
    public String f22007d;

    /* renamed from: e */
    public String f22008e;

    /* renamed from: f */
    public String f22009f;

    /* renamed from: g */
    public String f22010g;

    /* renamed from: a */
    private static final C6297jw f21988a = new C6297jw("ClientUploadDataItem");

    /* renamed from: a */
    private static final C6289jo f21987a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f21989b = new C6289jo("", (byte) 11, 2);

    /* renamed from: c */
    private static final C6289jo f21990c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f21991d = new C6289jo("", (byte) 10, 4);

    /* renamed from: e */
    private static final C6289jo f21992e = new C6289jo("", (byte) 10, 5);

    /* renamed from: f */
    private static final C6289jo f21993f = new C6289jo("", (byte) 2, 6);

    /* renamed from: g */
    private static final C6289jo f21994g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f21995h = new C6289jo("", (byte) 11, 8);

    /* renamed from: i */
    private static final C6289jo f21996i = new C6289jo("", (byte) 11, 9);

    /* renamed from: j */
    private static final C6289jo f21997j = new C6289jo("", (byte) 13, 10);

    /* renamed from: k */
    private static final C6289jo f21998k = new C6289jo("", (byte) 11, 11);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6241hz c6241hz) {
        int m1924a;
        int m1917a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1914a;
        int m1926a;
        int m1926a2;
        int m1924a5;
        int m1924a6;
        int m1924a7;
        if (getClass().equals(c6241hz.getClass())) {
            int compareTo = Boolean.valueOf(m2548a()).compareTo(Boolean.valueOf(c6241hz.m2548a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2548a() || (m1924a7 = C6280jh.m1924a(this.f22000a, c6241hz.f22000a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2538b()).compareTo(Boolean.valueOf(c6241hz.m2538b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2538b() || (m1924a6 = C6280jh.m1924a(this.f22005b, c6241hz.f22005b)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2533c()).compareTo(Boolean.valueOf(c6241hz.m2533c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2533c() || (m1924a5 = C6280jh.m1924a(this.f22006c, c6241hz.f22006c)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2529d()).compareTo(Boolean.valueOf(c6241hz.m2529d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2529d() || (m1926a2 = C6280jh.m1926a(this.f21999a, c6241hz.f21999a)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2526e()).compareTo(Boolean.valueOf(c6241hz.m2526e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2526e() || (m1926a = C6280jh.m1926a(this.f22004b, c6241hz.f22004b)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2524f()).compareTo(Boolean.valueOf(c6241hz.m2524f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2524f() || (m1914a = C6280jh.m1914a(this.f22003a, c6241hz.f22003a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2522g()).compareTo(Boolean.valueOf(c6241hz.m2522g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2522g() || (m1924a4 = C6280jh.m1924a(this.f22007d, c6241hz.f22007d)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2520h()).compareTo(Boolean.valueOf(c6241hz.m2520h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2520h() || (m1924a3 = C6280jh.m1924a(this.f22008e, c6241hz.f22008e)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2519i()).compareTo(Boolean.valueOf(c6241hz.m2519i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2519i() || (m1924a2 = C6280jh.m1924a(this.f22009f, c6241hz.f22009f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2518j()).compareTo(Boolean.valueOf(c6241hz.m2518j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2518j() || (m1917a = C6280jh.m1917a(this.f22002a, c6241hz.f22002a)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(m2517k()).compareTo(Boolean.valueOf(c6241hz.m2517k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!m2517k() || (m1924a = C6280jh.m1924a(this.f22010g, c6241hz.f22010g)) == 0) {
                                                        return 0;
                                                    }
                                                    return m1924a;
                                                }
                                                return m1917a;
                                            }
                                            return m1924a2;
                                        }
                                        return m1924a3;
                                    }
                                    return m1924a4;
                                }
                                return m1914a;
                            }
                            return m1926a;
                        }
                        return m1926a2;
                    }
                    return m1924a5;
                }
                return m1924a6;
            }
            return m1924a7;
        }
        return getClass().getName().compareTo(c6241hz.getClass().getName());
    }

    /* renamed from: a */
    public long m2552a() {
        return this.f22004b;
    }

    /* renamed from: a */
    public C6241hz m2547a(long j) {
        this.f21999a = j;
        m2540a(true);
        return this;
    }

    /* renamed from: a */
    public C6241hz m2544a(String str) {
        this.f22000a = str;
        return this;
    }

    /* renamed from: a */
    public C6241hz m2542a(Map<String, String> map) {
        this.f22002a = map;
        return this;
    }

    /* renamed from: a */
    public C6241hz m2541a(boolean z) {
        this.f22003a = z;
        m2531c(true);
        return this;
    }

    /* renamed from: a */
    public String m2551a() {
        return this.f22000a;
    }

    /* renamed from: a */
    public Map<String, String> m2550a() {
        return this.f22002a;
    }

    /* renamed from: a */
    public void m2549a() {
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
                m2549a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22000a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 11) {
                        this.f22005b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22006c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 10) {
                        this.f21999a = abstractC6292jr.mo1901a();
                        m2540a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 10) {
                        this.f22004b = abstractC6292jr.mo1901a();
                        m2535b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 2) {
                        this.f22003a = abstractC6292jr.mo1896a();
                        m2531c(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22007d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22008e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22009f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 13) {
                        C6291jq mo1871a = abstractC6292jr.mo1871a();
                        this.f22002a = new HashMap(mo1871a.f22804a * 2);
                        for (int i = 0; i < mo1871a.f22804a; i++) {
                            this.f22002a.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1878h();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 11:
                    if (b == 11) {
                        this.f22010g = abstractC6292jr.mo1869a();
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
    public void m2543a(String str, String str2) {
        if (this.f22002a == null) {
            this.f22002a = new HashMap();
        }
        this.f22002a.put(str, str2);
    }

    /* renamed from: a */
    public void m2540a(boolean z) {
        this.f22001a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2548a() {
        return this.f22000a != null;
    }

    /* renamed from: a */
    public boolean m2545a(C6241hz c6241hz) {
        if (c6241hz == null) {
            return false;
        }
        boolean m2548a = m2548a();
        boolean m2548a2 = c6241hz.m2548a();
        if ((m2548a || m2548a2) && !(m2548a && m2548a2 && this.f22000a.equals(c6241hz.f22000a))) {
            return false;
        }
        boolean m2538b = m2538b();
        boolean m2538b2 = c6241hz.m2538b();
        if ((m2538b || m2538b2) && !(m2538b && m2538b2 && this.f22005b.equals(c6241hz.f22005b))) {
            return false;
        }
        boolean m2533c = m2533c();
        boolean m2533c2 = c6241hz.m2533c();
        if ((m2533c || m2533c2) && !(m2533c && m2533c2 && this.f22006c.equals(c6241hz.f22006c))) {
            return false;
        }
        boolean m2529d = m2529d();
        boolean m2529d2 = c6241hz.m2529d();
        if ((m2529d || m2529d2) && !(m2529d && m2529d2 && this.f21999a == c6241hz.f21999a)) {
            return false;
        }
        boolean m2526e = m2526e();
        boolean m2526e2 = c6241hz.m2526e();
        if ((m2526e || m2526e2) && !(m2526e && m2526e2 && this.f22004b == c6241hz.f22004b)) {
            return false;
        }
        boolean m2524f = m2524f();
        boolean m2524f2 = c6241hz.m2524f();
        if ((m2524f || m2524f2) && !(m2524f && m2524f2 && this.f22003a == c6241hz.f22003a)) {
            return false;
        }
        boolean m2522g = m2522g();
        boolean m2522g2 = c6241hz.m2522g();
        if ((m2522g || m2522g2) && !(m2522g && m2522g2 && this.f22007d.equals(c6241hz.f22007d))) {
            return false;
        }
        boolean m2520h = m2520h();
        boolean m2520h2 = c6241hz.m2520h();
        if ((m2520h || m2520h2) && !(m2520h && m2520h2 && this.f22008e.equals(c6241hz.f22008e))) {
            return false;
        }
        boolean m2519i = m2519i();
        boolean m2519i2 = c6241hz.m2519i();
        if ((m2519i || m2519i2) && !(m2519i && m2519i2 && this.f22009f.equals(c6241hz.f22009f))) {
            return false;
        }
        boolean m2518j = m2518j();
        boolean m2518j2 = c6241hz.m2518j();
        if ((m2518j || m2518j2) && !(m2518j && m2518j2 && this.f22002a.equals(c6241hz.f22002a))) {
            return false;
        }
        boolean m2517k = m2517k();
        boolean m2517k2 = c6241hz.m2517k();
        if (m2517k || m2517k2) {
            return m2517k && m2517k2 && this.f22010g.equals(c6241hz.f22010g);
        }
        return true;
    }

    /* renamed from: b */
    public C6241hz m2537b(long j) {
        this.f22004b = j;
        m2535b(true);
        return this;
    }

    /* renamed from: b */
    public C6241hz m2536b(String str) {
        this.f22005b = str;
        return this;
    }

    /* renamed from: b */
    public String m2539b() {
        return this.f22006c;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2549a();
        abstractC6292jr.mo1889a(f21988a);
        if (this.f22000a != null && m2548a()) {
            abstractC6292jr.mo1892a(f21987a);
            abstractC6292jr.mo1888a(this.f22000a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22005b != null && m2538b()) {
            abstractC6292jr.mo1892a(f21989b);
            abstractC6292jr.mo1888a(this.f22005b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22006c != null && m2533c()) {
            abstractC6292jr.mo1892a(f21990c);
            abstractC6292jr.mo1888a(this.f22006c);
            abstractC6292jr.mo1884b();
        }
        if (m2529d()) {
            abstractC6292jr.mo1892a(f21991d);
            abstractC6292jr.mo1893a(this.f21999a);
            abstractC6292jr.mo1884b();
        }
        if (m2526e()) {
            abstractC6292jr.mo1892a(f21992e);
            abstractC6292jr.mo1893a(this.f22004b);
            abstractC6292jr.mo1884b();
        }
        if (m2524f()) {
            abstractC6292jr.mo1892a(f21993f);
            abstractC6292jr.mo1885a(this.f22003a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22007d != null && m2522g()) {
            abstractC6292jr.mo1892a(f21994g);
            abstractC6292jr.mo1888a(this.f22007d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22008e != null && m2520h()) {
            abstractC6292jr.mo1892a(f21995h);
            abstractC6292jr.mo1888a(this.f22008e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22009f != null && m2519i()) {
            abstractC6292jr.mo1892a(f21996i);
            abstractC6292jr.mo1888a(this.f22009f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22002a != null && m2518j()) {
            abstractC6292jr.mo1892a(f21997j);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22002a.size()));
            for (Map.Entry<String, String> entry : this.f22002a.entrySet()) {
                abstractC6292jr.mo1888a(entry.getKey());
                abstractC6292jr.mo1888a(entry.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        if (this.f22010g != null && m2517k()) {
            abstractC6292jr.mo1892a(f21998k);
            abstractC6292jr.mo1888a(this.f22010g);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2535b(boolean z) {
        this.f22001a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2538b() {
        return this.f22005b != null;
    }

    /* renamed from: c */
    public C6241hz m2532c(String str) {
        this.f22006c = str;
        return this;
    }

    /* renamed from: c */
    public String m2534c() {
        return this.f22008e;
    }

    /* renamed from: c */
    public void m2531c(boolean z) {
        this.f22001a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2533c() {
        return this.f22006c != null;
    }

    /* renamed from: d */
    public C6241hz m2528d(String str) {
        this.f22007d = str;
        return this;
    }

    /* renamed from: d */
    public String m2530d() {
        return this.f22009f;
    }

    /* renamed from: d */
    public boolean m2529d() {
        return this.f22001a.get(0);
    }

    /* renamed from: e */
    public C6241hz m2525e(String str) {
        this.f22008e = str;
        return this;
    }

    /* renamed from: e */
    public String m2527e() {
        return this.f22010g;
    }

    /* renamed from: e */
    public boolean m2526e() {
        return this.f22001a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6241hz)) {
            return m2545a((C6241hz) obj);
        }
        return false;
    }

    /* renamed from: f */
    public C6241hz m2523f(String str) {
        this.f22009f = str;
        return this;
    }

    /* renamed from: f */
    public boolean m2524f() {
        return this.f22001a.get(2);
    }

    /* renamed from: g */
    public C6241hz m2521g(String str) {
        this.f22010g = str;
        return this;
    }

    /* renamed from: g */
    public boolean m2522g() {
        return this.f22007d != null;
    }

    /* renamed from: h */
    public boolean m2520h() {
        return this.f22008e != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2519i() {
        return this.f22009f != null;
    }

    /* renamed from: j */
    public boolean m2518j() {
        return this.f22002a != null;
    }

    /* renamed from: k */
    public boolean m2517k() {
        return this.f22010g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ClientUploadDataItem(");
        boolean z2 = false;
        if (m2548a()) {
            sb.append("channel:");
            String str = this.f22000a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2538b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("data:");
            String str2 = this.f22005b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (m2533c()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("name:");
            String str3 = this.f22006c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (m2529d()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("counter:");
            sb.append(this.f21999a);
            z = false;
        }
        if (m2526e()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("timestamp:");
            sb.append(this.f22004b);
            z = false;
        }
        if (m2524f()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("fromSdk:");
            sb.append(this.f22003a);
            z = false;
        }
        if (m2522g()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("category:");
            String str4 = this.f22007d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (m2520h()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sourcePackage:");
            String str5 = this.f22008e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (m2519i()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("id:");
            String str6 = this.f22009f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
            z = false;
        }
        if (m2518j()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("extra:");
            Map<String, String> map = this.f22002a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        } else {
            z2 = z;
        }
        if (m2517k()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("pkgName:");
            String str7 = this.f22010g;
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
