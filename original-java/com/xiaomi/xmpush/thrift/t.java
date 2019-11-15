package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.f;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.i;
import org.apache.thrift.protocol.j;

public class t implements Serializable, Cloneable, org.apache.thrift.a<t, a> {
    public static final Map<a, b> b;
    private static final j c = new j("RegisteredGeoFencing");
    private static final org.apache.thrift.protocol.b d = new org.apache.thrift.protocol.b("geoFencings", 14, 1);
    public Set<k> a;

    public enum a {
        GEO_FENCINGS(1, "geoFencings");
        
        private static final Map<String, a> b = null;
        private final short c;
        private final String d;

        static {
            b = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                b.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.c = s;
            this.d = str;
        }

        public String a() {
            return this.d;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.GEO_FENCINGS, new b("geoFencings", 1, new f(14, new g(12, k.class))));
        b = Collections.unmodifiableMap(enumMap);
        b.a(t.class, b);
    }

    public t a(Set<k> set) {
        this.a = set;
        return this;
    }

    public Set<k> a() {
        return this.a;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i = eVar.i();
            if (i.b == 0) {
                eVar.h();
                c();
                return;
            }
            switch (i.c) {
                case 1:
                    if (i.b != 14) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        i o = eVar.o();
                        this.a = new HashSet(o.b * 2);
                        for (int i2 = 0; i2 < o.b; i2++) {
                            k kVar = new k();
                            kVar.a(eVar);
                            this.a.add(kVar);
                        }
                        eVar.p();
                        break;
                    }
                default:
                    h.a(eVar, i.b);
                    break;
            }
            eVar.j();
        }
    }

    public boolean a(t tVar) {
        if (tVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = tVar.b();
        return (!b2 && !b3) || (b2 && b3 && this.a.equals(tVar.a));
    }

    /* renamed from: b */
    public int compareTo(t tVar) {
        if (!getClass().equals(tVar.getClass())) {
            return getClass().getName().compareTo(tVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(tVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a((Set) this.a, (Set) tVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        c();
        eVar.a(c);
        if (this.a != null) {
            eVar.a(d);
            eVar.a(new i(12, this.a.size()));
            for (k b2 : this.a) {
                b2.b(eVar);
            }
            eVar.f();
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.a != null;
    }

    public void c() {
        if (this.a == null) {
            throw new org.apache.thrift.protocol.f("Required field 'geoFencings' was not present! Struct: " + toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof t)) {
            return a((t) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RegisteredGeoFencing(");
        sb.append("geoFencings:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        sb.append(")");
        return sb.toString();
    }
}
