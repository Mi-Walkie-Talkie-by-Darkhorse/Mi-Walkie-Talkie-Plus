package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class je implements jg<je, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f808a;

    /* renamed from: a  reason: collision with other field name */
    public ik f809a;

    /* renamed from: a  reason: collision with other field name */
    public String f810a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f811a = new BitSet(1);

    /* renamed from: b  reason: collision with other field name */
    public String f812b;

    /* renamed from: c  reason: collision with other field name */
    public String f813c;

    /* renamed from: d  reason: collision with other field name */
    public String f814d;

    /* renamed from: e  reason: collision with other field name */
    public String f815e;

    /* renamed from: f  reason: collision with other field name */
    public String f816f;

    /* renamed from: g  reason: collision with other field name */
    public String f817g;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f807a = new jw("XmPushActionUnSubscriptionResult");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9154a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9155b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9156c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 6);
    private static final jo f = new jo("", (byte) 11, 7);
    private static final jo g = new jo("", (byte) 11, 8);
    private static final jo h = new jo("", (byte) 11, 9);
    private static final jo i = new jo("", (byte) 11, 10);

    /* renamed from: a */
    public int compareTo(je jeVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        if (!je.class.equals(jeVar.getClass())) {
            return je.class.getName().compareTo(jeVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m491a()).compareTo(Boolean.valueOf(jeVar.m491a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m491a() && (a10 = jh.a(this.f810a, jeVar.f810a)) != 0) {
            return a10;
        }
        int compareTo2 = Boolean.valueOf(m493b()).compareTo(Boolean.valueOf(jeVar.m493b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m493b() && (a9 = jh.a(this.f809a, jeVar.f809a)) != 0) {
            return a9;
        }
        int compareTo3 = Boolean.valueOf(m494c()).compareTo(Boolean.valueOf(jeVar.m494c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m494c() && (a8 = jh.a(this.f812b, jeVar.f812b)) != 0) {
            return a8;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(jeVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a7 = jh.a(this.f813c, jeVar.f813c)) != 0) {
            return a7;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(jeVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a6 = jh.a(this.f808a, jeVar.f808a)) != 0) {
            return a6;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(jeVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a5 = jh.a(this.f814d, jeVar.f814d)) != 0) {
            return a5;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(jeVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a4 = jh.a(this.f815e, jeVar.f815e)) != 0) {
            return a4;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(jeVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a3 = jh.a(this.f816f, jeVar.f816f)) != 0) {
            return a3;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(jeVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (!i() || (a2 = jh.a(this.f817g, jeVar.f817g)) == 0) {
            return 0;
        }
        return a2;
    }

    public String a() {
        return this.f812b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m490a() {
        if (this.f812b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
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
                m490a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f810a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f809a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f812b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f813c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 10) {
                        this.f808a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f814d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f815e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f816f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f817g = jrVar.m513a();
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
        this.f811a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m491a() {
        return this.f810a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m492a(je jeVar) {
        if (jeVar == null) {
            return false;
        }
        boolean a2 = m491a();
        boolean a3 = jeVar.m491a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f810a.equals(jeVar.f810a))) {
            return false;
        }
        boolean b2 = m493b();
        boolean b3 = jeVar.m493b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f809a.m408a(jeVar.f809a))) {
            return false;
        }
        boolean c2 = m494c();
        boolean c3 = jeVar.m494c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f812b.equals(jeVar.f812b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = jeVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f813c.equals(jeVar.f813c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = jeVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.f808a != jeVar.f808a)) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = jeVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f814d.equals(jeVar.f814d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = jeVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f815e.equals(jeVar.f815e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = jeVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f816f.equals(jeVar.f816f))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = jeVar.i();
        if (i2 || i3) {
            return i2 && i3 && this.f817g.equals(jeVar.f817g);
        }
        return true;
    }

    public String b() {
        return this.f815e;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m490a();
        jrVar.a(f807a);
        if (this.f810a != null && m491a()) {
            jrVar.a(f9154a);
            jrVar.a(this.f810a);
            jrVar.b();
        }
        if (this.f809a != null && m493b()) {
            jrVar.a(f9155b);
            this.f809a.b(jrVar);
            jrVar.b();
        }
        if (this.f812b != null) {
            jrVar.a(f9156c);
            jrVar.a(this.f812b);
            jrVar.b();
        }
        if (this.f813c != null && d()) {
            jrVar.a(d);
            jrVar.a(this.f813c);
            jrVar.b();
        }
        if (e()) {
            jrVar.a(e);
            jrVar.a(this.f808a);
            jrVar.b();
        }
        if (this.f814d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f814d);
            jrVar.b();
        }
        if (this.f815e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f815e);
            jrVar.b();
        }
        if (this.f816f != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f816f);
            jrVar.b();
        }
        if (this.f817g != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f817g);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m493b() {
        return this.f809a != null;
    }

    public String c() {
        return this.f817g;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m494c() {
        return this.f812b != null;
    }

    public boolean d() {
        return this.f813c != null;
    }

    public boolean e() {
        return this.f811a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof je)) {
            return m492a((je) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f814d != null;
    }

    public boolean g() {
        return this.f815e != null;
    }

    public boolean h() {
        return this.f816f != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f817g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnSubscriptionResult(");
        boolean z2 = false;
        if (m491a()) {
            sb.append("debug:");
            String str = this.f810a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m493b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f809a;
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
        String str2 = this.f812b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f813c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f808a);
        }
        if (f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f814d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("topic:");
            String str5 = this.f815e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f816f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f817g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
