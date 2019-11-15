package com.xiaomi.xmpush.thrift;

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
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;

public class m implements Serializable, Cloneable, org.apache.thrift.a<m, a> {
    public static final Map<a, b> c;
    private static final j d = new j(Names.LOCATION);
    private static final org.apache.thrift.protocol.b e = new org.apache.thrift.protocol.b("longitude", 4, 1);
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("latitude", 4, 2);
    public double a;
    public double b;
    private BitSet g = new BitSet(2);

    public enum a {
        LONGITUDE(1, "longitude"),
        LATITUDE(2, "latitude");
        
        private static final Map<String, a> c = null;
        private final short d;
        private final String e;

        static {
            c = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                c.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.d = s;
            this.e = str;
        }

        public String a() {
            return this.e;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.LONGITUDE, new b("longitude", 1, new c(4)));
        enumMap.put(a.LATITUDE, new b("latitude", 1, new c(4)));
        c = Collections.unmodifiableMap(enumMap);
        b.a(m.class, c);
    }

    public double a() {
        return this.a;
    }

    public m a(double d2) {
        this.a = d2;
        a(true);
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i = eVar.i();
            if (i.b == 0) {
                eVar.h();
                if (!b()) {
                    throw new f("Required field 'longitude' was not found in serialized data! Struct: " + toString());
                } else if (!d()) {
                    throw new f("Required field 'latitude' was not found in serialized data! Struct: " + toString());
                } else {
                    e();
                    return;
                }
            } else {
                switch (i.c) {
                    case 1:
                        if (i.b != 4) {
                            h.a(eVar, i.b);
                            break;
                        } else {
                            this.a = eVar.v();
                            a(true);
                            break;
                        }
                    case 2:
                        if (i.b != 4) {
                            h.a(eVar, i.b);
                            break;
                        } else {
                            this.b = eVar.v();
                            b(true);
                            break;
                        }
                    default:
                        h.a(eVar, i.b);
                        break;
                }
                eVar.j();
            }
        }
    }

    public void a(boolean z) {
        this.g.set(0, z);
    }

    public boolean a(m mVar) {
        return mVar != null && this.a == mVar.a && this.b == mVar.b;
    }

    /* renamed from: b */
    public int compareTo(m mVar) {
        if (!getClass().equals(mVar.getClass())) {
            return getClass().getName().compareTo(mVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(mVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a(this.a, mVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(mVar.d()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (d()) {
            int a3 = org.apache.thrift.b.a(this.b, mVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        return 0;
    }

    public m b(double d2) {
        this.b = d2;
        b(true);
        return this;
    }

    public void b(e eVar) {
        e();
        eVar.a(d);
        eVar.a(e);
        eVar.a(this.a);
        eVar.b();
        eVar.a(f);
        eVar.a(this.b);
        eVar.b();
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.g.set(1, z);
    }

    public boolean b() {
        return this.g.get(0);
    }

    public double c() {
        return this.b;
    }

    public boolean d() {
        return this.g.get(1);
    }

    public void e() {
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof m)) {
            return a((m) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Location(");
        sb.append("longitude:");
        sb.append(this.a);
        sb.append(", ");
        sb.append("latitude:");
        sb.append(this.b);
        sb.append(")");
        return sb.toString();
    }
}
