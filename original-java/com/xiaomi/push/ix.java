package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class ix implements jg<ix, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f729a;

    /* renamed from: a  reason: collision with other field name */
    public ik f730a;

    /* renamed from: a  reason: collision with other field name */
    public String f731a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f732a = new BitSet(1);

    /* renamed from: b  reason: collision with other field name */
    public String f733b;

    /* renamed from: c  reason: collision with other field name */
    public String f734c;

    /* renamed from: d  reason: collision with other field name */
    public String f735d;

    /* renamed from: e  reason: collision with other field name */
    public String f736e;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f728a = new jw("XmPushActionSendFeedbackResult");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9130a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9131b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9132c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 10, 6);
    private static final jo f = new jo("", (byte) 11, 7);
    private static final jo g = new jo("", (byte) 11, 8);

    /* renamed from: a */
    public int compareTo(ix ixVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        if (!ix.class.equals(ixVar.getClass())) {
            return ix.class.getName().compareTo(ixVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m465a()).compareTo(Boolean.valueOf(ixVar.m465a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m465a() && (a8 = jh.a(this.f731a, ixVar.f731a)) != 0) {
            return a8;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ixVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a7 = jh.a(this.f730a, ixVar.f730a)) != 0) {
            return a7;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ixVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a6 = jh.a(this.f733b, ixVar.f733b)) != 0) {
            return a6;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ixVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a5 = jh.a(this.f734c, ixVar.f734c)) != 0) {
            return a5;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ixVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a4 = jh.a(this.f729a, ixVar.f729a)) != 0) {
            return a4;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ixVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a3 = jh.a(this.f735d, ixVar.f735d)) != 0) {
            return a3;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ixVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (!g() || (a2 = jh.a(this.f736e, ixVar.f736e)) == 0) {
            return 0;
        }
        return a2;
    }

    public void a() {
        if (this.f733b == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f734c == null) {
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
                    a();
                    return;
                }
                throw new js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f731a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f730a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f733b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f734c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 10) {
                        this.f729a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f735d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f736e = jrVar.m513a();
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
        this.f732a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m465a() {
        return this.f731a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m466a(ix ixVar) {
        if (ixVar == null) {
            return false;
        }
        boolean a2 = m465a();
        boolean a3 = ixVar.m465a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f731a.equals(ixVar.f731a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = ixVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f730a.m408a(ixVar.f730a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = ixVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f733b.equals(ixVar.f733b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = ixVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.f734c.equals(ixVar.f734c))) || this.f729a != ixVar.f729a) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = ixVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f735d.equals(ixVar.f735d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = ixVar.g();
        if (g2 || g3) {
            return g2 && g3 && this.f736e.equals(ixVar.f736e);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f728a);
        if (this.f731a != null && m465a()) {
            jrVar.a(f9130a);
            jrVar.a(this.f731a);
            jrVar.b();
        }
        if (this.f730a != null && b()) {
            jrVar.a(f9131b);
            this.f730a.b(jrVar);
            jrVar.b();
        }
        if (this.f733b != null) {
            jrVar.a(f9132c);
            jrVar.a(this.f733b);
            jrVar.b();
        }
        if (this.f734c != null) {
            jrVar.a(d);
            jrVar.a(this.f734c);
            jrVar.b();
        }
        jrVar.a(e);
        jrVar.a(this.f729a);
        jrVar.b();
        if (this.f735d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f735d);
            jrVar.b();
        }
        if (this.f736e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f736e);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean b() {
        return this.f730a != null;
    }

    public boolean c() {
        return this.f733b != null;
    }

    public boolean d() {
        return this.f734c != null;
    }

    public boolean e() {
        return this.f732a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ix)) {
            return m466a((ix) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f735d != null;
    }

    public boolean g() {
        return this.f736e != null;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionSendFeedbackResult(");
        boolean z2 = false;
        if (m465a()) {
            sb.append("debug:");
            String str = this.f731a;
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
            ik ikVar = this.f730a;
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
        String str2 = this.f733b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("appId:");
        String str3 = this.f734c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f729a);
        if (f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f735d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("category:");
            String str5 = this.f736e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
