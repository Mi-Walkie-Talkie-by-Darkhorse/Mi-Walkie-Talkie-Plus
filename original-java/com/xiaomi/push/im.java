package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class im implements jg<im, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public ik f606a;

    /* renamed from: a  reason: collision with other field name */
    public String f607a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f609a;

    /* renamed from: b  reason: collision with other field name */
    public String f610b;

    /* renamed from: c  reason: collision with other field name */
    public String f611c;

    /* renamed from: d  reason: collision with other field name */
    public String f612d;

    /* renamed from: e  reason: collision with other field name */
    public String f613e;

    /* renamed from: f  reason: collision with other field name */
    public String f614f;

    /* renamed from: g  reason: collision with other field name */
    public String f615g;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f604a = new jw("XmPushActionAckNotification");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9104a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9105b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9106c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 10, 7);
    private static final jo g = new jo("", (byte) 11, 8);
    private static final jo h = new jo("", (byte) 13, 9);
    private static final jo i = new jo("", (byte) 11, 10);
    private static final jo j = new jo("", (byte) 11, 11);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f608a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    public long f605a = 0;

    /* renamed from: a */
    public int compareTo(im imVar) {
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
        if (!im.class.equals(imVar.getClass())) {
            return im.class.getName().compareTo(imVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m413a()).compareTo(Boolean.valueOf(imVar.m413a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m413a() && (a11 = jh.a(this.f607a, imVar.f607a)) != 0) {
            return a11;
        }
        int compareTo2 = Boolean.valueOf(m415b()).compareTo(Boolean.valueOf(imVar.m415b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m415b() && (a10 = jh.a(this.f606a, imVar.f606a)) != 0) {
            return a10;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(imVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c() && (a9 = jh.a(this.f610b, imVar.f610b)) != 0) {
            return a9;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(imVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a8 = jh.a(this.f611c, imVar.f611c)) != 0) {
            return a8;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(imVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a7 = jh.a(this.f612d, imVar.f612d)) != 0) {
            return a7;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(imVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a6 = jh.a(this.f605a, imVar.f605a)) != 0) {
            return a6;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(imVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a5 = jh.a(this.f613e, imVar.f613e)) != 0) {
            return a5;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(imVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a4 = jh.a(this.f609a, imVar.f609a)) != 0) {
            return a4;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(imVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a3 = jh.a(this.f614f, imVar.f614f)) != 0) {
            return a3;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(imVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (!j() || (a2 = jh.a(this.f615g, imVar.f615g)) == 0) {
            return 0;
        }
        return a2;
    }

    public im a(long j2) {
        this.f605a = j2;
        a(true);
        return this;
    }

    public im a(ik ikVar) {
        this.f606a = ikVar;
        return this;
    }

    public im a(String str) {
        this.f610b = str;
        return this;
    }

    public String a() {
        return this.f610b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m411a() {
        return this.f609a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m412a() {
        if (this.f610b == null) {
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
                m412a();
                return;
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f607a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f606a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f610b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f611c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f612d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 10) {
                        this.f605a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f613e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 13) {
                        jq a3 = jrVar.m510a();
                        this.f609a = new HashMap(a3.f830a * 2);
                        for (int i2 = 0; i2 < a3.f830a; i2++) {
                            this.f609a.put(jrVar.m513a(), jrVar.m513a());
                        }
                        jrVar.h();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f614f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 11:
                    if (b2 == 11) {
                        this.f615g = jrVar.m513a();
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
        this.f608a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m413a() {
        return this.f607a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m414a(im imVar) {
        if (imVar == null) {
            return false;
        }
        boolean a2 = m413a();
        boolean a3 = imVar.m413a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f607a.equals(imVar.f607a))) {
            return false;
        }
        boolean b2 = m415b();
        boolean b3 = imVar.m415b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f606a.m408a(imVar.f606a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = imVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f610b.equals(imVar.f610b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = imVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f611c.equals(imVar.f611c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = imVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f612d.equals(imVar.f612d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = imVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f605a != imVar.f605a)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = imVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f613e.equals(imVar.f613e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = imVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f609a.equals(imVar.f609a))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = imVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f614f.equals(imVar.f614f))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = imVar.j();
        if (j2 || j3) {
            return j2 && j3 && this.f615g.equals(imVar.f615g);
        }
        return true;
    }

    public im b(String str) {
        this.f611c = str;
        return this;
    }

    public String b() {
        return this.f612d;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m412a();
        jrVar.a(f604a);
        if (this.f607a != null && m413a()) {
            jrVar.a(f9104a);
            jrVar.a(this.f607a);
            jrVar.b();
        }
        if (this.f606a != null && m415b()) {
            jrVar.a(f9105b);
            this.f606a.b(jrVar);
            jrVar.b();
        }
        if (this.f610b != null) {
            jrVar.a(f9106c);
            jrVar.a(this.f610b);
            jrVar.b();
        }
        if (this.f611c != null && d()) {
            jrVar.a(d);
            jrVar.a(this.f611c);
            jrVar.b();
        }
        if (this.f612d != null && e()) {
            jrVar.a(e);
            jrVar.a(this.f612d);
            jrVar.b();
        }
        if (f()) {
            jrVar.a(f);
            jrVar.a(this.f605a);
            jrVar.b();
        }
        if (this.f613e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f613e);
            jrVar.b();
        }
        if (this.f609a != null && h()) {
            jrVar.a(h);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f609a.size()));
            for (Map.Entry<String, String> entry : this.f609a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (this.f614f != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f614f);
            jrVar.b();
        }
        if (this.f615g != null && j()) {
            jrVar.a(j);
            jrVar.a(this.f615g);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m415b() {
        return this.f606a != null;
    }

    public im c(String str) {
        this.f612d = str;
        return this;
    }

    public boolean c() {
        return this.f610b != null;
    }

    public im d(String str) {
        this.f613e = str;
        return this;
    }

    public boolean d() {
        return this.f611c != null;
    }

    public im e(String str) {
        this.f614f = str;
        return this;
    }

    public boolean e() {
        return this.f612d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof im)) {
            return m414a((im) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f608a.get(0);
    }

    public boolean g() {
        return this.f613e != null;
    }

    public boolean h() {
        return this.f609a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f614f != null;
    }

    public boolean j() {
        return this.f615g != null;
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionAckNotification(");
        boolean z2 = false;
        if (m413a()) {
            sb.append("debug:");
            String str = this.f607a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m415b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f606a;
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
        String str2 = this.f610b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f611c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("type:");
            String str4 = this.f612d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f605a);
        }
        if (g()) {
            sb.append(", ");
            sb.append("reason:");
            String str5 = this.f613e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f609a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f614f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f615g;
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
