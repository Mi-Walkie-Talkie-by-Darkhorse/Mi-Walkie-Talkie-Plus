package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class ii implements jg<ii, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f558a;

    /* renamed from: a  reason: collision with other field name */
    public long f559a;

    /* renamed from: a  reason: collision with other field name */
    public String f560a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f561a;

    /* renamed from: a  reason: collision with other field name */
    public Map<String, String> f562a;

    /* renamed from: a  reason: collision with other field name */
    public boolean f563a;

    /* renamed from: b  reason: collision with other field name */
    public int f564b;

    /* renamed from: b  reason: collision with other field name */
    public String f565b;

    /* renamed from: b  reason: collision with other field name */
    public Map<String, String> f566b;

    /* renamed from: c  reason: collision with other field name */
    public int f567c;

    /* renamed from: c  reason: collision with other field name */
    public String f568c;

    /* renamed from: c  reason: collision with other field name */
    public Map<String, String> f569c;

    /* renamed from: d  reason: collision with other field name */
    public String f570d;

    /* renamed from: e  reason: collision with other field name */
    public String f571e;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f557a = new jw("PushMetaInfo");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9092a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9093b = new jo("", (byte) 10, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9094c = new jo("", (byte) 11, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 8, 6);
    private static final jo g = new jo("", (byte) 11, 7);
    private static final jo h = new jo("", (byte) 8, 8);
    private static final jo i = new jo("", (byte) 8, 9);
    private static final jo j = new jo("", (byte) 13, 10);
    private static final jo k = new jo("", (byte) 13, 11);
    private static final jo l = new jo("", (byte) 2, 12);
    private static final jo m = new jo("", (byte) 13, 13);

    public ii() {
        this.f561a = new BitSet(5);
        this.f563a = false;
    }

    public ii(ii iiVar) {
        BitSet bitSet = new BitSet(5);
        this.f561a = bitSet;
        bitSet.clear();
        this.f561a.or(iiVar.f561a);
        if (iiVar.m399a()) {
            this.f560a = iiVar.f560a;
        }
        this.f559a = iiVar.f559a;
        if (iiVar.m405c()) {
            this.f565b = iiVar.f565b;
        }
        if (iiVar.m406d()) {
            this.f568c = iiVar.f568c;
        }
        if (iiVar.e()) {
            this.f570d = iiVar.f570d;
        }
        this.f558a = iiVar.f558a;
        if (iiVar.g()) {
            this.f571e = iiVar.f571e;
        }
        this.f564b = iiVar.f564b;
        this.f567c = iiVar.f567c;
        if (iiVar.j()) {
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, String> entry : iiVar.f562a.entrySet()) {
                hashMap.put(entry.getKey(), entry.getValue());
            }
            this.f562a = hashMap;
        }
        if (iiVar.k()) {
            HashMap hashMap2 = new HashMap();
            for (Map.Entry<String, String> entry2 : iiVar.f566b.entrySet()) {
                hashMap2.put(entry2.getKey(), entry2.getValue());
            }
            this.f566b = hashMap2;
        }
        this.f563a = iiVar.f563a;
        if (iiVar.n()) {
            HashMap hashMap3 = new HashMap();
            for (Map.Entry<String, String> entry3 : iiVar.f569c.entrySet()) {
                hashMap3.put(entry3.getKey(), entry3.getValue());
            }
            this.f569c = hashMap3;
        }
    }

    public int a() {
        return this.f558a;
    }

    /* renamed from: a */
    public int compareTo(ii iiVar) {
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
        if (!ii.class.equals(iiVar.getClass())) {
            return ii.class.getName().compareTo(iiVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m399a()).compareTo(Boolean.valueOf(iiVar.m399a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m399a() && (a14 = jh.a(this.f560a, iiVar.f560a)) != 0) {
            return a14;
        }
        int compareTo2 = Boolean.valueOf(m403b()).compareTo(Boolean.valueOf(iiVar.m403b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (m403b() && (a13 = jh.a(this.f559a, iiVar.f559a)) != 0) {
            return a13;
        }
        int compareTo3 = Boolean.valueOf(m405c()).compareTo(Boolean.valueOf(iiVar.m405c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (m405c() && (a12 = jh.a(this.f565b, iiVar.f565b)) != 0) {
            return a12;
        }
        int compareTo4 = Boolean.valueOf(m406d()).compareTo(Boolean.valueOf(iiVar.m406d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (m406d() && (a11 = jh.a(this.f568c, iiVar.f568c)) != 0) {
            return a11;
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(iiVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e() && (a10 = jh.a(this.f570d, iiVar.f570d)) != 0) {
            return a10;
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(iiVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f() && (a9 = jh.a(this.f558a, iiVar.f558a)) != 0) {
            return a9;
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(iiVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g() && (a8 = jh.a(this.f571e, iiVar.f571e)) != 0) {
            return a8;
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(iiVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h() && (a7 = jh.a(this.f564b, iiVar.f564b)) != 0) {
            return a7;
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(iiVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i() && (a6 = jh.a(this.f567c, iiVar.f567c)) != 0) {
            return a6;
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(iiVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j() && (a5 = jh.a(this.f562a, iiVar.f562a)) != 0) {
            return a5;
        }
        int compareTo11 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(iiVar.k()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (k() && (a4 = jh.a(this.f566b, iiVar.f566b)) != 0) {
            return a4;
        }
        int compareTo12 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(iiVar.m()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (m() && (a3 = jh.a(this.f563a, iiVar.f563a)) != 0) {
            return a3;
        }
        int compareTo13 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(iiVar.n()));
        if (compareTo13 != 0) {
            return compareTo13;
        }
        if (!n() || (a2 = jh.a(this.f569c, iiVar.f569c)) == 0) {
            return 0;
        }
        return a2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public long m394a() {
        return this.f559a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public ii m395a() {
        return new ii(this);
    }

    public ii a(int i2) {
        this.f558a = i2;
        b(true);
        return this;
    }

    public ii a(String str) {
        this.f560a = str;
        return this;
    }

    public ii a(Map<String, String> map) {
        this.f562a = map;
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m396a() {
        return this.f560a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public Map<String, String> m397a() {
        return this.f562a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m398a() {
        if (this.f560a == null) {
            throw new js("Required field 'id' was not present! Struct: " + toString());
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                if (m403b()) {
                    m398a();
                    return;
                }
                throw new js("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
            }
            int i2 = 0;
            switch (a2.f828a) {
                case 1:
                    if (b2 == 11) {
                        this.f560a = jrVar.m513a();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 2:
                    if (b2 == 10) {
                        this.f559a = jrVar.m507a();
                        a(true);
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 3:
                    if (b2 == 11) {
                        this.f565b = jrVar.m513a();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 4:
                    if (b2 == 11) {
                        this.f568c = jrVar.m513a();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 5:
                    if (b2 == 11) {
                        this.f570d = jrVar.m513a();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 6:
                    if (b2 == 8) {
                        this.f558a = jrVar.m506a();
                        b(true);
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 7:
                    if (b2 == 11) {
                        this.f571e = jrVar.m513a();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 8:
                    if (b2 == 8) {
                        this.f564b = jrVar.m506a();
                        c(true);
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 9:
                    if (b2 == 8) {
                        this.f567c = jrVar.m506a();
                        d(true);
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 10:
                    if (b2 == 13) {
                        jq a3 = jrVar.m510a();
                        this.f562a = new HashMap(a3.f830a * 2);
                        while (i2 < a3.f830a) {
                            this.f562a.put(jrVar.m513a(), jrVar.m513a());
                            i2++;
                        }
                        jrVar.h();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 11:
                    if (b2 == 13) {
                        jq a4 = jrVar.m510a();
                        this.f566b = new HashMap(a4.f830a * 2);
                        while (i2 < a4.f830a) {
                            this.f566b.put(jrVar.m513a(), jrVar.m513a());
                            i2++;
                        }
                        jrVar.h();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 12:
                    if (b2 == 2) {
                        this.f563a = jrVar.m517a();
                        e(true);
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                case 13:
                    if (b2 == 13) {
                        jq a5 = jrVar.m510a();
                        this.f569c = new HashMap(a5.f830a * 2);
                        while (i2 < a5.f830a) {
                            this.f569c.put(jrVar.m513a(), jrVar.m513a());
                            i2++;
                        }
                        jrVar.h();
                        break;
                    }
                    ju.a(jrVar, b2);
                    break;
                default:
                    ju.a(jrVar, b2);
                    break;
            }
            jrVar.g();
        }
    }

    public void a(String str, String str2) {
        if (this.f562a == null) {
            this.f562a = new HashMap();
        }
        this.f562a.put(str, str2);
    }

    public void a(boolean z) {
        this.f561a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m399a() {
        return this.f560a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m400a(ii iiVar) {
        if (iiVar == null) {
            return false;
        }
        boolean a2 = m399a();
        boolean a3 = iiVar.m399a();
        if (((a2 || a3) && (!a2 || !a3 || !this.f560a.equals(iiVar.f560a))) || this.f559a != iiVar.f559a) {
            return false;
        }
        boolean c2 = m405c();
        boolean c3 = iiVar.m405c();
        if ((c2 || c3) && (!c2 || !c3 || !this.f565b.equals(iiVar.f565b))) {
            return false;
        }
        boolean d2 = m406d();
        boolean d3 = iiVar.m406d();
        if ((d2 || d3) && (!d2 || !d3 || !this.f568c.equals(iiVar.f568c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = iiVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f570d.equals(iiVar.f570d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = iiVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f558a != iiVar.f558a)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = iiVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f571e.equals(iiVar.f571e))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = iiVar.h();
        if ((h2 || h3) && (!h2 || !h3 || this.f564b != iiVar.f564b)) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = iiVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.f567c != iiVar.f567c)) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = iiVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.f562a.equals(iiVar.f562a))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = iiVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f566b.equals(iiVar.f566b))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = iiVar.m();
        if ((m2 || m3) && (!m2 || !m3 || this.f563a != iiVar.f563a)) {
            return false;
        }
        boolean n = n();
        boolean n2 = iiVar.n();
        if (n || n2) {
            return n && n2 && this.f569c.equals(iiVar.f569c);
        }
        return true;
    }

    public int b() {
        return this.f564b;
    }

    public ii b(int i2) {
        this.f564b = i2;
        c(true);
        return this;
    }

    public ii b(String str) {
        this.f565b = str;
        return this;
    }

    /* renamed from: b  reason: collision with other method in class */
    public String m401b() {
        return this.f565b;
    }

    /* renamed from: b  reason: collision with other method in class */
    public Map<String, String> m402b() {
        return this.f566b;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m398a();
        jrVar.a(f557a);
        if (this.f560a != null) {
            jrVar.a(f9092a);
            jrVar.a(this.f560a);
            jrVar.b();
        }
        jrVar.a(f9093b);
        jrVar.a(this.f559a);
        jrVar.b();
        if (this.f565b != null && m405c()) {
            jrVar.a(f9094c);
            jrVar.a(this.f565b);
            jrVar.b();
        }
        if (this.f568c != null && m406d()) {
            jrVar.a(d);
            jrVar.a(this.f568c);
            jrVar.b();
        }
        if (this.f570d != null && e()) {
            jrVar.a(e);
            jrVar.a(this.f570d);
            jrVar.b();
        }
        if (f()) {
            jrVar.a(f);
            jrVar.mo504a(this.f558a);
            jrVar.b();
        }
        if (this.f571e != null && g()) {
            jrVar.a(g);
            jrVar.a(this.f571e);
            jrVar.b();
        }
        if (h()) {
            jrVar.a(h);
            jrVar.mo504a(this.f564b);
            jrVar.b();
        }
        if (i()) {
            jrVar.a(i);
            jrVar.mo504a(this.f567c);
            jrVar.b();
        }
        if (this.f562a != null && j()) {
            jrVar.a(j);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f562a.size()));
            for (Map.Entry<String, String> entry : this.f562a.entrySet()) {
                jrVar.a(entry.getKey());
                jrVar.a(entry.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (this.f566b != null && k()) {
            jrVar.a(k);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f566b.size()));
            for (Map.Entry<String, String> entry2 : this.f566b.entrySet()) {
                jrVar.a(entry2.getKey());
                jrVar.a(entry2.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        if (m()) {
            jrVar.a(l);
            jrVar.a(this.f563a);
            jrVar.b();
        }
        if (this.f569c != null && n()) {
            jrVar.a(m);
            jrVar.a(new jq((byte) 11, (byte) 11, this.f569c.size()));
            for (Map.Entry<String, String> entry3 : this.f569c.entrySet()) {
                jrVar.a(entry3.getKey());
                jrVar.a(entry3.getValue());
            }
            jrVar.d();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public void b(String str, String str2) {
        if (this.f566b == null) {
            this.f566b = new HashMap();
        }
        this.f566b.put(str, str2);
    }

    public void b(boolean z) {
        this.f561a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m403b() {
        return this.f561a.get(0);
    }

    public int c() {
        return this.f567c;
    }

    public ii c(int i2) {
        this.f567c = i2;
        d(true);
        return this;
    }

    public ii c(String str) {
        this.f568c = str;
        return this;
    }

    /* renamed from: c  reason: collision with other method in class */
    public String m404c() {
        return this.f568c;
    }

    public void c(boolean z) {
        this.f561a.set(2, z);
    }

    /* renamed from: c  reason: collision with other method in class */
    public boolean m405c() {
        return this.f565b != null;
    }

    public ii d(String str) {
        this.f570d = str;
        return this;
    }

    public String d() {
        return this.f570d;
    }

    public void d(boolean z) {
        this.f561a.set(3, z);
    }

    /* renamed from: d  reason: collision with other method in class */
    public boolean m406d() {
        return this.f568c != null;
    }

    public void e(boolean z) {
        this.f561a.set(4, z);
    }

    public boolean e() {
        return this.f570d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ii)) {
            return m400a((ii) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f561a.get(1);
    }

    public boolean g() {
        return this.f571e != null;
    }

    public boolean h() {
        return this.f561a.get(2);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f561a.get(3);
    }

    public boolean j() {
        return this.f562a != null;
    }

    public boolean k() {
        return this.f566b != null;
    }

    public boolean l() {
        return this.f563a;
    }

    public boolean m() {
        return this.f561a.get(4);
    }

    public boolean n() {
        return this.f569c != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PushMetaInfo(");
        sb.append("id:");
        String str = this.f560a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("messageTs:");
        sb.append(this.f559a);
        if (m405c()) {
            sb.append(", ");
            sb.append("topic:");
            String str2 = this.f565b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        if (m406d()) {
            sb.append(", ");
            sb.append("title:");
            String str3 = this.f568c;
            if (str3 == null) {
                sb.append("null");
            } else {
                sb.append(str3);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("description:");
            String str4 = this.f570d;
            if (str4 == null) {
                sb.append("null");
            } else {
                sb.append(str4);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("notifyType:");
            sb.append(this.f558a);
        }
        if (g()) {
            sb.append(", ");
            sb.append("url:");
            String str5 = this.f571e;
            if (str5 == null) {
                sb.append("null");
            } else {
                sb.append(str5);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("passThrough:");
            sb.append(this.f564b);
        }
        if (i()) {
            sb.append(", ");
            sb.append("notifyId:");
            sb.append(this.f567c);
        }
        if (j()) {
            sb.append(", ");
            sb.append("extra:");
            Map<String, String> map = this.f562a;
            if (map == null) {
                sb.append("null");
            } else {
                sb.append(map);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("internal:");
            Map<String, String> map2 = this.f566b;
            if (map2 == null) {
                sb.append("null");
            } else {
                sb.append(map2);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("ignoreRegInfo:");
            sb.append(this.f563a);
        }
        if (n()) {
            sb.append(", ");
            sb.append("apsProperFields:");
            Map<String, String> map3 = this.f569c;
            if (map3 == null) {
                sb.append("null");
            } else {
                sb.append(map3);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
