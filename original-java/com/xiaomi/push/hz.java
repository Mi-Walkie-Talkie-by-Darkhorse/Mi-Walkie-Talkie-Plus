package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class hz implements jg<hz, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f495a;

    /* renamed from: a  reason: collision with other field name */
    public String f496a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f497a = new BitSet(3);

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f498a;

    /* renamed from: a  reason: collision with other field name */
    public boolean f499a;

    /* renamed from: b  reason: collision with other field name */
    public long f500b;

    /* renamed from: b  reason: collision with other field name */
    public String f501b;

    /* renamed from: c  reason: collision with other field name */
    public String f502c;

    /* renamed from: d  reason: collision with other field name */
    public String f503d;

    /* renamed from: e  reason: collision with other field name */
    public String f504e;

    /* renamed from: f  reason: collision with other field name */
    public String f505f;

    /* renamed from: g  reason: collision with other field name */
    public String f506g;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f494a = new jw("ClientUploadDataItem");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9063a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9064b = new jo("", (byte) 11, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9065c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 10, 4);
    private static final jo e = new jo("", (byte) 10, 5);
    private static final jo f = new jo("", (byte) 2, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 11, 8);
    private static final jo i = new jo("", (byte) 11, 9);
    private static final jo j = new jo("", (byte) 13, 10);
    private static final jo k = new jo("", (byte) 11, 11);

    /* renamed from: a */
    public int compareTo(hz hzVar) {
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
        int a12;
        if (!hz.class.equals(hzVar.getClass())) {
            return hz.class.getName().compareTo(hzVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m360a()).compareTo(Boolean.valueOf(hzVar.m360a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m360a() && (a12 = jh.a(this.f496a, hzVar.f496a)) != 0) {
            return a12;
        }
        int compareTo2 = Boolean.valueOf(m362b()).compareTo(Boolean.valueOf(hzVar.m362b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m362b() && (a11 = jh.a(this.f501b, hzVar.f501b)) != 0) {
            return a11;
        }
        int compareTo3 = Boolean.valueOf(m363c()).compareTo(Boolean.valueOf(hzVar.m363c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m363c() && (a10 = jh.a(this.f502c, hzVar.f502c)) != 0) {
            return a10;
        }
        int compareTo4 = Boolean.valueOf(m364d()).compareTo(Boolean.valueOf(hzVar.m364d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (m364d() && (a9 = jh.a(this.f495a, hzVar.f495a)) != 0) {
            return a9;
        }
        int compareTo5 = Boolean.valueOf(m365e()).compareTo(Boolean.valueOf(hzVar.m365e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (m365e() && (a8 = jh.a(this.f500b, hzVar.f500b)) != 0) {
            return a8;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(hzVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a7 = jh.a(this.f499a, hzVar.f499a)) != 0) {
            return a7;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(hzVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a6 = jh.a(this.f503d, hzVar.f503d)) != 0) {
            return a6;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(hzVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a5 = jh.a(this.f504e, hzVar.f504e)) != 0) {
            return a5;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(hzVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a4 = jh.a(this.f505f, hzVar.f505f)) != 0) {
            return a4;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(hzVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a3 = jh.a(this.f498a, hzVar.f498a)) != 0) {
            return a3;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(hzVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (!k() || (a2 = jh.a(this.f506g, hzVar.f506g)) == 0) {
            return 0;
        }
        return a2;
    }

    public long a() {
        return this.f500b;
    }

    public hz a(long j2) {
        this.f495a = j2;
        m359a(true);
        return this;
    }

    public hz a(String str) {
        this.f496a = str;
        return this;
    }

    public hz a(Map<String, String> map) {
        this.f498a = map;
        return this;
    }

    public hz a(boolean z) {
        this.f499a = z;
        c(true);
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m356a() {
        return this.f496a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m357a() {
        return this.f498a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m358a() {
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                m358a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f496a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 11) {
                        this.f501b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f502c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 10) {
                        this.f495a = jrVar.m507a();
                        m359a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 10) {
                        this.f500b = jrVar.m507a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 2) {
                        this.f499a = jrVar.m517a();
                        c(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f503d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f504e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f505f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 13) {
                        jq a3 = jrVar.m510a();
                        this.f498a = new HashMap(a3.f830a * 2);
                        for (int i2 = 0; i2 < a3.f830a; i2++) {
                            this.f498a.put(jrVar.m513a(), jrVar.m513a());
                        }
                        jrVar.h();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 11) {
                        this.f506g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
            }
            ju.a(jrVar, b2);
            jrVar.g();
        }
    }

    public void a(String str, String str2) {
        if (this.f498a == null) {
            this.f498a = new HashMap();
        }
        this.f498a.put(str, str2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m359a(boolean z) {
        this.f497a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m360a() {
        return this.f496a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m361a(hz hzVar) {
        if (hzVar == null) {
            return false;
        }
        boolean a2 = m360a();
        boolean a3 = hzVar.m360a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f496a.equals(hzVar.f496a))) {
            return false;
        }
        boolean b2 = m362b();
        boolean b3 = hzVar.m362b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f501b.equals(hzVar.f501b))) {
            return false;
        }
        boolean c2 = m363c();
        boolean c3 = hzVar.m363c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f502c.equals(hzVar.f502c))) {
            return false;
        }
        boolean d2 = m364d();
        boolean d3 = hzVar.m364d();
        if ((d2 || d3) && (!d2 || !d3 || this.f495a != hzVar.f495a)) {
            return false;
        }
        boolean e2 = m365e();
        boolean e3 = hzVar.m365e();
        if ((e2 || e3) && (!e2 || !e3 || this.f500b != hzVar.f500b)) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = hzVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f499a != hzVar.f499a)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = hzVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f503d.equals(hzVar.f503d))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = hzVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f504e.equals(hzVar.f504e))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = hzVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f505f.equals(hzVar.f505f))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = hzVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f498a.equals(hzVar.f498a))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = hzVar.k();
        if (k2 || k3) {
            return k2 && k3 && this.f506g.equals(hzVar.f506g);
        }
        return true;
    }

    public hz b(long j2) {
        this.f500b = j2;
        b(true);
        return this;
    }

    public hz b(String str) {
        this.f501b = str;
        return this;
    }

    public String b() {
        return this.f502c;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m358a();
        jrVar.a(f494a);
        if (this.f496a != null && m360a()) {
            jrVar.a(f9063a);
            jrVar.a(this.f496a);
            jrVar.b();
        }
        if (this.f501b != null && m362b()) {
            jrVar.a(f9064b);
            jrVar.a(this.f501b);
            jrVar.b();
        }
        if (this.f502c != null && m363c()) {
            jrVar.a(f9065c);
            jrVar.a(this.f502c);
            jrVar.b();
        }
        if (m364d()) {
            jrVar.a(d);
            jrVar.a(this.f495a);
            jrVar.b();
        }
        if (m365e()) {
            jrVar.a(e);
            jrVar.a(this.f500b);
            jrVar.b();
        }
        if (f()) {
            jrVar.a(f);
            jrVar.a(this.f499a);
            jrVar.b();
        }
        if (this.f503d != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f503d);
            jrVar.b();
        }
        if (this.f504e != null && h()) {
            jrVar.a(h);
            jrVar.a(this.f504e);
            jrVar.b();
        }
        if (this.f505f != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f505f);
            jrVar.b();
        }
        if (this.f498a != null && j()) {
            jrVar.a(j);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f498a.size()));
            for (Map.Entry<String, String> entry : this.f498a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (this.f506g != null && k()) {
            jrVar.a(k);
            jrVar.a(this.f506g);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f497a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m362b() {
        return this.f501b != null;
    }

    public hz c(String str) {
        this.f502c = str;
        return this;
    }

    public String c() {
        return this.f504e;
    }

    public void c(boolean z) {
        this.f497a.set(2, z);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m363c() {
        return this.f502c != null;
    }

    public hz d(String str) {
        this.f503d = str;
        return this;
    }

    public String d() {
        return this.f505f;
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m364d() {
        return this.f497a.get(0);
    }

    public hz e(String str) {
        this.f504e = str;
        return this;
    }

    public String e() {
        return this.f506g;
    }

    /* renamed from: e  reason: collision with other method in class */
    public boolean m365e() {
        return this.f497a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof hz)) {
            return m361a((hz) obj);
        }
        return false;
    }

    public hz f(String str) {
        this.f505f = str;
        return this;
    }

    public boolean f() {
        return this.f497a.get(2);
    }

    public hz g(String str) {
        this.f506g = str;
        return this;
    }

    public boolean g() {
        return this.f503d != null;
    }

    public boolean h() {
        return this.f504e != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f505f != null;
    }

    public boolean j() {
        return this.f498a != null;
    }

    public boolean k() {
        return this.f506g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("ClientUploadDataItem(");
        boolean z2 = false;
        if (m360a()) {
            sb.append("channel:");
            String str = this.f496a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m362b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("data:");
            String str2 = this.f501b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
            z = false;
        }
        if (m363c()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("name:");
            String str3 = this.f502c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
            z = false;
        }
        if (m364d()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("counter:");
            sb.append(this.f495a);
            z = false;
        }
        if (m365e()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("timestamp:");
            sb.append(this.f500b);
            z = false;
        }
        if (f()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("fromSdk:");
            sb.append(this.f499a);
            z = false;
        }
        if (g()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("category:");
            String str4 = this.f503d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
            z = false;
        }
        if (h()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("sourcePackage:");
            String str5 = this.f504e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
            z = false;
        }
        if (i()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("id:");
            String str6 = this.f505f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
            z = false;
        }
        if (j()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("extra:");
            Map<String, String> map = this.f498a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        } else {
            z2 = z;
        }
        if (k()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("pkgName:");
            String str7 = this.f506g;
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
