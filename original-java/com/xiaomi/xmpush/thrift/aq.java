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
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;

public class aq implements Serializable, Cloneable, org.apache.thrift.a<aq, a> {
    public static final Map<a, b> k;
    private static final j l = new j("XmPushActionUnSubscriptionResult");
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("debug", 11, 1);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("target", 12, 2);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("id", 11, 3);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("appId", 11, 4);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b(SocialConstants.TYPE_REQUEST, 12, 5);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b(MyLocationStyle.ERROR_CODE, 10, 6);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b("reason", 11, 7);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("topic", 11, 8);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b("packageName", 11, 9);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 10);
    public String a;
    public v b;
    public String c;
    public String d;
    public ap e;
    public long f;
    public String g;
    public String h;
    public String i;
    public String j;
    private BitSet w = new BitSet(1);

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        REQUEST(5, SocialConstants.TYPE_REQUEST),
        ERROR_CODE(6, MyLocationStyle.ERROR_CODE),
        REASON(7, "reason"),
        TOPIC(8, "topic"),
        PACKAGE_NAME(9, "packageName"),
        CATEGORY(10, BaseService.CATEGORY);
        
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
        enumMap.put(a.DEBUG, new b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 2, new c(11)));
        enumMap.put(a.REQUEST, new b(SocialConstants.TYPE_REQUEST, 2, new g(12, ap.class)));
        enumMap.put(a.ERROR_CODE, new b(MyLocationStyle.ERROR_CODE, 2, new c(10)));
        enumMap.put(a.REASON, new b("reason", 2, new c(11)));
        enumMap.put(a.TOPIC, new b("topic", 2, new c(11)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        k = Collections.unmodifiableMap(enumMap);
        b.a(aq.class, k);
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
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
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = new ap();
                        this.e.a(eVar);
                        break;
                    }
                case 6:
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.u();
                        a(true);
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
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.j = eVar.w();
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

    public boolean a() {
        return this.a != null;
    }

    public boolean a(aq aqVar) {
        if (aqVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = aqVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(aqVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = aqVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(aqVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = aqVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.c.equals(aqVar.c))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = aqVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.d.equals(aqVar.d))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = aqVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.e.a(aqVar.e))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = aqVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f != aqVar.f)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = aqVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.g.equals(aqVar.g))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = aqVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.h.equals(aqVar.h))) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = aqVar.j();
        if ((j2 || j3) && (!j2 || !j3 || !this.i.equals(aqVar.i))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = aqVar.l();
        return (!l2 && !l3) || (l2 && l3 && this.j.equals(aqVar.j));
    }

    /* renamed from: b */
    public int compareTo(aq aqVar) {
        if (!getClass().equals(aqVar.getClass())) {
            return getClass().getName().compareTo(aqVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(aqVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, aqVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(aqVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) aqVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(aqVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, aqVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(aqVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, aqVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(aqVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e()) {
            int a6 = org.apache.thrift.b.a((Comparable) this.e, (Comparable) aqVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(aqVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f()) {
            int a7 = org.apache.thrift.b.a(this.f, aqVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(aqVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g()) {
            int a8 = org.apache.thrift.b.a(this.g, aqVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(aqVar.i()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (i()) {
            int a9 = org.apache.thrift.b.a(this.h, aqVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(aqVar.j()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (j()) {
            int a10 = org.apache.thrift.b.a(this.i, aqVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(aqVar.l()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (l()) {
            int a11 = org.apache.thrift.b.a(this.j, aqVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        m();
        eVar.a(l);
        if (this.a != null && a()) {
            eVar.a(m);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(n);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(o);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null && d()) {
            eVar.a(p);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && e()) {
            eVar.a(q);
            this.e.b(eVar);
            eVar.b();
        }
        if (f()) {
            eVar.a(r);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && g()) {
            eVar.a(s);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && i()) {
            eVar.a(t);
            eVar.a(this.h);
            eVar.b();
        }
        if (this.i != null && j()) {
            eVar.a(u);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && l()) {
            eVar.a(v);
            eVar.a(this.j);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.b != null;
    }

    public boolean c() {
        return this.c != null;
    }

    public boolean d() {
        return this.d != null;
    }

    public boolean e() {
        return this.e != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof aq)) {
            return a((aq) obj);
        }
        return false;
    }

    public boolean f() {
        return this.w.get(0);
    }

    public boolean g() {
        return this.g != null;
    }

    public String h() {
        return this.h;
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

    public String k() {
        return this.j;
    }

    public boolean l() {
        return this.j != null;
    }

    public void m() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("XmPushActionUnSubscriptionResult(");
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
        if (d()) {
            sb.append(", ");
            sb.append("appId:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("request:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("errorCode:");
            sb.append(this.f);
        }
        if (g()) {
            sb.append(", ");
            sb.append("reason:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("topic:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (j()) {
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
        sb.append(")");
        return sb.toString();
    }
}
