package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.il */
/* loaded from: classes2.dex */
public class C6254il implements InterfaceC6279jg<C6254il, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public int f22359a;

    /* renamed from: a */
    public long f22360a;

    /* renamed from: a */
    public C6253ik f22361a;

    /* renamed from: a */
    public C6267iy f22362a;

    /* renamed from: a */
    public String f22363a;

    /* renamed from: a */
    public Map<String, String> f22365a;

    /* renamed from: a */
    public short f22366a;

    /* renamed from: b */
    public String f22368b;

    /* renamed from: b */
    public short f22369b;

    /* renamed from: c */
    public String f22370c;

    /* renamed from: d */
    public String f22371d;

    /* renamed from: e */
    public String f22372e;

    /* renamed from: f */
    public String f22373f;

    /* renamed from: g */
    public String f22374g;

    /* renamed from: h */
    public String f22375h;

    /* renamed from: i */
    public String f22376i;

    /* renamed from: j */
    public String f22377j;

    /* renamed from: k */
    public String f22378k;

    /* renamed from: l */
    public String f22379l;

    /* renamed from: a */
    private static final C6297jw f22339a = new C6297jw("XmPushActionAckMessage");

    /* renamed from: a */
    private static final C6289jo f22338a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22340b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22341c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22342d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22343e = new C6289jo("", (byte) 10, 5);

    /* renamed from: f */
    private static final C6289jo f22344f = new C6289jo("", (byte) 11, 6);

    /* renamed from: g */
    private static final C6289jo f22345g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22346h = new C6289jo("", (byte) 12, 8);

    /* renamed from: i */
    private static final C6289jo f22347i = new C6289jo("", (byte) 11, 9);

    /* renamed from: j */
    private static final C6289jo f22348j = new C6289jo("", (byte) 11, 10);

    /* renamed from: k */
    private static final C6289jo f22349k = new C6289jo("", (byte) 2, 11);

    /* renamed from: l */
    private static final C6289jo f22350l = new C6289jo("", (byte) 11, 12);

    /* renamed from: m */
    private static final C6289jo f22351m = new C6289jo("", (byte) 11, 13);

    /* renamed from: n */
    private static final C6289jo f22352n = new C6289jo("", (byte) 11, 14);

    /* renamed from: o */
    private static final C6289jo f22353o = new C6289jo("", (byte) 6, 15);

    /* renamed from: p */
    private static final C6289jo f22354p = new C6289jo("", (byte) 6, 16);

    /* renamed from: q */
    private static final C6289jo f22355q = new C6289jo("", (byte) 11, 20);

    /* renamed from: r */
    private static final C6289jo f22356r = new C6289jo("", (byte) 11, 21);

    /* renamed from: s */
    private static final C6289jo f22357s = new C6289jo("", (byte) 8, 22);

    /* renamed from: t */
    private static final C6289jo f22358t = new C6289jo("", (byte) 13, 23);

    /* renamed from: a */
    private BitSet f22364a = new BitSet(5);

    /* renamed from: a */
    public boolean f22367a = false;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6254il c6254il) {
        int m1917a;
        int m1927a;
        int m1924a;
        int m1924a2;
        int m1915a;
        int m1915a2;
        int m1924a3;
        int m1924a4;
        int m1924a5;
        int m1914a;
        int m1924a6;
        int m1924a7;
        int m1925a;
        int m1924a8;
        int m1924a9;
        int m1926a;
        int m1924a10;
        int m1924a11;
        int m1925a2;
        int m1924a12;
        if (getClass().equals(c6254il.getClass())) {
            int compareTo = Boolean.valueOf(m2347a()).compareTo(Boolean.valueOf(c6254il.m2347a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2347a() || (m1924a12 = C6280jh.m1924a(this.f22363a, c6254il.f22363a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2340b()).compareTo(Boolean.valueOf(c6254il.m2340b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2340b() || (m1925a2 = C6280jh.m1925a(this.f22361a, c6254il.f22361a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2337c()).compareTo(Boolean.valueOf(c6254il.m2337c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2337c() || (m1924a11 = C6280jh.m1924a(this.f22368b, c6254il.f22368b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2334d()).compareTo(Boolean.valueOf(c6254il.m2334d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2334d() || (m1924a10 = C6280jh.m1924a(this.f22370c, c6254il.f22370c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2331e()).compareTo(Boolean.valueOf(c6254il.m2331e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2331e() || (m1926a = C6280jh.m1926a(this.f22360a, c6254il.f22360a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2329f()).compareTo(Boolean.valueOf(c6254il.m2329f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2329f() || (m1924a9 = C6280jh.m1924a(this.f22371d, c6254il.f22371d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2328g()).compareTo(Boolean.valueOf(c6254il.m2328g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2328g() || (m1924a8 = C6280jh.m1924a(this.f22372e, c6254il.f22372e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2327h()).compareTo(Boolean.valueOf(c6254il.m2327h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2327h() || (m1925a = C6280jh.m1925a(this.f22362a, c6254il.f22362a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2326i()).compareTo(Boolean.valueOf(c6254il.m2326i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2326i() || (m1924a7 = C6280jh.m1924a(this.f22373f, c6254il.f22373f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2325j()).compareTo(Boolean.valueOf(c6254il.m2325j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2325j() || (m1924a6 = C6280jh.m1924a(this.f22374g, c6254il.f22374g)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(m2324k()).compareTo(Boolean.valueOf(c6254il.m2324k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!m2324k() || (m1914a = C6280jh.m1914a(this.f22367a, c6254il.f22367a)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(m2323l()).compareTo(Boolean.valueOf(c6254il.m2323l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!m2323l() || (m1924a5 = C6280jh.m1924a(this.f22375h, c6254il.f22375h)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m2322m()).compareTo(Boolean.valueOf(c6254il.m2322m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m2322m() || (m1924a4 = C6280jh.m1924a(this.f22376i, c6254il.f22376i)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(m2321n()).compareTo(Boolean.valueOf(c6254il.m2321n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!m2321n() || (m1924a3 = C6280jh.m1924a(this.f22377j, c6254il.f22377j)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(m2320o()).compareTo(Boolean.valueOf(c6254il.m2320o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!m2320o() || (m1915a2 = C6280jh.m1915a(this.f22366a, c6254il.f22366a)) == 0) {
                                                                        int compareTo16 = Boolean.valueOf(m2319p()).compareTo(Boolean.valueOf(c6254il.m2319p()));
                                                                        if (compareTo16 != 0) {
                                                                            return compareTo16;
                                                                        }
                                                                        if (!m2319p() || (m1915a = C6280jh.m1915a(this.f22369b, c6254il.f22369b)) == 0) {
                                                                            int compareTo17 = Boolean.valueOf(m2318q()).compareTo(Boolean.valueOf(c6254il.m2318q()));
                                                                            if (compareTo17 != 0) {
                                                                                return compareTo17;
                                                                            }
                                                                            if (!m2318q() || (m1924a2 = C6280jh.m1924a(this.f22378k, c6254il.f22378k)) == 0) {
                                                                                int compareTo18 = Boolean.valueOf(m2317r()).compareTo(Boolean.valueOf(c6254il.m2317r()));
                                                                                if (compareTo18 != 0) {
                                                                                    return compareTo18;
                                                                                }
                                                                                if (!m2317r() || (m1924a = C6280jh.m1924a(this.f22379l, c6254il.f22379l)) == 0) {
                                                                                    int compareTo19 = Boolean.valueOf(m2316s()).compareTo(Boolean.valueOf(c6254il.m2316s()));
                                                                                    if (compareTo19 != 0) {
                                                                                        return compareTo19;
                                                                                    }
                                                                                    if (!m2316s() || (m1927a = C6280jh.m1927a(this.f22359a, c6254il.f22359a)) == 0) {
                                                                                        int compareTo20 = Boolean.valueOf(m2315t()).compareTo(Boolean.valueOf(c6254il.m2315t()));
                                                                                        if (compareTo20 != 0) {
                                                                                            return compareTo20;
                                                                                        }
                                                                                        if (!m2315t() || (m1917a = C6280jh.m1917a(this.f22365a, c6254il.f22365a)) == 0) {
                                                                                            return 0;
                                                                                        }
                                                                                        return m1917a;
                                                                                    }
                                                                                    return m1927a;
                                                                                }
                                                                                return m1924a;
                                                                            }
                                                                            return m1924a2;
                                                                        }
                                                                        return m1915a;
                                                                    }
                                                                    return m1915a2;
                                                                }
                                                                return m1924a3;
                                                            }
                                                            return m1924a4;
                                                        }
                                                        return m1924a5;
                                                    }
                                                    return m1914a;
                                                }
                                                return m1924a6;
                                            }
                                            return m1924a7;
                                        }
                                        return m1925a;
                                    }
                                    return m1924a8;
                                }
                                return m1924a9;
                            }
                            return m1926a;
                        }
                        return m1924a10;
                    }
                    return m1924a11;
                }
                return m1925a2;
            }
            return m1924a12;
        }
        return getClass().getName().compareTo(c6254il.getClass().getName());
    }

    /* renamed from: a */
    public C6254il m2346a(long j) {
        this.f22360a = j;
        m2341a(true);
        return this;
    }

    /* renamed from: a */
    public C6254il m2343a(String str) {
        this.f22368b = str;
        return this;
    }

    /* renamed from: a */
    public C6254il m2342a(short s) {
        this.f22366a = s;
        m2335c(true);
        return this;
    }

    /* renamed from: a */
    public void m2348a() {
        if (this.f22368b == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22370c != null) {
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
                if (m2331e()) {
                    m2348a();
                    return;
                }
                throw new C6293js("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22363a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22361a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22368b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22370c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 10) {
                        this.f22360a = abstractC6292jr.mo1901a();
                        m2341a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 11) {
                        this.f22371d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22372e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 12) {
                        C6267iy c6267iy = new C6267iy();
                        this.f22362a = c6267iy;
                        c6267iy.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22373f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 11) {
                        this.f22374g = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 11:
                    if (b == 2) {
                        this.f22367a = abstractC6292jr.mo1896a();
                        m2338b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 12:
                    if (b == 11) {
                        this.f22375h = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 13:
                    if (b == 11) {
                        this.f22376i = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 14:
                    if (b == 11) {
                        this.f22377j = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 15:
                    if (b == 6) {
                        this.f22366a = abstractC6292jr.mo1898a();
                        m2335c(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 16:
                    if (b == 6) {
                        this.f22369b = abstractC6292jr.mo1898a();
                        m2332d(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 20:
                    if (b == 11) {
                        this.f22378k = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 21:
                    if (b == 11) {
                        this.f22379l = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 22:
                    if (b == 8) {
                        this.f22359a = abstractC6292jr.mo1902a();
                        m2330e(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 23:
                    if (b == 13) {
                        C6291jq mo1871a = abstractC6292jr.mo1871a();
                        this.f22365a = new HashMap(mo1871a.f22804a * 2);
                        for (int i = 0; i < mo1871a.f22804a; i++) {
                            this.f22365a.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1878h();
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
    public void m2341a(boolean z) {
        this.f22364a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2347a() {
        return this.f22363a != null;
    }

    /* renamed from: a */
    public boolean m2344a(C6254il c6254il) {
        if (c6254il == null) {
            return false;
        }
        boolean m2347a = m2347a();
        boolean m2347a2 = c6254il.m2347a();
        if ((m2347a || m2347a2) && !(m2347a && m2347a2 && this.f22363a.equals(c6254il.f22363a))) {
            return false;
        }
        boolean m2340b = m2340b();
        boolean m2340b2 = c6254il.m2340b();
        if ((m2340b || m2340b2) && !(m2340b && m2340b2 && this.f22361a.m2356a(c6254il.f22361a))) {
            return false;
        }
        boolean m2337c = m2337c();
        boolean m2337c2 = c6254il.m2337c();
        if ((m2337c || m2337c2) && !(m2337c && m2337c2 && this.f22368b.equals(c6254il.f22368b))) {
            return false;
        }
        boolean m2334d = m2334d();
        boolean m2334d2 = c6254il.m2334d();
        if (((m2334d || m2334d2) && !(m2334d && m2334d2 && this.f22370c.equals(c6254il.f22370c))) || this.f22360a != c6254il.f22360a) {
            return false;
        }
        boolean m2329f = m2329f();
        boolean m2329f2 = c6254il.m2329f();
        if ((m2329f || m2329f2) && !(m2329f && m2329f2 && this.f22371d.equals(c6254il.f22371d))) {
            return false;
        }
        boolean m2328g = m2328g();
        boolean m2328g2 = c6254il.m2328g();
        if ((m2328g || m2328g2) && !(m2328g && m2328g2 && this.f22372e.equals(c6254il.f22372e))) {
            return false;
        }
        boolean m2327h = m2327h();
        boolean m2327h2 = c6254il.m2327h();
        if ((m2327h || m2327h2) && !(m2327h && m2327h2 && this.f22362a.m2059a(c6254il.f22362a))) {
            return false;
        }
        boolean m2326i = m2326i();
        boolean m2326i2 = c6254il.m2326i();
        if ((m2326i || m2326i2) && !(m2326i && m2326i2 && this.f22373f.equals(c6254il.f22373f))) {
            return false;
        }
        boolean m2325j = m2325j();
        boolean m2325j2 = c6254il.m2325j();
        if ((m2325j || m2325j2) && !(m2325j && m2325j2 && this.f22374g.equals(c6254il.f22374g))) {
            return false;
        }
        boolean m2324k = m2324k();
        boolean m2324k2 = c6254il.m2324k();
        if ((m2324k || m2324k2) && !(m2324k && m2324k2 && this.f22367a == c6254il.f22367a)) {
            return false;
        }
        boolean m2323l = m2323l();
        boolean m2323l2 = c6254il.m2323l();
        if ((m2323l || m2323l2) && !(m2323l && m2323l2 && this.f22375h.equals(c6254il.f22375h))) {
            return false;
        }
        boolean m2322m = m2322m();
        boolean m2322m2 = c6254il.m2322m();
        if ((m2322m || m2322m2) && !(m2322m && m2322m2 && this.f22376i.equals(c6254il.f22376i))) {
            return false;
        }
        boolean m2321n = m2321n();
        boolean m2321n2 = c6254il.m2321n();
        if ((m2321n || m2321n2) && !(m2321n && m2321n2 && this.f22377j.equals(c6254il.f22377j))) {
            return false;
        }
        boolean m2320o = m2320o();
        boolean m2320o2 = c6254il.m2320o();
        if ((m2320o || m2320o2) && !(m2320o && m2320o2 && this.f22366a == c6254il.f22366a)) {
            return false;
        }
        boolean m2319p = m2319p();
        boolean m2319p2 = c6254il.m2319p();
        if ((m2319p || m2319p2) && !(m2319p && m2319p2 && this.f22369b == c6254il.f22369b)) {
            return false;
        }
        boolean m2318q = m2318q();
        boolean m2318q2 = c6254il.m2318q();
        if ((m2318q || m2318q2) && !(m2318q && m2318q2 && this.f22378k.equals(c6254il.f22378k))) {
            return false;
        }
        boolean m2317r = m2317r();
        boolean m2317r2 = c6254il.m2317r();
        if ((m2317r || m2317r2) && !(m2317r && m2317r2 && this.f22379l.equals(c6254il.f22379l))) {
            return false;
        }
        boolean m2316s = m2316s();
        boolean m2316s2 = c6254il.m2316s();
        if ((m2316s || m2316s2) && !(m2316s && m2316s2 && this.f22359a == c6254il.f22359a)) {
            return false;
        }
        boolean m2315t = m2315t();
        boolean m2315t2 = c6254il.m2315t();
        if (m2315t || m2315t2) {
            return m2315t && m2315t2 && this.f22365a.equals(c6254il.f22365a);
        }
        return true;
    }

    /* renamed from: b */
    public C6254il m2339b(String str) {
        this.f22370c = str;
        return this;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2348a();
        abstractC6292jr.mo1889a(f22339a);
        if (this.f22363a != null && m2347a()) {
            abstractC6292jr.mo1892a(f22338a);
            abstractC6292jr.mo1888a(this.f22363a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22361a != null && m2340b()) {
            abstractC6292jr.mo1892a(f22340b);
            this.f22361a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22368b != null) {
            abstractC6292jr.mo1892a(f22341c);
            abstractC6292jr.mo1888a(this.f22368b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22370c != null) {
            abstractC6292jr.mo1892a(f22342d);
            abstractC6292jr.mo1888a(this.f22370c);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22343e);
        abstractC6292jr.mo1893a(this.f22360a);
        abstractC6292jr.mo1884b();
        if (this.f22371d != null && m2329f()) {
            abstractC6292jr.mo1892a(f22344f);
            abstractC6292jr.mo1888a(this.f22371d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22372e != null && m2328g()) {
            abstractC6292jr.mo1892a(f22345g);
            abstractC6292jr.mo1888a(this.f22372e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22362a != null && m2327h()) {
            abstractC6292jr.mo1892a(f22346h);
            this.f22362a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22373f != null && m2326i()) {
            abstractC6292jr.mo1892a(f22347i);
            abstractC6292jr.mo1888a(this.f22373f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22374g != null && m2325j()) {
            abstractC6292jr.mo1892a(f22348j);
            abstractC6292jr.mo1888a(this.f22374g);
            abstractC6292jr.mo1884b();
        }
        if (m2324k()) {
            abstractC6292jr.mo1892a(f22349k);
            abstractC6292jr.mo1885a(this.f22367a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22375h != null && m2323l()) {
            abstractC6292jr.mo1892a(f22350l);
            abstractC6292jr.mo1888a(this.f22375h);
            abstractC6292jr.mo1884b();
        }
        if (this.f22376i != null && m2322m()) {
            abstractC6292jr.mo1892a(f22351m);
            abstractC6292jr.mo1888a(this.f22376i);
            abstractC6292jr.mo1884b();
        }
        if (this.f22377j != null && m2321n()) {
            abstractC6292jr.mo1892a(f22352n);
            abstractC6292jr.mo1888a(this.f22377j);
            abstractC6292jr.mo1884b();
        }
        if (m2320o()) {
            abstractC6292jr.mo1892a(f22353o);
            abstractC6292jr.mo1886a(this.f22366a);
            abstractC6292jr.mo1884b();
        }
        if (m2319p()) {
            abstractC6292jr.mo1892a(f22354p);
            abstractC6292jr.mo1886a(this.f22369b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22378k != null && m2318q()) {
            abstractC6292jr.mo1892a(f22355q);
            abstractC6292jr.mo1888a(this.f22378k);
            abstractC6292jr.mo1884b();
        }
        if (this.f22379l != null && m2317r()) {
            abstractC6292jr.mo1892a(f22356r);
            abstractC6292jr.mo1888a(this.f22379l);
            abstractC6292jr.mo1884b();
        }
        if (m2316s()) {
            abstractC6292jr.mo1892a(f22357s);
            abstractC6292jr.mo1894a(this.f22359a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22365a != null && m2315t()) {
            abstractC6292jr.mo1892a(f22358t);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22365a.size()));
            for (Map.Entry<String, String> entry : this.f22365a.entrySet()) {
                abstractC6292jr.mo1888a(entry.getKey());
                abstractC6292jr.mo1888a(entry.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2338b(boolean z) {
        this.f22364a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2340b() {
        return this.f22361a != null;
    }

    /* renamed from: c */
    public C6254il m2336c(String str) {
        this.f22371d = str;
        return this;
    }

    /* renamed from: c */
    public void m2335c(boolean z) {
        this.f22364a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2337c() {
        return this.f22368b != null;
    }

    /* renamed from: d */
    public C6254il m2333d(String str) {
        this.f22372e = str;
        return this;
    }

    /* renamed from: d */
    public void m2332d(boolean z) {
        this.f22364a.set(3, z);
    }

    /* renamed from: d */
    public boolean m2334d() {
        return this.f22370c != null;
    }

    /* renamed from: e */
    public void m2330e(boolean z) {
        this.f22364a.set(4, z);
    }

    /* renamed from: e */
    public boolean m2331e() {
        return this.f22364a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6254il)) {
            return m2344a((C6254il) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2329f() {
        return this.f22371d != null;
    }

    /* renamed from: g */
    public boolean m2328g() {
        return this.f22372e != null;
    }

    /* renamed from: h */
    public boolean m2327h() {
        return this.f22362a != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2326i() {
        return this.f22373f != null;
    }

    /* renamed from: j */
    public boolean m2325j() {
        return this.f22374g != null;
    }

    /* renamed from: k */
    public boolean m2324k() {
        return this.f22364a.get(1);
    }

    /* renamed from: l */
    public boolean m2323l() {
        return this.f22375h != null;
    }

    /* renamed from: m */
    public boolean m2322m() {
        return this.f22376i != null;
    }

    /* renamed from: n */
    public boolean m2321n() {
        return this.f22377j != null;
    }

    /* renamed from: o */
    public boolean m2320o() {
        return this.f22364a.get(2);
    }

    /* renamed from: p */
    public boolean m2319p() {
        return this.f22364a.get(3);
    }

    /* renamed from: q */
    public boolean m2318q() {
        return this.f22378k != null;
    }

    /* renamed from: r */
    public boolean m2317r() {
        return this.f22379l != null;
    }

    /* renamed from: s */
    public boolean m2316s() {
        return this.f22364a.get(4);
    }

    /* renamed from: t */
    public boolean m2315t() {
        return this.f22365a != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionAckMessage(");
        boolean z2 = false;
        if (m2347a()) {
            sb.append("debug:");
            String str = this.f22363a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2340b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22361a;
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
        String str2 = this.f22368b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f22370c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("messageTs:");
        sb.append(this.f22360a);
        if (m2329f()) {
            sb.append(", ");
            sb.append("topic:");
            String str4 = this.f22371d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2328g()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str5 = this.f22372e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2327h()) {
            sb.append(", ");
            sb.append("request:");
            C6267iy c6267iy = this.f22362a;
            if (c6267iy == null) {
                sb.append("null");
            } else {
                sb.append(c6267iy);
            }
        }
        if (m2326i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f22373f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2325j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22374g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (m2324k()) {
            sb.append(", ");
            sb.append("isOnline:");
            sb.append(this.f22367a);
        }
        if (m2323l()) {
            sb.append(", ");
            sb.append("regId:");
            String str8 = this.f22375h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (m2322m()) {
            sb.append(", ");
            sb.append("callbackUrl:");
            String str9 = this.f22376i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (m2321n()) {
            sb.append(", ");
            sb.append("userAccount:");
            String str10 = this.f22377j;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
        }
        if (m2320o()) {
            sb.append(", ");
            sb.append("deviceStatus:");
            sb.append((int) this.f22366a);
        }
        if (m2319p()) {
            sb.append(", ");
            sb.append("geoMsgStatus:");
            sb.append((int) this.f22369b);
        }
        if (m2318q()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            String str11 = this.f22378k;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
        }
        if (m2317r()) {
            sb.append(", ");
            sb.append("deviceId:");
            String str12 = this.f22379l;
            if (str12 == null) {
                sb.append("null");
            } else {
                sb.append(str12);
            }
        }
        if (m2316s()) {
            sb.append(", ");
            sb.append("passThrough:");
            sb.append(this.f22359a);
        }
        if (m2315t()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f22365a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
