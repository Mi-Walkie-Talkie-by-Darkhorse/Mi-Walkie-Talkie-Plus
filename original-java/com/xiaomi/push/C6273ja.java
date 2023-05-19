package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.ja */
/* loaded from: classes2.dex */
public class C6273ja implements InterfaceC6279jg<C6273ja, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public long f22683a;

    /* renamed from: a */
    public C6253ik f22684a;

    /* renamed from: a */
    public String f22685a;

    /* renamed from: a */
    private BitSet f22686a = new BitSet(1);

    /* renamed from: b */
    public String f22687b;

    /* renamed from: c */
    public String f22688c;

    /* renamed from: d */
    public String f22689d;

    /* renamed from: e */
    public String f22690e;

    /* renamed from: f */
    public String f22691f;

    /* renamed from: g */
    public String f22692g;

    /* renamed from: a */
    private static final C6297jw f22674a = new C6297jw("XmPushActionSubscriptionResult");

    /* renamed from: a */
    private static final C6289jo f22673a = new C6289jo("", (byte) 11, 1);

    /* renamed from: b */
    private static final C6289jo f22675b = new C6289jo("", (byte) 12, 2);

    /* renamed from: c */
    private static final C6289jo f22676c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22677d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22678e = new C6289jo("", (byte) 10, 6);

    /* renamed from: f */
    private static final C6289jo f22679f = new C6289jo("", (byte) 11, 7);

    /* renamed from: g */
    private static final C6289jo f22680g = new C6289jo("", (byte) 11, 8);

    /* renamed from: h */
    private static final C6289jo f22681h = new C6289jo("", (byte) 11, 9);

    /* renamed from: i */
    private static final C6289jo f22682i = new C6289jo("", (byte) 11, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6273ja c6273ja) {
        int m1924a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1926a;
        int m1924a5;
        int m1924a6;
        int m1925a;
        int m1924a7;
        if (getClass().equals(c6273ja.getClass())) {
            int compareTo = Boolean.valueOf(m2019a()).compareTo(Boolean.valueOf(c6273ja.m2019a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2019a() || (m1924a7 = C6280jh.m1924a(this.f22685a, c6273ja.f22685a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2014b()).compareTo(Boolean.valueOf(c6273ja.m2014b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2014b() || (m1925a = C6280jh.m1925a(this.f22684a, c6273ja.f22684a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2012c()).compareTo(Boolean.valueOf(c6273ja.m2012c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2012c() || (m1924a6 = C6280jh.m1924a(this.f22687b, c6273ja.f22687b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2011d()).compareTo(Boolean.valueOf(c6273ja.m2011d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2011d() || (m1924a5 = C6280jh.m1924a(this.f22688c, c6273ja.f22688c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2010e()).compareTo(Boolean.valueOf(c6273ja.m2010e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2010e() || (m1926a = C6280jh.m1926a(this.f22683a, c6273ja.f22683a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2009f()).compareTo(Boolean.valueOf(c6273ja.m2009f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2009f() || (m1924a4 = C6280jh.m1924a(this.f22689d, c6273ja.f22689d)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2008g()).compareTo(Boolean.valueOf(c6273ja.m2008g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2008g() || (m1924a3 = C6280jh.m1924a(this.f22690e, c6273ja.f22690e)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2007h()).compareTo(Boolean.valueOf(c6273ja.m2007h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2007h() || (m1924a2 = C6280jh.m1924a(this.f22691f, c6273ja.f22691f)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2006i()).compareTo(Boolean.valueOf(c6273ja.m2006i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2006i() || (m1924a = C6280jh.m1924a(this.f22692g, c6273ja.f22692g)) == 0) {
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
        return getClass().getName().compareTo(c6273ja.getClass().getName());
    }

    /* renamed from: a */
    public String m2021a() {
        return this.f22687b;
    }

    /* renamed from: a */
    public void m2020a() {
        if (this.f22687b != null) {
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
                m2020a();
                return;
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 11) {
                        this.f22685a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 12) {
                        C6253ik c6253ik = new C6253ik();
                        this.f22684a = c6253ik;
                        c6253ik.mo1931a(abstractC6292jr);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 11) {
                        this.f22687b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f22688c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 10) {
                        this.f22683a = abstractC6292jr.mo1901a();
                        m2016a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f22689d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f22690e = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 11) {
                        this.f22691f = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 11) {
                        this.f22692g = abstractC6292jr.mo1869a();
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
    public void m2016a(boolean z) {
        this.f22686a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2019a() {
        return this.f22685a != null;
    }

    /* renamed from: a */
    public boolean m2017a(C6273ja c6273ja) {
        if (c6273ja == null) {
            return false;
        }
        boolean m2019a = m2019a();
        boolean m2019a2 = c6273ja.m2019a();
        if ((m2019a || m2019a2) && !(m2019a && m2019a2 && this.f22685a.equals(c6273ja.f22685a))) {
            return false;
        }
        boolean m2014b = m2014b();
        boolean m2014b2 = c6273ja.m2014b();
        if ((m2014b || m2014b2) && !(m2014b && m2014b2 && this.f22684a.m2356a(c6273ja.f22684a))) {
            return false;
        }
        boolean m2012c = m2012c();
        boolean m2012c2 = c6273ja.m2012c();
        if ((m2012c || m2012c2) && !(m2012c && m2012c2 && this.f22687b.equals(c6273ja.f22687b))) {
            return false;
        }
        boolean m2011d = m2011d();
        boolean m2011d2 = c6273ja.m2011d();
        if ((m2011d || m2011d2) && !(m2011d && m2011d2 && this.f22688c.equals(c6273ja.f22688c))) {
            return false;
        }
        boolean m2010e = m2010e();
        boolean m2010e2 = c6273ja.m2010e();
        if ((m2010e || m2010e2) && !(m2010e && m2010e2 && this.f22683a == c6273ja.f22683a)) {
            return false;
        }
        boolean m2009f = m2009f();
        boolean m2009f2 = c6273ja.m2009f();
        if ((m2009f || m2009f2) && !(m2009f && m2009f2 && this.f22689d.equals(c6273ja.f22689d))) {
            return false;
        }
        boolean m2008g = m2008g();
        boolean m2008g2 = c6273ja.m2008g();
        if ((m2008g || m2008g2) && !(m2008g && m2008g2 && this.f22690e.equals(c6273ja.f22690e))) {
            return false;
        }
        boolean m2007h = m2007h();
        boolean m2007h2 = c6273ja.m2007h();
        if ((m2007h || m2007h2) && !(m2007h && m2007h2 && this.f22691f.equals(c6273ja.f22691f))) {
            return false;
        }
        boolean m2006i = m2006i();
        boolean m2006i2 = c6273ja.m2006i();
        if (m2006i || m2006i2) {
            return m2006i && m2006i2 && this.f22692g.equals(c6273ja.f22692g);
        }
        return true;
    }

    /* renamed from: b */
    public String m2015b() {
        return this.f22690e;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2020a();
        abstractC6292jr.mo1889a(f22674a);
        if (this.f22685a != null && m2019a()) {
            abstractC6292jr.mo1892a(f22673a);
            abstractC6292jr.mo1888a(this.f22685a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22684a != null && m2014b()) {
            abstractC6292jr.mo1892a(f22675b);
            this.f22684a.mo1930b(abstractC6292jr);
            abstractC6292jr.mo1884b();
        }
        if (this.f22687b != null) {
            abstractC6292jr.mo1892a(f22676c);
            abstractC6292jr.mo1888a(this.f22687b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22688c != null && m2011d()) {
            abstractC6292jr.mo1892a(f22677d);
            abstractC6292jr.mo1888a(this.f22688c);
            abstractC6292jr.mo1884b();
        }
        if (m2010e()) {
            abstractC6292jr.mo1892a(f22678e);
            abstractC6292jr.mo1893a(this.f22683a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22689d != null && m2009f()) {
            abstractC6292jr.mo1892a(f22679f);
            abstractC6292jr.mo1888a(this.f22689d);
            abstractC6292jr.mo1884b();
        }
        if (this.f22690e != null && m2008g()) {
            abstractC6292jr.mo1892a(f22680g);
            abstractC6292jr.mo1888a(this.f22690e);
            abstractC6292jr.mo1884b();
        }
        if (this.f22691f != null && m2007h()) {
            abstractC6292jr.mo1892a(f22681h);
            abstractC6292jr.mo1888a(this.f22691f);
            abstractC6292jr.mo1884b();
        }
        if (this.f22692g != null && m2006i()) {
            abstractC6292jr.mo1892a(f22682i);
            abstractC6292jr.mo1888a(this.f22692g);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public boolean m2014b() {
        return this.f22684a != null;
    }

    /* renamed from: c */
    public String m2013c() {
        return this.f22692g;
    }

    /* renamed from: c */
    public boolean m2012c() {
        return this.f22687b != null;
    }

    /* renamed from: d */
    public boolean m2011d() {
        return this.f22688c != null;
    }

    /* renamed from: e */
    public boolean m2010e() {
        return this.f22686a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6273ja)) {
            return m2017a((C6273ja) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2009f() {
        return this.f22689d != null;
    }

    /* renamed from: g */
    public boolean m2008g() {
        return this.f22690e != null;
    }

    /* renamed from: h */
    public boolean m2007h() {
        return this.f22691f != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2006i() {
        return this.f22692g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSubscriptionResult(");
        boolean z2 = false;
        if (m2019a()) {
            sb.append("debug:");
            String str = this.f22685a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m2014b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            C6253ik c6253ik = this.f22684a;
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
        String str2 = this.f22687b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (m2011d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f22688c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m2010e()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f22683a);
        }
        if (m2009f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f22689d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2008g()) {
            sb.append(", ");
            sb.append("topic:");
            String str5 = this.f22690e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (m2007h()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f22691f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (m2006i()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f22692g;
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
