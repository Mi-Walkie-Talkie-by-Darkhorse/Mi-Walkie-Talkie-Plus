package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes2.dex */
public class ip implements jg<ip, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f623a;

    /* renamed from: a  reason: collision with other field name */
    public ik f624a;

    /* renamed from: a  reason: collision with other field name */
    public String f625a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f627a;

    /* renamed from: b  reason: collision with other field name */
    public String f629b;

    /* renamed from: c  reason: collision with other field name */
    public String f631c;

    /* renamed from: d  reason: collision with other field name */
    public String f632d;

    /* renamed from: e  reason: collision with other field name */
    public String f633e;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f622a = new jw("XmPushActionCommand");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9110a = new jo("", (byte) 12, 2);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9111b = new jo("", (byte) 11, 3);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9112c = new jo("", (byte) 11, 4);
    private static final jo d = new jo("", (byte) 11, 5);
    private static final jo e = new jo("", (byte) 15, 6);
    private static final jo f = new jo("", (byte) 11, 7);
    private static final jo g = new jo("", (byte) 11, 9);
    private static final jo h = new jo("", (byte) 2, 10);
    private static final jo i = new jo("", (byte) 2, 11);
    private static final jo j = new jo("", (byte) 10, 12);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f626a = new BitSet(3);

    /* renamed from: a  reason: collision with other field name */
    public boolean f628a = false;

    /* renamed from: b  reason: collision with other field name */
    public boolean f630b = true;

    /* renamed from: a */
    public int compareTo(ip ipVar) {
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
        if (!ip.class.equals(ipVar.getClass())) {
            return ip.class.getName().compareTo(ipVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m422a()).compareTo(Boolean.valueOf(ipVar.m422a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m422a() && (a11 = jh.a(this.f624a, ipVar.f624a)) != 0) {
            return a11;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ipVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a10 = jh.a(this.f625a, ipVar.f625a)) != 0) {
            return a10;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ipVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a9 = jh.a(this.f629b, ipVar.f629b)) != 0) {
            return a9;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(ipVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a8 = jh.a(this.f631c, ipVar.f631c)) != 0) {
            return a8;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(ipVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a7 = jh.a(this.f627a, ipVar.f627a)) != 0) {
            return a7;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(ipVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a6 = jh.a(this.f632d, ipVar.f632d)) != 0) {
            return a6;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(ipVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a5 = jh.a(this.f633e, ipVar.f633e)) != 0) {
            return a5;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(ipVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a4 = jh.a(this.f628a, ipVar.f628a)) != 0) {
            return a4;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(ipVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a3 = jh.a(this.f630b, ipVar.f630b)) != 0) {
            return a3;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(ipVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (!j() || (a2 = jh.a(this.f623a, ipVar.f623a)) == 0) {
            return 0;
        }
        return a2;
    }

    public ip a(String str) {
        this.f625a = str;
        return this;
    }

    public String a() {
        return this.f631c;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m420a() {
        if (this.f625a == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f629b == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f631c == null) {
            throw new js("Required field 'cmdName' was not present! Struct: " + toString());
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
                m420a();
                return;
            }
            switch (a2.f828a) {
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f624a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f625a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f629b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f631c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 15) {
                        jp a3 = jrVar.m509a();
                        this.f627a = new ArrayList(a3.f829a);
                        for (int i2 = 0; i2 < a3.f829a; i2++) {
                            this.f627a.add(jrVar.m513a());
                        }
                        jrVar.i();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f632d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f633e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 2) {
                        this.f628a = jrVar.m517a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 2) {
                        this.f630b = jrVar.m517a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 10) {
                        this.f623a = jrVar.m507a();
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

    /* renamed from: a  reason: collision with other method in class */
    public void m421a(String str) {
        if (this.f627a == null) {
            this.f627a = new ArrayList();
        }
        this.f627a.add(str);
    }

    public void a(boolean z) {
        this.f626a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m422a() {
        return this.f624a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m423a(ip ipVar) {
        if (ipVar == null) {
            return false;
        }
        boolean a2 = m422a();
        boolean a3 = ipVar.m422a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f624a.m408a(ipVar.f624a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = ipVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f625a.equals(ipVar.f625a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = ipVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f629b.equals(ipVar.f629b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = ipVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f631c.equals(ipVar.f631c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = ipVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f627a.equals(ipVar.f627a))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = ipVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f632d.equals(ipVar.f632d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = ipVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f633e.equals(ipVar.f633e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = ipVar.h();
        if ((h2 || h3) && (!h2 || !h3 || this.f628a != ipVar.f628a)) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = ipVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.f630b != ipVar.f630b)) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = ipVar.j();
        if (j2 || j3) {
            return j2 && j3 && this.f623a == ipVar.f623a;
        }
        return true;
    }

    public ip b(String str) {
        this.f629b = str;
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m420a();
        jrVar.a(f622a);
        if (this.f624a != null && m422a()) {
            jrVar.a(f9110a);
            this.f624a.b(jrVar);
            jrVar.b();
        }
        if (this.f625a != null) {
            jrVar.a(f9111b);
            jrVar.a(this.f625a);
            jrVar.b();
        }
        if (this.f629b != null) {
            jrVar.a(f9112c);
            jrVar.a(this.f629b);
            jrVar.b();
        }
        if (this.f631c != null) {
            jrVar.a(d);
            jrVar.a(this.f631c);
            jrVar.b();
        }
        if (this.f627a != null && e()) {
            jrVar.a(e);
            jrVar.a(new jp((byte) 11, this.f627a.size()));
            for (String str : this.f627a) {
                jrVar.a(str);
            }
            jrVar.e();
            jrVar.b();
        }
        if (this.f632d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f632d);
            jrVar.b();
        }
        if (this.f633e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f633e);
            jrVar.b();
        }
        if (h()) {
            jrVar.a(h);
            jrVar.a(this.f628a);
            jrVar.b();
        }
        if (i()) {
            jrVar.a(i);
            jrVar.a(this.f630b);
            jrVar.b();
        }
        if (j()) {
            jrVar.a(j);
            jrVar.a(this.f623a);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f626a.set(1, z);
    }

    public boolean b() {
        return this.f625a != null;
    }

    public ip c(String str) {
        this.f631c = str;
        return this;
    }

    public void c(boolean z) {
        this.f626a.set(2, z);
    }

    public boolean c() {
        return this.f629b != null;
    }

    public ip d(String str) {
        this.f632d = str;
        return this;
    }

    public boolean d() {
        return this.f631c != null;
    }

    public ip e(String str) {
        this.f633e = str;
        return this;
    }

    public boolean e() {
        return this.f627a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ip)) {
            return m423a((ip) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f632d != null;
    }

    public boolean g() {
        return this.f633e != null;
    }

    public boolean h() {
        return this.f626a.get(0);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f626a.get(1);
    }

    public boolean j() {
        return this.f626a.get(2);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionCommand(");
        if (m422a()) {
            sb.append("target:");
            ik ikVar = this.f624a;
            if (ikVar == null) {
                sb.append("null");
            } else {
                sb.append(ikVar);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("id:");
        String str = this.f625a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("appId:");
        String str2 = this.f629b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("cmdName:");
        String str3 = this.f631c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        if (e()) {
            sb.append(", ");
            sb.append("cmdArgs:");
            List<String> list = this.f627a;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("packageName:");
            String str4 = this.f632d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("category:");
            String str5 = this.f633e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("updateCache:");
            sb.append(this.f628a);
        }
        if (i()) {
            sb.append(", ");
            sb.append("response2Client:");
            sb.append(this.f630b);
        }
        if (j()) {
            sb.append(", ");
            sb.append("createdTs:");
            sb.append(this.f623a);
        }
        sb.append(")");
        return sb.toString();
    }
}
