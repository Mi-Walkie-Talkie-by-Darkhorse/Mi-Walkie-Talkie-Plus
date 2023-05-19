package com.xiaomi.push;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.ir */
/* loaded from: classes2.dex */
public class C6260ir implements InterfaceC6279jg<C6260ir, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public EnumC6237hv f22464a;

    /* renamed from: a */
    public C6251ii f22465a;

    /* renamed from: a */
    public C6253ik f22466a;

    /* renamed from: a */
    public String f22467a;

    /* renamed from: a */
    public ByteBuffer f22468a;

    /* renamed from: b */
    public String f22471b;

    /* renamed from: a */
    private static final C6297jw f22456a = new C6297jw("XmPushActionContainer");

    /* renamed from: a */
    private static final C6289jo f22455a = new C6289jo("", (byte) 8, 1);

    /* renamed from: b */
    private static final C6289jo f22457b = new C6289jo("", (byte) 2, 2);

    /* renamed from: c */
    private static final C6289jo f22458c = new C6289jo("", (byte) 2, 3);

    /* renamed from: d */
    private static final C6289jo f22459d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22460e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f22461f = new C6289jo("", (byte) 11, 6);

    /* renamed from: g */
    private static final C6289jo f22462g = new C6289jo("", (byte) 12, 7);

    /* renamed from: h */
    private static final C6289jo f22463h = new C6289jo("", (byte) 12, 8);

    /* renamed from: a */
    private BitSet f22469a = new BitSet(2);

    /* renamed from: a */
    public boolean f22470a = true;

    /* renamed from: b */
    public boolean f22472b = true;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6260ir c6260ir) {
        int m1925a;
        int m1925a2;
        int m1924a;
        int m1924a2;
        int m1925a3;
        int m1914a;
        int m1914a2;
        int m1925a4;
        if (getClass().equals(c6260ir.getClass())) {
            int compareTo = Boolean.valueOf(m2230a()).compareTo(Boolean.valueOf(c6260ir.m2230a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2230a() || (m1925a4 = C6280jh.m1925a(this.f22464a, c6260ir.f22464a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2214c()).compareTo(Boolean.valueOf(c6260ir.m2214c()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2214c() || (m1914a2 = C6280jh.m1914a(this.f22470a, c6260ir.f22470a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2213d()).compareTo(Boolean.valueOf(c6260ir.m2213d()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2213d() || (m1914a = C6280jh.m1914a(this.f22472b, c6260ir.f22472b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2212e()).compareTo(Boolean.valueOf(c6260ir.m2212e()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2212e() || (m1925a3 = C6280jh.m1925a(this.f22468a, c6260ir.f22468a)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2211f()).compareTo(Boolean.valueOf(c6260ir.m2211f()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2211f() || (m1924a2 = C6280jh.m1924a(this.f22467a, c6260ir.f22467a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2210g()).compareTo(Boolean.valueOf(c6260ir.m2210g()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2210g() || (m1924a = C6280jh.m1924a(this.f22471b, c6260ir.f22471b)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2209h()).compareTo(Boolean.valueOf(c6260ir.m2209h()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2209h() || (m1925a2 = C6280jh.m1925a(this.f22466a, c6260ir.f22466a)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2208i()).compareTo(Boolean.valueOf(c6260ir.m2208i()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2208i() || (m1925a = C6280jh.m1925a(this.f22465a, c6260ir.f22465a)) == 0) {
                                            return 0;
                                        }
                                        return m1925a;
                                    }
                                    return m1925a2;
                                }
                                return m1924a;
                            }
                            return m1924a2;
                        }
                        return m1925a3;
                    }
                    return m1914a;
                }
                return m1914a2;
            }
            return m1925a4;
        }
        return getClass().getName().compareTo(c6260ir.getClass().getName());
    }

    /* renamed from: a */
    public EnumC6237hv m2234a() {
        return this.f22464a;
    }

    /* renamed from: a */
    public C6251ii m2233a() {
        return this.f22465a;
    }

    /* renamed from: a */
    public C6260ir m2228a(EnumC6237hv enumC6237hv) {
        this.f22464a = enumC6237hv;
        return this;
    }

    /* renamed from: a */
    public C6260ir m2227a(C6251ii c6251ii) {
        this.f22465a = c6251ii;
        return this;
    }

    /* renamed from: a */
    public C6260ir m2226a(C6253ik c6253ik) {
        this.f22466a = c6253ik;
        return this;
    }

    /* renamed from: a */
    public C6260ir m2223a(String str) {
        this.f22467a = str;
        return this;
    }

    /* renamed from: a */
    public C6260ir m2222a(ByteBuffer byteBuffer) {
        this.f22468a = byteBuffer;
        return this;
    }

    /* renamed from: a */
    public C6260ir m2221a(boolean z) {
        this.f22470a = z;
        m2220a(true);
        return this;
    }

    /* renamed from: a */
    public String m2232a() {
        return this.f22467a;
    }

    /* renamed from: a */
    public void m2231a() {
        if (this.f22464a == null) {
            throw new C6293js("Required field 'action' was not present! Struct: " + toString());
        } else if (this.f22468a == null) {
            throw new C6293js("Required field 'pushAction' was not present! Struct: " + toString());
        } else if (this.f22466a != null) {
        } else {
            throw new C6293js("Required field 'target' was not present! Struct: " + toString());
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
                if (!m2214c()) {
                    throw new C6293js("Required field 'encryptAction' was not found in serialized data! Struct: " + toString());
                } else if (m2213d()) {
                    m2231a();
                    return;
                } else {
                    throw new C6293js("Required field 'isRequest' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 8) {
                        this.f22464a = EnumC6237hv.m2564a(abstractC6292jr.mo1902a());
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 2) {
                        this.f22470a = abstractC6292jr.mo1896a();
                        m2220a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 2) {
                        this.f22472b = abstractC6292jr.mo1896a();
                        m2215b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22468a = abstractC6292jr.mo1868a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f22467a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 11) {
                        this.f22471b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22466a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 12) {
                        C6251ii c6251ii = new C6251ii();
                        this.f22465a = c6251ii;
                        c6251ii.mo1931a(abstractC6292jr);
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
    public void m2220a(boolean z) {
        this.f22469a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2230a() {
        return this.f22464a != null;
    }

    /* renamed from: a */
    public boolean m2224a(C6260ir c6260ir) {
        if (c6260ir == null) {
            return false;
        }
        boolean m2230a = m2230a();
        boolean m2230a2 = c6260ir.m2230a();
        if (((!m2230a && !m2230a2) || (m2230a && m2230a2 && this.f22464a.equals(c6260ir.f22464a))) && this.f22470a == c6260ir.f22470a && this.f22472b == c6260ir.f22472b) {
            boolean m2212e = m2212e();
            boolean m2212e2 = c6260ir.m2212e();
            if ((m2212e || m2212e2) && !(m2212e && m2212e2 && this.f22468a.equals(c6260ir.f22468a))) {
                return false;
            }
            boolean m2211f = m2211f();
            boolean m2211f2 = c6260ir.m2211f();
            if ((m2211f || m2211f2) && !(m2211f && m2211f2 && this.f22467a.equals(c6260ir.f22467a))) {
                return false;
            }
            boolean m2210g = m2210g();
            boolean m2210g2 = c6260ir.m2210g();
            if ((m2210g || m2210g2) && !(m2210g && m2210g2 && this.f22471b.equals(c6260ir.f22471b))) {
                return false;
            }
            boolean m2209h = m2209h();
            boolean m2209h2 = c6260ir.m2209h();
            if ((m2209h || m2209h2) && !(m2209h && m2209h2 && this.f22466a.m2356a(c6260ir.f22466a))) {
                return false;
            }
            boolean m2208i = m2208i();
            boolean m2208i2 = c6260ir.m2208i();
            if (m2208i || m2208i2) {
                return m2208i && m2208i2 && this.f22465a.m2396a(c6260ir.f22465a);
            }
            return true;
        }
        return false;
    }

    /* renamed from: a */
    public byte[] m2229a() {
        m2222a(C6280jh.m1923a(this.f22468a));
        return this.f22468a.array();
    }

    /* renamed from: b */
    public C6260ir m2217b(String str) {
        this.f22471b = str;
        return this;
    }

    /* renamed from: b */
    public C6260ir m2216b(boolean z) {
        this.f22472b = z;
        m2215b(true);
        return this;
    }

    /* renamed from: b */
    public String m2219b() {
        return this.f22471b;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2231a();
        abstractC6292jr.mo1889a(f22456a);
        if (this.f22464a != null) {
            abstractC6292jr.mo1892a(f22455a);
            abstractC6292jr.mo1894a(this.f22464a.m2566a());
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1892a(f22457b);
        abstractC6292jr.mo1885a(this.f22470a);
        abstractC6292jr.mo1884b();
        abstractC6292jr.mo1892a(f22458c);
        abstractC6292jr.mo1885a(this.f22472b);
        abstractC6292jr.mo1884b();
        if (this.f22468a != null) {
            abstractC6292jr.mo1892a(f22459d);
            abstractC6292jr.mo1887a(this.f22468a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22467a != null && m2211f()) {
            abstractC6292jr.mo1892a(f22460e);
            abstractC6292jr.mo1888a(this.f22467a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22471b != null && m2210g()) {
            abstractC6292jr.mo1892a(f22461f);
            abstractC6292jr.mo1888a(this.f22471b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22466a != null) {
            abstractC6292jr.mo1892a(f22462g);
            this.f22466a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22465a != null && m2208i()) {
            abstractC6292jr.mo1892a(f22463h);
            this.f22465a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2215b(boolean z) {
        this.f22469a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2218b() {
        return this.f22470a;
    }

    /* renamed from: c */
    public boolean m2214c() {
        return this.f22469a.get(0);
    }

    /* renamed from: d */
    public boolean m2213d() {
        return this.f22469a.get(1);
    }

    /* renamed from: e */
    public boolean m2212e() {
        return this.f22468a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6260ir)) {
            return m2224a((C6260ir) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2211f() {
        return this.f22467a != null;
    }

    /* renamed from: g */
    public boolean m2210g() {
        return this.f22471b != null;
    }

    /* renamed from: h */
    public boolean m2209h() {
        return this.f22466a != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2208i() {
        return this.f22465a != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionContainer(");
        sb.append("action:");
        EnumC6237hv enumC6237hv = this.f22464a;
        if (enumC6237hv == null) {
            sb.append("null");
        } else {
            sb.append(enumC6237hv);
        }
        sb.append(", ");
        sb.append("encryptAction:");
        sb.append(this.f22470a);
        sb.append(", ");
        sb.append("isRequest:");
        sb.append(this.f22472b);
        sb.append(", ");
        sb.append("pushAction:");
        ByteBuffer byteBuffer = this.f22468a;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            C6280jh.m1920a(byteBuffer, sb);
        }
        if (m2211f()) {
            sb.append(", ");
            sb.append("appid:");
            String str = this.f22467a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (m2210g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str2 = this.f22471b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("target:");
        C6253ik c6253ik = this.f22466a;
        if (c6253ik == null) {
            sb.append("null");
        } else {
            sb.append(c6253ik);
        }
        if (m2208i()) {
            sb.append(", ");
            sb.append("metaInfo:");
            C6251ii c6251ii = this.f22465a;
            if (c6251ii == null) {
                sb.append("null");
            } else {
                sb.append(c6251ii);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
