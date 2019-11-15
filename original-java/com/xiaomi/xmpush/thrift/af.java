package com.xiaomi.xmpush.thrift;

import com.xiaomi.mistatistic.sdk.BaseService;
import java.io.Serializable;
import java.nio.ByteBuffer;
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

public class af implements Serializable, Cloneable, org.apache.thrift.a<af, a> {
    public static final Map<a, b> l;
    private static final j m = new j("XmPushActionNotification");
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("debug", 11, 1);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("target", 12, 2);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("id", 11, 3);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("appId", 11, 4);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("type", 11, 5);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b("requireAck", 2, 6);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("payload", 11, 7);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b(Key.EXTRA, HttpConstants.CR, 8);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b("packageName", 11, 9);
    private static final org.apache.thrift.protocol.b w = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 10);
    private static final org.apache.thrift.protocol.b x = new org.apache.thrift.protocol.b("binaryExtra", 11, 14);
    public String a;
    public v b;
    public String c;
    public String d;
    public String e;
    public boolean f;
    public String g;
    public Map<String, String> h;
    public String i;
    public String j;
    public ByteBuffer k;
    private BitSet y;

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        TYPE(5, "type"),
        REQUIRE_ACK(6, "requireAck"),
        PAYLOAD(7, "payload"),
        EXTRA(8, Key.EXTRA),
        PACKAGE_NAME(9, "packageName"),
        CATEGORY(10, BaseService.CATEGORY),
        BINARY_EXTRA(14, "binaryExtra");
        
        private static final Map<String, a> l = null;
        private final short m;
        private final String n;

        static {
            l = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                l.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.m = s;
            this.n = str;
        }

        public String a() {
            return this.n;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.DEBUG, new b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 2, new c(11)));
        enumMap.put(a.TYPE, new b("type", 2, new c(11)));
        enumMap.put(a.REQUIRE_ACK, new b("requireAck", 1, new c(2)));
        enumMap.put(a.PAYLOAD, new b("payload", 2, new c(11)));
        enumMap.put(a.EXTRA, new b(Key.EXTRA, 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        enumMap.put(a.BINARY_EXTRA, new b("binaryExtra", 2, new c(11)));
        l = Collections.unmodifiableMap(enumMap);
        b.a(af.class, l);
    }

    public af() {
        this.y = new BitSet(1);
        this.f = true;
    }

    public af(String str, boolean z) {
        this();
        this.c = str;
        this.f = z;
        b(true);
    }

    public af a(String str) {
        this.c = str;
        return this;
    }

    public af a(ByteBuffer byteBuffer) {
        this.k = byteBuffer;
        return this;
    }

    public af a(Map<String, String> map) {
        this.h = map;
        return this;
    }

    public af a(boolean z) {
        this.f = z;
        b(true);
        return this;
    }

    public af a(byte[] bArr) {
        a(ByteBuffer.wrap(bArr));
        return this;
    }

    public void a(String str, String str2) {
        if (this.h == null) {
            this.h = new HashMap();
        }
        this.h.put(str, str2);
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!g()) {
                    throw new f("Required field 'requireAck' was not found in serialized data! Struct: " + toString());
                }
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
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.q();
                        b(true);
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
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.h = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.h.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
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
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.j = eVar.w();
                        break;
                    }
                case 14:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.k = eVar.x();
                        break;
                    }
                default:
                    h.a(eVar, i2.b);
                    break;
            }
            eVar.j();
        }
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(af afVar) {
        if (afVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = afVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(afVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = afVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(afVar.b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = afVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.c.equals(afVar.c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = afVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.d.equals(afVar.d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = afVar.f();
        if (((f2 || f3) && (!f2 || !f3 || !this.e.equals(afVar.e))) || this.f != afVar.f) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = afVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.g.equals(afVar.g))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = afVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.h.equals(afVar.h))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = afVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.i.equals(afVar.i))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = afVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.j.equals(afVar.j))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = afVar.n();
        return (!n2 && !n3) || (n2 && n3 && this.k.equals(afVar.k));
    }

    /* renamed from: b */
    public int compareTo(af afVar) {
        if (!getClass().equals(afVar.getClass())) {
            return getClass().getName().compareTo(afVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(afVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, afVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(afVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) afVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(afVar.d()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (d()) {
            int a4 = org.apache.thrift.b.a(this.c, afVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(afVar.e()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (e()) {
            int a5 = org.apache.thrift.b.a(this.d, afVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(afVar.f()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (f()) {
            int a6 = org.apache.thrift.b.a(this.e, afVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(afVar.g()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (g()) {
            int a7 = org.apache.thrift.b.a(this.f, afVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(afVar.h()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (h()) {
            int a8 = org.apache.thrift.b.a(this.g, afVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(afVar.j()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (j()) {
            int a9 = org.apache.thrift.b.a((Map) this.h, (Map) afVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(afVar.k()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (k()) {
            int a10 = org.apache.thrift.b.a(this.i, afVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(afVar.l()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (l()) {
            int a11 = org.apache.thrift.b.a(this.j, afVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        int compareTo11 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(afVar.n()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (n()) {
            int a12 = org.apache.thrift.b.a((Comparable) this.k, (Comparable) afVar.k);
            if (a12 != 0) {
                return a12;
            }
        }
        return 0;
    }

    public af b(String str) {
        this.d = str;
        return this;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        o();
        eVar.a(m);
        if (this.a != null && a()) {
            eVar.a(n);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(o);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(p);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null && e()) {
            eVar.a(q);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && f()) {
            eVar.a(r);
            eVar.a(this.e);
            eVar.b();
        }
        eVar.a(s);
        eVar.a(this.f);
        eVar.b();
        if (this.g != null && h()) {
            eVar.a(t);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && j()) {
            eVar.a(u);
            eVar.a(new d(11, 11, this.h.size()));
            for (Entry entry : this.h.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (this.i != null && k()) {
            eVar.a(v);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && l()) {
            eVar.a(w);
            eVar.a(this.j);
            eVar.b();
        }
        if (this.k != null && n()) {
            eVar.a(x);
            eVar.a(this.k);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.y.set(0, z);
    }

    public boolean b() {
        return this.b != null;
    }

    public af c(String str) {
        this.e = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public af d(String str) {
        this.i = str;
        return this;
    }

    public boolean d() {
        return this.c != null;
    }

    public boolean e() {
        return this.d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof af)) {
            return a((af) obj);
        }
        return false;
    }

    public boolean f() {
        return this.e != null;
    }

    public boolean g() {
        return this.y.get(0);
    }

    public boolean h() {
        return this.g != null;
    }

    public int hashCode() {
        return 0;
    }

    public Map<String, String> i() {
        return this.h;
    }

    public boolean j() {
        return this.h != null;
    }

    public boolean k() {
        return this.i != null;
    }

    public boolean l() {
        return this.j != null;
    }

    public byte[] m() {
        a(org.apache.thrift.b.c(this.k));
        return this.k.array();
    }

    public boolean n() {
        return this.k != null;
    }

    public void o() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("XmPushActionNotification(");
        boolean z2 = true;
        if (a()) {
            sb.append("debug:");
            if (this.a == null) {
                sb.append("null");
            } else {
                sb.append(this.a);
            }
            z2 = false;
        }
        if (b()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("target:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
        } else {
            z = z2;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("id:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        if (e()) {
            sb.append(", ");
            sb.append("appId:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("type:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        sb.append(", ");
        sb.append("requireAck:");
        sb.append(this.f);
        if (h()) {
            sb.append(", ");
            sb.append("payload:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("extra:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("category:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (n()) {
            sb.append(", ");
            sb.append("binaryExtra:");
            if (this.k == null) {
                sb.append("null");
            } else {
                org.apache.thrift.b.a(this.k, sb);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
