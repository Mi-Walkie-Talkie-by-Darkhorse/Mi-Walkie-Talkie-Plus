package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class iv implements jg<iv, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f678a;

    /* renamed from: a  reason: collision with other field name */
    public long f679a;

    /* renamed from: a  reason: collision with other field name */
    public ij f680a;

    /* renamed from: a  reason: collision with other field name */
    public ik f681a;

    /* renamed from: a  reason: collision with other field name */
    public String f682a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f684a;

    /* renamed from: b  reason: collision with other field name */
    public int f686b;

    /* renamed from: b  reason: collision with other field name */
    public long f687b;

    /* renamed from: b  reason: collision with other field name */
    public String f688b;

    /* renamed from: c  reason: collision with other field name */
    public int f690c;

    /* renamed from: c  reason: collision with other field name */
    public String f691c;

    /* renamed from: d  reason: collision with other field name */
    public String f693d;

    /* renamed from: e  reason: collision with other field name */
    public String f694e;

    /* renamed from: f  reason: collision with other field name */
    public String f695f;

    /* renamed from: g  reason: collision with other field name */
    public String f696g;

    /* renamed from: h  reason: collision with other field name */
    public String f697h;

    /* renamed from: i  reason: collision with other field name */
    public String f698i;

    /* renamed from: j  reason: collision with other field name */
    public String f699j;

    /* renamed from: k  reason: collision with other field name */
    public String f700k;

    /* renamed from: l  reason: collision with other field name */
    public String f701l;

    /* renamed from: m  reason: collision with other field name */
    public String f702m;

    /* renamed from: n  reason: collision with other field name */
    public String f703n;

    /* renamed from: o  reason: collision with other field name */
    public String f704o;

    /* renamed from: p  reason: collision with other field name */
    public String f705p;

    /* renamed from: q  reason: collision with other field name */
    public String f706q;

    /* renamed from: r  reason: collision with other field name */
    public String f707r;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f677a = new jw("XmPushActionRegistration");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9124a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9125b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9126c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 11, 8);
    private static final jo i = new jo("", (byte) 11, 9);
    private static final jo j = new jo("", (byte) 11, 10);
    private static final jo k = new jo("", (byte) 11, 11);
    private static final jo l = new jo("", (byte) 11, 12);
    private static final jo m = new jo("", (byte) 8, 13);
    private static final jo n = new jo("", (byte) 8, 14);
    private static final jo o = new jo("", (byte) 11, 15);
    private static final jo p = new jo("", (byte) 11, 16);
    private static final jo q = new jo("", (byte) 11, 17);
    private static final jo r = new jo("", (byte) 11, 18);
    private static final jo s = new jo("", (byte) 8, 19);
    private static final jo t = new jo("", (byte) 8, 20);
    private static final jo u = new jo("", (byte) 2, 21);
    private static final jo v = new jo("", (byte) 10, 22);
    private static final jo w = new jo("", (byte) 10, 23);
    private static final jo x = new jo("", (byte) 11, 24);
    private static final jo y = new jo("", (byte) 11, 25);
    private static final jo z = new jo("", (byte) 2, 26);
    private static final jo A = new jo("", (byte) 13, 100);
    private static final jo B = new jo("", (byte) 2, 101);
    private static final jo C = new jo("", (byte) 11, 102);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f683a = new BitSet(8);

    /* renamed from: a  reason: collision with other field name */
    public boolean f685a = true;

    /* renamed from: c  reason: collision with other field name */
    public boolean f692c = false;

    /* renamed from: b  reason: collision with other field name */
    public boolean f689b = false;

    public boolean A() {
        return this.f684a != null;
    }

    public boolean B() {
        return this.f683a.get(7);
    }

    public boolean C() {
        return this.f707r != null;
    }

    /* renamed from: a */
    public int compareTo(iv ivVar) {
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
        int a20;
        int a21;
        int a22;
        int a23;
        int a24;
        int a25;
        int a26;
        int a27;
        int a28;
        int a29;
        int a30;
        if (!iv.class.equals(ivVar.getClass())) {
            return iv.class.getName().compareTo(ivVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m455a()).compareTo(Boolean.valueOf(ivVar.m455a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m455a() && (a30 = jh.a(this.f682a, ivVar.f682a)) != 0) {
            return a30;
        }
        int compareTo2 = Boolean.valueOf(m457b()).compareTo(Boolean.valueOf(ivVar.m457b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m457b() && (a29 = jh.a(this.f681a, ivVar.f681a)) != 0) {
            return a29;
        }
        int compareTo3 = Boolean.valueOf(m458c()).compareTo(Boolean.valueOf(ivVar.m458c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m458c() && (a28 = jh.a(this.f688b, ivVar.f688b)) != 0) {
            return a28;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ivVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a27 = jh.a(this.f691c, ivVar.f691c)) != 0) {
            return a27;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ivVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a26 = jh.a(this.f693d, ivVar.f693d)) != 0) {
            return a26;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ivVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a25 = jh.a(this.f694e, ivVar.f694e)) != 0) {
            return a25;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ivVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a24 = jh.a(this.f695f, ivVar.f695f)) != 0) {
            return a24;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(ivVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a23 = jh.a(this.f696g, ivVar.f696g)) != 0) {
            return a23;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(ivVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a22 = jh.a(this.f697h, ivVar.f697h)) != 0) {
            return a22;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(ivVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a21 = jh.a(this.f698i, ivVar.f698i)) != 0) {
            return a21;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(ivVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a20 = jh.a(this.f699j, ivVar.f699j)) != 0) {
            return a20;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(ivVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (l() && (a19 = jh.a(this.f700k, ivVar.f700k)) != 0) {
            return a19;
        }
        int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(ivVar.m()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (m() && (a18 = jh.a(this.f678a, ivVar.f678a)) != 0) {
            return a18;
        }
        int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(ivVar.n()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (n() && (a17 = jh.a(this.f686b, ivVar.f686b)) != 0) {
            return a17;
        }
        int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(ivVar.o()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (o() && (a16 = jh.a(this.f701l, ivVar.f701l)) != 0) {
            return a16;
        }
        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(ivVar.p()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (p() && (a15 = jh.a(this.f702m, ivVar.f702m)) != 0) {
            return a15;
        }
        int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(ivVar.q()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (q() && (a14 = jh.a(this.f703n, ivVar.f703n)) != 0) {
            return a14;
        }
        int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(ivVar.r()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (r() && (a13 = jh.a(this.f704o, ivVar.f704o)) != 0) {
            return a13;
        }
        int compareTo19 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(ivVar.s()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (s() && (a12 = jh.a(this.f690c, ivVar.f690c)) != 0) {
            return a12;
        }
        int compareTo20 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(ivVar.t()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (t() && (a11 = jh.a(this.f680a, ivVar.f680a)) != 0) {
            return a11;
        }
        int compareTo21 = Boolean.valueOf(u()).compareTo(Boolean.valueOf(ivVar.u()));
        if (compareTo21 != 0) {
            return compareTo21;
        }
        if (u() && (a10 = jh.a(this.f685a, ivVar.f685a)) != 0) {
            return a10;
        }
        int compareTo22 = Boolean.valueOf(v()).compareTo(Boolean.valueOf(ivVar.v()));
        if (compareTo22 != 0) {
            return compareTo22;
        }
        if (v() && (a9 = jh.a(this.f679a, ivVar.f679a)) != 0) {
            return a9;
        }
        int compareTo23 = Boolean.valueOf(w()).compareTo(Boolean.valueOf(ivVar.w()));
        if (compareTo23 != 0) {
            return compareTo23;
        }
        if (w() && (a8 = jh.a(this.f687b, ivVar.f687b)) != 0) {
            return a8;
        }
        int compareTo24 = Boolean.valueOf(x()).compareTo(Boolean.valueOf(ivVar.x()));
        if (compareTo24 != 0) {
            return compareTo24;
        }
        if (x() && (a7 = jh.a(this.f705p, ivVar.f705p)) != 0) {
            return a7;
        }
        int compareTo25 = Boolean.valueOf(y()).compareTo(Boolean.valueOf(ivVar.y()));
        if (compareTo25 != 0) {
            return compareTo25;
        }
        if (y() && (a6 = jh.a(this.f706q, ivVar.f706q)) != 0) {
            return a6;
        }
        int compareTo26 = Boolean.valueOf(z()).compareTo(Boolean.valueOf(ivVar.z()));
        if (compareTo26 != 0) {
            return compareTo26;
        }
        if (z() && (a5 = jh.a(this.f689b, ivVar.f689b)) != 0) {
            return a5;
        }
        int compareTo27 = Boolean.valueOf(A()).compareTo(Boolean.valueOf(ivVar.A()));
        if (compareTo27 != 0) {
            return compareTo27;
        }
        if (A() && (a4 = jh.a(this.f684a, ivVar.f684a)) != 0) {
            return a4;
        }
        int compareTo28 = Boolean.valueOf(B()).compareTo(Boolean.valueOf(ivVar.B()));
        if (compareTo28 != 0) {
            return compareTo28;
        }
        if (B() && (a3 = jh.a(this.f692c, ivVar.f692c)) != 0) {
            return a3;
        }
        int compareTo29 = Boolean.valueOf(C()).compareTo(Boolean.valueOf(ivVar.C()));
        if (compareTo29 != 0) {
            return compareTo29;
        }
        if (!C() || (a2 = jh.a(this.f707r, ivVar.f707r)) == 0) {
            return 0;
        }
        return a2;
    }

    public iv a(int i2) {
        this.f678a = i2;
        a(true);
        return this;
    }

    public iv a(ij ijVar) {
        this.f680a = ijVar;
        return this;
    }

    public iv a(String str) {
        this.f688b = str;
        return this;
    }

    public String a() {
        return this.f688b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m454a() {
        if (this.f688b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f691c == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f695f == null) {
            throw new js("Required field 'token' was not present! Struct: " + toString());
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
                m454a();
                return;
            }
            short s2 = a2.f828a;
            switch (s2) {
                case 1:
                    if (b2 == 11) {
                        this.f682a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f681a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f688b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f691c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f693d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f694e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f695f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f696g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f697h = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f698i = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 11) {
                        this.f699j = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 11) {
                        this.f700k = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 13:
                    if (b2 == 8) {
                        this.f678a = jrVar.m506a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 14:
                    if (b2 == 8) {
                        this.f686b = jrVar.m506a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 15:
                    if (b2 == 11) {
                        this.f701l = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 16:
                    if (b2 == 11) {
                        this.f702m = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 17:
                    if (b2 == 11) {
                        this.f703n = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 18:
                    if (b2 == 11) {
                        this.f704o = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 19:
                    if (b2 == 8) {
                        this.f690c = jrVar.m506a();
                        c(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 20:
                    if (b2 == 8) {
                        this.f680a = ij.a(jrVar.m506a());
                        continue;
                        jrVar.g();
                    }
                    break;
                case 21:
                    if (b2 == 2) {
                        this.f685a = jrVar.m517a();
                        d(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 22:
                    if (b2 == 10) {
                        this.f679a = jrVar.m507a();
                        e(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 23:
                    if (b2 == 10) {
                        this.f687b = jrVar.m507a();
                        f(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 24:
                    if (b2 == 11) {
                        this.f705p = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 25:
                    if (b2 == 11) {
                        this.f706q = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 26:
                    if (b2 == 2) {
                        this.f689b = jrVar.m517a();
                        g(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                default:
                    switch (s2) {
                        case 100:
                            if (b2 == 13) {
                                jq a3 = jrVar.m510a();
                                this.f684a = new HashMap(a3.f830a * 2);
                                for (int i2 = 0; i2 < a3.f830a; i2++) {
                                    this.f684a.put(jrVar.m513a(), jrVar.m513a());
                                }
                                jrVar.h();
                                break;
                            }
                            break;
                        case 101:
                            if (b2 == 2) {
                                this.f692c = jrVar.m517a();
                                h(true);
                                break;
                            }
                            break;
                        case 102:
                            if (b2 == 11) {
                                this.f707r = jrVar.m513a();
                                continue;
                            }
                            break;
                    }
                    jrVar.g();
                    break;
            }
            ju.a(jrVar, b2);
            jrVar.g();
        }
    }

    public void a(boolean z2) {
        this.f683a.set(0, z2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m455a() {
        return this.f682a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m456a(iv ivVar) {
        if (ivVar == null) {
            return false;
        }
        boolean a2 = m455a();
        boolean a3 = ivVar.m455a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f682a.equals(ivVar.f682a))) {
            return false;
        }
        boolean b2 = m457b();
        boolean b3 = ivVar.m457b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f681a.m408a(ivVar.f681a))) {
            return false;
        }
        boolean c2 = m458c();
        boolean c3 = ivVar.m458c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f688b.equals(ivVar.f688b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = ivVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f691c.equals(ivVar.f691c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = ivVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f693d.equals(ivVar.f693d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = ivVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f694e.equals(ivVar.f694e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = ivVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f695f.equals(ivVar.f695f))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = ivVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f696g.equals(ivVar.f696g))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = ivVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f697h.equals(ivVar.f697h))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = ivVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f698i.equals(ivVar.f698i))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = ivVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f699j.equals(ivVar.f699j))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = ivVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.f700k.equals(ivVar.f700k))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = ivVar.m();
        if ((m2 || m3) && (!m2 || !m3 || this.f678a != ivVar.f678a)) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = ivVar.n();
        if ((n2 || n3) && (!n2 || !n3 || this.f686b != ivVar.f686b)) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = ivVar.o();
        if ((o2 || o3) && (!o2 || !o3 || !this.f701l.equals(ivVar.f701l))) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = ivVar.p();
        if ((p2 || p3) && (!p2 || !p3 || !this.f702m.equals(ivVar.f702m))) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = ivVar.q();
        if ((q2 || q3) && (!q2 || !q3 || !this.f703n.equals(ivVar.f703n))) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = ivVar.r();
        if ((r2 || r3) && (!r2 || !r3 || !this.f704o.equals(ivVar.f704o))) {
            return false;
        }
        boolean s2 = s();
        boolean s3 = ivVar.s();
        if ((s2 || s3) && (!s2 || !s3 || this.f690c != ivVar.f690c)) {
            return false;
        }
        boolean t2 = t();
        boolean t3 = ivVar.t();
        if ((t2 || t3) && (!t2 || !t3 || !this.f680a.equals(ivVar.f680a))) {
            return false;
        }
        boolean u2 = u();
        boolean u3 = ivVar.u();
        if ((u2 || u3) && (!u2 || !u3 || this.f685a != ivVar.f685a)) {
            return false;
        }
        boolean v2 = v();
        boolean v3 = ivVar.v();
        if ((v2 || v3) && (!v2 || !v3 || this.f679a != ivVar.f679a)) {
            return false;
        }
        boolean w2 = w();
        boolean w3 = ivVar.w();
        if ((w2 || w3) && (!w2 || !w3 || this.f687b != ivVar.f687b)) {
            return false;
        }
        boolean x2 = x();
        boolean x3 = ivVar.x();
        if ((x2 || x3) && (!x2 || !x3 || !this.f705p.equals(ivVar.f705p))) {
            return false;
        }
        boolean y2 = y();
        boolean y3 = ivVar.y();
        if ((y2 || y3) && (!y2 || !y3 || !this.f706q.equals(ivVar.f706q))) {
            return false;
        }
        boolean z2 = z();
        boolean z3 = ivVar.z();
        if ((z2 || z3) && (!z2 || !z3 || this.f689b != ivVar.f689b)) {
            return false;
        }
        boolean A2 = A();
        boolean A3 = ivVar.A();
        if ((A2 || A3) && (!A2 || !A3 || !this.f684a.equals(ivVar.f684a))) {
            return false;
        }
        boolean B2 = B();
        boolean B3 = ivVar.B();
        if ((B2 || B3) && (!B2 || !B3 || this.f692c != ivVar.f692c)) {
            return false;
        }
        boolean C2 = C();
        boolean C3 = ivVar.C();
        if (C2 || C3) {
            return C2 && C3 && this.f707r.equals(ivVar.f707r);
        }
        return true;
    }

    public iv b(int i2) {
        this.f686b = i2;
        b(true);
        return this;
    }

    public iv b(String str) {
        this.f691c = str;
        return this;
    }

    public String b() {
        return this.f691c;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m454a();
        jrVar.a(f677a);
        if (this.f682a != null && m455a()) {
            jrVar.a(f9124a);
            jrVar.a(this.f682a);
            jrVar.b();
        }
        if (this.f681a != null && m457b()) {
            jrVar.a(f9125b);
            this.f681a.b(jrVar);
            jrVar.b();
        }
        if (this.f688b != null) {
            jrVar.a(f9126c);
            jrVar.a(this.f688b);
            jrVar.b();
        }
        if (this.f691c != null) {
            jrVar.a(d);
            jrVar.a(this.f691c);
            jrVar.b();
        }
        if (this.f693d != null && e()) {
            jrVar.a(e);
            jrVar.a(this.f693d);
            jrVar.b();
        }
        if (this.f694e != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f694e);
            jrVar.b();
        }
        if (this.f695f != null) {
            jrVar.a(g);
            jrVar.a(this.f695f);
            jrVar.b();
        }
        if (this.f696g != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f696g);
            jrVar.b();
        }
        if (this.f697h != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f697h);
            jrVar.b();
        }
        if (this.f698i != null && j()) {
            jrVar.a(j);
            jrVar.a(this.f698i);
            jrVar.b();
        }
        if (this.f699j != null && k()) {
            jrVar.a(k);
            jrVar.a(this.f699j);
            jrVar.b();
        }
        if (this.f700k != null && l()) {
            jrVar.a(l);
            jrVar.a(this.f700k);
            jrVar.b();
        }
        if (m()) {
            jrVar.a(m);
            jrVar.mo504a(this.f678a);
            jrVar.b();
        }
        if (n()) {
            jrVar.a(n);
            jrVar.mo504a(this.f686b);
            jrVar.b();
        }
        if (this.f701l != null && o()) {
            jrVar.a(o);
            jrVar.a(this.f701l);
            jrVar.b();
        }
        if (this.f702m != null && p()) {
            jrVar.a(p);
            jrVar.a(this.f702m);
            jrVar.b();
        }
        if (this.f703n != null && q()) {
            jrVar.a(q);
            jrVar.a(this.f703n);
            jrVar.b();
        }
        if (this.f704o != null && r()) {
            jrVar.a(r);
            jrVar.a(this.f704o);
            jrVar.b();
        }
        if (s()) {
            jrVar.a(s);
            jrVar.mo504a(this.f690c);
            jrVar.b();
        }
        if (this.f680a != null && t()) {
            jrVar.a(t);
            jrVar.mo504a(this.f680a.a());
            jrVar.b();
        }
        if (u()) {
            jrVar.a(u);
            jrVar.a(this.f685a);
            jrVar.b();
        }
        if (v()) {
            jrVar.a(v);
            jrVar.a(this.f679a);
            jrVar.b();
        }
        if (w()) {
            jrVar.a(w);
            jrVar.a(this.f687b);
            jrVar.b();
        }
        if (this.f705p != null && x()) {
            jrVar.a(x);
            jrVar.a(this.f705p);
            jrVar.b();
        }
        if (this.f706q != null && y()) {
            jrVar.a(y);
            jrVar.a(this.f706q);
            jrVar.b();
        }
        if (z()) {
            jrVar.a(z);
            jrVar.a(this.f689b);
            jrVar.b();
        }
        if (this.f684a != null && A()) {
            jrVar.a(A);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f684a.size()));
            for (Map.Entry<String, String> entry : this.f684a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (B()) {
            jrVar.a(B);
            jrVar.a(this.f692c);
            jrVar.b();
        }
        if (this.f707r != null && C()) {
            jrVar.a(C);
            jrVar.a(this.f707r);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z2) {
        this.f683a.set(1, z2);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m457b() {
        return this.f681a != null;
    }

    public iv c(int i2) {
        this.f690c = i2;
        c(true);
        return this;
    }

    public iv c(String str) {
        this.f693d = str;
        return this;
    }

    public String c() {
        return this.f695f;
    }

    public void c(boolean z2) {
        this.f683a.set(2, z2);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m458c() {
        return this.f688b != null;
    }

    public iv d(String str) {
        this.f694e = str;
        return this;
    }

    public void d(boolean z2) {
        this.f683a.set(3, z2);
    }

    public boolean d() {
        return this.f691c != null;
    }

    public iv e(String str) {
        this.f695f = str;
        return this;
    }

    public void e(boolean z2) {
        this.f683a.set(4, z2);
    }

    public boolean e() {
        return this.f693d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof iv)) {
            return m456a((iv) obj);
        }
        return false;
    }

    public iv f(String str) {
        this.f696g = str;
        return this;
    }

    public void f(boolean z2) {
        this.f683a.set(5, z2);
    }

    public boolean f() {
        return this.f694e != null;
    }

    public iv g(String str) {
        this.f697h = str;
        return this;
    }

    public void g(boolean z2) {
        this.f683a.set(6, z2);
    }

    public boolean g() {
        return this.f695f != null;
    }

    public iv h(String str) {
        this.f700k = str;
        return this;
    }

    public void h(boolean z2) {
        this.f683a.set(7, z2);
    }

    public boolean h() {
        return this.f696g != null;
    }

    public int hashCode() {
        return 0;
    }

    public iv i(String str) {
        this.f704o = str;
        return this;
    }

    public boolean i() {
        return this.f697h != null;
    }

    public boolean j() {
        return this.f698i != null;
    }

    public boolean k() {
        return this.f699j != null;
    }

    public boolean l() {
        return this.f700k != null;
    }

    public boolean m() {
        return this.f683a.get(0);
    }

    public boolean n() {
        return this.f683a.get(1);
    }

    public boolean o() {
        return this.f701l != null;
    }

    public boolean p() {
        return this.f702m != null;
    }

    public boolean q() {
        return this.f703n != null;
    }

    public boolean r() {
        return this.f704o != null;
    }

    public boolean s() {
        return this.f683a.get(2);
    }

    public boolean t() {
        return this.f680a != null;
    }

    public String toString() {
        boolean z2;
        StringBuilder sb = new StringBuilder("XmPushActionRegistration(");
        boolean z3 = false;
        if (m455a()) {
            sb.append("debug:");
            String str = this.f682a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z2 = false;
        } else {
            z2 = true;
        }
        if (m457b()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f681a;
            if (ikVar == null) {
                sb.append("null");
            } else {
                sb.append(ikVar);
            }
        } else {
            z3 = z2;
        }
        if (!z3) {
            sb.append(", ");
        }
        sb.append("id:");
        String str2 = this.f688b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f691c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (e()) {
            sb.append(", ");
            sb.append("appVersion:");
            String str4 = this.f693d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f694e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        sb.append(", ");
        sb.append("token:");
        String str6 = this.f695f;
        if (str6 == null) {
            sb.append("null");
        } else {
            sb.append(str6);
        }
        if (h()) {
            sb.append(", ");
            sb.append("deviceId:");
            String str7 = this.f696g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str8 = this.f697h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("sdkVersion:");
            String str9 = this.f698i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("regId:");
            String str10 = this.f699j;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("pushSdkVersionName:");
            String str11 = this.f700k;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("pushSdkVersionCode:");
            sb.append(this.f678a);
        }
        if (n()) {
            sb.append(", ");
            sb.append("appVersionCode:");
            sb.append(this.f686b);
        }
        if (o()) {
            sb.append(", ");
            sb.append("androidId:");
            String str12 = this.f701l;
            if (str12 == null) {
                sb.append("null");
            } else {
                sb.append(str12);
            }
        }
        if (p()) {
            sb.append(", ");
            sb.append("imei:");
            String str13 = this.f702m;
            if (str13 == null) {
                sb.append("null");
            } else {
                sb.append(str13);
            }
        }
        if (q()) {
            sb.append(", ");
            sb.append("serial:");
            String str14 = this.f703n;
            if (str14 == null) {
                sb.append("null");
            } else {
                sb.append(str14);
            }
        }
        if (r()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            String str15 = this.f704o;
            if (str15 == null) {
                sb.append("null");
            } else {
                sb.append(str15);
            }
        }
        if (s()) {
            sb.append(", ");
            sb.append("spaceId:");
            sb.append(this.f690c);
        }
        if (t()) {
            sb.append(", ");
            sb.append("reason:");
            ij ijVar = this.f680a;
            if (ijVar == null) {
                sb.append("null");
            } else {
                sb.append(ijVar);
            }
        }
        if (u()) {
            sb.append(", ");
            sb.append("validateToken:");
            sb.append(this.f685a);
        }
        if (v()) {
            sb.append(", ");
            sb.append("miid:");
            sb.append(this.f679a);
        }
        if (w()) {
            sb.append(", ");
            sb.append("createdTs:");
            sb.append(this.f687b);
        }
        if (x()) {
            sb.append(", ");
            sb.append("subImei:");
            String str16 = this.f705p;
            if (str16 == null) {
                sb.append("null");
            } else {
                sb.append(str16);
            }
        }
        if (y()) {
            sb.append(", ");
            sb.append("subImeiMd5:");
            String str17 = this.f706q;
            if (str17 == null) {
                sb.append("null");
            } else {
                sb.append(str17);
            }
        }
        if (z()) {
            sb.append(", ");
            sb.append("isHybridFrame:");
            sb.append(this.f689b);
        }
        if (A()) {
            sb.append(", ");
            sb.append("connectionAttrs:");
            Map<String, String> map = this.f684a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (B()) {
            sb.append(", ");
            sb.append("cleanOldRegInfo:");
            sb.append(this.f692c);
        }
        if (C()) {
            sb.append(", ");
            sb.append("oldRegId:");
            String str18 = this.f707r;
            if (str18 == null) {
                sb.append("null");
            } else {
                sb.append(str18);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public boolean u() {
        return this.f683a.get(3);
    }

    public boolean v() {
        return this.f683a.get(4);
    }

    public boolean w() {
        return this.f683a.get(5);
    }

    public boolean x() {
        return this.f705p != null;
    }

    public boolean y() {
        return this.f706q != null;
    }

    public boolean z() {
        return this.f683a.get(6);
    }
}
