package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class jd implements jg<jd, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public ik f799a;

    /* renamed from: a  reason: collision with other field name */
    public String f800a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f801a;

    /* renamed from: b  reason: collision with other field name */
    public String f802b;

    /* renamed from: c  reason: collision with other field name */
    public String f803c;

    /* renamed from: d  reason: collision with other field name */
    public String f804d;

    /* renamed from: e  reason: collision with other field name */
    public String f805e;

    /* renamed from: f  reason: collision with other field name */
    public String f806f;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f798a = new jw("XmPushActionUnSubscription");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9151a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9152b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9153c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 15, 8);

    /* renamed from: a */
    public int compareTo(jd jdVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        if (!jd.class.equals(jdVar.getClass())) {
            return jd.class.getName().compareTo(jdVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m488a()).compareTo(Boolean.valueOf(jdVar.m488a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m488a() && (a9 = jh.a(this.f800a, jdVar.f800a)) != 0) {
            return a9;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(jdVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a8 = jh.a(this.f799a, jdVar.f799a)) != 0) {
            return a8;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(jdVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a7 = jh.a(this.f802b, jdVar.f802b)) != 0) {
            return a7;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(jdVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a6 = jh.a(this.f803c, jdVar.f803c)) != 0) {
            return a6;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(jdVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a5 = jh.a(this.f804d, jdVar.f804d)) != 0) {
            return a5;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(jdVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a4 = jh.a(this.f805e, jdVar.f805e)) != 0) {
            return a4;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(jdVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a3 = jh.a(this.f806f, jdVar.f806f)) != 0) {
            return a3;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(jdVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!h() || (a2 = jh.a(this.f801a, jdVar.f801a)) == 0) {
            return 0;
        }
        return a2;
    }

    public jd a(String str) {
        this.f802b = str;
        return this;
    }

    public void a() {
        if (this.f802b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f803c == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f804d == null) {
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
                        this.f800a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f799a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f802b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f803c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f804d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f805e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f806f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 15) {
                        jp a3 = jrVar.m509a();
                        this.f801a = new ArrayList(a3.f829a);
                        for (int i = 0; i < a3.f829a; i++) {
                            this.f801a.add(jrVar.m513a());
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
    public boolean m488a() {
        return this.f800a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m489a(jd jdVar) {
        if (jdVar == null) {
            return false;
        }
        boolean a2 = m488a();
        boolean a3 = jdVar.m488a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f800a.equals(jdVar.f800a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = jdVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f799a.m408a(jdVar.f799a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = jdVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f802b.equals(jdVar.f802b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = jdVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f803c.equals(jdVar.f803c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = jdVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f804d.equals(jdVar.f804d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = jdVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f805e.equals(jdVar.f805e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = jdVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f806f.equals(jdVar.f806f))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = jdVar.h();
        if (h2 || h3) {
            return h2 && h3 && this.f801a.equals(jdVar.f801a);
        }
        return true;
    }

    public jd b(String str) {
        this.f803c = str;
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f798a);
        if (this.f800a != null && m488a()) {
            jrVar.a(f9151a);
            jrVar.a(this.f800a);
            jrVar.b();
        }
        if (this.f799a != null && b()) {
            jrVar.a(f9152b);
            this.f799a.b(jrVar);
            jrVar.b();
        }
        if (this.f802b != null) {
            jrVar.a(f9153c);
            jrVar.a(this.f802b);
            jrVar.b();
        }
        if (this.f803c != null) {
            jrVar.a(d);
            jrVar.a(this.f803c);
            jrVar.b();
        }
        if (this.f804d != null) {
            jrVar.a(e);
            jrVar.a(this.f804d);
            jrVar.b();
        }
        if (this.f805e != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f805e);
            jrVar.b();
        }
        if (this.f806f != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f806f);
            jrVar.b();
        }
        if (this.f801a != null && h()) {
            jrVar.a(h);
            jrVar.a(new jp((byte) 11, this.f801a.size()));
            for (String str : this.f801a) {
                jrVar.a(str);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean b() {
        return this.f799a != null;
    }

    public jd c(String str) {
        this.f804d = str;
        return this;
    }

    public boolean c() {
        return this.f802b != null;
    }

    public jd d(String str) {
        this.f805e = str;
        return this;
    }

    public boolean d() {
        return this.f803c != null;
    }

    public jd e(String str) {
        this.f806f = str;
        return this;
    }

    public boolean e() {
        return this.f804d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof jd)) {
            return m489a((jd) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f805e != null;
    }

    public boolean g() {
        return this.f806f != null;
    }

    public boolean h() {
        return this.f801a != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnSubscription(");
        boolean z2 = false;
        if (m488a()) {
            sb.append("debug:");
            String str = this.f800a;
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
            ik ikVar = this.f799a;
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
        String str2 = this.f802b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f803c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("topic:");
        String str4 = this.f804d;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        if (f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f805e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("category:");
            String str6 = this.f806f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("aliases:");
            List<String> list = this.f801a;
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
