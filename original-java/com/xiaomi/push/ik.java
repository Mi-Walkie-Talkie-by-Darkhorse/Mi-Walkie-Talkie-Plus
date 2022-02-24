package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class ik implements jg<ik, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public String f576a;

    /* renamed from: d  reason: collision with other field name */
    public String f581d;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f574a = new jw("Target");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9098a = new jo("", (byte) 10, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9099b = new jo("", (byte) 11, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9100c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 2, 5);
    private static final jo f = new jo("", (byte) 11, 7);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f577a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public long f575a = 5;

    /* renamed from: b  reason: collision with other field name */
    public String f579b = "xiaomi.com";

    /* renamed from: c  reason: collision with other field name */
    public String f580c = "";

    /* renamed from: a  reason: collision with other field name */
    public boolean f578a = false;

    /* renamed from: a */
    public int compareTo(ik ikVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        if (!ik.class.equals(ikVar.getClass())) {
            return ik.class.getName().compareTo(ikVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m407a()).compareTo(Boolean.valueOf(ikVar.m407a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m407a() && (a7 = jh.a(this.f575a, ikVar.f575a)) != 0) {
            return a7;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ikVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a6 = jh.a(this.f576a, ikVar.f576a)) != 0) {
            return a6;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ikVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a5 = jh.a(this.f579b, ikVar.f579b)) != 0) {
            return a5;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ikVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a4 = jh.a(this.f580c, ikVar.f580c)) != 0) {
            return a4;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ikVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a3 = jh.a(this.f578a, ikVar.f578a)) != 0) {
            return a3;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ikVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (!f() || (a2 = jh.a(this.f581d, ikVar.f581d)) == 0) {
            return 0;
        }
        return a2;
    }

    public void a() {
        if (this.f576a == null) {
            throw new js("Required field 'userId' was not present! Struct: " + toString());
        }
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                break;
            }
            short s = a2.f828a;
            if (s == 1) {
                if (b2 == 10) {
                    this.f575a = jrVar.m507a();
                    a(true);
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s == 2) {
                if (b2 == 11) {
                    this.f576a = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s == 3) {
                if (b2 == 11) {
                    this.f579b = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s == 4) {
                if (b2 == 11) {
                    this.f580c = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s != 5) {
                if (s == 7 && b2 == 11) {
                    this.f581d = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else {
                if (b2 == 2) {
                    this.f578a = jrVar.m517a();
                    b(true);
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
        jrVar.f();
        if (m407a()) {
            a();
            return;
        }
        throw new js("Required field 'channelId' was not found in serialized data! Struct: " + toString());
    }

    public void a(boolean z) {
        this.f577a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m407a() {
        return this.f577a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m408a(ik ikVar) {
        if (ikVar == null || this.f575a != ikVar.f575a) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = ikVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f576a.equals(ikVar.f576a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = ikVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f579b.equals(ikVar.f579b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = ikVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f580c.equals(ikVar.f580c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = ikVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.f578a != ikVar.f578a)) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = ikVar.f();
        if (f2 || f3) {
            return f2 && f3 && this.f581d.equals(ikVar.f581d);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f574a);
        jrVar.a(f9098a);
        jrVar.a(this.f575a);
        jrVar.b();
        if (this.f576a != null) {
            jrVar.a(f9099b);
            jrVar.a(this.f576a);
            jrVar.b();
        }
        if (this.f579b != null && c()) {
            jrVar.a(f9100c);
            jrVar.a(this.f579b);
            jrVar.b();
        }
        if (this.f580c != null && d()) {
            jrVar.a(d);
            jrVar.a(this.f580c);
            jrVar.b();
        }
        if (e()) {
            jrVar.a(e);
            jrVar.a(this.f578a);
            jrVar.b();
        }
        if (this.f581d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f581d);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f577a.set(1, z);
    }

    public boolean b() {
        return this.f576a != null;
    }

    public boolean c() {
        return this.f579b != null;
    }

    public boolean d() {
        return this.f580c != null;
    }

    public boolean e() {
        return this.f577a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ik)) {
            return m408a((ik) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f581d != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Target(");
        sb.append("channelId:");
        sb.append(this.f575a);
        sb.append(", ");
        sb.append("userId:");
        String str = this.f576a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (c()) {
            sb.append(", ");
            sb.append("server:");
            String str2 = this.f579b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (d()) {
            sb.append(", ");
            sb.append("resource:");
            String str3 = this.f580c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("isPreview:");
            sb.append(this.f578a);
        }
        if (f()) {
            sb.append(", ");
            sb.append("token:");
            String str4 = this.f581d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
