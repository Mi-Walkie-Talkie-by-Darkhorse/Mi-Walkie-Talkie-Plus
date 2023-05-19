package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.ih */
/* loaded from: classes2.dex */
public class C6250ih implements InterfaceC6279jg<C6250ih, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22272a;

    /* renamed from: a */
    public C6251ii f22273a;

    /* renamed from: a */
    public C6253ik f22274a;

    /* renamed from: a */
    public String f22275a;

    /* renamed from: a */
    private BitSet f22276a = new BitSet(4);

    /* renamed from: a */
    public boolean f22277a = false;

    /* renamed from: b */
    public long f22278b;

    /* renamed from: b */
    public String f22279b;

    /* renamed from: c */
    public long f22280c;

    /* renamed from: c */
    public String f22281c;

    /* renamed from: d */
    public String f22282d;

    /* renamed from: e */
    public String f22283e;

    /* renamed from: f */
    public String f22284f;

    /* renamed from: g */
    public String f22285g;

    /* renamed from: h */
    public String f22286h;

    /* renamed from: i */
    public String f22287i;

    /* renamed from: j */
    public String f22288j;

    /* renamed from: k */
    public String f22289k;

    /* renamed from: l */
    public String f22290l;

    /* renamed from: a */
    private static final C6297jw f22254a = new C6297jw("PushMessage");

    /* renamed from: a */
    private static final C6289jo f22253a = new C6289jo("", (byte) 12, 1);

    /* renamed from: b */
    private static final C6289jo f22255b = new C6289jo("", (byte) 11, 2);

    /* renamed from: c */
    private static final C6289jo f22256c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22257d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22258e = new C6289jo("", (byte) 10, 5);

    /* renamed from: f */
    private static final C6289jo f22259f = new C6289jo("", (byte) 10, 6);

    /* renamed from: g */
    private static final C6289jo f22260g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22261h = new C6289jo("", (byte) 11, 8);

    /* renamed from: i */
    private static final C6289jo f22262i = new C6289jo("", (byte) 11, 9);

    /* renamed from: j */
    private static final C6289jo f22263j = new C6289jo("", (byte) 11, 10);

    /* renamed from: k */
    private static final C6289jo f22264k = new C6289jo("", (byte) 11, 11);

    /* renamed from: l */
    private static final C6289jo f22265l = new C6289jo("", (byte) 12, 12);

    /* renamed from: m */
    private static final C6289jo f22266m = new C6289jo("", (byte) 11, 13);

    /* renamed from: n */
    private static final C6289jo f22267n = new C6289jo("", (byte) 2, 14);

    /* renamed from: o */
    private static final C6289jo f22268o = new C6289jo("", (byte) 11, 15);

    /* renamed from: p */
    private static final C6289jo f22269p = new C6289jo("", (byte) 10, 16);

    /* renamed from: q */
    private static final C6289jo f22270q = new C6289jo("", (byte) 11, 20);

    /* renamed from: r */
    private static final C6289jo f22271r = new C6289jo("", (byte) 11, 21);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6250ih c6250ih) {
        int m1924a;
        int m1924a2;
        int m1926a;
        int m1924a3;
        int m1914a;
        int m1924a4;
        int m1925a;
        int m1924a5;
        int m1924a6;
        int m1924a7;
        int m1924a8;
        int m1924a9;
        int m1926a2;
        int m1926a3;
        int m1924a10;
        int m1924a11;
        int m1924a12;
        int m1925a2;
        if (getClass().equals(c6250ih.getClass())) {
            int compareTo = Boolean.valueOf(m2431a()).compareTo(Boolean.valueOf(c6250ih.m2431a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2431a() || (m1925a2 = C6280jh.m1925a(this.f22274a, c6250ih.f22274a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2426b()).compareTo(Boolean.valueOf(c6250ih.m2426b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2426b() || (m1924a12 = C6280jh.m1924a(this.f22275a, c6250ih.f22275a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2423c()).compareTo(Boolean.valueOf(c6250ih.m2423c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2423c() || (m1924a11 = C6280jh.m1924a(this.f22279b, c6250ih.f22279b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2421d()).compareTo(Boolean.valueOf(c6250ih.m2421d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2421d() || (m1924a10 = C6280jh.m1924a(this.f22281c, c6250ih.f22281c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2419e()).compareTo(Boolean.valueOf(c6250ih.m2419e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2419e() || (m1926a3 = C6280jh.m1926a(this.f22272a, c6250ih.f22272a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2418f()).compareTo(Boolean.valueOf(c6250ih.m2418f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2418f() || (m1926a2 = C6280jh.m1926a(this.f22278b, c6250ih.f22278b)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2417g()).compareTo(Boolean.valueOf(c6250ih.m2417g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2417g() || (m1924a9 = C6280jh.m1924a(this.f22282d, c6250ih.f22282d)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2416h()).compareTo(Boolean.valueOf(c6250ih.m2416h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2416h() || (m1924a8 = C6280jh.m1924a(this.f22283e, c6250ih.f22283e)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2415i()).compareTo(Boolean.valueOf(c6250ih.m2415i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2415i() || (m1924a7 = C6280jh.m1924a(this.f22284f, c6250ih.f22284f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2414j()).compareTo(Boolean.valueOf(c6250ih.m2414j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2414j() || (m1924a6 = C6280jh.m1924a(this.f22285g, c6250ih.f22285g)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(m2413k()).compareTo(Boolean.valueOf(c6250ih.m2413k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!m2413k() || (m1924a5 = C6280jh.m1924a(this.f22286h, c6250ih.f22286h)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(m2412l()).compareTo(Boolean.valueOf(c6250ih.m2412l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!m2412l() || (m1925a = C6280jh.m1925a(this.f22273a, c6250ih.f22273a)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m2411m()).compareTo(Boolean.valueOf(c6250ih.m2411m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m2411m() || (m1924a4 = C6280jh.m1924a(this.f22287i, c6250ih.f22287i)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(m2410n()).compareTo(Boolean.valueOf(c6250ih.m2410n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!m2410n() || (m1914a = C6280jh.m1914a(this.f22277a, c6250ih.f22277a)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(m2409o()).compareTo(Boolean.valueOf(c6250ih.m2409o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!m2409o() || (m1924a3 = C6280jh.m1924a(this.f22288j, c6250ih.f22288j)) == 0) {
                                                                        int compareTo16 = Boolean.valueOf(m2408p()).compareTo(Boolean.valueOf(c6250ih.m2408p()));
                                                                        if (compareTo16 != 0) {
                                                                            return compareTo16;
                                                                        }
                                                                        if (!m2408p() || (m1926a = C6280jh.m1926a(this.f22280c, c6250ih.f22280c)) == 0) {
                                                                            int compareTo17 = Boolean.valueOf(m2407q()).compareTo(Boolean.valueOf(c6250ih.m2407q()));
                                                                            if (compareTo17 != 0) {
                                                                                return compareTo17;
                                                                            }
                                                                            if (!m2407q() || (m1924a2 = C6280jh.m1924a(this.f22289k, c6250ih.f22289k)) == 0) {
                                                                                int compareTo18 = Boolean.valueOf(m2406r()).compareTo(Boolean.valueOf(c6250ih.m2406r()));
                                                                                if (compareTo18 != 0) {
                                                                                    return compareTo18;
                                                                                }
                                                                                if (!m2406r() || (m1924a = C6280jh.m1924a(this.f22290l, c6250ih.f22290l)) == 0) {
                                                                                    return 0;
                                                                                }
                                                                                return m1924a;
                                                                            }
                                                                            return m1924a2;
                                                                        }
                                                                        return m1926a;
                                                                    }
                                                                    return m1924a3;
                                                                }
                                                                return m1914a;
                                                            }
                                                            return m1924a4;
                                                        }
                                                        return m1925a;
                                                    }
                                                    return m1924a5;
                                                }
                                                return m1924a6;
                                            }
                                            return m1924a7;
                                        }
                                        return m1924a8;
                                    }
                                    return m1924a9;
                                }
                                return m1926a2;
                            }
                            return m1926a3;
                        }
                        return m1924a10;
                    }
                    return m1924a11;
                }
                return m1924a12;
            }
            return m1925a2;
        }
        return getClass().getName().compareTo(c6250ih.getClass().getName());
    }

    /* renamed from: a */
    public long m2434a() {
        return this.f22272a;
    }

    /* renamed from: a */
    public String m2433a() {
        return this.f22275a;
    }

    /* renamed from: a */
    public void m2432a() {
        if (this.f22275a == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22279b == null) {
            throw new C6293js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f22281c != null) {
        } else {
            throw new C6293js("Required field 'payload' was not present! Struct: " + toString());
        }
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
                m2432a();
                return;
            }
            short s = mo1900a.f22800a;
            if (s == 20) {
                if (b == 11) {
                    this.f22289k = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s != 21) {
                switch (s) {
                    case 1:
                        if (b == 12) {
                            C6253ik c6253ik = new C6253ik();
                            this.f22274a = c6253ik;
                            c6253ik.mo1931a(abstractC6292jr);
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 2:
                        if (b == 11) {
                            this.f22275a = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 3:
                        if (b == 11) {
                            this.f22279b = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 4:
                        if (b == 11) {
                            this.f22281c = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 5:
                        if (b == 10) {
                            this.f22272a = abstractC6292jr.mo1901a();
                            m2428a(true);
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 6:
                        if (b == 10) {
                            this.f22278b = abstractC6292jr.mo1901a();
                            m2425b(true);
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 7:
                        if (b == 11) {
                            this.f22282d = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 8:
                        if (b == 11) {
                            this.f22283e = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 9:
                        if (b == 11) {
                            this.f22284f = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 10:
                        if (b == 11) {
                            this.f22285g = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 11:
                        if (b == 11) {
                            this.f22286h = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 12:
                        if (b == 12) {
                            C6251ii c6251ii = new C6251ii();
                            this.f22273a = c6251ii;
                            c6251ii.mo1931a(abstractC6292jr);
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 13:
                        if (b == 11) {
                            this.f22287i = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 14:
                        if (b == 2) {
                            this.f22277a = abstractC6292jr.mo1896a();
                            m2422c(true);
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 15:
                        if (b == 11) {
                            this.f22288j = abstractC6292jr.mo1869a();
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    case 16:
                        if (b == 10) {
                            this.f22280c = abstractC6292jr.mo1901a();
                            m2420d(true);
                            break;
                        }
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                    default:
                        C6295ju.m1874a(abstractC6292jr, b);
                        break;
                }
                abstractC6292jr.mo1879g();
            } else {
                if (b == 11) {
                    this.f22290l = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            }
        }
    }

    /* renamed from: a */
    public void m2428a(boolean z) {
        this.f22276a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2431a() {
        return this.f22274a != null;
    }

    /* renamed from: a */
    public boolean m2429a(C6250ih c6250ih) {
        if (c6250ih == null) {
            return false;
        }
        boolean m2431a = m2431a();
        boolean m2431a2 = c6250ih.m2431a();
        if ((m2431a || m2431a2) && !(m2431a && m2431a2 && this.f22274a.m2356a(c6250ih.f22274a))) {
            return false;
        }
        boolean m2426b = m2426b();
        boolean m2426b2 = c6250ih.m2426b();
        if ((m2426b || m2426b2) && !(m2426b && m2426b2 && this.f22275a.equals(c6250ih.f22275a))) {
            return false;
        }
        boolean m2423c = m2423c();
        boolean m2423c2 = c6250ih.m2423c();
        if ((m2423c || m2423c2) && !(m2423c && m2423c2 && this.f22279b.equals(c6250ih.f22279b))) {
            return false;
        }
        boolean m2421d = m2421d();
        boolean m2421d2 = c6250ih.m2421d();
        if ((m2421d || m2421d2) && !(m2421d && m2421d2 && this.f22281c.equals(c6250ih.f22281c))) {
            return false;
        }
        boolean m2419e = m2419e();
        boolean m2419e2 = c6250ih.m2419e();
        if ((m2419e || m2419e2) && !(m2419e && m2419e2 && this.f22272a == c6250ih.f22272a)) {
            return false;
        }
        boolean m2418f = m2418f();
        boolean m2418f2 = c6250ih.m2418f();
        if ((m2418f || m2418f2) && !(m2418f && m2418f2 && this.f22278b == c6250ih.f22278b)) {
            return false;
        }
        boolean m2417g = m2417g();
        boolean m2417g2 = c6250ih.m2417g();
        if ((m2417g || m2417g2) && !(m2417g && m2417g2 && this.f22282d.equals(c6250ih.f22282d))) {
            return false;
        }
        boolean m2416h = m2416h();
        boolean m2416h2 = c6250ih.m2416h();
        if ((m2416h || m2416h2) && !(m2416h && m2416h2 && this.f22283e.equals(c6250ih.f22283e))) {
            return false;
        }
        boolean m2415i = m2415i();
        boolean m2415i2 = c6250ih.m2415i();
        if ((m2415i || m2415i2) && !(m2415i && m2415i2 && this.f22284f.equals(c6250ih.f22284f))) {
            return false;
        }
        boolean m2414j = m2414j();
        boolean m2414j2 = c6250ih.m2414j();
        if ((m2414j || m2414j2) && !(m2414j && m2414j2 && this.f22285g.equals(c6250ih.f22285g))) {
            return false;
        }
        boolean m2413k = m2413k();
        boolean m2413k2 = c6250ih.m2413k();
        if ((m2413k || m2413k2) && !(m2413k && m2413k2 && this.f22286h.equals(c6250ih.f22286h))) {
            return false;
        }
        boolean m2412l = m2412l();
        boolean m2412l2 = c6250ih.m2412l();
        if ((m2412l || m2412l2) && !(m2412l && m2412l2 && this.f22273a.m2396a(c6250ih.f22273a))) {
            return false;
        }
        boolean m2411m = m2411m();
        boolean m2411m2 = c6250ih.m2411m();
        if ((m2411m || m2411m2) && !(m2411m && m2411m2 && this.f22287i.equals(c6250ih.f22287i))) {
            return false;
        }
        boolean m2410n = m2410n();
        boolean m2410n2 = c6250ih.m2410n();
        if ((m2410n || m2410n2) && !(m2410n && m2410n2 && this.f22277a == c6250ih.f22277a)) {
            return false;
        }
        boolean m2409o = m2409o();
        boolean m2409o2 = c6250ih.m2409o();
        if ((m2409o || m2409o2) && !(m2409o && m2409o2 && this.f22288j.equals(c6250ih.f22288j))) {
            return false;
        }
        boolean m2408p = m2408p();
        boolean m2408p2 = c6250ih.m2408p();
        if ((m2408p || m2408p2) && !(m2408p && m2408p2 && this.f22280c == c6250ih.f22280c)) {
            return false;
        }
        boolean m2407q = m2407q();
        boolean m2407q2 = c6250ih.m2407q();
        if ((m2407q || m2407q2) && !(m2407q && m2407q2 && this.f22289k.equals(c6250ih.f22289k))) {
            return false;
        }
        boolean m2406r = m2406r();
        boolean m2406r2 = c6250ih.m2406r();
        if (m2406r || m2406r2) {
            return m2406r && m2406r2 && this.f22290l.equals(c6250ih.f22290l);
        }
        return true;
    }

    /* renamed from: b */
    public String m2427b() {
        return this.f22279b;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2432a();
        abstractC6292jr.mo1889a(f22254a);
        if (this.f22274a != null && m2431a()) {
            abstractC6292jr.mo1892a(f22253a);
            this.f22274a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22275a != null) {
            abstractC6292jr.mo1892a(f22255b);
            abstractC6292jr.mo1888a(this.f22275a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22279b != null) {
            abstractC6292jr.mo1892a(f22256c);
            abstractC6292jr.mo1888a(this.f22279b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22281c != null) {
            abstractC6292jr.mo1892a(f22257d);
            abstractC6292jr.mo1888a(this.f22281c);
            abstractC6292jr.mo1884b();
        }
        if (m2419e()) {
            abstractC6292jr.mo1892a(f22258e);
            abstractC6292jr.mo1893a(this.f22272a);
            abstractC6292jr.mo1884b();
        }
        if (m2418f()) {
            abstractC6292jr.mo1892a(f22259f);
            abstractC6292jr.mo1893a(this.f22278b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22282d != null && m2417g()) {
            abstractC6292jr.mo1892a(f22260g);
            abstractC6292jr.mo1888a(this.f22282d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22283e != null && m2416h()) {
            abstractC6292jr.mo1892a(f22261h);
            abstractC6292jr.mo1888a(this.f22283e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22284f != null && m2415i()) {
            abstractC6292jr.mo1892a(f22262i);
            abstractC6292jr.mo1888a(this.f22284f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22285g != null && m2414j()) {
            abstractC6292jr.mo1892a(f22263j);
            abstractC6292jr.mo1888a(this.f22285g);
            abstractC6292jr.mo1884b();
        }
        if (this.f22286h != null && m2413k()) {
            abstractC6292jr.mo1892a(f22264k);
            abstractC6292jr.mo1888a(this.f22286h);
            abstractC6292jr.mo1884b();
        }
        if (this.f22273a != null && m2412l()) {
            abstractC6292jr.mo1892a(f22265l);
            this.f22273a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22287i != null && m2411m()) {
            abstractC6292jr.mo1892a(f22266m);
            abstractC6292jr.mo1888a(this.f22287i);
            abstractC6292jr.mo1884b();
        }
        if (m2410n()) {
            abstractC6292jr.mo1892a(f22267n);
            abstractC6292jr.mo1885a(this.f22277a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22288j != null && m2409o()) {
            abstractC6292jr.mo1892a(f22268o);
            abstractC6292jr.mo1888a(this.f22288j);
            abstractC6292jr.mo1884b();
        }
        if (m2408p()) {
            abstractC6292jr.mo1892a(f22269p);
            abstractC6292jr.mo1893a(this.f22280c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22289k != null && m2407q()) {
            abstractC6292jr.mo1892a(f22270q);
            abstractC6292jr.mo1888a(this.f22289k);
            abstractC6292jr.mo1884b();
        }
        if (this.f22290l != null && m2406r()) {
            abstractC6292jr.mo1892a(f22271r);
            abstractC6292jr.mo1888a(this.f22290l);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2425b(boolean z) {
        this.f22276a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2426b() {
        return this.f22275a != null;
    }

    /* renamed from: c */
    public String m2424c() {
        return this.f22281c;
    }

    /* renamed from: c */
    public void m2422c(boolean z) {
        this.f22276a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2423c() {
        return this.f22279b != null;
    }

    /* renamed from: d */
    public void m2420d(boolean z) {
        this.f22276a.set(3, z);
    }

    /* renamed from: d */
    public boolean m2421d() {
        return this.f22281c != null;
    }

    /* renamed from: e */
    public boolean m2419e() {
        return this.f22276a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6250ih)) {
            return m2429a((C6250ih) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2418f() {
        return this.f22276a.get(1);
    }

    /* renamed from: g */
    public boolean m2417g() {
        return this.f22282d != null;
    }

    /* renamed from: h */
    public boolean m2416h() {
        return this.f22283e != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2415i() {
        return this.f22284f != null;
    }

    /* renamed from: j */
    public boolean m2414j() {
        return this.f22285g != null;
    }

    /* renamed from: k */
    public boolean m2413k() {
        return this.f22286h != null;
    }

    /* renamed from: l */
    public boolean m2412l() {
        return this.f22273a != null;
    }

    /* renamed from: m */
    public boolean m2411m() {
        return this.f22287i != null;
    }

    /* renamed from: n */
    public boolean m2410n() {
        return this.f22276a.get(2);
    }

    /* renamed from: o */
    public boolean m2409o() {
        return this.f22288j != null;
    }

    /* renamed from: p */
    public boolean m2408p() {
        return this.f22276a.get(3);
    }

    /* renamed from: q */
    public boolean m2407q() {
        return this.f22289k != null;
    }

    /* renamed from: r */
    public boolean m2406r() {
        return this.f22290l != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("PushMessage(");
        if (m2431a()) {
            sb.append("to:");
            C6253ik c6253ik = this.f22274a;
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
        String str = this.f22275a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("appId:");
        String str2 = this.f22279b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("payload:");
        String str3 = this.f22281c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (m2419e()) {
            sb.append(", ");
            sb.append("createAt:");
            sb.append(this.f22272a);
        }
        if (m2418f()) {
            sb.append(", ");
            sb.append("ttl:");
            sb.append(this.f22278b);
        }
        if (m2417g()) {
            sb.append(", ");
            sb.append("collapseKey:");
            String str4 = this.f22282d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2416h()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f22283e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2415i()) {
            sb.append(", ");
            sb.append("regId:");
            String str6 = this.f22284f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2414j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22285g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (m2413k()) {
            sb.append(", ");
            sb.append("topic:");
            String str8 = this.f22286h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (m2412l()) {
            sb.append(", ");
            sb.append("metaInfo:");
            C6251ii c6251ii = this.f22273a;
            if (c6251ii == null) {
                sb.append("null");
            } else {
                sb.append(c6251ii);
            }
        }
        if (m2411m()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str9 = this.f22287i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (m2410n()) {
            sb.append(", ");
            sb.append("isOnline:");
            sb.append(this.f22277a);
        }
        if (m2409o()) {
            sb.append(", ");
            sb.append("userAccount:");
            String str10 = this.f22288j;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
        }
        if (m2408p()) {
            sb.append(", ");
            sb.append("miid:");
            sb.append(this.f22280c);
        }
        if (m2407q()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            String str11 = this.f22289k;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
        }
        if (m2406r()) {
            sb.append(", ");
            sb.append("deviceId:");
            String str12 = this.f22290l;
            if (str12 == null) {
                sb.append("null");
            } else {
                sb.append(str12);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
