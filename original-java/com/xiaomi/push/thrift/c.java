package com.xiaomi.push.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.d;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;

public class c implements Serializable, Cloneable, org.apache.thrift.a<c, a> {
    public static final Map<a, b> d;
    private static final j e = new j("StatsEvents");
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("uuid", 11, 1);
    private static final org.apache.thrift.protocol.b g = new org.apache.thrift.protocol.b("operator", 11, 2);
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b("events", 15, 3);
    public String a;
    public String b;
    public List<b> c;

    public enum a {
        UUID(1, "uuid"),
        OPERATOR(2, "operator"),
        EVENTS(3, "events");
        
        private static final Map<String, a> d = null;
        private final short e;
        private final String f;

        static {
            d = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                d.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.e = s;
            this.f = str;
        }

        public String a() {
            return this.f;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.UUID, new b("uuid", 1, new org.apache.thrift.meta_data.c(11)));
        enumMap.put(a.OPERATOR, new b("operator", 2, new org.apache.thrift.meta_data.c(11)));
        enumMap.put(a.EVENTS, new b("events", 1, new d(15, new g(12, b.class))));
        d = Collections.unmodifiableMap(enumMap);
        b.a(c.class, d);
    }

    public c() {
    }

    public c(String str, List<b> list) {
        this();
        this.a = str;
        this.c = list;
    }

    public c a(String str) {
        this.b = str;
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i = eVar.i();
            if (i.b == 0) {
                eVar.h();
                d();
                return;
            }
            switch (i.c) {
                case 1:
                    if (i.b != 11) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        this.a = eVar.w();
                        break;
                    }
                case 2:
                    if (i.b != 11) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        this.b = eVar.w();
                        break;
                    }
                case 3:
                    if (i.b != 15) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        org.apache.thrift.protocol.c m = eVar.m();
                        this.c = new ArrayList(m.b);
                        for (int i2 = 0; i2 < m.b; i2++) {
                            b bVar = new b();
                            bVar.a(eVar);
                            this.c.add(bVar);
                        }
                        eVar.n();
                        break;
                    }
                default:
                    h.a(eVar, i.b);
                    break;
            }
            eVar.j();
        }
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(c cVar) {
        if (cVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = cVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(cVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = cVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.equals(cVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = cVar.c();
        return (!c2 && !c3) || (c2 && c3 && this.c.equals(cVar.c));
    }

    /* renamed from: b */
    public int compareTo(c cVar) {
        if (!getClass().equals(cVar.getClass())) {
            return getClass().getName().compareTo(cVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(cVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, cVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(cVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a(this.b, cVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(cVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a((List) this.c, (List) cVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        d();
        eVar.a(e);
        if (this.a != null) {
            eVar.a(f);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(g);
            eVar.a(this.b);
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(h);
            eVar.a(new org.apache.thrift.protocol.c(12, this.c.size()));
            for (b b2 : this.c) {
                b2.b(eVar);
            }
            eVar.e();
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

    public void d() {
        if (this.a == null) {
            throw new f("Required field 'uuid' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new f("Required field 'events' was not present! Struct: " + toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof c)) {
            return a((c) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvents(");
        sb.append("uuid:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        if (b()) {
            sb.append(", ");
            sb.append("operator:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
        }
        sb.append(", ");
        sb.append("events:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(")");
        return sb.toString();
    }
}
