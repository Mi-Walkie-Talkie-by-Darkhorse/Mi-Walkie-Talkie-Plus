package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class iz implements jg<iz, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public ik f752a;

    /* renamed from: a  reason: collision with other field name */
    public String f753a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f754a;

    /* renamed from: b  reason: collision with other field name */
    public String f755b;

    /* renamed from: c  reason: collision with other field name */
    public String f756c;

    /* renamed from: d  reason: collision with other field name */
    public String f757d;

    /* renamed from: e  reason: collision with other field name */
    public String f758e;

    /* renamed from: f  reason: collision with other field name */
    public String f759f;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f751a = new jw("XmPushActionSubscription");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9136a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9137b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9138c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 15, 8);

    /* renamed from: a */
    public int compareTo(iz izVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        if (!iz.class.equals(izVar.getClass())) {
            return iz.class.getName().compareTo(izVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m476a()).compareTo(Boolean.valueOf(izVar.m476a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m476a() && (a9 = jh.a(this.f753a, izVar.f753a)) != 0) {
            return a9;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(izVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a8 = jh.a(this.f752a, izVar.f752a)) != 0) {
            return a8;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(izVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a7 = jh.a(this.f755b, izVar.f755b)) != 0) {
            return a7;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(izVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a6 = jh.a(this.f756c, izVar.f756c)) != 0) {
            return a6;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(izVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a5 = jh.a(this.f757d, izVar.f757d)) != 0) {
            return a5;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(izVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a4 = jh.a(this.f758e, izVar.f758e)) != 0) {
            return a4;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(izVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a3 = jh.a(this.f759f, izVar.f759f)) != 0) {
            return a3;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(izVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!h() || (a2 = jh.a(this.f754a, izVar.f754a)) == 0) {
            return 0;
        }
        return a2;
    }

    public iz a(String str) {
        this.f755b = str;
        return this;
    }

    public void a() {
        if (this.f755b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f756c == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f757d == null) {
            throw new js("Required field 'topic' was not present! Struct: " + toString());
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
                        this.f753a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f752a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f755b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f756c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f757d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f758e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f759f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 15) {
                        jp a3 = jrVar.m509a();
                        this.f754a = new ArrayList(a3.f829a);
                        for (int i = 0; i < a3.f829a; i++) {
                            this.f754a.add(jrVar.m513a());
                        }
                        jrVar.i();
                        continue;
                        jrVar.g();
                    }
                    break;
            }
            ju.a(jrVar, b2);
            jrVar.g();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m476a() {
        return this.f753a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m477a(iz izVar) {
        if (izVar == null) {
            return false;
        }
        boolean a2 = m476a();
        boolean a3 = izVar.m476a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f753a.equals(izVar.f753a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = izVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f752a.m408a(izVar.f752a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = izVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f755b.equals(izVar.f755b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = izVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f756c.equals(izVar.f756c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = izVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f757d.equals(izVar.f757d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = izVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f758e.equals(izVar.f758e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = izVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f759f.equals(izVar.f759f))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = izVar.h();
        if (h2 || h3) {
            return h2 && h3 && this.f754a.equals(izVar.f754a);
        }
        return true;
    }

    public iz b(String str) {
        this.f756c = str;
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f751a);
        if (this.f753a != null && m476a()) {
            jrVar.a(f9136a);
            jrVar.a(this.f753a);
            jrVar.b();
        }
        if (this.f752a != null && b()) {
            jrVar.a(f9137b);
            this.f752a.b(jrVar);
            jrVar.b();
        }
        if (this.f755b != null) {
            jrVar.a(f9138c);
            jrVar.a(this.f755b);
            jrVar.b();
        }
        if (this.f756c != null) {
            jrVar.a(d);
            jrVar.a(this.f756c);
            jrVar.b();
        }
        if (this.f757d != null) {
            jrVar.a(e);
            jrVar.a(this.f757d);
            jrVar.b();
        }
        if (this.f758e != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f758e);
            jrVar.b();
        }
        if (this.f759f != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f759f);
            jrVar.b();
        }
        if (this.f754a != null && h()) {
            jrVar.a(h);
            jrVar.a(new jp((byte) 11, this.f754a.size()));
            for (String str : this.f754a) {
                jrVar.a(str);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean b() {
        return this.f752a != null;
    }

    public iz c(String str) {
        this.f757d = str;
        return this;
    }

    public boolean c() {
        return this.f755b != null;
    }

    public iz d(String str) {
        this.f758e = str;
        return this;
    }

    public boolean d() {
        return this.f756c != null;
    }

    public iz e(String str) {
        this.f759f = str;
        return this;
    }

    public boolean e() {
        return this.f757d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof iz)) {
            return m477a((iz) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f758e != null;
    }

    public boolean g() {
        return this.f759f != null;
    }

    public boolean h() {
        return this.f754a != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSubscription(");
        boolean z2 = false;
        if (m476a()) {
            sb.append("debug:");
            String str = this.f753a;
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
            ik ikVar = this.f752a;
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
        String str2 = this.f755b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f756c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("topic:");
        String str4 = this.f757d;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        if (f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f758e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("category:");
            String str6 = this.f759f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("aliases:");
            List<String> list = this.f754a;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
