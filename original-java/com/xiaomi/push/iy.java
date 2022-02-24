package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class iy implements jg<iy, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public ih f738a;

    /* renamed from: a  reason: collision with other field name */
    public ik f739a;

    /* renamed from: a  reason: collision with other field name */
    public String f740a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f742a;

    /* renamed from: b  reason: collision with other field name */
    public String f744b;

    /* renamed from: c  reason: collision with other field name */
    public String f745c;

    /* renamed from: d  reason: collision with other field name */
    public String f746d;

    /* renamed from: e  reason: collision with other field name */
    public String f747e;

    /* renamed from: f  reason: collision with other field name */
    public String f748f;

    /* renamed from: g  reason: collision with other field name */
    public String f749g;

    /* renamed from: h  reason: collision with other field name */
    public String f750h;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f737a = new jw("XmPushActionSendMessage");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9133a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9134b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9135c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 12, 8);
    private static final jo i = new jo("", (byte) 2, 9);
    private static final jo j = new jo("", (byte) 13, 10);
    private static final jo k = new jo("", (byte) 11, 11);
    private static final jo l = new jo("", (byte) 11, 12);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f741a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    public boolean f743a = true;

    /* renamed from: a */
    public int compareTo(iy iyVar) {
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
        if (!iy.class.equals(iyVar.getClass())) {
            return iy.class.getName().compareTo(iyVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m469a()).compareTo(Boolean.valueOf(iyVar.m469a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m469a() && (a13 = jh.a(this.f740a, iyVar.f740a)) != 0) {
            return a13;
        }
        int compareTo2 = Boolean.valueOf(m471b()).compareTo(Boolean.valueOf(iyVar.m471b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m471b() && (a12 = jh.a(this.f739a, iyVar.f739a)) != 0) {
            return a12;
        }
        int compareTo3 = Boolean.valueOf(m472c()).compareTo(Boolean.valueOf(iyVar.m472c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m472c() && (a11 = jh.a(this.f744b, iyVar.f744b)) != 0) {
            return a11;
        }
        int compareTo4 = Boolean.valueOf(m473d()).compareTo(Boolean.valueOf(iyVar.m473d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (m473d() && (a10 = jh.a(this.f745c, iyVar.f745c)) != 0) {
            return a10;
        }
        int compareTo5 = Boolean.valueOf(m474e()).compareTo(Boolean.valueOf(iyVar.m474e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (m474e() && (a9 = jh.a(this.f746d, iyVar.f746d)) != 0) {
            return a9;
        }
        int compareTo6 = Boolean.valueOf(m475f()).compareTo(Boolean.valueOf(iyVar.m475f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (m475f() && (a8 = jh.a(this.f747e, iyVar.f747e)) != 0) {
            return a8;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(iyVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a7 = jh.a(this.f748f, iyVar.f748f)) != 0) {
            return a7;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(iyVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a6 = jh.a(this.f738a, iyVar.f738a)) != 0) {
            return a6;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(iyVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a5 = jh.a(this.f743a, iyVar.f743a)) != 0) {
            return a5;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(iyVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a4 = jh.a(this.f742a, iyVar.f742a)) != 0) {
            return a4;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(iyVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a3 = jh.a(this.f749g, iyVar.f749g)) != 0) {
            return a3;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(iyVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (!l() || (a2 = jh.a(this.f750h, iyVar.f750h)) == 0) {
            return 0;
        }
        return a2;
    }

    public ih a() {
        return this.f738a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m467a() {
        return this.f744b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m468a() {
        if (this.f744b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f745c == null) {
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
                m468a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f740a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f739a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f744b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f745c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f746d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f747e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f748f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 12) {
                        ih ihVar = new ih();
                        this.f738a = ihVar;
                        ihVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 2) {
                        this.f743a = jrVar.m517a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 13) {
                        jq a3 = jrVar.m510a();
                        this.f742a = new HashMap(a3.f830a * 2);
                        for (int i2 = 0; i2 < a3.f830a; i2++) {
                            this.f742a.put(jrVar.m513a(), jrVar.m513a());
                        }
                        jrVar.h();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 11) {
                        this.f749g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 11) {
                        this.f750h = jrVar.m513a();
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
        this.f741a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m469a() {
        return this.f740a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m470a(iy iyVar) {
        if (iyVar == null) {
            return false;
        }
        boolean a2 = m469a();
        boolean a3 = iyVar.m469a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f740a.equals(iyVar.f740a))) {
            return false;
        }
        boolean b2 = m471b();
        boolean b3 = iyVar.m471b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f739a.m408a(iyVar.f739a))) {
            return false;
        }
        boolean c2 = m472c();
        boolean c3 = iyVar.m472c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f744b.equals(iyVar.f744b))) {
            return false;
        }
        boolean d2 = m473d();
        boolean d3 = iyVar.m473d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f745c.equals(iyVar.f745c))) {
            return false;
        }
        boolean e2 = m474e();
        boolean e3 = iyVar.m474e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f746d.equals(iyVar.f746d))) {
            return false;
        }
        boolean f2 = m475f();
        boolean f3 = iyVar.m475f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f747e.equals(iyVar.f747e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = iyVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f748f.equals(iyVar.f748f))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = iyVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f738a.m391a(iyVar.f738a))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = iyVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.f743a != iyVar.f743a)) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = iyVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f742a.equals(iyVar.f742a))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = iyVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f749g.equals(iyVar.f749g))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = iyVar.l();
        if (l2 || l3) {
            return l2 && l3 && this.f750h.equals(iyVar.f750h);
        }
        return true;
    }

    public String b() {
        return this.f745c;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m468a();
        jrVar.a(f737a);
        if (this.f740a != null && m469a()) {
            jrVar.a(f9133a);
            jrVar.a(this.f740a);
            jrVar.b();
        }
        if (this.f739a != null && m471b()) {
            jrVar.a(f9134b);
            this.f739a.b(jrVar);
            jrVar.b();
        }
        if (this.f744b != null) {
            jrVar.a(f9135c);
            jrVar.a(this.f744b);
            jrVar.b();
        }
        if (this.f745c != null) {
            jrVar.a(d);
            jrVar.a(this.f745c);
            jrVar.b();
        }
        if (this.f746d != null && m474e()) {
            jrVar.a(e);
            jrVar.a(this.f746d);
            jrVar.b();
        }
        if (this.f747e != null && m475f()) {
            jrVar.a(f);
            jrVar.a(this.f747e);
            jrVar.b();
        }
        if (this.f748f != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f748f);
            jrVar.b();
        }
        if (this.f738a != null && h()) {
            jrVar.a(h);
            this.f738a.b(jrVar);
            jrVar.b();
        }
        if (i()) {
            jrVar.a(i);
            jrVar.a(this.f743a);
            jrVar.b();
        }
        if (this.f742a != null && j()) {
            jrVar.a(j);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f742a.size()));
            for (Map.Entry<String, String> entry : this.f742a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (this.f749g != null && k()) {
            jrVar.a(k);
            jrVar.a(this.f749g);
            jrVar.b();
        }
        if (this.f750h != null && l()) {
            jrVar.a(l);
            jrVar.a(this.f750h);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m471b() {
        return this.f739a != null;
    }

    public String c() {
        return this.f747e;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m472c() {
        return this.f744b != null;
    }

    public String d() {
        return this.f748f;
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m473d() {
        return this.f745c != null;
    }

    public String e() {
        return this.f749g;
    }

    /* renamed from: e  reason: collision with other method in class */
    public boolean m474e() {
        return this.f746d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof iy)) {
            return m470a((iy) obj);
        }
        return false;
    }

    public String f() {
        return this.f750h;
    }

    /* renamed from: f  reason: collision with other method in class */
    public boolean m475f() {
        return this.f747e != null;
    }

    public boolean g() {
        return this.f748f != null;
    }

    public boolean h() {
        return this.f738a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f741a.get(0);
    }

    public boolean j() {
        return this.f742a != null;
    }

    public boolean k() {
        return this.f749g != null;
    }

    public boolean l() {
        return this.f750h != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSendMessage(");
        boolean z2 = false;
        if (m469a()) {
            sb.append("debug:");
            String str = this.f740a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m471b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f739a;
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
        String str2 = this.f744b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f745c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (m474e()) {
            sb.append(", ");
            sb.append("packageName:");
            String str4 = this.f746d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (m475f()) {
            sb.append(", ");
            sb.append("topic:");
            String str5 = this.f747e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str6 = this.f748f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("message:");
            ih ihVar = this.f738a;
            if (ihVar == null) {
                sb.append("null");
            } else {
                sb.append(ihVar);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("needAck:");
            sb.append(this.f743a);
        }
        if (j()) {
            sb.append(", ");
            sb.append("params:");
            Map<String, String> map = this.f742a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f749g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("userAccount:");
            String str8 = this.f750h;
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
