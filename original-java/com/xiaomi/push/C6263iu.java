package com.xiaomi.push;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.iu */
/* loaded from: classes2.dex */
public class C6263iu implements InterfaceC6279jg<C6263iu, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22495a;

    /* renamed from: a */
    public C6253ik f22496a;

    /* renamed from: a */
    public String f22497a;

    /* renamed from: a */
    public ByteBuffer f22498a;

    /* renamed from: a */
    private BitSet f22499a;

    /* renamed from: a */
    public Map<String, String> f22500a;

    /* renamed from: a */
    public boolean f22501a;

    /* renamed from: b */
    public String f22502b;

    /* renamed from: b */
    public boolean f22503b;

    /* renamed from: c */
    public String f22504c;

    /* renamed from: d */
    public String f22505d;

    /* renamed from: e */
    public String f22506e;

    /* renamed from: f */
    public String f22507f;

    /* renamed from: g */
    public String f22508g;

    /* renamed from: h */
    public String f22509h;

    /* renamed from: i */
    public String f22510i;

    /* renamed from: a */
    private static final C6297jw f22480a = new C6297jw("XmPushActionNotification");

    /* renamed from: a */
    private static final C6289jo f22479a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22481b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22482c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22483d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22484e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22485f = new C6289jo("", (byte) 2, 6);

    /* renamed from: g */
    private static final C6289jo f22486g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22487h = new C6289jo("", (byte) 13, 8);

    /* renamed from: i */
    private static final C6289jo f22488i = new C6289jo("", (byte) 11, 9);

    /* renamed from: j */
    private static final C6289jo f22489j = new C6289jo("", (byte) 11, 10);

    /* renamed from: k */
    private static final C6289jo f22490k = new C6289jo("", (byte) 11, 12);

    /* renamed from: l */
    private static final C6289jo f22491l = new C6289jo("", (byte) 11, 13);

    /* renamed from: m */
    private static final C6289jo f22492m = new C6289jo("", (byte) 11, 14);

    /* renamed from: n */
    private static final C6289jo f22493n = new C6289jo("", (byte) 10, 15);

    /* renamed from: o */
    private static final C6289jo f22494o = new C6289jo("", (byte) 2, 20);

    public C6263iu() {
        this.f22499a = new BitSet(3);
        this.f22501a = true;
        this.f22503b = false;
    }

    public C6263iu(String str, boolean z) {
        this();
        this.f22502b = str;
        this.f22501a = z;
        m2184a(true);
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6263iu c6263iu) {
        int m1914a;
        int m1926a;
        int m1925a;
        int m1924a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1917a;
        int m1924a5;
        int m1914a2;
        int m1924a6;
        int m1924a7;
        int m1924a8;
        int m1925a2;
        int m1924a9;
        if (getClass().equals(c6263iu.getClass())) {
            int compareTo = Boolean.valueOf(m2193a()).compareTo(Boolean.valueOf(c6263iu.m2193a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2193a() || (m1924a9 = C6280jh.m1924a(this.f22497a, c6263iu.f22497a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2181b()).compareTo(Boolean.valueOf(c6263iu.m2181b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2181b() || (m1925a2 = C6280jh.m1925a(this.f22496a, c6263iu.f22496a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2177c()).compareTo(Boolean.valueOf(c6263iu.m2177c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2177c() || (m1924a8 = C6280jh.m1924a(this.f22502b, c6263iu.f22502b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2174d()).compareTo(Boolean.valueOf(c6263iu.m2174d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2174d() || (m1924a7 = C6280jh.m1924a(this.f22504c, c6263iu.f22504c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2172e()).compareTo(Boolean.valueOf(c6263iu.m2172e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2172e() || (m1924a6 = C6280jh.m1924a(this.f22505d, c6263iu.f22505d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2171f()).compareTo(Boolean.valueOf(c6263iu.m2171f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2171f() || (m1914a2 = C6280jh.m1914a(this.f22501a, c6263iu.f22501a)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2170g()).compareTo(Boolean.valueOf(c6263iu.m2170g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2170g() || (m1924a5 = C6280jh.m1924a(this.f22506e, c6263iu.f22506e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2169h()).compareTo(Boolean.valueOf(c6263iu.m2169h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2169h() || (m1917a = C6280jh.m1917a(this.f22500a, c6263iu.f22500a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2168i()).compareTo(Boolean.valueOf(c6263iu.m2168i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2168i() || (m1924a4 = C6280jh.m1924a(this.f22507f, c6263iu.f22507f)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2167j()).compareTo(Boolean.valueOf(c6263iu.m2167j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2167j() || (m1924a3 = C6280jh.m1924a(this.f22508g, c6263iu.f22508g)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(m2166k()).compareTo(Boolean.valueOf(c6263iu.m2166k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!m2166k() || (m1924a2 = C6280jh.m1924a(this.f22509h, c6263iu.f22509h)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(m2165l()).compareTo(Boolean.valueOf(c6263iu.m2165l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!m2165l() || (m1924a = C6280jh.m1924a(this.f22510i, c6263iu.f22510i)) == 0) {
                                                            int compareTo13 = Boolean.valueOf(m2164m()).compareTo(Boolean.valueOf(c6263iu.m2164m()));
                                                            if (compareTo13 != 0) {
                                                                return compareTo13;
                                                            }
                                                            if (!m2164m() || (m1925a = C6280jh.m1925a(this.f22498a, c6263iu.f22498a)) == 0) {
                                                                int compareTo14 = Boolean.valueOf(m2163n()).compareTo(Boolean.valueOf(c6263iu.m2163n()));
                                                                if (compareTo14 != 0) {
                                                                    return compareTo14;
                                                                }
                                                                if (!m2163n() || (m1926a = C6280jh.m1926a(this.f22495a, c6263iu.f22495a)) == 0) {
                                                                    int compareTo15 = Boolean.valueOf(m2162o()).compareTo(Boolean.valueOf(c6263iu.m2162o()));
                                                                    if (compareTo15 != 0) {
                                                                        return compareTo15;
                                                                    }
                                                                    if (!m2162o() || (m1914a = C6280jh.m1914a(this.f22503b, c6263iu.f22503b)) == 0) {
                                                                        return 0;
                                                                    }
                                                                    return m1914a;
                                                                }
                                                                return m1926a;
                                                            }
                                                            return m1925a;
                                                        }
                                                        return m1924a;
                                                    }
                                                    return m1924a2;
                                                }
                                                return m1924a3;
                                            }
                                            return m1924a4;
                                        }
                                        return m1917a;
                                    }
                                    return m1924a5;
                                }
                                return m1914a2;
                            }
                            return m1924a6;
                        }
                        return m1924a7;
                    }
                    return m1924a8;
                }
                return m1925a2;
            }
            return m1924a9;
        }
        return getClass().getName().compareTo(c6263iu.getClass().getName());
    }

    /* renamed from: a */
    public C6253ik m2197a() {
        return this.f22496a;
    }

    /* renamed from: a */
    public C6263iu m2189a(String str) {
        this.f22502b = str;
        return this;
    }

    /* renamed from: a */
    public C6263iu m2187a(ByteBuffer byteBuffer) {
        this.f22498a = byteBuffer;
        return this;
    }

    /* renamed from: a */
    public C6263iu m2186a(Map<String, String> map) {
        this.f22500a = map;
        return this;
    }

    /* renamed from: a */
    public C6263iu m2185a(boolean z) {
        this.f22501a = z;
        m2184a(true);
        return this;
    }

    /* renamed from: a */
    public C6263iu m2183a(byte[] bArr) {
        m2187a(ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a */
    public String m2196a() {
        return this.f22502b;
    }

    /* renamed from: a */
    public Map<String, String> m2195a() {
        return this.f22500a;
    }

    /* renamed from: a */
    public void m2194a() {
        if (this.f22502b != null) {
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
                if (m2171f()) {
                    m2194a();
                    return;
                }
                throw new C6293js("Required field 'requireAck' was not found in serialized data! Struct: " + toString());
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22497a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22496a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22502b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22504c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22505d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 2) {
                        this.f22501a = abstractC6292jr.mo1896a();
                        m2184a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22506e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 13) {
                        C6291jq mo1871a = abstractC6292jr.mo1871a();
                        this.f22500a = new HashMap(mo1871a.f22804a * 2);
                        for (int i = 0; i < mo1871a.f22804a; i++) {
                            this.f22500a.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1878h();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22507f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 11) {
                        this.f22508g = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 12:
                    if (b == 11) {
                        this.f22509h = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 13:
                    if (b == 11) {
                        this.f22510i = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 14:
                    if (b == 11) {
                        this.f22498a = abstractC6292jr.mo1868a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 15:
                    if (b == 10) {
                        this.f22495a = abstractC6292jr.mo1901a();
                        m2179b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 20:
                    if (b == 2) {
                        this.f22503b = abstractC6292jr.mo1896a();
                        m2175c(true);
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
    public void m2188a(String str, String str2) {
        if (this.f22500a == null) {
            this.f22500a = new HashMap();
        }
        this.f22500a.put(str, str2);
    }

    /* renamed from: a */
    public void m2184a(boolean z) {
        this.f22499a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2193a() {
        return this.f22497a != null;
    }

    /* renamed from: a */
    public boolean m2190a(C6263iu c6263iu) {
        if (c6263iu == null) {
            return false;
        }
        boolean m2193a = m2193a();
        boolean m2193a2 = c6263iu.m2193a();
        if ((m2193a || m2193a2) && !(m2193a && m2193a2 && this.f22497a.equals(c6263iu.f22497a))) {
            return false;
        }
        boolean m2181b = m2181b();
        boolean m2181b2 = c6263iu.m2181b();
        if ((m2181b || m2181b2) && !(m2181b && m2181b2 && this.f22496a.m2356a(c6263iu.f22496a))) {
            return false;
        }
        boolean m2177c = m2177c();
        boolean m2177c2 = c6263iu.m2177c();
        if ((m2177c || m2177c2) && !(m2177c && m2177c2 && this.f22502b.equals(c6263iu.f22502b))) {
            return false;
        }
        boolean m2174d = m2174d();
        boolean m2174d2 = c6263iu.m2174d();
        if ((m2174d || m2174d2) && !(m2174d && m2174d2 && this.f22504c.equals(c6263iu.f22504c))) {
            return false;
        }
        boolean m2172e = m2172e();
        boolean m2172e2 = c6263iu.m2172e();
        if (((m2172e || m2172e2) && !(m2172e && m2172e2 && this.f22505d.equals(c6263iu.f22505d))) || this.f22501a != c6263iu.f22501a) {
            return false;
        }
        boolean m2170g = m2170g();
        boolean m2170g2 = c6263iu.m2170g();
        if ((m2170g || m2170g2) && !(m2170g && m2170g2 && this.f22506e.equals(c6263iu.f22506e))) {
            return false;
        }
        boolean m2169h = m2169h();
        boolean m2169h2 = c6263iu.m2169h();
        if ((m2169h || m2169h2) && !(m2169h && m2169h2 && this.f22500a.equals(c6263iu.f22500a))) {
            return false;
        }
        boolean m2168i = m2168i();
        boolean m2168i2 = c6263iu.m2168i();
        if ((m2168i || m2168i2) && !(m2168i && m2168i2 && this.f22507f.equals(c6263iu.f22507f))) {
            return false;
        }
        boolean m2167j = m2167j();
        boolean m2167j2 = c6263iu.m2167j();
        if ((m2167j || m2167j2) && !(m2167j && m2167j2 && this.f22508g.equals(c6263iu.f22508g))) {
            return false;
        }
        boolean m2166k = m2166k();
        boolean m2166k2 = c6263iu.m2166k();
        if ((m2166k || m2166k2) && !(m2166k && m2166k2 && this.f22509h.equals(c6263iu.f22509h))) {
            return false;
        }
        boolean m2165l = m2165l();
        boolean m2165l2 = c6263iu.m2165l();
        if ((m2165l || m2165l2) && !(m2165l && m2165l2 && this.f22510i.equals(c6263iu.f22510i))) {
            return false;
        }
        boolean m2164m = m2164m();
        boolean m2164m2 = c6263iu.m2164m();
        if ((m2164m || m2164m2) && !(m2164m && m2164m2 && this.f22498a.equals(c6263iu.f22498a))) {
            return false;
        }
        boolean m2163n = m2163n();
        boolean m2163n2 = c6263iu.m2163n();
        if ((m2163n || m2163n2) && !(m2163n && m2163n2 && this.f22495a == c6263iu.f22495a)) {
            return false;
        }
        boolean m2162o = m2162o();
        boolean m2162o2 = c6263iu.m2162o();
        if (m2162o || m2162o2) {
            return m2162o && m2162o2 && this.f22503b == c6263iu.f22503b;
        }
        return true;
    }

    /* renamed from: a */
    public byte[] m2192a() {
        m2187a(C6280jh.m1923a(this.f22498a));
        return this.f22498a.array();
    }

    /* renamed from: b */
    public C6263iu m2180b(String str) {
        this.f22504c = str;
        return this;
    }

    /* renamed from: b */
    public String m2182b() {
        return this.f22504c;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2194a();
        abstractC6292jr.mo1889a(f22480a);
        if (this.f22497a != null && m2193a()) {
            abstractC6292jr.mo1892a(f22479a);
            abstractC6292jr.mo1888a(this.f22497a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22496a != null && m2181b()) {
            abstractC6292jr.mo1892a(f22481b);
            this.f22496a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22502b != null) {
            abstractC6292jr.mo1892a(f22482c);
            abstractC6292jr.mo1888a(this.f22502b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22504c != null && m2174d()) {
            abstractC6292jr.mo1892a(f22483d);
            abstractC6292jr.mo1888a(this.f22504c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22505d != null && m2172e()) {
            abstractC6292jr.mo1892a(f22484e);
            abstractC6292jr.mo1888a(this.f22505d);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22485f);
        abstractC6292jr.mo1885a(this.f22501a);
        abstractC6292jr.mo1884b();
        if (this.f22506e != null && m2170g()) {
            abstractC6292jr.mo1892a(f22486g);
            abstractC6292jr.mo1888a(this.f22506e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22500a != null && m2169h()) {
            abstractC6292jr.mo1892a(f22487h);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22500a.size()));
            for (Map.Entry<String, String> entry : this.f22500a.entrySet()) {
                abstractC6292jr.mo1888a(entry.getKey());
                abstractC6292jr.mo1888a(entry.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        if (this.f22507f != null && m2168i()) {
            abstractC6292jr.mo1892a(f22488i);
            abstractC6292jr.mo1888a(this.f22507f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22508g != null && m2167j()) {
            abstractC6292jr.mo1892a(f22489j);
            abstractC6292jr.mo1888a(this.f22508g);
            abstractC6292jr.mo1884b();
        }
        if (this.f22509h != null && m2166k()) {
            abstractC6292jr.mo1892a(f22490k);
            abstractC6292jr.mo1888a(this.f22509h);
            abstractC6292jr.mo1884b();
        }
        if (this.f22510i != null && m2165l()) {
            abstractC6292jr.mo1892a(f22491l);
            abstractC6292jr.mo1888a(this.f22510i);
            abstractC6292jr.mo1884b();
        }
        if (this.f22498a != null && m2164m()) {
            abstractC6292jr.mo1892a(f22492m);
            abstractC6292jr.mo1887a(this.f22498a);
            abstractC6292jr.mo1884b();
        }
        if (m2163n()) {
            abstractC6292jr.mo1892a(f22493n);
            abstractC6292jr.mo1893a(this.f22495a);
            abstractC6292jr.mo1884b();
        }
        if (m2162o()) {
            abstractC6292jr.mo1892a(f22494o);
            abstractC6292jr.mo1885a(this.f22503b);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2179b(boolean z) {
        this.f22499a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2181b() {
        return this.f22496a != null;
    }

    /* renamed from: c */
    public C6263iu m2176c(String str) {
        this.f22505d = str;
        return this;
    }

    /* renamed from: c */
    public String m2178c() {
        return this.f22507f;
    }

    /* renamed from: c */
    public void m2175c(boolean z) {
        this.f22499a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2177c() {
        return this.f22502b != null;
    }

    /* renamed from: d */
    public C6263iu m2173d(String str) {
        this.f22507f = str;
        return this;
    }

    /* renamed from: d */
    public boolean m2174d() {
        return this.f22504c != null;
    }

    /* renamed from: e */
    public boolean m2172e() {
        return this.f22505d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6263iu)) {
            return m2190a((C6263iu) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2171f() {
        return this.f22499a.get(0);
    }

    /* renamed from: g */
    public boolean m2170g() {
        return this.f22506e != null;
    }

    /* renamed from: h */
    public boolean m2169h() {
        return this.f22500a != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2168i() {
        return this.f22507f != null;
    }

    /* renamed from: j */
    public boolean m2167j() {
        return this.f22508g != null;
    }

    /* renamed from: k */
    public boolean m2166k() {
        return this.f22509h != null;
    }

    /* renamed from: l */
    public boolean m2165l() {
        return this.f22510i != null;
    }

    /* renamed from: m */
    public boolean m2164m() {
        return this.f22498a != null;
    }

    /* renamed from: n */
    public boolean m2163n() {
        return this.f22499a.get(1);
    }

    /* renamed from: o */
    public boolean m2162o() {
        return this.f22499a.get(2);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionNotification(");
        boolean z2 = false;
        if (m2193a()) {
            sb.append("debug:");
            String str = this.f22497a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2181b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22496a;
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
        String str2 = this.f22502b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (m2174d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f22504c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m2172e()) {
            sb.append(", ");
            sb.append("type:");
            String str4 = this.f22505d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(", ");
        sb.append("requireAck:");
        sb.append(this.f22501a);
        if (m2170g()) {
            sb.append(", ");
            sb.append("payload:");
            String str5 = this.f22506e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2169h()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f22500a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (m2168i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f22507f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2167j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22508g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (m2166k()) {
            sb.append(", ");
            sb.append("regId:");
            String str8 = this.f22509h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (m2165l()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str9 = this.f22510i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (m2164m()) {
            sb.append(", ");
            sb.append("binaryExtra:");
            ByteBuffer byteBuffer = this.f22498a;
            if (byteBuffer == null) {
                sb.append("null");
            } else {
                C6280jh.m1920a(byteBuffer, sb);
            }
        }
        if (m2163n()) {
            sb.append(", ");
            sb.append("createdTs:");
            sb.append(this.f22495a);
        }
        if (m2162o()) {
            sb.append(", ");
            sb.append("alreadyLogClickInXmq:");
            sb.append(this.f22503b);
        }
        sb.append(")");
        return sb.toString();
    }
}
