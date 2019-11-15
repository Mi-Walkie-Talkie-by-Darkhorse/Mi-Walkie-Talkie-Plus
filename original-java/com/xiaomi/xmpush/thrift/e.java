package com.xiaomi.xmpush.thrift;

import com.mi.milinkforgame.sdk.data.Const;
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
import org.apache.thrift.protocol.d;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class e implements Serializable, Cloneable, org.apache.thrift.a<e, a> {
    public static final Map<a, b> k;
    private static final j l = new j("ClientUploadDataItem");
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b(Const.PARAM_CHANNEL, 11, 1);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b(Const.PARAM_DATA, 11, 2);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b(HttpPostBodyUtil.NAME, 11, 3);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("counter", 10, 4);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("timestamp", 10, 5);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("fromSdk", 2, 6);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 7);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("sourcePackage", 11, 8);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b("id", 11, 9);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b(Key.EXTRA, HttpConstants.CR, 10);
    public String a;
    public String b;
    public String c;
    public long d;
    public long e;
    public boolean f;
    public String g;
    public String h;
    public String i;
    public Map<String, String> j;
    private BitSet w = new BitSet(3);

    public enum a {
        CHANNEL(1, Const.PARAM_CHANNEL),
        DATA(2, Const.PARAM_DATA),
        NAME(3, HttpPostBodyUtil.NAME),
        COUNTER(4, "counter"),
        TIMESTAMP(5, "timestamp"),
        FROM_SDK(6, "fromSdk"),
        CATEGORY(7, BaseService.CATEGORY),
        SOURCE_PACKAGE(8, "sourcePackage"),
        ID(9, "id"),
        EXTRA(10, Key.EXTRA);
        
        private static final Map<String, a> k = null;
        private final short l;
        private final String m;

        static {
            k = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                k.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.l = s;
            this.m = str;
        }

        public String a() {
            return this.m;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.CHANNEL, new b(Const.PARAM_CHANNEL, 2, new c(11)));
        enumMap.put(a.DATA, new b(Const.PARAM_DATA, 2, new c(11)));
        enumMap.put(a.NAME, new b(HttpPostBodyUtil.NAME, 2, new c(11)));
        enumMap.put(a.COUNTER, new b("counter", 2, new c(10)));
        enumMap.put(a.TIMESTAMP, new b("timestamp", 2, new c(10)));
        enumMap.put(a.FROM_SDK, new b("fromSdk", 2, new c(2)));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        enumMap.put(a.SOURCE_PACKAGE, new b("sourcePackage", 2, new c(11)));
        enumMap.put(a.ID, new b("id", 2, new c(11)));
        enumMap.put(a.EXTRA, new b(Key.EXTRA, 2, new org.apache.thrift.meta_data.e(HttpConstants.CR, new c(11), new c(11))));
        k = Collections.unmodifiableMap(enumMap);
        b.a(e.class, k);
    }

    public e a(long j2) {
        this.d = j2;
        a(true);
        return this;
    }

    public e a(String str) {
        this.a = str;
        return this;
    }

    public String a() {
        return this.a;
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                o();
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
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = eVar.w();
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
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.d = eVar.u();
                        a(true);
                        break;
                    }
                case 5:
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = eVar.u();
                        b(true);
                        break;
                    }
                case 6:
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.q();
                        d(true);
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
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.h = eVar.w();
                        break;
                    }
                case 9:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.i = eVar.w();
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
                default:
                    h.a(eVar, i2.b);
                    break;
            }
            eVar.j();
        }
    }

    public void a(boolean z) {
        this.w.set(0, z);
    }

    public boolean a(e eVar) {
        if (eVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = eVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.a.equals(eVar.a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = eVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.b.equals(eVar.b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = eVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.c.equals(eVar.c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = eVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.d != eVar.d)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = eVar.g();
        if ((g2 || g3) && (!g2 || !g3 || this.e != eVar.e)) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = eVar.h();
        if ((h2 || h3) && (!h2 || !h3 || this.f != eVar.f)) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = eVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.g.equals(eVar.g))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = eVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.h.equals(eVar.h))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = eVar.m();
        if ((m2 || m3) && (!m2 || !m3 || !this.i.equals(eVar.i))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = eVar.n();
        return (!n2 && !n3) || (n2 && n3 && this.j.equals(eVar.j));
    }

    /* renamed from: b */
    public int compareTo(e eVar) {
        if (!getClass().equals(eVar.getClass())) {
            return getClass().getName().compareTo(eVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(eVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a(this.a, eVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(eVar.c()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (c()) {
            int a3 = org.apache.thrift.b.a(this.b, eVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(eVar.d()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (d()) {
            int a4 = org.apache.thrift.b.a(this.c, eVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(eVar.e()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (e()) {
            int a5 = org.apache.thrift.b.a(this.d, eVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(eVar.g()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (g()) {
            int a6 = org.apache.thrift.b.a(this.e, eVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(eVar.h()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (h()) {
            int a7 = org.apache.thrift.b.a(this.f, eVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(eVar.i()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (i()) {
            int a8 = org.apache.thrift.b.a(this.g, eVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(eVar.k()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (k()) {
            int a9 = org.apache.thrift.b.a(this.h, eVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(eVar.m()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (m()) {
            int a10 = org.apache.thrift.b.a(this.i, eVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(eVar.n()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (n()) {
            int a11 = org.apache.thrift.b.a((Map) this.j, (Map) eVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        return 0;
    }

    public e b(long j2) {
        this.e = j2;
        b(true);
        return this;
    }

    public e b(String str) {
        this.b = str;
        return this;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        o();
        eVar.a(l);
        if (this.a != null && b()) {
            eVar.a(m);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && c()) {
            eVar.a(n);
            eVar.a(this.b);
            eVar.b();
        }
        if (this.c != null && d()) {
            eVar.a(o);
            eVar.a(this.c);
            eVar.b();
        }
        if (e()) {
            eVar.a(p);
            eVar.a(this.d);
            eVar.b();
        }
        if (g()) {
            eVar.a(q);
            eVar.a(this.e);
            eVar.b();
        }
        if (h()) {
            eVar.a(r);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && i()) {
            eVar.a(s);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && k()) {
            eVar.a(t);
            eVar.a(this.h);
            eVar.b();
        }
        if (this.i != null && m()) {
            eVar.a(u);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && n()) {
            eVar.a(v);
            eVar.a(new d(11, 11, this.j.size()));
            for (Entry entry : this.j.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.w.set(1, z);
    }

    public boolean b() {
        return this.a != null;
    }

    public e c(String str) {
        this.c = str;
        return this;
    }

    public e c(boolean z) {
        this.f = z;
        d(true);
        return this;
    }

    public boolean c() {
        return this.b != null;
    }

    public e d(String str) {
        this.g = str;
        return this;
    }

    public void d(boolean z) {
        this.w.set(2, z);
    }

    public boolean d() {
        return this.c != null;
    }

    public e e(String str) {
        this.h = str;
        return this;
    }

    public boolean e() {
        return this.w.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof e)) {
            return a((e) obj);
        }
        return false;
    }

    public long f() {
        return this.e;
    }

    public e f(String str) {
        this.i = str;
        return this;
    }

    public boolean g() {
        return this.w.get(1);
    }

    public boolean h() {
        return this.w.get(2);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.g != null;
    }

    public String j() {
        return this.h;
    }

    public boolean k() {
        return this.h != null;
    }

    public String l() {
        return this.i;
    }

    public boolean m() {
        return this.i != null;
    }

    public boolean n() {
        return this.j != null;
    }

    public void o() {
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("ClientUploadDataItem(");
        boolean z2 = true;
        if (b()) {
            sb.append("channel:");
            if (this.a == null) {
                sb.append("null");
            } else {
                sb.append(this.a);
            }
            z2 = false;
        }
        if (c()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("data:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
            z2 = false;
        }
        if (d()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("name:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
            z2 = false;
        }
        if (e()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("counter:");
            sb.append(this.d);
            z2 = false;
        }
        if (g()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("timestamp:");
            sb.append(this.e);
            z2 = false;
        }
        if (h()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("fromSdk:");
            sb.append(this.f);
            z2 = false;
        }
        if (i()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("category:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
            z2 = false;
        }
        if (k()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("sourcePackage:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
            z2 = false;
        }
        if (m()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("id:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        } else {
            z = z2;
        }
        if (n()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("extra:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
