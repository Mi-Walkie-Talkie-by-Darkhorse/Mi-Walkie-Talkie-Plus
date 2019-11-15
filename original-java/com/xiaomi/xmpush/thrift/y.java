package com.xiaomi.xmpush.thrift;

import com.amap.api.maps.model.MyLocationStyle;
import com.tencent.open.SocialConstants;
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

public class y implements Serializable, Cloneable, org.apache.thrift.a<y, a> {
    public static final Map<a, b> l;
    private static final j m = new j("XmPushActionAckNotification");
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("debug", 11, 1);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("target", 12, 2);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("id", 11, 3);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("appId", 11, 4);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("type", 11, 5);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b(SocialConstants.TYPE_REQUEST, 12, 6);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b(MyLocationStyle.ERROR_CODE, 10, 7);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b("reason", 11, 8);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b(Key.EXTRA, HttpConstants.CR, 9);
    private static final org.apache.thrift.protocol.b w = new org.apache.thrift.protocol.b("packageName", 11, 10);
    private static final org.apache.thrift.protocol.b x = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 11);
    public String a;
    public v b;
    public String c;
    public String d;
    public String e;
    public af f;
    public long g;
    public String h;
    public Map<String, String> i;
    public String j;
    public String k;
    private BitSet y = new BitSet(1);

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        TYPE(5, "type"),
        REQUEST(6, SocialConstants.TYPE_REQUEST),
        ERROR_CODE(7, MyLocationStyle.ERROR_CODE),
        REASON(8, "reason"),
        EXTRA(9, Key.EXTRA),
        PACKAGE_NAME(10, "packageName"),
        CATEGORY(11, BaseService.CATEGORY);
        
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
        enumMap.put(a.REQUEST, new b(SocialConstants.TYPE_REQUEST, 2, new g(12, af.class)));
        enumMap.put(a.ERROR_CODE, new b(MyLocationStyle.ERROR_CODE, 1, new c(10)));
        enumMap.put(a.REASON, new b("reason", 2, new c(11)));
        enumMap.put(a.EXTRA, new b(Key.EXTRA, 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        l = Collections.unmodifiableMap(enumMap);
        b.a(y.class, l);
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!h()) {
                    throw new f("Required field 'errorCode' was not found in serialized data! Struct: " + toString());
                }
                m();
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
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = new af();
                        this.f.a(eVar);
                        break;
                    }
                case 7:
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.g = eVar.u();
                        a(true);
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
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.i = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.i.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
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
                case 11:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.k = eVar.w();
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
        this.y.set(0, z);
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(y yVar) {
        if (yVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = yVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(yVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = yVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(yVar.b))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = yVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.c.equals(yVar.c))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = yVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.d.equals(yVar.d))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = yVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.e.equals(yVar.e))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = yVar.g();
        if (((g2 || g3) && (!g2 || !g3 || !this.f.a(yVar.f))) || this.g != yVar.g) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = yVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.h.equals(yVar.h))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = yVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.i.equals(yVar.i))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = yVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.j.equals(yVar.j))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = yVar.l();
        return (!l2 && !l3) || (l2 && l3 && this.k.equals(yVar.k));
    }

    /* renamed from: b */
    public int compareTo(y yVar) {
        if (!getClass().equals(yVar.getClass())) {
            return getClass().getName().compareTo(yVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(yVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, yVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(yVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) yVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(yVar.d()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (d()) {
            int a4 = org.apache.thrift.b.a(this.c, yVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(yVar.e()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (e()) {
            int a5 = org.apache.thrift.b.a(this.d, yVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(yVar.f()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (f()) {
            int a6 = org.apache.thrift.b.a(this.e, yVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(yVar.g()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (g()) {
            int a7 = org.apache.thrift.b.a((Comparable) this.f, (Comparable) yVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(yVar.h()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (h()) {
            int a8 = org.apache.thrift.b.a(this.g, yVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(yVar.i()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (i()) {
            int a9 = org.apache.thrift.b.a(this.h, yVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(yVar.j()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (j()) {
            int a10 = org.apache.thrift.b.a((Map) this.i, (Map) yVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(yVar.k()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (k()) {
            int a11 = org.apache.thrift.b.a(this.j, yVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        int compareTo11 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(yVar.l()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (l()) {
            int a12 = org.apache.thrift.b.a(this.k, yVar.k);
            if (a12 != 0) {
                return a12;
            }
        }
        return 0;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        m();
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
        if (this.f != null && g()) {
            eVar.a(s);
            this.f.b(eVar);
            eVar.b();
        }
        eVar.a(t);
        eVar.a(this.g);
        eVar.b();
        if (this.h != null && i()) {
            eVar.a(u);
            eVar.a(this.h);
            eVar.b();
        }
        if (this.i != null && j()) {
            eVar.a(v);
            eVar.a(new d(11, 11, this.i.size()));
            for (Entry entry : this.i.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (this.j != null && k()) {
            eVar.a(w);
            eVar.a(this.j);
            eVar.b();
        }
        if (this.k != null && l()) {
            eVar.a(x);
            eVar.a(this.k);
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

    public boolean e() {
        return this.d != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof y)) {
            return a((y) obj);
        }
        return false;
    }

    public boolean f() {
        return this.e != null;
    }

    public boolean g() {
        return this.f != null;
    }

    public boolean h() {
        return this.y.get(0);
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.h != null;
    }

    public boolean j() {
        return this.i != null;
    }

    public boolean k() {
        return this.j != null;
    }

    public boolean l() {
        return this.k != null;
    }

    public void m() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("XmPushActionAckNotification(");
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
        if (g()) {
            sb.append(", ");
            sb.append("request:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        sb.append(", ");
        sb.append("errorCode:");
        sb.append(this.g);
        if (i()) {
            sb.append(", ");
            sb.append("reason:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (j()) {
            sb.append(", ");
            sb.append("extra:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (l()) {
            sb.append(", ");
            sb.append("category:");
            if (this.k == null) {
                sb.append("null");
            } else {
                sb.append(this.k);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
