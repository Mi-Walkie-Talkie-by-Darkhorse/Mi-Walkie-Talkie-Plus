package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class il implements jg<il, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f583a;

    /* renamed from: a  reason: collision with other field name */
    public long f584a;

    /* renamed from: a  reason: collision with other field name */
    public ik f585a;

    /* renamed from: a  reason: collision with other field name */
    public iy f586a;

    /* renamed from: a  reason: collision with other field name */
    public String f587a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f589a;

    /* renamed from: a  reason: collision with other field name */
    public short f590a;

    /* renamed from: b  reason: collision with other field name */
    public String f592b;

    /* renamed from: b  reason: collision with other field name */
    public short f593b;

    /* renamed from: c  reason: collision with other field name */
    public String f594c;

    /* renamed from: d  reason: collision with other field name */
    public String f595d;

    /* renamed from: e  reason: collision with other field name */
    public String f596e;

    /* renamed from: f  reason: collision with other field name */
    public String f597f;

    /* renamed from: g  reason: collision with other field name */
    public String f598g;

    /* renamed from: h  reason: collision with other field name */
    public String f599h;

    /* renamed from: i  reason: collision with other field name */
    public String f600i;

    /* renamed from: j  reason: collision with other field name */
    public String f601j;

    /* renamed from: k  reason: collision with other field name */
    public String f602k;

    /* renamed from: l  reason: collision with other field name */
    public String f603l;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f582a = new jw("XmPushActionAckMessage");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9101a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9102b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9103c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 12, 8);
    private static final jo i = new jo("", (byte) 11, 9);
    private static final jo j = new jo("", (byte) 11, 10);
    private static final jo k = new jo("", (byte) 2, 11);
    private static final jo l = new jo("", (byte) 11, 12);
    private static final jo m = new jo("", (byte) 11, 13);
    private static final jo n = new jo("", (byte) 11, 14);
    private static final jo o = new jo("", (byte) 6, 15);
    private static final jo p = new jo("", (byte) 6, 16);
    private static final jo q = new jo("", (byte) 11, 20);
    private static final jo r = new jo("", (byte) 11, 21);
    private static final jo s = new jo("", (byte) 8, 22);
    private static final jo t = new jo("", (byte) 13, 23);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f588a = new BitSet(5);

    /* renamed from: a  reason: collision with other field name */
    public boolean f591a = false;

    /* renamed from: a */
    public int compareTo(il ilVar) {
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
        if (!il.class.equals(ilVar.getClass())) {
            return il.class.getName().compareTo(ilVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m409a()).compareTo(Boolean.valueOf(ilVar.m409a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m409a() && (a21 = jh.a(this.f587a, ilVar.f587a)) != 0) {
            return a21;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ilVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a20 = jh.a(this.f585a, ilVar.f585a)) != 0) {
            return a20;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ilVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a19 = jh.a(this.f592b, ilVar.f592b)) != 0) {
            return a19;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ilVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a18 = jh.a(this.f594c, ilVar.f594c)) != 0) {
            return a18;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ilVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a17 = jh.a(this.f584a, ilVar.f584a)) != 0) {
            return a17;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ilVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a16 = jh.a(this.f595d, ilVar.f595d)) != 0) {
            return a16;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ilVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a15 = jh.a(this.f596e, ilVar.f596e)) != 0) {
            return a15;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(ilVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a14 = jh.a(this.f586a, ilVar.f586a)) != 0) {
            return a14;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(ilVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a13 = jh.a(this.f597f, ilVar.f597f)) != 0) {
            return a13;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(ilVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a12 = jh.a(this.f598g, ilVar.f598g)) != 0) {
            return a12;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(ilVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a11 = jh.a(this.f591a, ilVar.f591a)) != 0) {
            return a11;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(ilVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (l() && (a10 = jh.a(this.f599h, ilVar.f599h)) != 0) {
            return a10;
        }
        int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(ilVar.m()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (m() && (a9 = jh.a(this.f600i, ilVar.f600i)) != 0) {
            return a9;
        }
        int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(ilVar.n()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (n() && (a8 = jh.a(this.f601j, ilVar.f601j)) != 0) {
            return a8;
        }
        int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(ilVar.o()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (o() && (a7 = jh.a(this.f590a, ilVar.f590a)) != 0) {
            return a7;
        }
        int compareTo16 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(ilVar.p()));
        if (compareTo16 != 0) {
            return compareTo16;
        }
        if (p() && (a6 = jh.a(this.f593b, ilVar.f593b)) != 0) {
            return a6;
        }
        int compareTo17 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(ilVar.q()));
        if (compareTo17 != 0) {
            return compareTo17;
        }
        if (q() && (a5 = jh.a(this.f602k, ilVar.f602k)) != 0) {
            return a5;
        }
        int compareTo18 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(ilVar.r()));
        if (compareTo18 != 0) {
            return compareTo18;
        }
        if (r() && (a4 = jh.a(this.f603l, ilVar.f603l)) != 0) {
            return a4;
        }
        int compareTo19 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(ilVar.s()));
        if (compareTo19 != 0) {
            return compareTo19;
        }
        if (s() && (a3 = jh.a(this.f583a, ilVar.f583a)) != 0) {
            return a3;
        }
        int compareTo20 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(ilVar.t()));
        if (compareTo20 != 0) {
            return compareTo20;
        }
        if (!t() || (a2 = jh.a(this.f589a, ilVar.f589a)) == 0) {
            return 0;
        }
        return a2;
    }

    public il a(long j2) {
        this.f584a = j2;
        a(true);
        return this;
    }

    public il a(String str) {
        this.f592b = str;
        return this;
    }

    public il a(short s2) {
        this.f590a = s2;
        c(true);
        return this;
    }

    public void a() {
        if (this.f592b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f594c == null) {
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
                    a();
                    return;
                }
                throw new js("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f587a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f585a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f592b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f594c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 10) {
                        this.f584a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f595d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f596e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 12) {
                        iy iyVar = new iy();
                        this.f586a = iyVar;
                        iyVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f597f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f598g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 2) {
                        this.f591a = jrVar.m517a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 11) {
                        this.f599h = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 13:
                    if (b2 == 11) {
                        this.f600i = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 14:
                    if (b2 == 11) {
                        this.f601j = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 15:
                    if (b2 == 6) {
                        this.f590a = jrVar.m515a();
                        c(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 16:
                    if (b2 == 6) {
                        this.f593b = jrVar.m515a();
                        d(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 20:
                    if (b2 == 11) {
                        this.f602k = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 21:
                    if (b2 == 11) {
                        this.f603l = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 22:
                    if (b2 == 8) {
                        this.f583a = jrVar.m506a();
                        e(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 23:
                    if (b2 == 13) {
                        jq a3 = jrVar.m510a();
                        this.f589a = new HashMap(a3.f830a * 2);
                        for (int i2 = 0; i2 < a3.f830a; i2++) {
                            this.f589a.put(jrVar.m513a(), jrVar.m513a());
                        }
                        jrVar.h();
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
        this.f588a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m409a() {
        return this.f587a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m410a(il ilVar) {
        if (ilVar == null) {
            return false;
        }
        boolean a2 = m409a();
        boolean a3 = ilVar.m409a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f587a.equals(ilVar.f587a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = ilVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f585a.m408a(ilVar.f585a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = ilVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f592b.equals(ilVar.f592b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = ilVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.f594c.equals(ilVar.f594c))) || this.f584a != ilVar.f584a) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = ilVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f595d.equals(ilVar.f595d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = ilVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f596e.equals(ilVar.f596e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = ilVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f586a.m470a(ilVar.f586a))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = ilVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f597f.equals(ilVar.f597f))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = ilVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f598g.equals(ilVar.f598g))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = ilVar.k();
        if ((k2 || k3) && (!k2 || !k3 || this.f591a != ilVar.f591a)) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = ilVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.f599h.equals(ilVar.f599h))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = ilVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.f600i.equals(ilVar.f600i))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = ilVar.n();
        if ((n2 || n3) && (!n2 || !n3 || !this.f601j.equals(ilVar.f601j))) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = ilVar.o();
        if ((o2 || o3) && (!o2 || !o3 || this.f590a != ilVar.f590a)) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = ilVar.p();
        if ((p2 || p3) && (!p2 || !p3 || this.f593b != ilVar.f593b)) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = ilVar.q();
        if ((q2 || q3) && (!q2 || !q3 || !this.f602k.equals(ilVar.f602k))) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = ilVar.r();
        if ((r2 || r3) && (!r2 || !r3 || !this.f603l.equals(ilVar.f603l))) {
            return false;
        }
        boolean s2 = s();
        boolean s3 = ilVar.s();
        if ((s2 || s3) && (!s2 || !s3 || this.f583a != ilVar.f583a)) {
            return false;
        }
        boolean t2 = t();
        boolean t3 = ilVar.t();
        if (t2 || t3) {
            return t2 && t3 && this.f589a.equals(ilVar.f589a);
        }
        return true;
    }

    public il b(String str) {
        this.f594c = str;
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f582a);
        if (this.f587a != null && m409a()) {
            jrVar.a(f9101a);
            jrVar.a(this.f587a);
            jrVar.b();
        }
        if (this.f585a != null && b()) {
            jrVar.a(f9102b);
            this.f585a.b(jrVar);
            jrVar.b();
        }
        if (this.f592b != null) {
            jrVar.a(f9103c);
            jrVar.a(this.f592b);
            jrVar.b();
        }
        if (this.f594c != null) {
            jrVar.a(d);
            jrVar.a(this.f594c);
            jrVar.b();
        }
        jrVar.a(e);
        jrVar.a(this.f584a);
        jrVar.b();
        if (this.f595d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f595d);
            jrVar.b();
        }
        if (this.f596e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f596e);
            jrVar.b();
        }
        if (this.f586a != null && h()) {
            jrVar.a(h);
            this.f586a.b(jrVar);
            jrVar.b();
        }
        if (this.f597f != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f597f);
            jrVar.b();
        }
        if (this.f598g != null && j()) {
            jrVar.a(j);
            jrVar.a(this.f598g);
            jrVar.b();
        }
        if (k()) {
            jrVar.a(k);
            jrVar.a(this.f591a);
            jrVar.b();
        }
        if (this.f599h != null && l()) {
            jrVar.a(l);
            jrVar.a(this.f599h);
            jrVar.b();
        }
        if (this.f600i != null && m()) {
            jrVar.a(m);
            jrVar.a(this.f600i);
            jrVar.b();
        }
        if (this.f601j != null && n()) {
            jrVar.a(n);
            jrVar.a(this.f601j);
            jrVar.b();
        }
        if (o()) {
            jrVar.a(o);
            jrVar.a(this.f590a);
            jrVar.b();
        }
        if (p()) {
            jrVar.a(p);
            jrVar.a(this.f593b);
            jrVar.b();
        }
        if (this.f602k != null && q()) {
            jrVar.a(q);
            jrVar.a(this.f602k);
            jrVar.b();
        }
        if (this.f603l != null && r()) {
            jrVar.a(r);
            jrVar.a(this.f603l);
            jrVar.b();
        }
        if (s()) {
            jrVar.a(s);
            jrVar.mo504a(this.f583a);
            jrVar.b();
        }
        if (this.f589a != null && t()) {
            jrVar.a(t);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f589a.size()));
            for (Map.Entry<String, String> entry : this.f589a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f588a.set(1, z);
    }

    public boolean b() {
        return this.f585a != null;
    }

    public il c(String str) {
        this.f595d = str;
        return this;
    }

    public void c(boolean z) {
        this.f588a.set(2, z);
    }

    public boolean c() {
        return this.f592b != null;
    }

    public il d(String str) {
        this.f596e = str;
        return this;
    }

    public void d(boolean z) {
        this.f588a.set(3, z);
    }

    public boolean d() {
        return this.f594c != null;
    }

    public void e(boolean z) {
        this.f588a.set(4, z);
    }

    public boolean e() {
        return this.f588a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof il)) {
            return m410a((il) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f595d != null;
    }

    public boolean g() {
        return this.f596e != null;
    }

    public boolean h() {
        return this.f586a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f597f != null;
    }

    public boolean j() {
        return this.f598g != null;
    }

    public boolean k() {
        return this.f588a.get(1);
    }

    public boolean l() {
        return this.f599h != null;
    }

    public boolean m() {
        return this.f600i != null;
    }

    public boolean n() {
        return this.f601j != null;
    }

    public boolean o() {
        return this.f588a.get(2);
    }

    public boolean p() {
        return this.f588a.get(3);
    }

    public boolean q() {
        return this.f602k != null;
    }

    public boolean r() {
        return this.f603l != null;
    }

    public boolean s() {
        return this.f588a.get(4);
    }

    public boolean t() {
        return this.f589a != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionAckMessage(");
        boolean z2 = false;
        if (m409a()) {
            sb.append("debug:");
            String str = this.f587a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f585a;
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
        String str2 = this.f592b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f594c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("messageTs:");
        sb.append(this.f584a);
        if (f()) {
            sb.append(", ");
            sb.append("topic:");
            String str4 = this.f595d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str5 = this.f596e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("request:");
            iy iyVar = this.f586a;
            if (iyVar == null) {
                sb.append("null");
            } else {
                sb.append(iyVar);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f597f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f598g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("isOnline:");
            sb.append(this.f591a);
        }
        if (l()) {
            sb.append(", ");
            sb.append("regId:");
            String str8 = this.f599h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("callbackUrl:");
            String str9 = this.f600i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("userAccount:");
            String str10 = this.f601j;
            if (str10 == null) {
                sb.append("null");
            } else {
                sb.append(str10);
            }
        }
        if (o()) {
            sb.append(", ");
            sb.append("deviceStatus:");
            sb.append((int) this.f590a);
        }
        if (p()) {
            sb.append(", ");
            sb.append("geoMsgStatus:");
            sb.append((int) this.f593b);
        }
        if (q()) {
            sb.append(", ");
            sb.append("imeiMd5:");
            String str11 = this.f602k;
            if (str11 == null) {
                sb.append("null");
            } else {
                sb.append(str11);
            }
        }
        if (r()) {
            sb.append(", ");
            sb.append("deviceId:");
            String str12 = this.f603l;
            if (str12 == null) {
                sb.append("null");
            } else {
                sb.append(str12);
            }
        }
        if (s()) {
            sb.append(", ");
            sb.append("passThrough:");
            sb.append(this.f583a);
        }
        if (t()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f589a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
