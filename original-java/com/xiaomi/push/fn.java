package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class fn implements jg<fn, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public byte f358a;

    /* renamed from: a  reason: collision with other field name */
    public int f359a;

    /* renamed from: a  reason: collision with other field name */
    public String f360a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f361a = new BitSet(6);

    /* renamed from: b  reason: collision with other field name */
    public int f362b;

    /* renamed from: b  reason: collision with other field name */
    public String f363b;

    /* renamed from: c  reason: collision with other field name */
    public int f364c;

    /* renamed from: c  reason: collision with other field name */
    public String f365c;

    /* renamed from: d  reason: collision with other field name */
    public int f366d;

    /* renamed from: d  reason: collision with other field name */
    public String f367d;

    /* renamed from: e  reason: collision with other field name */
    public int f368e;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f357a = new jw("StatsEvent");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f8951a = new jo("", (byte) 3, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f8952b = new jo("", (byte) 8, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f8953c = new jo("", (byte) 8, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 8, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 11, 8);
    private static final jo i = new jo("", (byte) 8, 9);
    private static final jo j = new jo("", (byte) 8, 10);

    /* renamed from: a */
    public int compareTo(fn fnVar) {
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
        if (!fn.class.equals(fnVar.getClass())) {
            return fn.class.getName().compareTo(fnVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m277a()).compareTo(Boolean.valueOf(fnVar.m277a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m277a() && (a11 = jh.a(this.f358a, fnVar.f358a)) != 0) {
            return a11;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(fnVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a10 = jh.a(this.f359a, fnVar.f359a)) != 0) {
            return a10;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(fnVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a9 = jh.a(this.f362b, fnVar.f362b)) != 0) {
            return a9;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(fnVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a8 = jh.a(this.f360a, fnVar.f360a)) != 0) {
            return a8;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(fnVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a7 = jh.a(this.f363b, fnVar.f363b)) != 0) {
            return a7;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(fnVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a6 = jh.a(this.f364c, fnVar.f364c)) != 0) {
            return a6;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(fnVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a5 = jh.a(this.f365c, fnVar.f365c)) != 0) {
            return a5;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(fnVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a4 = jh.a(this.f367d, fnVar.f367d)) != 0) {
            return a4;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(fnVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a3 = jh.a(this.f366d, fnVar.f366d)) != 0) {
            return a3;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(fnVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (!j() || (a2 = jh.a(this.f368e, fnVar.f368e)) == 0) {
            return 0;
        }
        return a2;
    }

    public fn a(byte b2) {
        this.f358a = b2;
        a(true);
        return this;
    }

    public fn a(int i2) {
        this.f359a = i2;
        b(true);
        return this;
    }

    public fn a(String str) {
        this.f360a = str;
        return this;
    }

    public void a() {
        if (this.f360a == null) {
            throw new js("Required field 'connpt' was not present! Struct: " + toString());
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
                if (!m277a()) {
                    throw new js("Required field 'chid' was not found in serialized data! Struct: " + toString());
                } else if (!b()) {
                    throw new js("Required field 'type' was not found in serialized data! Struct: " + toString());
                } else if (c()) {
                    a();
                    return;
                } else {
                    throw new js("Required field 'value' was not found in serialized data! Struct: " + toString());
                }
            } else {
                switch (a2.f828a) {
                    case 1:
                        if (b2 == 3) {
                            this.f358a = jrVar.mo519a();
                            a(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 2:
                        if (b2 == 8) {
                            this.f359a = jrVar.m506a();
                            b(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 3:
                        if (b2 == 8) {
                            this.f362b = jrVar.m506a();
                            c(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 4:
                        if (b2 == 11) {
                            this.f360a = jrVar.m513a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 5:
                        if (b2 == 11) {
                            this.f363b = jrVar.m513a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 6:
                        if (b2 == 8) {
                            this.f364c = jrVar.m506a();
                            d(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 7:
                        if (b2 == 11) {
                            this.f365c = jrVar.m513a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 8:
                        if (b2 == 11) {
                            this.f367d = jrVar.m513a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 9:
                        if (b2 == 8) {
                            this.f366d = jrVar.m506a();
                            e(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 10:
                        if (b2 == 8) {
                            this.f368e = jrVar.m506a();
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
    }

    public void a(boolean z) {
        this.f361a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m277a() {
        return this.f361a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m278a(fn fnVar) {
        if (fnVar == null || this.f358a != fnVar.f358a || this.f359a != fnVar.f359a || this.f362b != fnVar.f362b) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = fnVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f360a.equals(fnVar.f360a))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = fnVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f363b.equals(fnVar.f363b))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = fnVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f364c != fnVar.f364c)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = fnVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f365c.equals(fnVar.f365c))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = fnVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f367d.equals(fnVar.f367d))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = fnVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.f366d != fnVar.f366d)) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = fnVar.j();
        if (j2 || j3) {
            return j2 && j3 && this.f368e == fnVar.f368e;
        }
        return true;
    }

    public fn b(int i2) {
        this.f362b = i2;
        c(true);
        return this;
    }

    public fn b(String str) {
        this.f363b = str;
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f357a);
        jrVar.a(f8951a);
        jrVar.a(this.f358a);
        jrVar.b();
        jrVar.a(f8952b);
        jrVar.mo504a(this.f359a);
        jrVar.b();
        jrVar.a(f8953c);
        jrVar.mo504a(this.f362b);
        jrVar.b();
        if (this.f360a != null) {
            jrVar.a(d);
            jrVar.a(this.f360a);
            jrVar.b();
        }
        if (this.f363b != null && e()) {
            jrVar.a(e);
            jrVar.a(this.f363b);
            jrVar.b();
        }
        if (f()) {
            jrVar.a(f);
            jrVar.mo504a(this.f364c);
            jrVar.b();
        }
        if (this.f365c != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f365c);
            jrVar.b();
        }
        if (this.f367d != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f367d);
            jrVar.b();
        }
        if (i()) {
            jrVar.a(i);
            jrVar.mo504a(this.f366d);
            jrVar.b();
        }
        if (j()) {
            jrVar.a(j);
            jrVar.mo504a(this.f368e);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f361a.set(1, z);
    }

    public boolean b() {
        return this.f361a.get(1);
    }

    public fn c(int i2) {
        this.f364c = i2;
        d(true);
        return this;
    }

    public fn c(String str) {
        this.f365c = str;
        return this;
    }

    public void c(boolean z) {
        this.f361a.set(2, z);
    }

    public boolean c() {
        return this.f361a.get(2);
    }

    public fn d(int i2) {
        this.f366d = i2;
        e(true);
        return this;
    }

    public fn d(String str) {
        this.f367d = str;
        return this;
    }

    public void d(boolean z) {
        this.f361a.set(3, z);
    }

    public boolean d() {
        return this.f360a != null;
    }

    public void e(boolean z) {
        this.f361a.set(4, z);
    }

    public boolean e() {
        return this.f363b != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof fn)) {
            return m278a((fn) obj);
        }
        return false;
    }

    public void f(boolean z) {
        this.f361a.set(5, z);
    }

    public boolean f() {
        return this.f361a.get(3);
    }

    public boolean g() {
        return this.f365c != null;
    }

    public boolean h() {
        return this.f367d != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f361a.get(4);
    }

    public boolean j() {
        return this.f361a.get(5);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvent(");
        sb.append("chid:");
        sb.append((int) this.f358a);
        sb.append(", ");
        sb.append("type:");
        sb.append(this.f359a);
        sb.append(", ");
        sb.append("value:");
        sb.append(this.f362b);
        sb.append(", ");
        sb.append("connpt:");
        String str = this.f360a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (e()) {
            sb.append(", ");
            sb.append("host:");
            String str2 = this.f363b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("subvalue:");
            sb.append(this.f364c);
        }
        if (g()) {
            sb.append(", ");
            sb.append("annotation:");
            String str3 = this.f365c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("user:");
            String str4 = this.f367d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("time:");
            sb.append(this.f366d);
        }
        if (j()) {
            sb.append(", ");
            sb.append("clientIp:");
            sb.append(this.f368e);
        }
        sb.append(")");
        return sb.toString();
    }
}
