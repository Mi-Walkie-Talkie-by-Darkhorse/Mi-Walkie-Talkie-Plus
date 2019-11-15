package com.xiaomi.xmpush.thrift;

import com.xiaomi.mistatistic.sdk.BaseService;
import java.io.Serializable;
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

public class ai implements Serializable, Cloneable, org.apache.thrift.a<ai, a> {
    public static final Map<a, b> g;
    private static final j h = new j("XmPushActionSendFeedback");
    private static final org.apache.thrift.protocol.b i = new org.apache.thrift.protocol.b("debug", 11, 1);
    private static final org.apache.thrift.protocol.b j = new org.apache.thrift.protocol.b("target", 12, 2);
    private static final org.apache.thrift.protocol.b k = new org.apache.thrift.protocol.b("id", 11, 3);
    private static final org.apache.thrift.protocol.b l = new org.apache.thrift.protocol.b("appId", 11, 4);
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("feedbacks", HttpConstants.CR, 5);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b(BaseService.CATEGORY, 11, 6);
    public String a;
    public v b;
    public String c;
    public String d;
    public Map<String, String> e;
    public String f;

    public enum a {
        DEBUG(1, "debug"),
        TARGET(2, "target"),
        ID(3, "id"),
        APP_ID(4, "appId"),
        FEEDBACKS(5, "feedbacks"),
        CATEGORY(6, BaseService.CATEGORY);
        
        private static final Map<String, a> g = null;
        private final short h;
        private final String i;

        static {
            g = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                g.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.h = s;
            this.i = str;
        }

        public String a() {
            return this.i;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.DEBUG, new b("debug", 2, new c(11)));
        enumMap.put(a.TARGET, new b("target", 2, new g(12, v.class)));
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 1, new c(11)));
        enumMap.put(a.FEEDBACKS, new b("feedbacks", 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.CATEGORY, new b(BaseService.CATEGORY, 2, new c(11)));
        g = Collections.unmodifiableMap(enumMap);
        b.a(ai.class, g);
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                g();
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
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.e = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.e.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
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

    public boolean a(ai aiVar) {
        if (aiVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = aiVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(aiVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = aiVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.a(aiVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = aiVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.c.equals(aiVar.c))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = aiVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.d.equals(aiVar.d))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = aiVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.e.equals(aiVar.e))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = aiVar.f();
        return (!f2 && !f3) || (f2 && f3 && this.f.equals(aiVar.f));
    }

    /* renamed from: b */
    public int compareTo(ai aiVar) {
        if (!getClass().equals(aiVar.getClass())) {
            return getClass().getName().compareTo(aiVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(aiVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, aiVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(aiVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((Comparable) this.b, (Comparable) aiVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(aiVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, aiVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(aiVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, aiVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(aiVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e()) {
            int a6 = org.apache.thrift.b.a((Map) this.e, (Map) aiVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(aiVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f()) {
            int a7 = org.apache.thrift.b.a(this.f, aiVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        return 0;
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        g();
        eVar.a(h);
        if (this.a != null && a()) {
            eVar.a(i);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(j);
            this.b.b(eVar);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(k);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null) {
            eVar.a(l);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && e()) {
            eVar.a(m);
            eVar.a(new d(11, 11, this.e.size()));
            for (Entry entry : this.e.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (this.f != null && f()) {
            eVar.a(n);
            eVar.a(this.f);
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
        if (obj != null && (obj instanceof ai)) {
            return a((ai) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f != null;
    }

    public void g() {
        if (this.c == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'appId' was not present! Struct: " + toString());
        }
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("XmPushActionSendFeedback(");
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
        if (e()) {
            sb.append(", ");
            sb.append("feedbacks:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("category:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
