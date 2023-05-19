package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.xiaomi.push.iy */
/* loaded from: classes2.dex */
public class C6267iy implements InterfaceC6279jg<C6267iy, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public C6250ih f22638a;

    /* renamed from: a */
    public C6253ik f22639a;

    /* renamed from: a */
    public String f22640a;

    /* renamed from: a */
    public Map<String, String> f22642a;

    /* renamed from: b */
    public String f22644b;

    /* renamed from: c */
    public String f22645c;

    /* renamed from: d */
    public String f22646d;

    /* renamed from: e */
    public String f22647e;

    /* renamed from: f */
    public String f22648f;

    /* renamed from: g */
    public String f22649g;

    /* renamed from: h */
    public String f22650h;

    /* renamed from: a */
    private static final C6297jw f22626a = new C6297jw("XmPushActionSendMessage");

    /* renamed from: a */
    private static final C6289jo f22625a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22627b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22628c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22629d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22630e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22631f = new C6289jo("", (byte) 11, 6);

    /* renamed from: g */
    private static final C6289jo f22632g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f22633h = new C6289jo("", (byte) 12, 8);

    /* renamed from: i */
    private static final C6289jo f22634i = new C6289jo("", (byte) 2, 9);

    /* renamed from: j */
    private static final C6289jo f22635j = new C6289jo("", (byte) 13, 10);

    /* renamed from: k */
    private static final C6289jo f22636k = new C6289jo("", (byte) 11, 11);

    /* renamed from: l */
    private static final C6289jo f22637l = new C6289jo("", (byte) 11, 12);

    /* renamed from: a */
    private BitSet f22641a = new BitSet(1);

    /* renamed from: a */
    public boolean f22643a = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6267iy c6267iy) {
        int m1924a;
        int m1924a2;
        int m1917a;
        int m1914a;
        int m1925a;
        int m1924a3;
        int m1924a4;
        int m1924a5;
        int m1924a6;
        int m1924a7;
        int m1925a2;
        int m1924a8;
        if (getClass().equals(c6267iy.getClass())) {
            int compareTo = Boolean.valueOf(m2061a()).compareTo(Boolean.valueOf(c6267iy.m2061a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2061a() || (m1924a8 = C6280jh.m1924a(this.f22640a, c6267iy.f22640a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2056b()).compareTo(Boolean.valueOf(c6267iy.m2056b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2056b() || (m1925a2 = C6280jh.m1925a(this.f22639a, c6267iy.f22639a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2054c()).compareTo(Boolean.valueOf(c6267iy.m2054c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2054c() || (m1924a7 = C6280jh.m1924a(this.f22644b, c6267iy.f22644b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2052d()).compareTo(Boolean.valueOf(c6267iy.m2052d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2052d() || (m1924a6 = C6280jh.m1924a(this.f22645c, c6267iy.f22645c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2050e()).compareTo(Boolean.valueOf(c6267iy.m2050e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2050e() || (m1924a5 = C6280jh.m1924a(this.f22646d, c6267iy.f22646d)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2048f()).compareTo(Boolean.valueOf(c6267iy.m2048f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2048f() || (m1924a4 = C6280jh.m1924a(this.f22647e, c6267iy.f22647e)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2047g()).compareTo(Boolean.valueOf(c6267iy.m2047g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2047g() || (m1924a3 = C6280jh.m1924a(this.f22648f, c6267iy.f22648f)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2046h()).compareTo(Boolean.valueOf(c6267iy.m2046h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2046h() || (m1925a = C6280jh.m1925a(this.f22638a, c6267iy.f22638a)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2045i()).compareTo(Boolean.valueOf(c6267iy.m2045i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2045i() || (m1914a = C6280jh.m1914a(this.f22643a, c6267iy.f22643a)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2044j()).compareTo(Boolean.valueOf(c6267iy.m2044j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2044j() || (m1917a = C6280jh.m1917a(this.f22642a, c6267iy.f22642a)) == 0) {
                                                    int compareTo11 = Boolean.valueOf(m2043k()).compareTo(Boolean.valueOf(c6267iy.m2043k()));
                                                    if (compareTo11 != 0) {
                                                        return compareTo11;
                                                    }
                                                    if (!m2043k() || (m1924a2 = C6280jh.m1924a(this.f22649g, c6267iy.f22649g)) == 0) {
                                                        int compareTo12 = Boolean.valueOf(m2042l()).compareTo(Boolean.valueOf(c6267iy.m2042l()));
                                                        if (compareTo12 != 0) {
                                                            return compareTo12;
                                                        }
                                                        if (!m2042l() || (m1924a = C6280jh.m1924a(this.f22650h, c6267iy.f22650h)) == 0) {
                                                            return 0;
                                                        }
                                                        return m1924a;
                                                    }
                                                    return m1924a2;
                                                }
                                                return m1917a;
                                            }
                                            return m1914a;
                                        }
                                        return m1925a;
                                    }
                                    return m1924a3;
                                }
                                return m1924a4;
                            }
                            return m1924a5;
                        }
                        return m1924a6;
                    }
                    return m1924a7;
                }
                return m1925a2;
            }
            return m1924a8;
        }
        return getClass().getName().compareTo(c6267iy.getClass().getName());
    }

    /* renamed from: a */
    public C6250ih m2064a() {
        return this.f22638a;
    }

    /* renamed from: a */
    public String m2063a() {
        return this.f22644b;
    }

    /* renamed from: a */
    public void m2062a() {
        if (this.f22644b == null) {
            throw new C6293js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f22645c != null) {
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
                m2062a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22640a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22639a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22644b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22645c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22646d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 11) {
                        this.f22647e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22648f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 12) {
                        C6250ih c6250ih = new C6250ih();
                        this.f22638a = c6250ih;
                        c6250ih.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 2) {
                        this.f22643a = abstractC6292jr.mo1896a();
                        m2058a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 13) {
                        C6291jq mo1871a = abstractC6292jr.mo1871a();
                        this.f22642a = new HashMap(mo1871a.f22804a * 2);
                        for (int i = 0; i < mo1871a.f22804a; i++) {
                            this.f22642a.put(abstractC6292jr.mo1869a(), abstractC6292jr.mo1869a());
                        }
                        abstractC6292jr.mo1878h();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 11:
                    if (b == 11) {
                        this.f22649g = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 12:
                    if (b == 11) {
                        this.f22650h = abstractC6292jr.mo1869a();
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
    public void m2058a(boolean z) {
        this.f22641a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2061a() {
        return this.f22640a != null;
    }

    /* renamed from: a */
    public boolean m2059a(C6267iy c6267iy) {
        if (c6267iy == null) {
            return false;
        }
        boolean m2061a = m2061a();
        boolean m2061a2 = c6267iy.m2061a();
        if ((m2061a || m2061a2) && !(m2061a && m2061a2 && this.f22640a.equals(c6267iy.f22640a))) {
            return false;
        }
        boolean m2056b = m2056b();
        boolean m2056b2 = c6267iy.m2056b();
        if ((m2056b || m2056b2) && !(m2056b && m2056b2 && this.f22639a.m2356a(c6267iy.f22639a))) {
            return false;
        }
        boolean m2054c = m2054c();
        boolean m2054c2 = c6267iy.m2054c();
        if ((m2054c || m2054c2) && !(m2054c && m2054c2 && this.f22644b.equals(c6267iy.f22644b))) {
            return false;
        }
        boolean m2052d = m2052d();
        boolean m2052d2 = c6267iy.m2052d();
        if ((m2052d || m2052d2) && !(m2052d && m2052d2 && this.f22645c.equals(c6267iy.f22645c))) {
            return false;
        }
        boolean m2050e = m2050e();
        boolean m2050e2 = c6267iy.m2050e();
        if ((m2050e || m2050e2) && !(m2050e && m2050e2 && this.f22646d.equals(c6267iy.f22646d))) {
            return false;
        }
        boolean m2048f = m2048f();
        boolean m2048f2 = c6267iy.m2048f();
        if ((m2048f || m2048f2) && !(m2048f && m2048f2 && this.f22647e.equals(c6267iy.f22647e))) {
            return false;
        }
        boolean m2047g = m2047g();
        boolean m2047g2 = c6267iy.m2047g();
        if ((m2047g || m2047g2) && !(m2047g && m2047g2 && this.f22648f.equals(c6267iy.f22648f))) {
            return false;
        }
        boolean m2046h = m2046h();
        boolean m2046h2 = c6267iy.m2046h();
        if ((m2046h || m2046h2) && !(m2046h && m2046h2 && this.f22638a.m2429a(c6267iy.f22638a))) {
            return false;
        }
        boolean m2045i = m2045i();
        boolean m2045i2 = c6267iy.m2045i();
        if ((m2045i || m2045i2) && !(m2045i && m2045i2 && this.f22643a == c6267iy.f22643a)) {
            return false;
        }
        boolean m2044j = m2044j();
        boolean m2044j2 = c6267iy.m2044j();
        if ((m2044j || m2044j2) && !(m2044j && m2044j2 && this.f22642a.equals(c6267iy.f22642a))) {
            return false;
        }
        boolean m2043k = m2043k();
        boolean m2043k2 = c6267iy.m2043k();
        if ((m2043k || m2043k2) && !(m2043k && m2043k2 && this.f22649g.equals(c6267iy.f22649g))) {
            return false;
        }
        boolean m2042l = m2042l();
        boolean m2042l2 = c6267iy.m2042l();
        if (m2042l || m2042l2) {
            return m2042l && m2042l2 && this.f22650h.equals(c6267iy.f22650h);
        }
        return true;
    }

    /* renamed from: b */
    public String m2057b() {
        return this.f22645c;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2062a();
        abstractC6292jr.mo1889a(f22626a);
        if (this.f22640a != null && m2061a()) {
            abstractC6292jr.mo1892a(f22625a);
            abstractC6292jr.mo1888a(this.f22640a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22639a != null && m2056b()) {
            abstractC6292jr.mo1892a(f22627b);
            this.f22639a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22644b != null) {
            abstractC6292jr.mo1892a(f22628c);
            abstractC6292jr.mo1888a(this.f22644b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22645c != null) {
            abstractC6292jr.mo1892a(f22629d);
            abstractC6292jr.mo1888a(this.f22645c);
            abstractC6292jr.mo1884b();
        }
        if (this.f22646d != null && m2050e()) {
            abstractC6292jr.mo1892a(f22630e);
            abstractC6292jr.mo1888a(this.f22646d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22647e != null && m2048f()) {
            abstractC6292jr.mo1892a(f22631f);
            abstractC6292jr.mo1888a(this.f22647e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22648f != null && m2047g()) {
            abstractC6292jr.mo1892a(f22632g);
            abstractC6292jr.mo1888a(this.f22648f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22638a != null && m2046h()) {
            abstractC6292jr.mo1892a(f22633h);
            this.f22638a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (m2045i()) {
            abstractC6292jr.mo1892a(f22634i);
            abstractC6292jr.mo1885a(this.f22643a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22642a != null && m2044j()) {
            abstractC6292jr.mo1892a(f22635j);
            abstractC6292jr.mo1890a(new C6291jq((byte) 11, (byte) 11, this.f22642a.size()));
            for (Map.Entry<String, String> entry : this.f22642a.entrySet()) {
                abstractC6292jr.mo1888a(entry.getKey());
                abstractC6292jr.mo1888a(entry.getValue());
            }
            abstractC6292jr.mo1882d();
            abstractC6292jr.mo1884b();
        }
        if (this.f22649g != null && m2043k()) {
            abstractC6292jr.mo1892a(f22636k);
            abstractC6292jr.mo1888a(this.f22649g);
            abstractC6292jr.mo1884b();
        }
        if (this.f22650h != null && m2042l()) {
            abstractC6292jr.mo1892a(f22637l);
            abstractC6292jr.mo1888a(this.f22650h);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2056b() {
        return this.f22639a != null;
    }

    /* renamed from: c */
    public String m2055c() {
        return this.f22647e;
    }

    /* renamed from: c */
    public boolean m2054c() {
        return this.f22644b != null;
    }

    /* renamed from: d */
    public String m2053d() {
        return this.f22648f;
    }

    /* renamed from: d */
    public boolean m2052d() {
        return this.f22645c != null;
    }

    /* renamed from: e */
    public String m2051e() {
        return this.f22649g;
    }

    /* renamed from: e */
    public boolean m2050e() {
        return this.f22646d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6267iy)) {
            return m2059a((C6267iy) obj);
        }
        return false;
    }

    /* renamed from: f */
    public String m2049f() {
        return this.f22650h;
    }

    /* renamed from: f */
    public boolean m2048f() {
        return this.f22647e != null;
    }

    /* renamed from: g */
    public boolean m2047g() {
        return this.f22648f != null;
    }

    /* renamed from: h */
    public boolean m2046h() {
        return this.f22638a != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2045i() {
        return this.f22641a.get(0);
    }

    /* renamed from: j */
    public boolean m2044j() {
        return this.f22642a != null;
    }

    /* renamed from: k */
    public boolean m2043k() {
        return this.f22649g != null;
    }

    /* renamed from: l */
    public boolean m2042l() {
        return this.f22650h != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSendMessage(");
        boolean z2 = false;
        if (m2061a()) {
            sb.append("debug:");
            String str = this.f22640a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2056b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22639a;
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
        String str2 = this.f22644b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f22645c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (m2050e()) {
            sb.append(", ");
            sb.append("packageName:");
            String str4 = this.f22646d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2048f()) {
            sb.append(", ");
            sb.append("topic:");
            String str5 = this.f22647e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2047g()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str6 = this.f22648f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2046h()) {
            sb.append(", ");
            sb.append("message:");
            C6250ih c6250ih = this.f22638a;
            if (c6250ih == null) {
                sb.append("null");
            } else {
                sb.append(c6250ih);
            }
        }
        if (m2045i()) {
            sb.append(", ");
            sb.append("needAck:");
            sb.append(this.f22643a);
        }
        if (m2044j()) {
            sb.append(", ");
            sb.append("params:");
            Map<String, String> map = this.f22642a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (m2043k()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22649g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (m2042l()) {
            sb.append(", ");
            sb.append("userAccount:");
            String str8 = this.f22650h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
