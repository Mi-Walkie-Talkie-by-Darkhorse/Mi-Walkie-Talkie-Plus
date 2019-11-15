package com.xiaomi.xmpush.thrift;

import com.xiaomi.mistatistic.sdk.BaseService;
import java.io.Serializable;
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

public class ap implements Serializable, Cloneable, org.apache.thrift.a<ap, a> {
    public static final Map<a, b> h;
    private static final j i = new j("XmPushActionUnSubscription");
    private static final org.apache.thrift.protocol.b j = new org.apache.thrift.protocol.b("debug", 11, 1);
    private static final org.apache.thrift.protocol.b k = new org.apache.thrift.protocol.b("target", 12, 2);
    private static final org.apache.thrift.protocol.b l = new org.apache.thrift.protocol.b("id", 11, 3);
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("appId", 11, 4);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("topic", 11, 5);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("packageName", 11, 6);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 7);
    public String a;
    public v b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        TOPIC(5, "topic"),
        PACKAGE_NAME(6, "packageName"),
        CATEGORY(7, BaseService.CATEGORY);
        
        private static final Map<String, a> h = null;
        private final short i;
        private final String j;

        static {
            h = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                h.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.i = s;
            this.j = str;
        }

        public String a() {
            return this.j;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.DEBUG, new b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 1, new c(11)));
        enumMap.put(a.TOPIC, new b("topic", 1, new c(11)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        h = Collections.unmodifiableMap(enumMap);
        b.a(ap.class, h);
    }

    public ap a(String str) {
        this.c = str;
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                h();
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

    public boolean a(ap apVar) {
        if (apVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = apVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(apVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = apVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(apVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = apVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.c.equals(apVar.c))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = apVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.d.equals(apVar.d))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = apVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.e.equals(apVar.e))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = apVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f.equals(apVar.f))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = apVar.g();
        return (!g2 && !g3) || (g2 && g3 && this.g.equals(apVar.g));
    }

    /* renamed from: b */
    public int compareTo(ap apVar) {
        if (!getClass().equals(apVar.getClass())) {
            return getClass().getName().compareTo(apVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(apVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, apVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(apVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) apVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(apVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, apVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(apVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, apVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(apVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e()) {
            int a6 = org.apache.thrift.b.a(this.e, apVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(apVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f()) {
            int a7 = org.apache.thrift.b.a(this.f, apVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(apVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g()) {
            int a8 = org.apache.thrift.b.a(this.g, apVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        return 0;
    }

    public ap b(String str) {
        this.d = str;
        return this;
    }

    public void b(e eVar) {
        h();
        eVar.a(i);
        if (this.a != null && a()) {
            eVar.a(j);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(k);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(l);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null) {
            eVar.a(m);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null) {
            eVar.a(n);
            eVar.a(this.e);
            eVar.b();
        }
        if (this.f != null && f()) {
            eVar.a(o);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && g()) {
            eVar.a(p);
            eVar.a(this.g);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.b != null;
    }

    public ap c(String str) {
        this.e = str;
        return this;
    }

    public boolean c() {
        return this.c != null;
    }

    public ap d(String str) {
        this.f = str;
        return this;
    }

    public boolean d() {
        return this.d != null;
    }

    public ap e(String str) {
        this.g = str;
        return this;
    }

    public boolean e() {
        return this.e != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ap)) {
            return a((ap) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f != null;
    }

    public boolean g() {
        return this.g != null;
    }

    public void h() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'appId' was not present! Struct: " + toString());
        } else if (this.e == null) {
            throw new f("Required field 'topic' was not present! Struct: " + toString());
        }
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("XmPushActionUnSubscription(");
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
        sb.append(", ");
        sb.append("appId:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        sb.append(", ");
        sb.append("topic:");
        if (this.e == null) {
            sb.append("null");
        } else {
            sb.append(this.e);
        }
        if (f()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("category:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
