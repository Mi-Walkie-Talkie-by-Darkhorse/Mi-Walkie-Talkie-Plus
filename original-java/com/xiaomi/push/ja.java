package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class ja implements jg<ja, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f763a;

    /* renamed from: a  reason: collision with other field name */
    public ik f764a;

    /* renamed from: a  reason: collision with other field name */
    public String f765a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f766a = new BitSet(1);

    /* renamed from: b  reason: collision with other field name */
    public String f767b;

    /* renamed from: c  reason: collision with other field name */
    public String f768c;

    /* renamed from: d  reason: collision with other field name */
    public String f769d;

    /* renamed from: e  reason: collision with other field name */
    public String f770e;

    /* renamed from: f  reason: collision with other field name */
    public String f771f;

    /* renamed from: g  reason: collision with other field name */
    public String f772g;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f762a = new jw("XmPushActionSubscriptionResult");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9142a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9143b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9144c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 6);
    private static final jo f = new jo("", (byte) 11, 7);
    private static final jo g = new jo("", (byte) 11, 8);
    private static final jo h = new jo("", (byte) 11, 9);
    private static final jo i = new jo("", (byte) 11, 10);

    /* renamed from: a */
    public int compareTo(ja jaVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        if (!ja.class.equals(jaVar.getClass())) {
            return ja.class.getName().compareTo(jaVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m479a()).compareTo(Boolean.valueOf(jaVar.m479a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m479a() && (a10 = jh.a(this.f765a, jaVar.f765a)) != 0) {
            return a10;
        }
        int compareTo2 = Boolean.valueOf(m481b()).compareTo(Boolean.valueOf(jaVar.m481b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m481b() && (a9 = jh.a(this.f764a, jaVar.f764a)) != 0) {
            return a9;
        }
        int compareTo3 = Boolean.valueOf(m482c()).compareTo(Boolean.valueOf(jaVar.m482c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m482c() && (a8 = jh.a(this.f767b, jaVar.f767b)) != 0) {
            return a8;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(jaVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a7 = jh.a(this.f768c, jaVar.f768c)) != 0) {
            return a7;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(jaVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a6 = jh.a(this.f763a, jaVar.f763a)) != 0) {
            return a6;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(jaVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a5 = jh.a(this.f769d, jaVar.f769d)) != 0) {
            return a5;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(jaVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a4 = jh.a(this.f770e, jaVar.f770e)) != 0) {
            return a4;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(jaVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a3 = jh.a(this.f771f, jaVar.f771f)) != 0) {
            return a3;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(jaVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (!i() || (a2 = jh.a(this.f772g, jaVar.f772g)) == 0) {
            return 0;
        }
        return a2;
    }

    public String a() {
        return this.f767b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m478a() {
        if (this.f767b == null) {
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
                m478a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f765a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f764a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f767b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f768c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 10) {
                        this.f763a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f769d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f770e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f771f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f772g = jrVar.m513a();
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
        this.f766a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m479a() {
        return this.f765a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m480a(ja jaVar) {
        if (jaVar == null) {
            return false;
        }
        boolean a2 = m479a();
        boolean a3 = jaVar.m479a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f765a.equals(jaVar.f765a))) {
            return false;
        }
        boolean b2 = m481b();
        boolean b3 = jaVar.m481b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f764a.m408a(jaVar.f764a))) {
            return false;
        }
        boolean c2 = m482c();
        boolean c3 = jaVar.m482c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f767b.equals(jaVar.f767b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = jaVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f768c.equals(jaVar.f768c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = jaVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.f763a != jaVar.f763a)) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = jaVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f769d.equals(jaVar.f769d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = jaVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f770e.equals(jaVar.f770e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = jaVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f771f.equals(jaVar.f771f))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = jaVar.i();
        if (i2 || i3) {
            return i2 && i3 && this.f772g.equals(jaVar.f772g);
        }
        return true;
    }

    public String b() {
        return this.f770e;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m478a();
        jrVar.a(f762a);
        if (this.f765a != null && m479a()) {
            jrVar.a(f9142a);
            jrVar.a(this.f765a);
            jrVar.b();
        }
        if (this.f764a != null && m481b()) {
            jrVar.a(f9143b);
            this.f764a.b(jrVar);
            jrVar.b();
        }
        if (this.f767b != null) {
            jrVar.a(f9144c);
            jrVar.a(this.f767b);
            jrVar.b();
        }
        if (this.f768c != null && d()) {
            jrVar.a(d);
            jrVar.a(this.f768c);
            jrVar.b();
        }
        if (e()) {
            jrVar.a(e);
            jrVar.a(this.f763a);
            jrVar.b();
        }
        if (this.f769d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f769d);
            jrVar.b();
        }
        if (this.f770e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f770e);
            jrVar.b();
        }
        if (this.f771f != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f771f);
            jrVar.b();
        }
        if (this.f772g != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f772g);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m481b() {
        return this.f764a != null;
    }

    public String c() {
        return this.f772g;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m482c() {
        return this.f767b != null;
    }

    public boolean d() {
        return this.f768c != null;
    }

    public boolean e() {
        return this.f766a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ja)) {
            return m480a((ja) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f769d != null;
    }

    public boolean g() {
        return this.f770e != null;
    }

    public boolean h() {
        return this.f771f != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f772g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSubscriptionResult(");
        boolean z2 = false;
        if (m479a()) {
            sb.append("debug:");
            String str = this.f765a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m481b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f764a;
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
        String str2 = this.f767b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f768c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f763a);
        }
        if (f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f769d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("topic:");
            String str5 = this.f770e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f771f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f772g;
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
