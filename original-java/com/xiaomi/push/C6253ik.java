package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.ik */
/* loaded from: classes2.dex */
public class C6253ik implements InterfaceC6279jg<C6253ik, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public String f22332a;

    /* renamed from: d */
    public String f22337d;

    /* renamed from: a */
    private static final C6297jw f22325a = new C6297jw("Target");

    /* renamed from: a */
    private static final C6289jo f22324a = new C6289jo("", (byte) 10, 1);

    /* renamed from: b */
    private static final C6289jo f22326b = new C6289jo("", (byte) 11, 2);

    /* renamed from: c */
    private static final C6289jo f22327c = new C6289jo("", (byte) 11, 3);

    /* renamed from: d */
    private static final C6289jo f22328d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f22329e = new C6289jo("", (byte) 2, 5);

    /* renamed from: f */
    private static final C6289jo f22330f = new C6289jo("", (byte) 11, 7);

    /* renamed from: a */
    private BitSet f22333a = new BitSet(2);

    /* renamed from: a */
    public long f22331a = 5;

    /* renamed from: b */
    public String f22335b = "xiaomi.com";

    /* renamed from: c */
    public String f22336c = "";

    /* renamed from: a */
    public boolean f22334a = false;

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6253ik c6253ik) {
        int m1924a;
        int m1914a;
        int m1924a2;
        int m1924a3;
        int m1924a4;
        int m1926a;
        if (getClass().equals(c6253ik.getClass())) {
            int compareTo = Boolean.valueOf(m2358a()).compareTo(Boolean.valueOf(c6253ik.m2358a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2358a() || (m1926a = C6280jh.m1926a(this.f22331a, c6253ik.f22331a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2354b()).compareTo(Boolean.valueOf(c6253ik.m2354b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2354b() || (m1924a4 = C6280jh.m1924a(this.f22332a, c6253ik.f22332a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2352c()).compareTo(Boolean.valueOf(c6253ik.m2352c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2352c() || (m1924a3 = C6280jh.m1924a(this.f22335b, c6253ik.f22335b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2351d()).compareTo(Boolean.valueOf(c6253ik.m2351d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2351d() || (m1924a2 = C6280jh.m1924a(this.f22336c, c6253ik.f22336c)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2350e()).compareTo(Boolean.valueOf(c6253ik.m2350e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2350e() || (m1914a = C6280jh.m1914a(this.f22334a, c6253ik.f22334a)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2349f()).compareTo(Boolean.valueOf(c6253ik.m2349f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2349f() || (m1924a = C6280jh.m1924a(this.f22337d, c6253ik.f22337d)) == 0) {
                                    return 0;
                                }
                                return m1924a;
                            }
                            return m1914a;
                        }
                        return m1924a2;
                    }
                    return m1924a3;
                }
                return m1924a4;
            }
            return m1926a;
        }
        return getClass().getName().compareTo(c6253ik.getClass().getName());
    }

    /* renamed from: a */
    public void m2359a() {
        if (this.f22332a != null) {
            return;
        }
        throw new C6293js("Required field 'userId' was not present! Struct: " + toString());
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: a */
    public void mo1931a(AbstractC6292jr abstractC6292jr) {
        abstractC6292jr.mo1899a();
        while (true) {
            C6289jo mo1900a = abstractC6292jr.mo1900a();
            byte b = mo1900a.f22798a;
            if (b == 0) {
                break;
            }
            short s = mo1900a.f22800a;
            if (s == 1) {
                if (b == 10) {
                    this.f22331a = abstractC6292jr.mo1901a();
                    m2355a(true);
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s == 2) {
                if (b == 11) {
                    this.f22332a = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s == 3) {
                if (b == 11) {
                    this.f22335b = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s == 4) {
                if (b == 11) {
                    this.f22336c = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else if (s != 5) {
                if (s == 7 && b == 11) {
                    this.f22337d = abstractC6292jr.mo1869a();
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            } else {
                if (b == 2) {
                    this.f22334a = abstractC6292jr.mo1896a();
                    m2353b(true);
                    abstractC6292jr.mo1879g();
                }
                C6295ju.m1874a(abstractC6292jr, b);
                abstractC6292jr.mo1879g();
            }
        }
        abstractC6292jr.mo1880f();
        if (m2358a()) {
            m2359a();
            return;
        }
        throw new C6293js("Required field 'channelId' was not found in serialized data! Struct: " + toString());
    }

    /* renamed from: a */
    public void m2355a(boolean z) {
        this.f22333a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2358a() {
        return this.f22333a.get(0);
    }

    /* renamed from: a */
    public boolean m2356a(C6253ik c6253ik) {
        if (c6253ik != null && this.f22331a == c6253ik.f22331a) {
            boolean m2354b = m2354b();
            boolean m2354b2 = c6253ik.m2354b();
            if ((m2354b || m2354b2) && !(m2354b && m2354b2 && this.f22332a.equals(c6253ik.f22332a))) {
                return false;
            }
            boolean m2352c = m2352c();
            boolean m2352c2 = c6253ik.m2352c();
            if ((m2352c || m2352c2) && !(m2352c && m2352c2 && this.f22335b.equals(c6253ik.f22335b))) {
                return false;
            }
            boolean m2351d = m2351d();
            boolean m2351d2 = c6253ik.m2351d();
            if ((m2351d || m2351d2) && !(m2351d && m2351d2 && this.f22336c.equals(c6253ik.f22336c))) {
                return false;
            }
            boolean m2350e = m2350e();
            boolean m2350e2 = c6253ik.m2350e();
            if ((m2350e || m2350e2) && !(m2350e && m2350e2 && this.f22334a == c6253ik.f22334a)) {
                return false;
            }
            boolean m2349f = m2349f();
            boolean m2349f2 = c6253ik.m2349f();
            if (m2349f || m2349f2) {
                return m2349f && m2349f2 && this.f22337d.equals(c6253ik.f22337d);
            }
            return true;
        }
        return false;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2359a();
        abstractC6292jr.mo1889a(f22325a);
        abstractC6292jr.mo1892a(f22324a);
        abstractC6292jr.mo1893a(this.f22331a);
        abstractC6292jr.mo1884b();
        if (this.f22332a != null) {
            abstractC6292jr.mo1892a(f22326b);
            abstractC6292jr.mo1888a(this.f22332a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22335b != null && m2352c()) {
            abstractC6292jr.mo1892a(f22327c);
            abstractC6292jr.mo1888a(this.f22335b);
            abstractC6292jr.mo1884b();
        }
        if (this.f22336c != null && m2351d()) {
            abstractC6292jr.mo1892a(f22328d);
            abstractC6292jr.mo1888a(this.f22336c);
            abstractC6292jr.mo1884b();
        }
        if (m2350e()) {
            abstractC6292jr.mo1892a(f22329e);
            abstractC6292jr.mo1885a(this.f22334a);
            abstractC6292jr.mo1884b();
        }
        if (this.f22337d != null && m2349f()) {
            abstractC6292jr.mo1892a(f22330f);
            abstractC6292jr.mo1888a(this.f22337d);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2353b(boolean z) {
        this.f22333a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2354b() {
        return this.f22332a != null;
    }

    /* renamed from: c */
    public boolean m2352c() {
        return this.f22335b != null;
    }

    /* renamed from: d */
    public boolean m2351d() {
        return this.f22336c != null;
    }

    /* renamed from: e */
    public boolean m2350e() {
        return this.f22333a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6253ik)) {
            return m2356a((C6253ik) obj);
        }
        return false;
    }

    /* renamed from: f */
    public boolean m2349f() {
        return this.f22337d != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Target(");
        sb.append("channelId:");
        sb.append(this.f22331a);
        sb.append(", ");
        sb.append("userId:");
        String str = this.f22332a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (m2352c()) {
            sb.append(", ");
            sb.append("server:");
            String str2 = this.f22335b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (m2351d()) {
            sb.append(", ");
            sb.append("resource:");
            String str3 = this.f22336c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m2350e()) {
            sb.append(", ");
            sb.append("isPreview:");
            sb.append(this.f22334a);
        }
        if (m2349f()) {
            sb.append(", ");
            sb.append("token:");
            String str4 = this.f22337d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
