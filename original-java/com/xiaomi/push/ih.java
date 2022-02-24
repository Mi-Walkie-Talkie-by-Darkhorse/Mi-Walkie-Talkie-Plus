package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class ih implements jg<ih, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f538a;

    /* renamed from: a  reason: collision with other field name */
    public ii f539a;

    /* renamed from: a  reason: collision with other field name */
    public ik f540a;

    /* renamed from: a  reason: collision with other field name */
    public String f541a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f542a = new BitSet(4);

    /* renamed from: a  reason: collision with other field name */
    public boolean f543a = false;

    /* renamed from: b  reason: collision with other field name */
    public long f544b;

    /* renamed from: b  reason: collision with other field name */
    public String f545b;

    /* renamed from: c  reason: collision with other field name */
    public long f546c;

    /* renamed from: c  reason: collision with other field name */
    public String f547c;

    /* renamed from: d  reason: collision with other field name */
    public String f548d;

    /* renamed from: e  reason: collision with other field name */
    public String f549e;

    /* renamed from: f  reason: collision with other field name */
    public String f550f;

    /* renamed from: g  reason: collision with other field name */
    public String f551g;

    /* renamed from: h  reason: collision with other field name */
    public String f552h;

    /* renamed from: i  reason: collision with other field name */
    public String f553i;

    /* renamed from: j  reason: collision with other field name */
    public String f554j;

    /* renamed from: k  reason: collision with other field name */
    public String f555k;

    /* renamed from: l  reason: collision with other field name */
    public String f556l;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f537a = new jw("PushMessage");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9089a = new jo("", (byte) 12, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9090b = new jo("", (byte) 11, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9091c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 5);
    private static final jo f = new jo("", (byte) 10, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 11, 8);
    private static final jo i = new jo("", (byte) 11, 9);
    private static final jo j = new jo("", (byte) 11, 10);
    private static final jo k = new jo("", (byte) 11, 11);
    private static final jo l = new jo("", (byte) 12, 12);
    private static final jo m = new jo("", (byte) 11, 13);
    private static final jo n = new jo("", (byte) 2, 14);
    private static final jo o = new jo("", (byte) 11, 15);
    private static final jo p = new jo("", (byte) 10, 16);
    private static final jo q = new jo("", (byte) 11, 20);
    private static final jo r = new jo("", (byte) 11, 21);

    /* renamed from: a */
    public int compareTo(ih ihVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        int a11;
        int a12;
        int a13;
        int a14;
        int a15;
        int a16;
        int a17;
        int a18;
        int a19;
        if (!ih.class.equals(ihVar.getClass())) {
            return ih.class.getName().compareTo(ihVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m390a()).compareTo(Boolean.valueOf(ihVar.m390a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m390a() && (a19 = jh.a(this.f540a, ihVar.f540a)) != 0) {
            return a19;
        }
        int compareTo2 = Boolean.valueOf(m392b()).compareTo(Boolean.valueOf(ihVar.m392b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m392b() && (a18 = jh.a(this.f541a, ihVar.f541a)) != 0) {
            return a18;
        }
        int compareTo3 = Boolean.valueOf(m393c()).compareTo(Boolean.valueOf(ihVar.m393c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m393c() && (a17 = jh.a(this.f545b, ihVar.f545b)) != 0) {
            return a17;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ihVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a16 = jh.a(this.f547c, ihVar.f547c)) != 0) {
            return a16;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ihVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a15 = jh.a(this.f538a, ihVar.f538a)) != 0) {
            return a15;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ihVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a14 = jh.a(this.f544b, ihVar.f544b)) != 0) {
            return a14;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ihVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a13 = jh.a(this.f548d, ihVar.f548d)) != 0) {
            return a13;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(ihVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a12 = jh.a(this.f549e, ihVar.f549e)) != 0) {
            return a12;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(ihVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a11 = jh.a(this.f550f, ihVar.f550f)) != 0) {
            return a11;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(ihVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a10 = jh.a(this.f551g, ihVar.f551g)) != 0) {
            return a10;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(ihVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a9 = jh.a(this.f552h, ihVar.f552h)) != 0) {
            return a9;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(ihVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (l() && (a8 = jh.a(this.f539a, ihVar.f539a)) != 0) {
            return a8;
        }
        int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(ihVar.m()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (m() && (a7 = jh.a(this.f553i, ihVar.f553i)) != 0) {
            return a7;
        }
        int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(ihVar.n()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (n() && (a6 = jh.a(this.f543a, ihVar.f543a)) != 0) {
            return a6;
        }
        int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(ihVar.o()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (o() && (a5 = jh.a(this.f554j, ihVar.f554j)) != 0) {
            return a5;
        }
        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(ihVar.p()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (p() && (a4 = jh.a(this.f546c, ihVar.f546c)) != 0) {
            return a4;
        }
        int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(ihVar.q()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (q() && (a3 = jh.a(this.f555k, ihVar.f555k)) != 0) {
            return a3;
        }
        int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(ihVar.r()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (!r() || (a2 = jh.a(this.f556l, ihVar.f556l)) == 0) {
            return 0;
        }
        return a2;
    }

    public long a() {
        return this.f538a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m388a() {
        return this.f541a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m389a() {
        if (this.f541a == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f545b == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f547c == null) {
            throw new js("Required field 'payload' was not present! Struct: " + toString());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                m389a();
                return;
            }
            short s = a2.f828a;
            if (s == 20) {
                if (b2 == 11) {
                    this.f555k = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s != 21) {
                switch (s) {
                    case 1:
                        if (b2 == 12) {
                            ik ikVar = new ik();
                            this.f540a = ikVar;
                            ikVar.a(jrVar);
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 2:
                        if (b2 == 11) {
                            this.f541a = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 3:
                        if (b2 == 11) {
                            this.f545b = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 4:
                        if (b2 == 11) {
                            this.f547c = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 5:
                        if (b2 == 10) {
                            this.f538a = jrVar.m507a();
                            a(true);
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 6:
                        if (b2 == 10) {
                            this.f544b = jrVar.m507a();
                            b(true);
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 7:
                        if (b2 == 11) {
                            this.f548d = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 8:
                        if (b2 == 11) {
                            this.f549e = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 9:
                        if (b2 == 11) {
                            this.f550f = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 10:
                        if (b2 == 11) {
                            this.f551g = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 11:
                        if (b2 == 11) {
                            this.f552h = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 12:
                        if (b2 == 12) {
                            ii iiVar = new ii();
                            this.f539a = iiVar;
                            iiVar.a(jrVar);
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 13:
                        if (b2 == 11) {
                            this.f553i = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 14:
                        if (b2 == 2) {
                            this.f543a = jrVar.m517a();
                            c(true);
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 15:
                        if (b2 == 11) {
                            this.f554j = jrVar.m513a();
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    case 16:
                        if (b2 == 10) {
                            this.f546c = jrVar.m507a();
                            d(true);
                            break;
                        }
                        ju.a(jrVar, b2);
                        break;
                    default:
                        ju.a(jrVar, b2);
                        break;
                }
                jrVar.g();
            } else {
                if (b2 == 11) {
                    this.f556l = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
    }

    public void a(boolean z) {
        this.f542a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m390a() {
        return this.f540a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m391a(ih ihVar) {
        if (ihVar == null) {
            return false;
        }
        boolean a2 = m390a();
        boolean a3 = ihVar.m390a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f540a.m408a(ihVar.f540a))) {
            return false;
        }
        boolean b2 = m392b();
        boolean b3 = ihVar.m392b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f541a.equals(ihVar.f541a))) {
            return false;
        }
        boolean c2 = m393c();
        boolean c3 = ihVar.m393c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f545b.equals(ihVar.f545b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = ihVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f547c.equals(ihVar.f547c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = ihVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.f538a != ihVar.f538a)) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = ihVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f544b != ihVar.f544b)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = ihVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f548d.equals(ihVar.f548d))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = ihVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f549e.equals(ihVar.f549e))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = ihVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f550f.equals(ihVar.f550f))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = ihVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f551g.equals(ihVar.f551g))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = ihVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f552h.equals(ihVar.f552h))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = ihVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.f539a.m400a(ihVar.f539a))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = ihVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.f553i.equals(ihVar.f553i))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = ihVar.n();
        if ((n2 || n3) && (!n2 || !n3 || this.f543a != ihVar.f543a)) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = ihVar.o();
        if ((o2 || o3) && (!o2 || !o3 || !this.f554j.equals(ihVar.f554j))) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = ihVar.p();
        if ((p2 || p3) && (!p2 || !p3 || this.f546c != ihVar.f546c)) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = ihVar.q();
        if ((q2 || q3) && (!q2 || !q3 || !this.f555k.equals(ihVar.f555k))) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = ihVar.r();
        if (r2 || r3) {
            return r2 && r3 && this.f556l.equals(ihVar.f556l);
        }
        return true;
    }

    public String b() {
        return this.f545b;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m389a();
        jrVar.a(f537a);
        if (this.f540a != null && m390a()) {
            jrVar.a(f9089a);
            this.f540a.b(jrVar);
            jrVar.b();
        }
        if (this.f541a != null) {
            jrVar.a(f9090b);
            jrVar.a(this.f541a);
            jrVar.b();
        }
        if (this.f545b != null) {
            jrVar.a(f9091c);
            jrVar.a(this.f545b);
            jrVar.b();
        }
        if (this.f547c != null) {
            jrVar.a(d);
            jrVar.a(this.f547c);
            jrVar.b();
        }
        if (e()) {
            jrVar.a(e);
            jrVar.a(this.f538a);
            jrVar.b();
        }
        if (f()) {
            jrVar.a(f);
            jrVar.a(this.f544b);
            jrVar.b();
        }
        if (this.f548d != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f548d);
            jrVar.b();
        }
        if (this.f549e != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f549e);
            jrVar.b();
        }
        if (this.f550f != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f550f);
            jrVar.b();
        }
        if (this.f551g != null && j()) {
            jrVar.a(j);
            jrVar.a(this.f551g);
            jrVar.b();
        }
        if (this.f552h != null && k()) {
            jrVar.a(k);
            jrVar.a(this.f552h);
            jrVar.b();
        }
        if (this.f539a != null && l()) {
            jrVar.a(l);
            this.f539a.b(jrVar);
            jrVar.b();
        }
        if (this.f553i != null && m()) {
            jrVar.a(m);
            jrVar.a(this.f553i);
            jrVar.b();
        }
        if (n()) {
            jrVar.a(n);
            jrVar.a(this.f543a);
            jrVar.b();
        }
        if (this.f554j != null && o()) {
            jrVar.a(o);
            jrVar.a(this.f554j);
            jrVar.b();
        }
        if (p()) {
            jrVar.a(p);
            jrVar.a(this.f546c);
            jrVar.b();
        }
        if (this.f555k != null && q()) {
            jrVar.a(q);
            jrVar.a(this.f555k);
            jrVar.b();
        }
        if (this.f556l != null && r()) {
            jrVar.a(r);
            jrVar.a(this.f556l);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f542a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m392b() {
        return this.f541a != null;
    }

    public String c() {
        return this.f547c;
    }

    public void c(boolean z) {
        this.f542a.set(2, z);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m393c() {
        return this.f545b != null;
    }

    public void d(boolean z) {
        this.f542a.set(3, z);
    }

    public boolean d() {
        return this.f547c != null;
    }

    public boolean e() {
        return this.f542a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ih)) {
            return m391a((ih) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f542a.get(1);
    }

    public boolean g() {
        return this.f548d != null;
    }

    public boolean h() {
        return this.f549e != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f550f != null;
    }

    public boolean j() {
        return this.f551g != null;
    }

    public boolean k() {
        return this.f552h != null;
    }

    public boolean l() {
        return this.f539a != null;
    }

    public boolean m() {
        return this.f553i != null;
    }

    public boolean n() {
        return this.f542a.get(2);
    }

    public boolean o() {
        return this.f554j != null;
    }

    public boolean p() {
        return this.f542a.get(3);
    }

    public boolean q() {
        return this.f555k != null;
    }

    public boolean r() {
        return this.f556l != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("PushMessage(");
        if (m390a()) {
            sb.append("to:");
            ik ikVar = this.f540a;
            if (ikVar == null) {
                sb.append("null");
            } else {
                sb.append(ikVar);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("id:");
        String str = this.f541a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("appId:");
        String str2 = this.f545b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("payload:");
        String str3 = this.f547c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (e()) {
            sb.append(", ");
            sb.append("createAt:");
            sb.append(this.f538a);
        }
        if (f()) {
            sb.append(", ");
            sb.append("ttl:");
            sb.append(this.f544b);
        }
        if (g()) {
            sb.append(", ");
            sb.append("collapseKey:");
            String str4 = this.f548d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f549e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("regId:");
            String str6 = this.f550f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f551g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("topic:");
            String str8 = this.f552h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("metaInfo:");
            ii iiVar = this.f539a;
            if (iiVar == null) {
                sb.append("null");
            } else {
                sb.append(iiVar);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str9 = this.f553i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("isOnline:");
            sb.append(this.f543a);
        }
        if (o()) {
            sb.append(", ");
            sb.append("userAccount:");
            String str10 = this.f554j;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
        }
        if (p()) {
            sb.append(", ");
            sb.append("miid:");
            sb.append(this.f546c);
        }
        if (q()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            String str11 = this.f555k;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
        }
        if (r()) {
            sb.append(", ");
            sb.append("deviceId:");
            String str12 = this.f556l;
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
