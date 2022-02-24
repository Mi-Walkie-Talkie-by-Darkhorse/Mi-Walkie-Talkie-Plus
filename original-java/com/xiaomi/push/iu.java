package com.xiaomi.push;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class iu implements jg<iu, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f661a;

    /* renamed from: a  reason: collision with other field name */
    public ik f662a;

    /* renamed from: a  reason: collision with other field name */
    public String f663a;

    /* renamed from: a  reason: collision with other field name */
    public ByteBuffer f664a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f665a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f666a;

    /* renamed from: a  reason: collision with other field name */
    public boolean f667a;

    /* renamed from: b  reason: collision with other field name */
    public String f668b;

    /* renamed from: b  reason: collision with other field name */
    public boolean f669b;

    /* renamed from: c  reason: collision with other field name */
    public String f670c;

    /* renamed from: d  reason: collision with other field name */
    public String f671d;

    /* renamed from: e  reason: collision with other field name */
    public String f672e;

    /* renamed from: f  reason: collision with other field name */
    public String f673f;

    /* renamed from: g  reason: collision with other field name */
    public String f674g;

    /* renamed from: h  reason: collision with other field name */
    public String f675h;

    /* renamed from: i  reason: collision with other field name */
    public String f676i;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f660a = new jw("XmPushActionNotification");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9121a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9122b = new jo("", (byte) 12, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9123c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 2, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 13, 8);
    private static final jo i = new jo("", (byte) 11, 9);
    private static final jo j = new jo("", (byte) 11, 10);
    private static final jo k = new jo("", (byte) 11, 12);
    private static final jo l = new jo("", (byte) 11, 13);
    private static final jo m = new jo("", (byte) 11, 14);
    private static final jo n = new jo("", (byte) 10, 15);
    private static final jo o = new jo("", (byte) 2, 20);

    public iu() {
        this.f665a = new BitSet(3);
        this.f667a = true;
        this.f669b = false;
    }

    public iu(String str, boolean z) {
        this();
        this.f668b = str;
        this.f667a = z;
        m448a(true);
    }

    /* renamed from: a */
    public int compareTo(iu iuVar) {
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
        int a13;
        int a14;
        int a15;
        int a16;
        if (!iu.class.equals(iuVar.getClass())) {
            return iu.class.getName().compareTo(iuVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m449a()).compareTo(Boolean.valueOf(iuVar.m449a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m449a() && (a16 = jh.a(this.f663a, iuVar.f663a)) != 0) {
            return a16;
        }
        int compareTo2 = Boolean.valueOf(m452b()).compareTo(Boolean.valueOf(iuVar.m452b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m452b() && (a15 = jh.a(this.f662a, iuVar.f662a)) != 0) {
            return a15;
        }
        int compareTo3 = Boolean.valueOf(m453c()).compareTo(Boolean.valueOf(iuVar.m453c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m453c() && (a14 = jh.a(this.f668b, iuVar.f668b)) != 0) {
            return a14;
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(iuVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d() && (a13 = jh.a(this.f670c, iuVar.f670c)) != 0) {
            return a13;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(iuVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a12 = jh.a(this.f671d, iuVar.f671d)) != 0) {
            return a12;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(iuVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a11 = jh.a(this.f667a, iuVar.f667a)) != 0) {
            return a11;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(iuVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a10 = jh.a(this.f672e, iuVar.f672e)) != 0) {
            return a10;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(iuVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a9 = jh.a(this.f666a, iuVar.f666a)) != 0) {
            return a9;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(iuVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a8 = jh.a(this.f673f, iuVar.f673f)) != 0) {
            return a8;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(iuVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a7 = jh.a(this.f674g, iuVar.f674g)) != 0) {
            return a7;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(iuVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a6 = jh.a(this.f675h, iuVar.f675h)) != 0) {
            return a6;
        }
        int compareTo12 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(iuVar.l()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (l() && (a5 = jh.a(this.f676i, iuVar.f676i)) != 0) {
            return a5;
        }
        int compareTo13 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(iuVar.m()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (m() && (a4 = jh.a(this.f664a, iuVar.f664a)) != 0) {
            return a4;
        }
        int compareTo14 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(iuVar.n()));
        if (compareTo14 != 0) {
            return compareTo14;
        }
        if (n() && (a3 = jh.a(this.f661a, iuVar.f661a)) != 0) {
            return a3;
        }
        int compareTo15 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(iuVar.o()));
        if (compareTo15 != 0) {
            return compareTo15;
        }
        if (!o() || (a2 = jh.a(this.f669b, iuVar.f669b)) == 0) {
            return 0;
        }
        return a2;
    }

    public ik a() {
        return this.f662a;
    }

    public iu a(String str) {
        this.f668b = str;
        return this;
    }

    public iu a(ByteBuffer byteBuffer) {
        this.f664a = byteBuffer;
        return this;
    }

    public iu a(Map<String, String> map) {
        this.f666a = map;
        return this;
    }

    public iu a(boolean z) {
        this.f667a = z;
        m448a(true);
        return this;
    }

    public iu a(byte[] bArr) {
        a(ByteBuffer.wrap(bArr));
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m445a() {
        return this.f668b;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m446a() {
        return this.f666a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m447a() {
        if (this.f668b == null) {
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
                if (f()) {
                    m447a();
                    return;
                }
                throw new js("Required field 'requireAck' was not found in serialized data! Struct: " + toString());
            }
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f663a = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 2:
                    if (b2 == 12) {
                        ik ikVar = new ik();
                        this.f662a = ikVar;
                        ikVar.a(jrVar);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f668b = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f670c = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f671d = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 6:
                    if (b2 == 2) {
                        this.f667a = jrVar.m517a();
                        m448a(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f672e = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 8:
                    if (b2 == 13) {
                        jq a3 = jrVar.m510a();
                        this.f666a = new HashMap(a3.f830a * 2);
                        for (int i2 = 0; i2 < a3.f830a; i2++) {
                            this.f666a.put(jrVar.m513a(), jrVar.m513a());
                        }
                        jrVar.h();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 9:
                    if (b2 == 11) {
                        this.f673f = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 10:
                    if (b2 == 11) {
                        this.f674g = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 12:
                    if (b2 == 11) {
                        this.f675h = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 13:
                    if (b2 == 11) {
                        this.f676i = jrVar.m513a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 14:
                    if (b2 == 11) {
                        this.f664a = jrVar.m514a();
                        continue;
                        jrVar.g();
                    }
                    break;
                case 15:
                    if (b2 == 10) {
                        this.f661a = jrVar.m507a();
                        b(true);
                        continue;
                        jrVar.g();
                    }
                    break;
                case 20:
                    if (b2 == 2) {
                        this.f669b = jrVar.m517a();
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

    public void a(String str, String str2) {
        if (this.f666a == null) {
            this.f666a = new HashMap();
        }
        this.f666a.put(str, str2);
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m448a(boolean z) {
        this.f665a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m449a() {
        return this.f663a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m450a(iu iuVar) {
        if (iuVar == null) {
            return false;
        }
        boolean a2 = m449a();
        boolean a3 = iuVar.m449a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f663a.equals(iuVar.f663a))) {
            return false;
        }
        boolean b2 = m452b();
        boolean b3 = iuVar.m452b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f662a.m408a(iuVar.f662a))) {
            return false;
        }
        boolean c2 = m453c();
        boolean c3 = iuVar.m453c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f668b.equals(iuVar.f668b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = iuVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f670c.equals(iuVar.f670c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = iuVar.e();
        if (((e2 || e3) && (!e2 || !e3 || !this.f671d.equals(iuVar.f671d))) || this.f667a != iuVar.f667a) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = iuVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f672e.equals(iuVar.f672e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = iuVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f666a.equals(iuVar.f666a))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = iuVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f673f.equals(iuVar.f673f))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = iuVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f674g.equals(iuVar.f674g))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = iuVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f675h.equals(iuVar.f675h))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = iuVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.f676i.equals(iuVar.f676i))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = iuVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.f664a.equals(iuVar.f664a))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = iuVar.n();
        if ((n2 || n3) && (!n2 || !n3 || this.f661a != iuVar.f661a)) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = iuVar.o();
        if (o2 || o3) {
            return o2 && o3 && this.f669b == iuVar.f669b;
        }
        return true;
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m451a() {
        a(jh.a(this.f664a));
        return this.f664a.array();
    }

    public iu b(String str) {
        this.f670c = str;
        return this;
    }

    public String b() {
        return this.f670c;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m447a();
        jrVar.a(f660a);
        if (this.f663a != null && m449a()) {
            jrVar.a(f9121a);
            jrVar.a(this.f663a);
            jrVar.b();
        }
        if (this.f662a != null && m452b()) {
            jrVar.a(f9122b);
            this.f662a.b(jrVar);
            jrVar.b();
        }
        if (this.f668b != null) {
            jrVar.a(f9123c);
            jrVar.a(this.f668b);
            jrVar.b();
        }
        if (this.f670c != null && d()) {
            jrVar.a(d);
            jrVar.a(this.f670c);
            jrVar.b();
        }
        if (this.f671d != null && e()) {
            jrVar.a(e);
            jrVar.a(this.f671d);
            jrVar.b();
        }
        jrVar.a(f);
        jrVar.a(this.f667a);
        jrVar.b();
        if (this.f672e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f672e);
            jrVar.b();
        }
        if (this.f666a != null && h()) {
            jrVar.a(h);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f666a.size()));
            for (Map.Entry<String, String> entry : this.f666a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (this.f673f != null && i()) {
            jrVar.a(i);
            jrVar.a(this.f673f);
            jrVar.b();
        }
        if (this.f674g != null && j()) {
            jrVar.a(j);
            jrVar.a(this.f674g);
            jrVar.b();
        }
        if (this.f675h != null && k()) {
            jrVar.a(k);
            jrVar.a(this.f675h);
            jrVar.b();
        }
        if (this.f676i != null && l()) {
            jrVar.a(l);
            jrVar.a(this.f676i);
            jrVar.b();
        }
        if (this.f664a != null && m()) {
            jrVar.a(m);
            jrVar.a(this.f664a);
            jrVar.b();
        }
        if (n()) {
            jrVar.a(n);
            jrVar.a(this.f661a);
            jrVar.b();
        }
        if (o()) {
            jrVar.a(o);
            jrVar.a(this.f669b);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f665a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m452b() {
        return this.f662a != null;
    }

    public iu c(String str) {
        this.f671d = str;
        return this;
    }

    public String c() {
        return this.f673f;
    }

    public void c(boolean z) {
        this.f665a.set(2, z);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m453c() {
        return this.f668b != null;
    }

    public iu d(String str) {
        this.f673f = str;
        return this;
    }

    public boolean d() {
        return this.f670c != null;
    }

    public boolean e() {
        return this.f671d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof iu)) {
            return m450a((iu) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f665a.get(0);
    }

    public boolean g() {
        return this.f672e != null;
    }

    public boolean h() {
        return this.f666a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f673f != null;
    }

    public boolean j() {
        return this.f674g != null;
    }

    public boolean k() {
        return this.f675h != null;
    }

    public boolean l() {
        return this.f676i != null;
    }

    public boolean m() {
        return this.f664a != null;
    }

    public boolean n() {
        return this.f665a.get(1);
    }

    public boolean o() {
        return this.f665a.get(2);
    }

    public String toString() {
        boolean z;
        StringBuilder sb = new StringBuilder("XmPushActionNotification(");
        boolean z2 = false;
        if (m449a()) {
            sb.append("debug:");
            String str = this.f663a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (m452b()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("target:");
            ik ikVar = this.f662a;
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
        String str2 = this.f668b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        if (d()) {
            sb.append(", ");
            sb.append("appId:");
            String str3 = this.f670c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("type:");
            String str4 = this.f671d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        sb.append(", ");
        sb.append("requireAck:");
        sb.append(this.f667a);
        if (g()) {
            sb.append(", ");
            sb.append("payload:");
            String str5 = this.f672e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f666a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("packageName:");
            String str6 = this.f673f;
            if (str6 == null) {
                sb.append("null");
            } else {
                sb.append(str6);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("category:");
            String str7 = this.f674g;
            if (str7 == null) {
                sb.append("null");
            } else {
                sb.append(str7);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("regId:");
            String str8 = this.f675h;
            if (str8 == null) {
                sb.append("null");
            } else {
                sb.append(str8);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("aliasName:");
            String str9 = this.f676i;
            if (str9 == null) {
                sb.append("null");
            } else {
                sb.append(str9);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("binaryExtra:");
            ByteBuffer byteBuffer = this.f664a;
            if (byteBuffer == null) {
                sb.append("null");
            } else {
                jh.a(byteBuffer, sb);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("createdTs:");
            sb.append(this.f661a);
        }
        if (o()) {
            sb.append(", ");
            sb.append("alreadyLogClickInXmq:");
            sb.append(this.f669b);
        }
        sb.append(")");
        return sb.toString();
    }
}
