package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes2.dex */
public class iq implements jg<iq, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f635a;

    /* renamed from: a  reason: collision with other field name */
    public ik f636a;

    /* renamed from: a  reason: collision with other field name */
    public String f637a;

    /* renamed from: a  reason: collision with other field name */
    public List<String> f639a;

    /* renamed from: b  reason: collision with other field name */
    public String f641b;

    /* renamed from: c  reason: collision with other field name */
    public String f642c;

    /* renamed from: d  reason: collision with other field name */
    public String f643d;

    /* renamed from: e  reason: collision with other field name */
    public String f644e;

    /* renamed from: f  reason: collision with other field name */
    public String f645f;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f634a = new jw("XmPushActionCommandResult");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9113a = new jo("", (byte) 12, 2);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9114b = new jo("", (byte) 11, 3);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9115c = new jo("", (byte) 11, 4);
    private static final jo d = new jo("", (byte) 11, 5);
    private static final jo e = new jo("", (byte) 10, 7);
    private static final jo f = new jo("", (byte) 11, 8);
    private static final jo g = new jo("", (byte) 11, 9);
    private static final jo h = new jo("", (byte) 15, 10);
    private static final jo i = new jo("", (byte) 11, 12);
    private static final jo j = new jo("", (byte) 2, 13);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f638a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public boolean f640a = true;

    /* renamed from: a */
    public int compareTo(iq iqVar) {
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
        if (!iq.class.equals(iqVar.getClass())) {
            return iq.class.getName().compareTo(iqVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m426a()).compareTo(Boolean.valueOf(iqVar.m426a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m426a() && (a11 = jh.a(this.f636a, iqVar.f636a)) != 0) {
            return a11;
        }
        int compareTo2 = Boolean.valueOf(m428b()).compareTo(Boolean.valueOf(iqVar.m428b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m428b() && (a10 = jh.a(this.f637a, iqVar.f637a)) != 0) {
            return a10;
        }
        int compareTo3 = Boolean.valueOf(m429c()).compareTo(Boolean.valueOf(iqVar.m429c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m429c() && (a9 = jh.a(this.f641b, iqVar.f641b)) != 0) {
            return a9;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(iqVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a8 = jh.a(this.f642c, iqVar.f642c)) != 0) {
            return a8;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(iqVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a7 = jh.a(this.f635a, iqVar.f635a)) != 0) {
            return a7;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(iqVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a6 = jh.a(this.f643d, iqVar.f643d)) != 0) {
            return a6;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(iqVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a5 = jh.a(this.f644e, iqVar.f644e)) != 0) {
            return a5;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(iqVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a4 = jh.a(this.f639a, iqVar.f639a)) != 0) {
            return a4;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(iqVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a3 = jh.a(this.f645f, iqVar.f645f)) != 0) {
            return a3;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(iqVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (!j() || (a2 = jh.a(this.f640a, iqVar.f640a)) == 0) {
            return 0;
        }
        return a2;
    }

    public String a() {
        return this.f637a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public List<String> m424a() {
        return this.f639a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m425a() {
        if (this.f637a == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        } else if (this.f641b == null) {
            throw new js("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.f642c == null) {
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
                if (e()) {
                    m425a();
                    return;
                }
                throw new js("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
            }
            switch (a2.f828a) {
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f636a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f637a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f641b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f642c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 10) {
                        this.f635a = jrVar.m507a();
                        a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 11) {
                        this.f643d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f644e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 15) {
                        jp a3 = jrVar.m509a();
                        this.f639a = new ArrayList(a3.f829a);
                        for (int i2 = 0; i2 < a3.f829a; i2++) {
                            this.f639a.add(jrVar.m513a());
                        }
                        jrVar.i();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 11) {
                        this.f645f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 13:
                    if (b2 == 2) {
                        this.f640a = jrVar.m517a();
                        b(true);
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
        this.f638a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m426a() {
        return this.f636a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m427a(iq iqVar) {
        if (iqVar == null) {
            return false;
        }
        boolean a2 = m426a();
        boolean a3 = iqVar.m426a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f636a.m408a(iqVar.f636a))) {
            return false;
        }
        boolean b2 = m428b();
        boolean b3 = iqVar.m428b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f637a.equals(iqVar.f637a))) {
            return false;
        }
        boolean c2 = m429c();
        boolean c3 = iqVar.m429c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f641b.equals(iqVar.f641b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = iqVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.f642c.equals(iqVar.f642c))) || this.f635a != iqVar.f635a) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = iqVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f643d.equals(iqVar.f643d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = iqVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f644e.equals(iqVar.f644e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = iqVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f639a.equals(iqVar.f639a))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = iqVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f645f.equals(iqVar.f645f))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = iqVar.j();
        if (j2 || j3) {
            return j2 && j3 && this.f640a == iqVar.f640a;
        }
        return true;
    }

    public String b() {
        return this.f642c;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m425a();
        jrVar.a(f634a);
        if (this.f636a != null && m426a()) {
            jrVar.a(f9113a);
            this.f636a.b(jrVar);
            jrVar.b();
        }
        if (this.f637a != null) {
            jrVar.a(f9114b);
            jrVar.a(this.f637a);
            jrVar.b();
        }
        if (this.f641b != null) {
            jrVar.a(f9115c);
            jrVar.a(this.f641b);
            jrVar.b();
        }
        if (this.f642c != null) {
            jrVar.a(d);
            jrVar.a(this.f642c);
            jrVar.b();
        }
        jrVar.a(e);
        jrVar.a(this.f635a);
        jrVar.b();
        if (this.f643d != null && f()) {
            jrVar.a(f);
            jrVar.a(this.f643d);
            jrVar.b();
        }
        if (this.f644e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f644e);
            jrVar.b();
        }
        if (this.f639a != null && h()) {
            jrVar.a(h);
            jrVar.a(new jp((byte) 11, this.f639a.size()));
            for (String str : this.f639a) {
                jrVar.a(str);
            }
            jrVar.e();
            jrVar.b();
        }
        if (this.f645f != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f645f);
            jrVar.b();
        }
        if (j()) {
            jrVar.a(j);
            jrVar.a(this.f640a);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f638a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m428b() {
        return this.f637a != null;
    }

    public String c() {
        return this.f645f;
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m429c() {
        return this.f641b != null;
    }

    public boolean d() {
        return this.f642c != null;
    }

    public boolean e() {
        return this.f638a.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof iq)) {
            return m427a((iq) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f643d != null;
    }

    public boolean g() {
        return this.f644e != null;
    }

    public boolean h() {
        return this.f639a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f645f != null;
    }

    public boolean j() {
        return this.f638a.get(1);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionCommandResult(");
        if (m426a()) {
            sb.append("target:");
            ik ikVar = this.f636a;
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
        String str = this.f637a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("appId:");
        String str2 = this.f641b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("cmdName:");
        String str3 = this.f642c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.f635a);
        if (f()) {
            sb.append(", ");
            sb.append("reason:");
            String str4 = this.f643d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str5 = this.f644e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("cmdArgs:");
            List<String> list = this.f639a;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("category:");
            String str6 = this.f645f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("response2Client:");
            sb.append(this.f640a);
        }
        sb.append(")");
        return sb.toString();
    }
}
