package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class iw implements jg<iw, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f709a;

    /* renamed from: a  reason: collision with other field name */
    public long f710a;

    /* renamed from: a  reason: collision with other field name */
    public ik f711a;

    /* renamed from: a  reason: collision with other field name */
    public String f712a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f713a = new BitSet(5);

    /* renamed from: b  reason: collision with other field name */
    public int f714b;

    /* renamed from: b  reason: collision with other field name */
    public long f715b;

    /* renamed from: b  reason: collision with other field name */
    public String f716b;

    /* renamed from: c  reason: collision with other field name */
    public long f717c;

    /* renamed from: c  reason: collision with other field name */
    public String f718c;

    /* renamed from: d  reason: collision with other field name */
    public String f719d;

    /* renamed from: e  reason: collision with other field name */
    public String f720e;

    /* renamed from: f  reason: collision with other field name */
    public String f721f;

    /* renamed from: g  reason: collision with other field name */
    public String f722g;

    /* renamed from: h  reason: collision with other field name */
    public String f723h;

    /* renamed from: i  reason: collision with other field name */
    public String f724i;

    /* renamed from: j  reason: collision with other field name */
    public String f725j;

    /* renamed from: k  reason: collision with other field name */
    public String f726k;

    /* renamed from: l  reason: collision with other field name */
    public String f727l;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f708a = new jw("XmPushActionRegistrationResult");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9127a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9128b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9129c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 6);
    private static final jo f = new jo("", (byte) 11, 7);
    private static final jo g = new jo("", (byte) 11, 8);
    private static final jo h = new jo("", (byte) 11, 9);
    private static final jo i = new jo("", (byte) 11, 10);
    private static final jo j = new jo("", (byte) 10, 11);
    private static final jo k = new jo("", (byte) 11, 12);
    private static final jo l = new jo("", (byte) 11, 13);
    private static final jo m = new jo("", (byte) 10, 14);
    private static final jo n = new jo("", (byte) 11, 15);
    private static final jo o = new jo("", (byte) 8, 16);
    private static final jo p = new jo("", (byte) 11, 17);
    private static final jo q = new jo("", (byte) 8, 18);
    private static final jo r = new jo("", (byte) 11, 19);

    /* renamed from: a */
    public int compareTo(iw iwVar) {
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
        if (!iw.class.equals(iwVar.getClass())) {
            return iw.class.getName().compareTo(iwVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m461a()).compareTo(Boolean.valueOf(iwVar.m461a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m461a() && (a19 = jh.a(this.f712a, iwVar.f712a)) != 0) {
            return a19;
        }
        int compareTo2 = Boolean.valueOf(m463b()).compareTo(Boolean.valueOf(iwVar.m463b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m463b() && (a18 = jh.a(this.f711a, iwVar.f711a)) != 0) {
            return a18;
        }
        int compareTo3 = Boolean.valueOf(m464c()).compareTo(Boolean.valueOf(iwVar.m464c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m464c() && (a17 = jh.a(this.f716b, iwVar.f716b)) != 0) {
            return a17;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(iwVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a16 = jh.a(this.f718c, iwVar.f718c)) != 0) {
            return a16;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(iwVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a15 = jh.a(this.f710a, iwVar.f710a)) != 0) {
            return a15;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(iwVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a14 = jh.a(this.f719d, iwVar.f719d)) != 0) {
            return a14;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(iwVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a13 = jh.a(this.f720e, iwVar.f720e)) != 0) {
            return a13;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(iwVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a12 = jh.a(this.f721f, iwVar.f721f)) != 0) {
            return a12;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(iwVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a11 = jh.a(this.f722g, iwVar.f722g)) != 0) {
            return a11;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(iwVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a10 = jh.a(this.f715b, iwVar.f715b)) != 0) {
            return a10;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(iwVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a9 = jh.a(this.f723h, iwVar.f723h)) != 0) {
            return a9;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(iwVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (l() && (a8 = jh.a(this.f724i, iwVar.f724i)) != 0) {
            return a8;
        }
        int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(iwVar.m()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (m() && (a7 = jh.a(this.f717c, iwVar.f717c)) != 0) {
            return a7;
        }
        int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(iwVar.n()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (n() && (a6 = jh.a(this.f725j, iwVar.f725j)) != 0) {
            return a6;
        }
        int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(iwVar.o()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (o() && (a5 = jh.a(this.f709a, iwVar.f709a)) != 0) {
            return a5;
        }
        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(iwVar.p()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (p() && (a4 = jh.a(this.f726k, iwVar.f726k)) != 0) {
            return a4;
        }
        int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(iwVar.q()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (q() && (a3 = jh.a(this.f714b, iwVar.f714b)) != 0) {
            return a3;
        }
        int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(iwVar.r()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (!r() || (a2 = jh.a(this.f727l, iwVar.f727l)) == 0) {
            return 0;
        }
        return a2;
    }

    public long a() {
        return this.f710a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m459a() {
        return this.f716b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m460a() {
        if (this.f716b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f718c == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        }
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                if (e()) {
                    m460a();
                    return;
                }
                throw new js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f712a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f711a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f716b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f718c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 10) {
                        this.f710a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f719d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f720e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f721f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f722g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 10) {
                        this.f715b = jrVar.m507a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 11) {
                        this.f723h = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 13:
                    if (b2 == 11) {
                        this.f724i = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 14:
                    if (b2 == 10) {
                        this.f717c = jrVar.m507a();
                        c(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 15:
                    if (b2 == 11) {
                        this.f725j = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 16:
                    if (b2 == 8) {
                        this.f709a = jrVar.m506a();
                        d(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 17:
                    if (b2 == 11) {
                        this.f726k = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 18:
                    if (b2 == 8) {
                        this.f714b = jrVar.m506a();
                        e(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 19:
                    if (b2 == 11) {
                        this.f727l = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
            }
            ju.a(jrVar, b2);
            jrVar.g();
        }
    }

    public void a(boolean z) {
        this.f713a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m461a() {
        return this.f712a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m462a(iw iwVar) {
        if (iwVar == null) {
            return false;
        }
        boolean a2 = m461a();
        boolean a3 = iwVar.m461a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f712a.equals(iwVar.f712a))) {
            return false;
        }
        boolean b2 = m463b();
        boolean b3 = iwVar.m463b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f711a.m408a(iwVar.f711a))) {
            return false;
        }
        boolean c2 = m464c();
        boolean c3 = iwVar.m464c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f716b.equals(iwVar.f716b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = iwVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.f718c.equals(iwVar.f718c))) || this.f710a != iwVar.f710a) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = iwVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f719d.equals(iwVar.f719d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = iwVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f720e.equals(iwVar.f720e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = iwVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f721f.equals(iwVar.f721f))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = iwVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f722g.equals(iwVar.f722g))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = iwVar.j();
        if ((j2 || j3) && (!j2 || !j3 || this.f715b != iwVar.f715b)) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = iwVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f723h.equals(iwVar.f723h))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = iwVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.f724i.equals(iwVar.f724i))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = iwVar.m();
        if ((m2 || m3) && (!m2 || !m3 || this.f717c != iwVar.f717c)) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = iwVar.n();
        if ((n2 || n3) && (!n2 || !n3 || !this.f725j.equals(iwVar.f725j))) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = iwVar.o();
        if ((o2 || o3) && (!o2 || !o3 || this.f709a != iwVar.f709a)) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = iwVar.p();
        if ((p2 || p3) && (!p2 || !p3 || !this.f726k.equals(iwVar.f726k))) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = iwVar.q();
        if ((q2 || q3) && (!q2 || !q3 || this.f714b != iwVar.f714b)) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = iwVar.r();
        if (r2 || r3) {
            return r2 && r3 && this.f727l.equals(iwVar.f727l);
        }
        return true;
    }

    public String b() {
        return this.f721f;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m460a();
        jrVar.a(f708a);
        if (this.f712a != null && m461a()) {
            jrVar.a(f9127a);
            jrVar.a(this.f712a);
            jrVar.b();
        }
        if (this.f711a != null && m463b()) {
            jrVar.a(f9128b);
            this.f711a.b(jrVar);
            jrVar.b();
        }
        if (this.f716b != null) {
            jrVar.a(f9129c);
            jrVar.a(this.f716b);
            jrVar.b();
        }
        if (this.f718c != null) {
            jrVar.a(d);
            jrVar.a(this.f718c);
            jrVar.b();
        }
        jrVar.a(e);
        jrVar.a(this.f710a);
        jrVar.b();
        if (this.f719d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f719d);
            jrVar.b();
        }
        if (this.f720e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f720e);
            jrVar.b();
        }
        if (this.f721f != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f721f);
            jrVar.b();
        }
        if (this.f722g != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f722g);
            jrVar.b();
        }
        if (j()) {
            jrVar.a(j);
            jrVar.a(this.f715b);
            jrVar.b();
        }
        if (this.f723h != null && k()) {
            jrVar.a(k);
            jrVar.a(this.f723h);
            jrVar.b();
        }
        if (this.f724i != null && l()) {
            jrVar.a(l);
            jrVar.a(this.f724i);
            jrVar.b();
        }
        if (m()) {
            jrVar.a(m);
            jrVar.a(this.f717c);
            jrVar.b();
        }
        if (this.f725j != null && n()) {
            jrVar.a(n);
            jrVar.a(this.f725j);
            jrVar.b();
        }
        if (o()) {
            jrVar.a(o);
            jrVar.mo504a(this.f709a);
            jrVar.b();
        }
        if (this.f726k != null && p()) {
            jrVar.a(p);
            jrVar.a(this.f726k);
            jrVar.b();
        }
        if (q()) {
            jrVar.a(q);
            jrVar.mo504a(this.f714b);
            jrVar.b();
        }
        if (this.f727l != null && r()) {
            jrVar.a(r);
            jrVar.a(this.f727l);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f713a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m463b() {
        return this.f711a != null;
    }

    public String c() {
        return this.f722g;
    }

    public void c(boolean z) {
        this.f713a.set(2, z);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m464c() {
        return this.f716b != null;
    }

    public void d(boolean z) {
        this.f713a.set(3, z);
    }

    public boolean d() {
        return this.f718c != null;
    }

    public void e(boolean z) {
        this.f713a.set(4, z);
    }

    public boolean e() {
        return this.f713a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof iw)) {
            return m462a((iw) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f719d != null;
    }

    public boolean g() {
        return this.f720e != null;
    }

    public boolean h() {
        return this.f721f != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f722g != null;
    }

    public boolean j() {
        return this.f713a.get(1);
    }

    public boolean k() {
        return this.f723h != null;
    }

    public boolean l() {
        return this.f724i != null;
    }

    public boolean m() {
        return this.f713a.get(2);
    }

    public boolean n() {
        return this.f725j != null;
    }

    public boolean o() {
        return this.f713a.get(3);
    }

    public boolean p() {
        return this.f726k != null;
    }

    public boolean q() {
        return this.f713a.get(4);
    }

    public boolean r() {
        return this.f727l != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionRegistrationResult(");
        boolean z2 = false;
        if (m461a()) {
            sb.append("debug:");
            String str = this.f712a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m463b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f711a;
            if (ikVar == null) {
                sb.append("null");
            } else {
                sb.append(ikVar);
            }
        } else {
            z2 = z;
        }
        if (!z2) {
            sb.append(", ");
        }
        sb.append("id:");
        String str2 = this.f716b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f718c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f710a);
        if (f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f719d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("regId:");
            String str5 = this.f720e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("regSecret:");
            String str6 = this.f721f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str7 = this.f722g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("registeredAt:");
            sb.append(this.f715b);
        }
        if (k()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str8 = this.f723h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("clientId:");
            String str9 = this.f724i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("costTime:");
            sb.append(this.f717c);
        }
        if (n()) {
            sb.append(", ");
            sb.append("appVersion:");
            String str10 = this.f725j;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
        }
        if (o()) {
            sb.append(", ");
            sb.append("pushSdkVersionCode:");
            sb.append(this.f709a);
        }
        if (p()) {
            sb.append(", ");
            sb.append("hybridPushEndpoint:");
            String str11 = this.f726k;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
        }
        if (q()) {
            sb.append(", ");
            sb.append("appVersionCode:");
            sb.append(this.f714b);
        }
        if (r()) {
            sb.append(", ");
            sb.append("region:");
            String str12 = this.f727l;
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
