package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class ig implements jg<ig, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f529a;

    /* renamed from: a  reason: collision with other field name */
    public long f530a;

    /* renamed from: a  reason: collision with other field name */
    public String f531a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f532a = new BitSet(6);

    /* renamed from: a  reason: collision with other field name */
    public boolean f533a;

    /* renamed from: b  reason: collision with other field name */
    public int f534b;

    /* renamed from: b  reason: collision with other field name */
    public boolean f535b;

    /* renamed from: c  reason: collision with other field name */
    public int f536c;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f528a = new jw("OnlineConfigItem");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9086a = new jo("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9087b = new jo("", (byte) 8, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9088c = new jo("", (byte) 2, 3);
    private static final jo d = new jo("", (byte) 8, 4);
    private static final jo e = new jo("", (byte) 10, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 2, 7);

    public int a() {
        return this.f529a;
    }

    /* renamed from: a */
    public int compareTo(ig igVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        if (!ig.class.equals(igVar.getClass())) {
            return ig.class.getName().compareTo(igVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m384a()).compareTo(Boolean.valueOf(igVar.m384a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m384a() && (a8 = jh.a(this.f529a, igVar.f529a)) != 0) {
            return a8;
        }
        int compareTo2 = Boolean.valueOf(m386b()).compareTo(Boolean.valueOf(igVar.m386b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m386b() && (a7 = jh.a(this.f534b, igVar.f534b)) != 0) {
            return a7;
        }
        int compareTo3 = Boolean.valueOf(m387c()).compareTo(Boolean.valueOf(igVar.m387c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m387c() && (a6 = jh.a(this.f533a, igVar.f533a)) != 0) {
            return a6;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(igVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a5 = jh.a(this.f536c, igVar.f536c)) != 0) {
            return a5;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(igVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a4 = jh.a(this.f530a, igVar.f530a)) != 0) {
            return a4;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(igVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a3 = jh.a(this.f531a, igVar.f531a)) != 0) {
            return a3;
        }
        int compareTo7 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(igVar.h()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (!h() || (a2 = jh.a(this.f535b, igVar.f535b)) == 0) {
            return 0;
        }
        return a2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public long m381a() {
        return this.f530a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m382a() {
        return this.f531a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m383a() {
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                m383a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 8) {
                        this.f529a = jrVar.m506a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 8) {
                        this.f534b = jrVar.m506a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 2) {
                        this.f533a = jrVar.m517a();
                        c(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 8) {
                        this.f536c = jrVar.m506a();
                        d(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 10) {
                        this.f530a = jrVar.m507a();
                        e(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 11) {
                        this.f531a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 2) {
                        this.f535b = jrVar.m517a();
                        f(true);
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
        this.f532a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m384a() {
        return this.f532a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m385a(ig igVar) {
        if (igVar == null) {
            return false;
        }
        boolean a2 = m384a();
        boolean a3 = igVar.m384a();
        if ((a2 || a3) && (!a2 || !a3 || this.f529a != igVar.f529a)) {
            return false;
        }
        boolean b2 = m386b();
        boolean b3 = igVar.m386b();
        if ((b2 || b3) && (!b2 || !b3 || this.f534b != igVar.f534b)) {
            return false;
        }
        boolean c2 = m387c();
        boolean c3 = igVar.m387c();
        if ((c2 || c3) && (!c2 || !c3 || this.f533a != igVar.f533a)) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = igVar.d();
        if ((d2 || d3) && (!d2 || !d3 || this.f536c != igVar.f536c)) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = igVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.f530a != igVar.f530a)) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = igVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f531a.equals(igVar.f531a))) {
            return false;
        }
        boolean h = h();
        boolean h2 = igVar.h();
        if (h || h2) {
            return h && h2 && this.f535b == igVar.f535b;
        }
        return true;
    }

    public int b() {
        return this.f534b;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m383a();
        jrVar.a(f528a);
        if (m384a()) {
            jrVar.a(f9086a);
            jrVar.mo504a(this.f529a);
            jrVar.b();
        }
        if (m386b()) {
            jrVar.a(f9087b);
            jrVar.mo504a(this.f534b);
            jrVar.b();
        }
        if (m387c()) {
            jrVar.a(f9088c);
            jrVar.a(this.f533a);
            jrVar.b();
        }
        if (d()) {
            jrVar.a(d);
            jrVar.mo504a(this.f536c);
            jrVar.b();
        }
        if (e()) {
            jrVar.a(e);
            jrVar.a(this.f530a);
            jrVar.b();
        }
        if (this.f531a != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f531a);
            jrVar.b();
        }
        if (h()) {
            jrVar.a(g);
            jrVar.a(this.f535b);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f532a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m386b() {
        return this.f532a.get(1);
    }

    public int c() {
        return this.f536c;
    }

    public void c(boolean z) {
        this.f532a.set(2, z);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m387c() {
        return this.f532a.get(2);
    }

    public void d(boolean z) {
        this.f532a.set(3, z);
    }

    public boolean d() {
        return this.f532a.get(3);
    }

    public void e(boolean z) {
        this.f532a.set(4, z);
    }

    public boolean e() {
        return this.f532a.get(4);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ig)) {
            return m385a((ig) obj);
        }
        return false;
    }

    public void f(boolean z) {
        this.f532a.set(5, z);
    }

    public boolean f() {
        return this.f531a != null;
    }

    public boolean g() {
        return this.f535b;
    }

    public boolean h() {
        return this.f532a.get(5);
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("OnlineConfigItem(");
        boolean z2 = false;
        if (m384a()) {
            sb.append("key:");
            sb.append(this.f529a);
            z = false;
        } else {
            z = true;
        }
        if (m386b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("type:");
            sb.append(this.f534b);
            z = false;
        }
        if (m387c()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("clear:");
            sb.append(this.f533a);
            z = false;
        }
        if (d()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("intValue:");
            sb.append(this.f536c);
            z = false;
        }
        if (e()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("longValue:");
            sb.append(this.f530a);
            z = false;
        }
        if (f()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("stringValue:");
            String str = this.f531a;
            if (str == null) {
                str = "null";
            }
            sb.append(str);
        } else {
            z2 = z;
        }
        if (h()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("boolValue:");
            sb.append(this.f535b);
        }
        sb.append(")");
        return sb.toString();
    }
}
