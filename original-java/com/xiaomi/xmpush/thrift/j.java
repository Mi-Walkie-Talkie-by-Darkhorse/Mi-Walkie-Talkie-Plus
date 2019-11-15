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
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.osmdroid.tileprovider.modules.DatabaseFileArchive;

public class j implements Serializable, Cloneable, org.apache.thrift.a<j, a> {
    public static final Map<a, b> e;
    private static final org.apache.thrift.protocol.j f = new org.apache.thrift.protocol.j("GPS");
    private static final org.apache.thrift.protocol.b g = new org.apache.thrift.protocol.b("location", 12, 1);
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b(DatabaseFileArchive.COLUMN_PROVIDER, 11, 2);
    private static final org.apache.thrift.protocol.b i = new org.apache.thrift.protocol.b("period", 10, 3);
    private static final org.apache.thrift.protocol.b j = new org.apache.thrift.protocol.b("accuracy", 4, 4);
    public m a;
    public String b;
    public long c;
    public double d;
    private BitSet k = new BitSet(2);

    public enum a {
        LOCATION(1, "location"),
        PROVIDER(2, DatabaseFileArchive.COLUMN_PROVIDER),
        PERIOD(3, "period"),
        ACCURACY(4, "accuracy");
        
        private static final Map<String, a> e = null;
        private final short f;
        private final String g;

        static {
            e = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                e.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.f = s;
            this.g = str;
        }

        public String a() {
            return this.g;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.LOCATION, new b("location", 1, new g(12, m.class)));
        enumMap.put(a.PROVIDER, new b(DatabaseFileArchive.COLUMN_PROVIDER, 2, new c(11)));
        enumMap.put(a.PERIOD, new b("period", 2, new c(10)));
        enumMap.put(a.ACCURACY, new b("accuracy", 2, new c(4)));
        e = Collections.unmodifiableMap(enumMap);
        b.a(j.class, e);
    }

    public j a(double d2) {
        this.d = d2;
        b(true);
        return this;
    }

    public j a(long j2) {
        this.c = j2;
        a(true);
        return this;
    }

    public j a(m mVar) {
        this.a = mVar;
        return this;
    }

    public j a(String str) {
        this.b = str;
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                e();
                return;
            }
            switch (i2.c) {
                case 1:
                    if (i2.b != 12) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.a = new m();
                        this.a.a(eVar);
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
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = eVar.u();
                        a(true);
                        break;
                    }
                case 4:
                    if (i2.b != 4) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.d = eVar.v();
                        b(true);
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
        this.k.set(0, z);
    }

    public boolean a() {
        return this.a != null;
    }

    public boolean a(j jVar) {
        if (jVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = jVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.a(jVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = jVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.equals(jVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = jVar.c();
        if ((c2 || c3) && (!c2 || !c3 || this.c != jVar.c)) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = jVar.d();
        return (!d2 && !d3) || (d2 && d3 && this.d == jVar.d);
    }

    /* renamed from: b */
    public int compareTo(j jVar) {
        if (!getClass().equals(jVar.getClass())) {
            return getClass().getName().compareTo(jVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(jVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a((Comparable) this.a, (Comparable) jVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(jVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a(this.b, jVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(jVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, jVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(jVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, jVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        e();
        eVar.a(f);
        if (this.a != null) {
            eVar.a(g);
            this.a.b(eVar);
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(h);
            eVar.a(this.b);
            eVar.b();
        }
        if (c()) {
            eVar.a(i);
            eVar.a(this.c);
            eVar.b();
        }
        if (d()) {
            eVar.a(j);
            eVar.a(this.d);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.k.set(1, z);
    }

    public boolean b() {
        return this.b != null;
    }

    public boolean c() {
        return this.k.get(0);
    }

    public boolean d() {
        return this.k.get(1);
    }

    public void e() {
        if (this.a == null) {
            throw new f("Required field 'location' was not present! Struct: " + toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof j)) {
            return a((j) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GPS(");
        sb.append("location:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        if (b()) {
            sb.append(", ");
            sb.append("provider:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
        }
        if (c()) {
            sb.append(", ");
            sb.append("period:");
            sb.append(this.c);
        }
        if (d()) {
            sb.append(", ");
            sb.append("accuracy:");
            sb.append(this.d);
        }
        sb.append(")");
        return sb.toString();
    }
}
