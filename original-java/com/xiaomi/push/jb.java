package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class jb implements jg<jb, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f774a;

    /* renamed from: a  reason: collision with other field name */
    public ik f775a;

    /* renamed from: a  reason: collision with other field name */
    public String f776a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f777a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public boolean f778a = true;

    /* renamed from: b  reason: collision with other field name */
    public String f779b;

    /* renamed from: c  reason: collision with other field name */
    public String f780c;

    /* renamed from: d  reason: collision with other field name */
    public String f781d;

    /* renamed from: e  reason: collision with other field name */
    public String f782e;

    /* renamed from: f  reason: collision with other field name */
    public String f783f;

    /* renamed from: g  reason: collision with other field name */
    public String f784g;

    /* renamed from: h  reason: collision with other field name */
    public String f785h;

    /* renamed from: i  reason: collision with other field name */
    public String f786i;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f773a = new jw("XmPushActionUnRegistration");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9145a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9146b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9147c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 11, 8);
    private static final jo i = new jo("", (byte) 11, 9);
    private static final jo j = new jo("", (byte) 11, 10);
    private static final jo k = new jo("", (byte) 2, 11);
    private static final jo l = new jo("", (byte) 10, 12);

    /* renamed from: a */
    public int compareTo(jb jbVar) {
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
        if (!jb.class.equals(jbVar.getClass())) {
            return jb.class.getName().compareTo(jbVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m483a()).compareTo(Boolean.valueOf(jbVar.m483a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m483a() && (a13 = jh.a(this.f776a, jbVar.f776a)) != 0) {
            return a13;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(jbVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a12 = jh.a(this.f775a, jbVar.f775a)) != 0) {
            return a12;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(jbVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a11 = jh.a(this.f779b, jbVar.f779b)) != 0) {
            return a11;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(jbVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a10 = jh.a(this.f780c, jbVar.f780c)) != 0) {
            return a10;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(jbVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a9 = jh.a(this.f781d, jbVar.f781d)) != 0) {
            return a9;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(jbVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a8 = jh.a(this.f782e, jbVar.f782e)) != 0) {
            return a8;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(jbVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a7 = jh.a(this.f783f, jbVar.f783f)) != 0) {
            return a7;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(jbVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a6 = jh.a(this.f784g, jbVar.f784g)) != 0) {
            return a6;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(jbVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a5 = jh.a(this.f785h, jbVar.f785h)) != 0) {
            return a5;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(jbVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a4 = jh.a(this.f786i, jbVar.f786i)) != 0) {
            return a4;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(jbVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a3 = jh.a(this.f778a, jbVar.f778a)) != 0) {
            return a3;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(jbVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (!l() || (a2 = jh.a(this.f774a, jbVar.f774a)) == 0) {
            return 0;
        }
        return a2;
    }

    public jb a(String str) {
        this.f779b = str;
        return this;
    }

    public void a() {
        if (this.f779b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f780c == null) {
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
                a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f776a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f775a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f779b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f780c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f781d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f782e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f783f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f784g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f785h = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f786i = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 2) {
                        this.f778a = jrVar.m517a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 10) {
                        this.f774a = jrVar.m507a();
                        b(true);
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
        this.f777a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m483a() {
        return this.f776a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m484a(jb jbVar) {
        if (jbVar == null) {
            return false;
        }
        boolean a2 = m483a();
        boolean a3 = jbVar.m483a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f776a.equals(jbVar.f776a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = jbVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f775a.m408a(jbVar.f775a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = jbVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f779b.equals(jbVar.f779b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = jbVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f780c.equals(jbVar.f780c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = jbVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f781d.equals(jbVar.f781d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = jbVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f782e.equals(jbVar.f782e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = jbVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f783f.equals(jbVar.f783f))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = jbVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f784g.equals(jbVar.f784g))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = jbVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f785h.equals(jbVar.f785h))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = jbVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f786i.equals(jbVar.f786i))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = jbVar.k();
        if ((k2 || k3) && (!k2 || !k3 || this.f778a != jbVar.f778a)) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = jbVar.l();
        if (l2 || l3) {
            return l2 && l3 && this.f774a == jbVar.f774a;
        }
        return true;
    }

    public jb b(String str) {
        this.f780c = str;
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f773a);
        if (this.f776a != null && m483a()) {
            jrVar.a(f9145a);
            jrVar.a(this.f776a);
            jrVar.b();
        }
        if (this.f775a != null && b()) {
            jrVar.a(f9146b);
            this.f775a.b(jrVar);
            jrVar.b();
        }
        if (this.f779b != null) {
            jrVar.a(f9147c);
            jrVar.a(this.f779b);
            jrVar.b();
        }
        if (this.f780c != null) {
            jrVar.a(d);
            jrVar.a(this.f780c);
            jrVar.b();
        }
        if (this.f781d != null && e()) {
            jrVar.a(e);
            jrVar.a(this.f781d);
            jrVar.b();
        }
        if (this.f782e != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f782e);
            jrVar.b();
        }
        if (this.f783f != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f783f);
            jrVar.b();
        }
        if (this.f784g != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f784g);
            jrVar.b();
        }
        if (this.f785h != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f785h);
            jrVar.b();
        }
        if (this.f786i != null && j()) {
            jrVar.a(j);
            jrVar.a(this.f786i);
            jrVar.b();
        }
        if (k()) {
            jrVar.a(k);
            jrVar.a(this.f778a);
            jrVar.b();
        }
        if (l()) {
            jrVar.a(l);
            jrVar.a(this.f774a);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f777a.set(1, z);
    }

    public boolean b() {
        return this.f775a != null;
    }

    public jb c(String str) {
        this.f781d = str;
        return this;
    }

    public boolean c() {
        return this.f779b != null;
    }

    public jb d(String str) {
        this.f783f = str;
        return this;
    }

    public boolean d() {
        return this.f780c != null;
    }

    public jb e(String str) {
        this.f784g = str;
        return this;
    }

    public boolean e() {
        return this.f781d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof jb)) {
            return m484a((jb) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f782e != null;
    }

    public boolean g() {
        return this.f783f != null;
    }

    public boolean h() {
        return this.f784g != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f785h != null;
    }

    public boolean j() {
        return this.f786i != null;
    }

    public boolean k() {
        return this.f777a.get(0);
    }

    public boolean l() {
        return this.f777a.get(1);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnRegistration(");
        boolean z2 = false;
        if (m483a()) {
            sb.append("debug:");
            String str = this.f776a;
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
            ik ikVar = this.f775a;
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
        String str2 = this.f779b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f780c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (e()) {
            sb.append(", ");
            sb.append("regId:");
            String str4 = this.f781d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("appVersion:");
            String str5 = this.f782e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f783f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("token:");
            String str7 = this.f784g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("deviceId:");
            String str8 = this.f785h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str9 = this.f786i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("needAck:");
            sb.append(this.f778a);
        }
        if (l()) {
            sb.append(", ");
            sb.append("createdTs:");
            sb.append(this.f774a);
        }
        sb.append(")");
        return sb.toString();
    }
}
