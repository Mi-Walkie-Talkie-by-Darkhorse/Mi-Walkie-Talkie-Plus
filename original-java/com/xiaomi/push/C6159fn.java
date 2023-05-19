package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* renamed from: com.xiaomi.push.fn */
/* loaded from: classes2.dex */
public class C6159fn implements InterfaceC6279jg<C6159fn, Object>, Serializable, Cloneable {

    /* renamed from: a */
    public byte f21624a;

    /* renamed from: a */
    public int f21625a;

    /* renamed from: a */
    public String f21626a;

    /* renamed from: a */
    private BitSet f21627a = new BitSet(6);

    /* renamed from: b */
    public int f21628b;

    /* renamed from: b */
    public String f21629b;

    /* renamed from: c */
    public int f21630c;

    /* renamed from: c */
    public String f21631c;

    /* renamed from: d */
    public int f21632d;

    /* renamed from: d */
    public String f21633d;

    /* renamed from: e */
    public int f21634e;

    /* renamed from: a */
    private static final C6297jw f21614a = new C6297jw("StatsEvent");

    /* renamed from: a */
    private static final C6289jo f21613a = new C6289jo("", (byte) 3, 1);

    /* renamed from: b */
    private static final C6289jo f21615b = new C6289jo("", (byte) 8, 2);

    /* renamed from: c */
    private static final C6289jo f21616c = new C6289jo("", (byte) 8, 3);

    /* renamed from: d */
    private static final C6289jo f21617d = new C6289jo("", (byte) 11, 4);

    /* renamed from: e */
    private static final C6289jo f21618e = new C6289jo("", (byte) 11, 5);

    /* renamed from: f */
    private static final C6289jo f21619f = new C6289jo("", (byte) 8, 6);

    /* renamed from: g */
    private static final C6289jo f21620g = new C6289jo("", (byte) 11, 7);

    /* renamed from: h */
    private static final C6289jo f21621h = new C6289jo("", (byte) 11, 8);

    /* renamed from: i */
    private static final C6289jo f21622i = new C6289jo("", (byte) 8, 9);

    /* renamed from: j */
    private static final C6289jo f21623j = new C6289jo("", (byte) 8, 10);

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(C6159fn c6159fn) {
        int m1927a;
        int m1927a2;
        int m1924a;
        int m1924a2;
        int m1927a3;
        int m1924a3;
        int m1924a4;
        int m1927a4;
        int m1927a5;
        int m1928a;
        if (getClass().equals(c6159fn.getClass())) {
            int compareTo = Boolean.valueOf(m2915a()).compareTo(Boolean.valueOf(c6159fn.m2915a()));
            if (compareTo != 0) {
                return compareTo;
            }
            if (!m2915a() || (m1928a = C6280jh.m1928a(this.f21624a, c6159fn.f21624a)) == 0) {
                int compareTo2 = Boolean.valueOf(m2908b()).compareTo(Boolean.valueOf(c6159fn.m2908b()));
                if (compareTo2 != 0) {
                    return compareTo2;
                }
                if (!m2908b() || (m1927a5 = C6280jh.m1927a(this.f21625a, c6159fn.f21625a)) == 0) {
                    int compareTo3 = Boolean.valueOf(m2904c()).compareTo(Boolean.valueOf(c6159fn.m2904c()));
                    if (compareTo3 != 0) {
                        return compareTo3;
                    }
                    if (!m2904c() || (m1927a4 = C6280jh.m1927a(this.f21628b, c6159fn.f21628b)) == 0) {
                        int compareTo4 = Boolean.valueOf(m2900d()).compareTo(Boolean.valueOf(c6159fn.m2900d()));
                        if (compareTo4 != 0) {
                            return compareTo4;
                        }
                        if (!m2900d() || (m1924a4 = C6280jh.m1924a(this.f21626a, c6159fn.f21626a)) == 0) {
                            int compareTo5 = Boolean.valueOf(m2896e()).compareTo(Boolean.valueOf(c6159fn.m2896e()));
                            if (compareTo5 != 0) {
                                return compareTo5;
                            }
                            if (!m2896e() || (m1924a3 = C6280jh.m1924a(this.f21629b, c6159fn.f21629b)) == 0) {
                                int compareTo6 = Boolean.valueOf(m2894f()).compareTo(Boolean.valueOf(c6159fn.m2894f()));
                                if (compareTo6 != 0) {
                                    return compareTo6;
                                }
                                if (!m2894f() || (m1927a3 = C6280jh.m1927a(this.f21630c, c6159fn.f21630c)) == 0) {
                                    int compareTo7 = Boolean.valueOf(m2892g()).compareTo(Boolean.valueOf(c6159fn.m2892g()));
                                    if (compareTo7 != 0) {
                                        return compareTo7;
                                    }
                                    if (!m2892g() || (m1924a2 = C6280jh.m1924a(this.f21631c, c6159fn.f21631c)) == 0) {
                                        int compareTo8 = Boolean.valueOf(m2891h()).compareTo(Boolean.valueOf(c6159fn.m2891h()));
                                        if (compareTo8 != 0) {
                                            return compareTo8;
                                        }
                                        if (!m2891h() || (m1924a = C6280jh.m1924a(this.f21633d, c6159fn.f21633d)) == 0) {
                                            int compareTo9 = Boolean.valueOf(m2890i()).compareTo(Boolean.valueOf(c6159fn.m2890i()));
                                            if (compareTo9 != 0) {
                                                return compareTo9;
                                            }
                                            if (!m2890i() || (m1927a2 = C6280jh.m1927a(this.f21632d, c6159fn.f21632d)) == 0) {
                                                int compareTo10 = Boolean.valueOf(m2889j()).compareTo(Boolean.valueOf(c6159fn.m2889j()));
                                                if (compareTo10 != 0) {
                                                    return compareTo10;
                                                }
                                                if (!m2889j() || (m1927a = C6280jh.m1927a(this.f21634e, c6159fn.f21634e)) == 0) {
                                                    return 0;
                                                }
                                                return m1927a;
                                            }
                                            return m1927a2;
                                        }
                                        return m1924a;
                                    }
                                    return m1924a2;
                                }
                                return m1927a3;
                            }
                            return m1924a3;
                        }
                        return m1924a4;
                    }
                    return m1927a4;
                }
                return m1927a5;
            }
            return m1928a;
        }
        return getClass().getName().compareTo(c6159fn.getClass().getName());
    }

    /* renamed from: a */
    public C6159fn m2914a(byte b) {
        this.f21624a = b;
        m2909a(true);
        return this;
    }

    /* renamed from: a */
    public C6159fn m2913a(int i) {
        this.f21625a = i;
        m2905b(true);
        return this;
    }

    /* renamed from: a */
    public C6159fn m2910a(String str) {
        this.f21626a = str;
        return this;
    }

    /* renamed from: a */
    public void m2916a() {
        if (this.f21626a != null) {
            return;
        }
        throw new C6293js("Required field 'connpt' was not present! Struct: " + toString());
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
                if (!m2915a()) {
                    throw new C6293js("Required field 'chid' was not found in serialized data! Struct: " + toString());
                } else if (!m2908b()) {
                    throw new C6293js("Required field 'type' was not found in serialized data! Struct: " + toString());
                } else if (m2904c()) {
                    m2916a();
                    return;
                } else {
                    throw new C6293js("Required field 'value' was not found in serialized data! Struct: " + toString());
                }
            }
            switch (mo1900a.f22800a) {
                case 1:
                    if (b == 3) {
                        this.f21624a = abstractC6292jr.mo1904a();
                        m2909a(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 2:
                    if (b == 8) {
                        this.f21625a = abstractC6292jr.mo1902a();
                        m2905b(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 3:
                    if (b == 8) {
                        this.f21628b = abstractC6292jr.mo1902a();
                        m2901c(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 4:
                    if (b == 11) {
                        this.f21626a = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 5:
                    if (b == 11) {
                        this.f21629b = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 6:
                    if (b == 8) {
                        this.f21630c = abstractC6292jr.mo1902a();
                        m2897d(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 7:
                    if (b == 11) {
                        this.f21631c = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 8:
                    if (b == 11) {
                        this.f21633d = abstractC6292jr.mo1869a();
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 9:
                    if (b == 8) {
                        this.f21632d = abstractC6292jr.mo1902a();
                        m2895e(true);
                        continue;
                        abstractC6292jr.mo1879g();
                    }
                    break;
                case 10:
                    if (b == 8) {
                        this.f21634e = abstractC6292jr.mo1902a();
                        m2893f(true);
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
    public void m2909a(boolean z) {
        this.f21627a.set(0, z);
    }

    /* renamed from: a */
    public boolean m2915a() {
        return this.f21627a.get(0);
    }

    /* renamed from: a */
    public boolean m2911a(C6159fn c6159fn) {
        if (c6159fn != null && this.f21624a == c6159fn.f21624a && this.f21625a == c6159fn.f21625a && this.f21628b == c6159fn.f21628b) {
            boolean m2900d = m2900d();
            boolean m2900d2 = c6159fn.m2900d();
            if ((m2900d || m2900d2) && !(m2900d && m2900d2 && this.f21626a.equals(c6159fn.f21626a))) {
                return false;
            }
            boolean m2896e = m2896e();
            boolean m2896e2 = c6159fn.m2896e();
            if ((m2896e || m2896e2) && !(m2896e && m2896e2 && this.f21629b.equals(c6159fn.f21629b))) {
                return false;
            }
            boolean m2894f = m2894f();
            boolean m2894f2 = c6159fn.m2894f();
            if ((m2894f || m2894f2) && !(m2894f && m2894f2 && this.f21630c == c6159fn.f21630c)) {
                return false;
            }
            boolean m2892g = m2892g();
            boolean m2892g2 = c6159fn.m2892g();
            if ((m2892g || m2892g2) && !(m2892g && m2892g2 && this.f21631c.equals(c6159fn.f21631c))) {
                return false;
            }
            boolean m2891h = m2891h();
            boolean m2891h2 = c6159fn.m2891h();
            if ((m2891h || m2891h2) && !(m2891h && m2891h2 && this.f21633d.equals(c6159fn.f21633d))) {
                return false;
            }
            boolean m2890i = m2890i();
            boolean m2890i2 = c6159fn.m2890i();
            if ((m2890i || m2890i2) && !(m2890i && m2890i2 && this.f21632d == c6159fn.f21632d)) {
                return false;
            }
            boolean m2889j = m2889j();
            boolean m2889j2 = c6159fn.m2889j();
            if (m2889j || m2889j2) {
                return m2889j && m2889j2 && this.f21634e == c6159fn.f21634e;
            }
            return true;
        }
        return false;
    }

    /* renamed from: b */
    public C6159fn m2907b(int i) {
        this.f21628b = i;
        m2901c(true);
        return this;
    }

    /* renamed from: b */
    public C6159fn m2906b(String str) {
        this.f21629b = str;
        return this;
    }

    @Override // com.xiaomi.push.InterfaceC6279jg
    /* renamed from: b */
    public void mo1930b(AbstractC6292jr abstractC6292jr) {
        m2916a();
        abstractC6292jr.mo1889a(f21614a);
        abstractC6292jr.mo1892a(f21613a);
        abstractC6292jr.mo1895a(this.f21624a);
        abstractC6292jr.mo1884b();
        abstractC6292jr.mo1892a(f21615b);
        abstractC6292jr.mo1894a(this.f21625a);
        abstractC6292jr.mo1884b();
        abstractC6292jr.mo1892a(f21616c);
        abstractC6292jr.mo1894a(this.f21628b);
        abstractC6292jr.mo1884b();
        if (this.f21626a != null) {
            abstractC6292jr.mo1892a(f21617d);
            abstractC6292jr.mo1888a(this.f21626a);
            abstractC6292jr.mo1884b();
        }
        if (this.f21629b != null && m2896e()) {
            abstractC6292jr.mo1892a(f21618e);
            abstractC6292jr.mo1888a(this.f21629b);
            abstractC6292jr.mo1884b();
        }
        if (m2894f()) {
            abstractC6292jr.mo1892a(f21619f);
            abstractC6292jr.mo1894a(this.f21630c);
            abstractC6292jr.mo1884b();
        }
        if (this.f21631c != null && m2892g()) {
            abstractC6292jr.mo1892a(f21620g);
            abstractC6292jr.mo1888a(this.f21631c);
            abstractC6292jr.mo1884b();
        }
        if (this.f21633d != null && m2891h()) {
            abstractC6292jr.mo1892a(f21621h);
            abstractC6292jr.mo1888a(this.f21633d);
            abstractC6292jr.mo1884b();
        }
        if (m2890i()) {
            abstractC6292jr.mo1892a(f21622i);
            abstractC6292jr.mo1894a(this.f21632d);
            abstractC6292jr.mo1884b();
        }
        if (m2889j()) {
            abstractC6292jr.mo1892a(f21623j);
            abstractC6292jr.mo1894a(this.f21634e);
            abstractC6292jr.mo1884b();
        }
        abstractC6292jr.mo1883c();
        abstractC6292jr.mo1897a();
    }

    /* renamed from: b */
    public void m2905b(boolean z) {
        this.f21627a.set(1, z);
    }

    /* renamed from: b */
    public boolean m2908b() {
        return this.f21627a.get(1);
    }

    /* renamed from: c */
    public C6159fn m2903c(int i) {
        this.f21630c = i;
        m2897d(true);
        return this;
    }

    /* renamed from: c */
    public C6159fn m2902c(String str) {
        this.f21631c = str;
        return this;
    }

    /* renamed from: c */
    public void m2901c(boolean z) {
        this.f21627a.set(2, z);
    }

    /* renamed from: c */
    public boolean m2904c() {
        return this.f21627a.get(2);
    }

    /* renamed from: d */
    public C6159fn m2899d(int i) {
        this.f21632d = i;
        m2895e(true);
        return this;
    }

    /* renamed from: d */
    public C6159fn m2898d(String str) {
        this.f21633d = str;
        return this;
    }

    /* renamed from: d */
    public void m2897d(boolean z) {
        this.f21627a.set(3, z);
    }

    /* renamed from: d */
    public boolean m2900d() {
        return this.f21626a != null;
    }

    /* renamed from: e */
    public void m2895e(boolean z) {
        this.f21627a.set(4, z);
    }

    /* renamed from: e */
    public boolean m2896e() {
        return this.f21629b != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof C6159fn)) {
            return m2911a((C6159fn) obj);
        }
        return false;
    }

    /* renamed from: f */
    public void m2893f(boolean z) {
        this.f21627a.set(5, z);
    }

    /* renamed from: f */
    public boolean m2894f() {
        return this.f21627a.get(3);
    }

    /* renamed from: g */
    public boolean m2892g() {
        return this.f21631c != null;
    }

    /* renamed from: h */
    public boolean m2891h() {
        return this.f21633d != null;
    }

    public int hashCode() {
        return 0;
    }

    /* renamed from: i */
    public boolean m2890i() {
        return this.f21627a.get(4);
    }

    /* renamed from: j */
    public boolean m2889j() {
        return this.f21627a.get(5);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvent(");
        sb.append("chid:");
        sb.append((int) this.f21624a);
        sb.append(", ");
        sb.append("type:");
        sb.append(this.f21625a);
        sb.append(", ");
        sb.append("value:");
        sb.append(this.f21628b);
        sb.append(", ");
        sb.append("connpt:");
        String str = this.f21626a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (m2896e()) {
            sb.append(", ");
            sb.append("host:");
            String str2 = this.f21629b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (m2894f()) {
            sb.append(", ");
            sb.append("subvalue:");
            sb.append(this.f21630c);
        }
        if (m2892g()) {
            sb.append(", ");
            sb.append("annotation:");
            String str3 = this.f21631c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (m2891h()) {
            sb.append(", ");
            sb.append("user:");
            String str4 = this.f21633d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m2890i()) {
            sb.append(", ");
            sb.append("time:");
            sb.append(this.f21632d);
        }
        if (m2889j()) {
            sb.append(", ");
            sb.append("clientIp:");
            sb.append(this.f21634e);
        }
        sb.append(")");
        return sb.toString();
    }
}
