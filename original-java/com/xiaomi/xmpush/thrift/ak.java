package com.xiaomi.xmpush.thrift;

import com.xiaomi.mistatistic.sdk.BaseService;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.meta_data.e;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.d;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class ak implements Serializable, Cloneable, org.apache.thrift.a<ak, a> {
    public static final Map<a, b> m;
    private static final j n = new j("XmPushActionSendMessage");
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("debug", 11, 1);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("target", 12, 2);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("id", 11, 3);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("appId", 11, 4);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b("packageName", 11, 5);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("topic", 11, 6);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b("aliasName", 11, 7);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b("message", 12, 8);
    private static final org.apache.thrift.protocol.b w = new org.apache.thrift.protocol.b("needAck", 2, 9);
    private static final org.apache.thrift.protocol.b x = new org.apache.thrift.protocol.b("params", HttpConstants.CR, 10);
    private static final org.apache.thrift.protocol.b y = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 11);
    private static final org.apache.thrift.protocol.b z = new org.apache.thrift.protocol.b("userAccount", 11, 12);
    private BitSet A = new BitSet(1);
    public String a;
    public v b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public r h;
    public boolean i = true;
    public Map<String, String> j;
    public String k;
    public String l;

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        PACKAGE_NAME(5, "packageName"),
        TOPIC(6, "topic"),
        ALIAS_NAME(7, "aliasName"),
        MESSAGE(8, "message"),
        NEED_ACK(9, "needAck"),
        PARAMS(10, "params"),
        CATEGORY(11, BaseService.CATEGORY),
        USER_ACCOUNT(12, "userAccount");
        
        private static final Map<String, a> m = null;
        private final short n;
        private final String o;

        static {
            m = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                m.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.n = s;
            this.o = str;
        }

        public String a() {
            return this.o;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.DEBUG, new b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 1, new c(11)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        enumMap.put(a.TOPIC, new b("topic", 2, new c(11)));
        enumMap.put(a.ALIAS_NAME, new b("aliasName", 2, new c(11)));
        enumMap.put(a.MESSAGE, new b("message", 2, new g(12, r.class)));
        enumMap.put(a.NEED_ACK, new b("needAck", 2, new c(2)));
        enumMap.put(a.PARAMS, new b("params", 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        enumMap.put(a.USER_ACCOUNT, new b("userAccount", 2, new c(11)));
        m = Collections.unmodifiableMap(enumMap);
        b.a(ak.class, m);
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                t();
                return;
            }
            switch (i2.c) {
                case 1:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.a = eVar.w();
                        break;
                    }
                case 2:
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = new v();
                        this.b.a(eVar);
                        break;
                    }
                case 3:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = eVar.w();
                        break;
                    }
                case 4:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.d = eVar.w();
                        break;
                    }
                case 5:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = eVar.w();
                        break;
                    }
                case 6:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.w();
                        break;
                    }
                case 7:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.g = eVar.w();
                        break;
                    }
                case 8:
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.h = new r();
                        this.h.a(eVar);
                        break;
                    }
                case 9:
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.i = eVar.q();
                        a(true);
                        break;
                    }
                case 10:
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.j = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.j.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
                        break;
                    }
                case 11:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.k = eVar.w();
                        break;
                    }
                case 12:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.l = eVar.w();
                        break;
                    }
                default:
                    h.a(eVar, i2.b);
                    break;
            }
            eVar.j();
        }
    }

    public void a(boolean z2) {
        this.A.set(0, z2);
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(ak akVar) {
        if (akVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = akVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(akVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = akVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(akVar.b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = akVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.c.equals(akVar.c))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = akVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.d.equals(akVar.d))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = akVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.e.equals(akVar.e))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = akVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.f.equals(akVar.f))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = akVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.g.equals(akVar.g))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = akVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.h.a(akVar.h))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = akVar.n();
        if ((n2 || n3) && (!n2 || !n3 || this.i != akVar.i)) {
            return false;
        }
        boolean o2 = o();
        boolean o3 = akVar.o();
        if ((o2 || o3) && (!o2 || !o3 || !this.j.equals(akVar.j))) {
            return false;
        }
        boolean q2 = q();
        boolean q3 = akVar.q();
        if ((q2 || q3) && (!q2 || !q3 || !this.k.equals(akVar.k))) {
            return false;
        }
        boolean s2 = s();
        boolean s3 = akVar.s();
        return (!s2 && !s3) || (s2 && s3 && this.l.equals(akVar.l));
    }

    /* renamed from: b */
    public int compareTo(ak akVar) {
        if (!getClass().equals(akVar.getClass())) {
            return getClass().getName().compareTo(akVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(akVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, akVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(akVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) akVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(akVar.d()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (d()) {
            int a4 = org.apache.thrift.b.a(this.c, akVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(akVar.f()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (f()) {
            int a5 = org.apache.thrift.b.a(this.d, akVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(akVar.g()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (g()) {
            int a6 = org.apache.thrift.b.a(this.e, akVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(akVar.i()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (i()) {
            int a7 = org.apache.thrift.b.a(this.f, akVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(akVar.k()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (k()) {
            int a8 = org.apache.thrift.b.a(this.g, akVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(akVar.m()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (m()) {
            int a9 = org.apache.thrift.b.a((Comparable) this.h, (Comparable) akVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(akVar.n()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (n()) {
            int a10 = org.apache.thrift.b.a(this.i, akVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(o()).compareTo(Boolean.valueOf(akVar.o()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (o()) {
            int a11 = org.apache.thrift.b.a((Map) this.j, (Map) akVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        int compareTo11 = Boolean.valueOf(q()).compareTo(Boolean.valueOf(akVar.q()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (q()) {
            int a12 = org.apache.thrift.b.a(this.k, akVar.k);
            if (a12 != 0) {
                return a12;
            }
        }
        int compareTo12 = Boolean.valueOf(s()).compareTo(Boolean.valueOf(akVar.s()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (s()) {
            int a13 = org.apache.thrift.b.a(this.l, akVar.l);
            if (a13 != 0) {
                return a13;
            }
        }
        return 0;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        t();
        eVar.a(n);
        if (this.a != null && a()) {
            eVar.a(o);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(p);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(q);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null) {
            eVar.a(r);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && g()) {
            eVar.a(s);
            eVar.a(this.e);
            eVar.b();
        }
        if (this.f != null && i()) {
            eVar.a(t);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && k()) {
            eVar.a(u);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && m()) {
            eVar.a(v);
            this.h.b(eVar);
            eVar.b();
        }
        if (n()) {
            eVar.a(w);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && o()) {
            eVar.a(x);
            eVar.a(new d(11, 11, this.j.size()));
            for (Entry entry : this.j.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (this.k != null && q()) {
            eVar.a(y);
            eVar.a(this.k);
            eVar.b();
        }
        if (this.l != null && s()) {
            eVar.a(z);
            eVar.a(this.l);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.b != null;
    }

    public String c() {
        return this.c;
    }

    public boolean d() {
        return this.c != null;
    }

    public String e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ak)) {
            return a((ak) obj);
        }
        return false;
    }

    public boolean f() {
        return this.d != null;
    }

    public boolean g() {
        return this.e != null;
    }

    public String h() {
        return this.f;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f != null;
    }

    public String j() {
        return this.g;
    }

    public boolean k() {
        return this.g != null;
    }

    public r l() {
        return this.h;
    }

    public boolean m() {
        return this.h != null;
    }

    public boolean n() {
        return this.A.get(0);
    }

    public boolean o() {
        return this.j != null;
    }

    public String p() {
        return this.k;
    }

    public boolean q() {
        return this.k != null;
    }

    public String r() {
        return this.l;
    }

    public boolean s() {
        return this.l != null;
    }

    public void t() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'appId' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        boolean z2 = false;
        StringBuilder sb = new StringBuilder("XmPushActionSendMessage(");
        boolean z3 = true;
        if (a()) {
            sb.append("debug:");
            if (this.a == null) {
                sb.append("null");
            } else {
                sb.append(this.a);
            }
            z3 = false;
        }
        if (b()) {
            if (!z3) {
                sb.append(", ");
            }
            sb.append("target:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
        } else {
            z2 = z3;
        }
        if (!z2) {
            sb.append(", ");
        }
        sb.append("id:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(", ");
        sb.append("appId:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        if (g()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("topic:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("aliasName:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("message:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("needAck:");
            sb.append(this.i);
        }
        if (o()) {
            sb.append(", ");
            sb.append("params:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (q()) {
            sb.append(", ");
            sb.append("category:");
            if (this.k == null) {
                sb.append("null");
            } else {
                sb.append(this.k);
            }
        }
        if (s()) {
            sb.append(", ");
            sb.append("userAccount:");
            if (this.l == null) {
                sb.append("null");
            } else {
                sb.append(this.l);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
