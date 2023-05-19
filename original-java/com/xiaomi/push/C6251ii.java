package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.ii */
/* loaded from: classes2.dex */
public class C6251ii implements InterfaceC6279jg<C6251ii, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public int f22305a;

    /* renamed from: a */
    public long f22306a;

    /* renamed from: a */
    public String f22307a;

    /* renamed from: a */
    private BitSet f22308a;

    /* renamed from: a */
    public Map<String, String> f22309a;

    /* renamed from: a */
    public boolean f22310a;

    /* renamed from: b */
    public int f22311b;

    /* renamed from: b */
    public String f22312b;

    /* renamed from: b */
    public Map<String, String> f22313b;

    /* renamed from: c */
    public int f22314c;

    /* renamed from: c */
    public String f22315c;

    /* renamed from: c */
    public Map<String, String> f22316c;

    /* renamed from: d */
    public String f22317d;

    /* renamed from: e */
    public String f22318e;

    /* renamed from: a */
    private static final C6297jw f22292a = new C6297jw("PushMetaInfo");

    /* renamed from: a */
    private static final C6289jo f22291a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22293b = new C6289jo("", (byte) 10, 2);

    /* renamed from: c */
    private static final C6289jo f22294c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22295d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22296e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22297f = new C6289jo("", (byte) 8, 6);

    /* renamed from: g */
    private static final C6289jo f22298g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22299h = new C6289jo("", (byte) 8, 8);

    /* renamed from: i */
    private static final C6289jo f22300i = new C6289jo("", (byte) 8, 9);

    /* renamed from: j */
    private static final C6289jo f22301j = new C6289jo("", (byte) 13, 10);

    /* renamed from: k */
    private static final C6289jo f22302k = new C6289jo("", (byte) 13, 11);

    /* renamed from: l */
    private static final C6289jo f22303l = new C6289jo("", (byte) 2, 12);

    /* renamed from: m */
    private static final C6289jo f22304m = new C6289jo("", (byte) 13, 13);

    public C6251ii() {
        this.f22308a = new BitSet(5);
        this.f22310a = false;
    }

    public C6251ii(C6251ii c6251ii) {
        BitSet bitSet = new BitSet(5);
        this.f22308a = bitSet;
        bitSet.clear();
        this.f22308a.or(c6251ii.f22308a);
        if (c6251ii.m2399a()) {
            this.f22307a = c6251ii.f22307a;
        }
        this.f22306a = c6251ii.f22306a;
        if (c6251ii.m2381c()) {
            this.f22312b = c6251ii.f22312b;
        }
        if (c6251ii.m2376d()) {
            this.f22315c = c6251ii.f22315c;
        }
        if (c6251ii.m2373e()) {
            this.f22317d = c6251ii.f22317d;
        }
        this.f22305a = c6251ii.f22305a;
        if (c6251ii.m2370g()) {
            this.f22318e = c6251ii.f22318e;
        }
        this.f22311b = c6251ii.f22311b;
        this.f22314c = c6251ii.f22314c;
        if (c6251ii.m2367j()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : c6251ii.f22309a.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.f22309a = hashMap;
        }
        if (c6251ii.m2366k()) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry<String, String> entry2 : c6251ii.f22313b.entrySet()) {
                hashMap2.put(entry2.getKey(), entry2.getValue());
            }
            this.f22313b = hashMap2;
        }
        this.f22310a = c6251ii.f22310a;
        if (c6251ii.m2363n()) {
            HashMap hashMap3 = new HashMap();
            for (Map.Entry<String, String> entry3 : c6251ii.f22316c.entrySet()) {
                hashMap3.put(entry3.getKey(), entry3.getValue());
            }
            this.f22316c = hashMap3;
        }
    }

    /* renamed from: a */
    public int m2405a() {
        return this.f22305a;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6251ii c6251ii) {
        int m1917a;
        int m1914a;
        int m1917a2;
        int m1917a3;
        int m1927a;
        int m1927a2;
        int m1924a;
        int m1927a3;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1926a;
        int m1924a5;
        if (getClass().equals(c6251ii.getClass())) {
            int compareTo = Boolean.valueOf(m2399a()).compareTo(Boolean.valueOf(c6251ii.m2399a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2399a() || (m1924a5 = C6280jh.m1924a(this.f22307a, c6251ii.f22307a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2388b()).compareTo(Boolean.valueOf(c6251ii.m2388b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2388b() || (m1926a = C6280jh.m1926a(this.f22306a, c6251ii.f22306a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2381c()).compareTo(Boolean.valueOf(c6251ii.m2381c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2381c() || (m1924a4 = C6280jh.m1924a(this.f22312b, c6251ii.f22312b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2376d()).compareTo(Boolean.valueOf(c6251ii.m2376d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2376d() || (m1924a3 = C6280jh.m1924a(this.f22315c, c6251ii.f22315c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2373e()).compareTo(Boolean.valueOf(c6251ii.m2373e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2373e() || (m1924a2 = C6280jh.m1924a(this.f22317d, c6251ii.f22317d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2371f()).compareTo(Boolean.valueOf(c6251ii.m2371f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2371f() || (m1927a3 = C6280jh.m1927a(this.f22305a, c6251ii.f22305a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2370g()).compareTo(Boolean.valueOf(c6251ii.m2370g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2370g() || (m1924a = C6280jh.m1924a(this.f22318e, c6251ii.f22318e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2369h()).compareTo(Boolean.valueOf(c6251ii.m2369h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2369h() || (m1927a2 = C6280jh.m1927a(this.f22311b, c6251ii.f22311b)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2368i()).compareTo(Boolean.valueOf(c6251ii.m2368i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2368i() || (m1927a = C6280jh.m1927a(this.f22314c, c6251ii.f22314c)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2367j()).compareTo(Boolean.valueOf(c6251ii.m2367j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2367j() || (m1917a3 = C6280jh.m1917a(this.f22309a, c6251ii.f22309a)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(m2366k()).compareTo(Boolean.valueOf(c6251ii.m2366k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!m2366k() || (m1917a2 = C6280jh.m1917a(this.f22313b, c6251ii.f22313b)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(m2364m()).compareTo(Boolean.valueOf(c6251ii.m2364m()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!m2364m() || (m1914a = C6280jh.m1914a(this.f22310a, c6251ii.f22310a)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m2363n()).compareTo(Boolean.valueOf(c6251ii.m2363n()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m2363n() || (m1917a = C6280jh.m1917a(this.f22316c, c6251ii.f22316c)) == 0) {
                                                                return 0;
                                                            }
                                                            return m1917a;
                                                        }
                                                        return m1914a;
                                                    }
                                                    return m1917a2;
                                                }
                                                return m1917a3;
                                            }
                                            return m1927a;
                                        }
                                        return m1927a2;
                                    }
                                    return m1924a;
                                }
                                return m1927a3;
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
        return getClass().getName().compareTo(c6251ii.getClass().getName());
    }

    /* renamed from: a */
    public long m2404a() {
        return this.f22306a;
    }

    /* renamed from: a */
    public C6251ii m2403a() {
        return new C6251ii(this);
    }

    /* renamed from: a */
    public C6251ii m2398a(int i) {
        this.f22305a = i;
        m2384b(true);
        return this;
    }

    /* renamed from: a */
    public C6251ii m2395a(String str) {
        this.f22307a = str;
        return this;
    }

    /* renamed from: a */
    public C6251ii m2393a(Map<String, String> map) {
        this.f22309a = map;
        return this;
    }

    /* renamed from: a */
    public String m2402a() {
        return this.f22307a;
    }

    /* renamed from: a */
    public Map<String, String> m2401a() {
        return this.f22309a;
    }

    /* renamed from: a */
    public void m2400a() {
        if (this.f22307a != null) {
            return;
        }
        throw new C6293js("Required field 'id' was not present! Struct: " + toString());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: a */
    public void mo1931a(AbstractC6292jr abstractC6292jr) {
        abstractC6292jr.mo1899a();
        while (true) {
            C6289jo mo1900a = abstractC6292jr.mo1900a();
            byte b = mo1900a.f22798a;
            if (b == 0) {
                abstractC6292jr.mo1880f();
                if (m2388b()) {
                    m2400a();
                    return;
                }
                throw new C6293js("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
            }
            int i = 0;
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22307a = abstractC6292jr.mo1869a();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 2:
                    if (b == 10) {
                        this.f22306a = abstractC6292jr.mo1901a();
                        m2392a(true);
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 3:
                    if (b == 11) {
                        this.f22312b = abstractC6292jr.mo1869a();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 4:
                    if (b == 11) {
                        this.f22315c = abstractC6292jr.mo1869a();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 5:
                    if (b == 11) {
                        this.f22317d = abstractC6292jr.mo1869a();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 6:
                    if (b == 8) {
                        this.f22305a = abstractC6292jr.mo1902a();
                        m2384b(true);
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 7:
                    if (b == 11) {
                        this.f22318e = abstractC6292jr.mo1869a();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 8:
                    if (b == 8) {
                        this.f22311b = abstractC6292jr.mo1902a();
                        m2378c(true);
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 9:
                    if (b == 8) {
                        this.f22314c = abstractC6292jr.mo1902a();
                        m2374d(true);
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 10:
                    if (b == 13) {
                        C6291jq mo1871a = abstractC6292jr.mo1871a();
                        this.f22309a = new HashMap(mo1871a.f22804a * 2);
                        while (i < mo1871a.f22804a) {
                            this.f22309a.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                            i++;
                        }
                        abstractC6292jr.mo1878h();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 11:
                    if (b == 13) {
                        C6291jq mo1871a2 = abstractC6292jr.mo1871a();
                        this.f22313b = new HashMap(mo1871a2.f22804a * 2);
                        while (i < mo1871a2.f22804a) {
                            this.f22313b.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                            i++;
                        }
                        abstractC6292jr.mo1878h();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 12:
                    if (b == 2) {
                        this.f22310a = abstractC6292jr.mo1896a();
                        m2372e(true);
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                case 13:
                    if (b == 13) {
                        C6291jq mo1871a3 = abstractC6292jr.mo1871a();
                        this.f22316c = new HashMap(mo1871a3.f22804a * 2);
                        while (i < mo1871a3.f22804a) {
                            this.f22316c.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                            i++;
                        }
                        abstractC6292jr.mo1878h();
                        break;
                    }
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
                default:
                    C6295ju.m1874a(abstractC6292jr, b);
                    break;
            }
            abstractC6292jr.mo1879g();
        }
    }

    /* renamed from: a */
    public void m2394a(String str, String str2) {
        if (this.f22309a == null) {
            this.f22309a = new HashMap();
        }
        this.f22309a.put(str, str2);
    }

    /* renamed from: a */
    public void m2392a(boolean z) {
        this.f22308a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2399a() {
        return this.f22307a != null;
    }

    /* renamed from: a */
    public boolean m2396a(C6251ii c6251ii) {
        if (c6251ii == null) {
            return false;
        }
        boolean m2399a = m2399a();
        boolean m2399a2 = c6251ii.m2399a();
        if (((m2399a || m2399a2) && !(m2399a && m2399a2 && this.f22307a.equals(c6251ii.f22307a))) || this.f22306a != c6251ii.f22306a) {
            return false;
        }
        boolean m2381c = m2381c();
        boolean m2381c2 = c6251ii.m2381c();
        if ((m2381c || m2381c2) && !(m2381c && m2381c2 && this.f22312b.equals(c6251ii.f22312b))) {
            return false;
        }
        boolean m2376d = m2376d();
        boolean m2376d2 = c6251ii.m2376d();
        if ((m2376d || m2376d2) && !(m2376d && m2376d2 && this.f22315c.equals(c6251ii.f22315c))) {
            return false;
        }
        boolean m2373e = m2373e();
        boolean m2373e2 = c6251ii.m2373e();
        if ((m2373e || m2373e2) && !(m2373e && m2373e2 && this.f22317d.equals(c6251ii.f22317d))) {
            return false;
        }
        boolean m2371f = m2371f();
        boolean m2371f2 = c6251ii.m2371f();
        if ((m2371f || m2371f2) && !(m2371f && m2371f2 && this.f22305a == c6251ii.f22305a)) {
            return false;
        }
        boolean m2370g = m2370g();
        boolean m2370g2 = c6251ii.m2370g();
        if ((m2370g || m2370g2) && !(m2370g && m2370g2 && this.f22318e.equals(c6251ii.f22318e))) {
            return false;
        }
        boolean m2369h = m2369h();
        boolean m2369h2 = c6251ii.m2369h();
        if ((m2369h || m2369h2) && !(m2369h && m2369h2 && this.f22311b == c6251ii.f22311b)) {
            return false;
        }
        boolean m2368i = m2368i();
        boolean m2368i2 = c6251ii.m2368i();
        if ((m2368i || m2368i2) && !(m2368i && m2368i2 && this.f22314c == c6251ii.f22314c)) {
            return false;
        }
        boolean m2367j = m2367j();
        boolean m2367j2 = c6251ii.m2367j();
        if ((m2367j || m2367j2) && !(m2367j && m2367j2 && this.f22309a.equals(c6251ii.f22309a))) {
            return false;
        }
        boolean m2366k = m2366k();
        boolean m2366k2 = c6251ii.m2366k();
        if ((m2366k || m2366k2) && !(m2366k && m2366k2 && this.f22313b.equals(c6251ii.f22313b))) {
            return false;
        }
        boolean m2364m = m2364m();
        boolean m2364m2 = c6251ii.m2364m();
        if ((m2364m || m2364m2) && !(m2364m && m2364m2 && this.f22310a == c6251ii.f22310a)) {
            return false;
        }
        boolean m2363n = m2363n();
        boolean m2363n2 = c6251ii.m2363n();
        if (m2363n || m2363n2) {
            return m2363n && m2363n2 && this.f22316c.equals(c6251ii.f22316c);
        }
        return true;
    }

    /* renamed from: b */
    public int m2391b() {
        return this.f22311b;
    }

    /* renamed from: b */
    public C6251ii m2387b(int i) {
        this.f22311b = i;
        m2378c(true);
        return this;
    }

    /* renamed from: b */
    public C6251ii m2386b(String str) {
        this.f22312b = str;
        return this;
    }

    /* renamed from: b */
    public String m2390b() {
        return this.f22312b;
    }

    /* renamed from: b */
    public Map<String, String> m2389b() {
        return this.f22313b;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2400a();
        abstractC6292jr.mo1889a(f22292a);
        if (this.f22307a != null) {
            abstractC6292jr.mo1892a(f22291a);
            abstractC6292jr.mo1888a(this.f22307a);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22293b);
        abstractC6292jr.mo1893a(this.f22306a);
        abstractC6292jr.mo1884b();
        if (this.f22312b != null && m2381c()) {
            abstractC6292jr.mo1892a(f22294c);
            abstractC6292jr.mo1888a(this.f22312b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22315c != null && m2376d()) {
            abstractC6292jr.mo1892a(f22295d);
            abstractC6292jr.mo1888a(this.f22315c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22317d != null && m2373e()) {
            abstractC6292jr.mo1892a(f22296e);
            abstractC6292jr.mo1888a(this.f22317d);
            abstractC6292jr.mo1884b();
        }
        if (m2371f()) {
            abstractC6292jr.mo1892a(f22297f);
            abstractC6292jr.mo1894a(this.f22305a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22318e != null && m2370g()) {
            abstractC6292jr.mo1892a(f22298g);
            abstractC6292jr.mo1888a(this.f22318e);
            abstractC6292jr.mo1884b();
        }
        if (m2369h()) {
            abstractC6292jr.mo1892a(f22299h);
            abstractC6292jr.mo1894a(this.f22311b);
            abstractC6292jr.mo1884b();
        }
        if (m2368i()) {
            abstractC6292jr.mo1892a(f22300i);
            abstractC6292jr.mo1894a(this.f22314c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22309a != null && m2367j()) {
            abstractC6292jr.mo1892a(f22301j);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22309a.size()));
            for (Map.Entry<String, String> entry : this.f22309a.entrySet()) {
                abstractC6292jr.mo1888a(entry.getKey());
                abstractC6292jr.mo1888a(entry.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        if (this.f22313b != null && m2366k()) {
            abstractC6292jr.mo1892a(f22302k);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22313b.size()));
            for (Map.Entry<String, String> entry2 : this.f22313b.entrySet()) {
                abstractC6292jr.mo1888a(entry2.getKey());
                abstractC6292jr.mo1888a(entry2.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        if (m2364m()) {
            abstractC6292jr.mo1892a(f22303l);
            abstractC6292jr.mo1885a(this.f22310a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22316c != null && m2363n()) {
            abstractC6292jr.mo1892a(f22304m);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22316c.size()));
            for (Map.Entry<String, String> entry3 : this.f22316c.entrySet()) {
                abstractC6292jr.mo1888a(entry3.getKey());
                abstractC6292jr.mo1888a(entry3.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2385b(String str, String str2) {
        if (this.f22313b == null) {
            this.f22313b = new HashMap();
        }
        this.f22313b.put(str, str2);
    }

    /* renamed from: b */
    public void m2384b(boolean z) {
        this.f22308a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2388b() {
        return this.f22308a.get(0);
    }

    /* renamed from: c */
    public int m2383c() {
        return this.f22314c;
    }

    /* renamed from: c */
    public C6251ii m2380c(int i) {
        this.f22314c = i;
        m2374d(true);
        return this;
    }

    /* renamed from: c */
    public C6251ii m2379c(String str) {
        this.f22315c = str;
        return this;
    }

    /* renamed from: c */
    public String m2382c() {
        return this.f22315c;
    }

    /* renamed from: c */
    public void m2378c(boolean z) {
        this.f22308a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2381c() {
        return this.f22312b != null;
    }

    /* renamed from: d */
    public C6251ii m2375d(String str) {
        this.f22317d = str;
        return this;
    }

    /* renamed from: d */
    public String m2377d() {
        return this.f22317d;
    }

    /* renamed from: d */
    public void m2374d(boolean z) {
        this.f22308a.set(3, z);
    }

    /* renamed from: d */
    public boolean m2376d() {
        return this.f22315c != null;
    }

    /* renamed from: e */
    public void m2372e(boolean z) {
        this.f22308a.set(4, z);
    }

    /* renamed from: e */
    public boolean m2373e() {
        return this.f22317d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6251ii)) {
            return m2396a((C6251ii) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2371f() {
        return this.f22308a.get(1);
    }

    /* renamed from: g */
    public boolean m2370g() {
        return this.f22318e != null;
    }

    /* renamed from: h */
    public boolean m2369h() {
        return this.f22308a.get(2);
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2368i() {
        return this.f22308a.get(3);
    }

    /* renamed from: j */
    public boolean m2367j() {
        return this.f22309a != null;
    }

    /* renamed from: k */
    public boolean m2366k() {
        return this.f22313b != null;
    }

    /* renamed from: l */
    public boolean m2365l() {
        return this.f22310a;
    }

    /* renamed from: m */
    public boolean m2364m() {
        return this.f22308a.get(4);
    }

    /* renamed from: n */
    public boolean m2363n() {
        return this.f22316c != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PushMetaInfo(");
        sb.append("id:");
        String str = this.f22307a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("messageTs:");
        sb.append(this.f22306a);
        if (m2381c()) {
            sb.append(", ");
            sb.append("topic:");
            String str2 = this.f22312b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (m2376d()) {
            sb.append(", ");
            sb.append("title:");
            String str3 = this.f22315c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m2373e()) {
            sb.append(", ");
            sb.append("description:");
            String str4 = this.f22317d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2371f()) {
            sb.append(", ");
            sb.append("notifyType:");
            sb.append(this.f22305a);
        }
        if (m2370g()) {
            sb.append(", ");
            sb.append("url:");
            String str5 = this.f22318e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2369h()) {
            sb.append(", ");
            sb.append("passThrough:");
            sb.append(this.f22311b);
        }
        if (m2368i()) {
            sb.append(", ");
            sb.append("notifyId:");
            sb.append(this.f22314c);
        }
        if (m2367j()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f22309a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (m2366k()) {
            sb.append(", ");
            sb.append("internal:");
            Map<String, String> map2 = this.f22313b;
            if (map2 == null) {
                sb.append("null");
            } else {
                sb.append(map2);
            }
        }
        if (m2364m()) {
            sb.append(", ");
            sb.append("ignoreRegInfo:");
            sb.append(this.f22310a);
        }
        if (m2363n()) {
            sb.append(", ");
            sb.append("apsProperFields:");
            Map<String, String> map3 = this.f22316c;
            if (map3 == null) {
                sb.append("null");
            } else {
                sb.append(map3);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
