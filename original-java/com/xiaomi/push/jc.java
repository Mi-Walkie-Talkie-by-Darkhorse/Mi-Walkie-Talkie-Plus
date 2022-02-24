package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class jc implements jg<jc, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f788a;

    /* renamed from: a  reason: collision with other field name */
    public ik f789a;

    /* renamed from: a  reason: collision with other field name */
    public String f790a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f791a = new BitSet(3);

    /* renamed from: b  reason: collision with other field name */
    public long f792b;

    /* renamed from: b  reason: collision with other field name */
    public String f793b;

    /* renamed from: c  reason: collision with other field name */
    public long f794c;

    /* renamed from: c  reason: collision with other field name */
    public String f795c;

    /* renamed from: d  reason: collision with other field name */
    public String f796d;

    /* renamed from: e  reason: collision with other field name */
    public String f797e;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f787a = new jw("XmPushActionUnRegistrationResult");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9148a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9149b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9150c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 6);
    private static final jo f = new jo("", (byte) 11, 7);
    private static final jo g = new jo("", (byte) 11, 8);
    private static final jo h = new jo("", (byte) 10, 9);
    private static final jo i = new jo("", (byte) 10, 10);

    /* renamed from: a */
    public int compareTo(jc jcVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        int a10;
        if (!jc.class.equals(jcVar.getClass())) {
            return jc.class.getName().compareTo(jcVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m486a()).compareTo(Boolean.valueOf(jcVar.m486a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m486a() && (a10 = jh.a(this.f790a, jcVar.f790a)) != 0) {
            return a10;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(jcVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a9 = jh.a(this.f789a, jcVar.f789a)) != 0) {
            return a9;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(jcVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a8 = jh.a(this.f793b, jcVar.f793b)) != 0) {
            return a8;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(jcVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a7 = jh.a(this.f795c, jcVar.f795c)) != 0) {
            return a7;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(jcVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a6 = jh.a(this.f788a, jcVar.f788a)) != 0) {
            return a6;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(jcVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a5 = jh.a(this.f796d, jcVar.f796d)) != 0) {
            return a5;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(jcVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a4 = jh.a(this.f797e, jcVar.f797e)) != 0) {
            return a4;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(jcVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a3 = jh.a(this.f792b, jcVar.f792b)) != 0) {
            return a3;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(jcVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (!i() || (a2 = jh.a(this.f794c, jcVar.f794c)) == 0) {
            return 0;
        }
        return a2;
    }

    public String a() {
        return this.f797e;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m485a() {
        if (this.f793b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f795c == null) {
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
                    m485a();
                    return;
                }
                throw new js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f790a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f789a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f793b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f795c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 10) {
                        this.f788a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f796d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f797e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 10) {
                        this.f792b = jrVar.m507a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 10) {
                        this.f794c = jrVar.m507a();
                        c(true);
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
        this.f791a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m486a() {
        return this.f790a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m487a(jc jcVar) {
        if (jcVar == null) {
            return false;
        }
        boolean a2 = m486a();
        boolean a3 = jcVar.m486a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f790a.equals(jcVar.f790a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = jcVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f789a.m408a(jcVar.f789a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = jcVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f793b.equals(jcVar.f793b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = jcVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.f795c.equals(jcVar.f795c))) || this.f788a != jcVar.f788a) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = jcVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f796d.equals(jcVar.f796d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = jcVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f797e.equals(jcVar.f797e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = jcVar.h();
        if ((h2 || h3) && (!h2 || !h3 || this.f792b != jcVar.f792b)) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = jcVar.i();
        if (i2 || i3) {
            return i2 && i3 && this.f794c == jcVar.f794c;
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m485a();
        jrVar.a(f787a);
        if (this.f790a != null && m486a()) {
            jrVar.a(f9148a);
            jrVar.a(this.f790a);
            jrVar.b();
        }
        if (this.f789a != null && b()) {
            jrVar.a(f9149b);
            this.f789a.b(jrVar);
            jrVar.b();
        }
        if (this.f793b != null) {
            jrVar.a(f9150c);
            jrVar.a(this.f793b);
            jrVar.b();
        }
        if (this.f795c != null) {
            jrVar.a(d);
            jrVar.a(this.f795c);
            jrVar.b();
        }
        jrVar.a(e);
        jrVar.a(this.f788a);
        jrVar.b();
        if (this.f796d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f796d);
            jrVar.b();
        }
        if (this.f797e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f797e);
            jrVar.b();
        }
        if (h()) {
            jrVar.a(h);
            jrVar.a(this.f792b);
            jrVar.b();
        }
        if (i()) {
            jrVar.a(i);
            jrVar.a(this.f794c);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f791a.set(1, z);
    }

    public boolean b() {
        return this.f789a != null;
    }

    public void c(boolean z) {
        this.f791a.set(2, z);
    }

    public boolean c() {
        return this.f793b != null;
    }

    public boolean d() {
        return this.f795c != null;
    }

    public boolean e() {
        return this.f791a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof jc)) {
            return m487a((jc) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f796d != null;
    }

    public boolean g() {
        return this.f797e != null;
    }

    public boolean h() {
        return this.f791a.get(1);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f791a.get(2);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionUnRegistrationResult(");
        boolean z2 = false;
        if (m486a()) {
            sb.append("debug:");
            String str = this.f790a;
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
            ik ikVar = this.f789a;
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
        String str2 = this.f793b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f795c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f788a);
        if (f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f796d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f797e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("unRegisteredAt:");
            sb.append(this.f792b);
        }
        if (i()) {
            sb.append(", ");
            sb.append("costTime:");
            sb.append(this.f794c);
        }
        sb.append(")");
        return sb.toString();
    }
}
