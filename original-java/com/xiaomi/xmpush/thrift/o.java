package com.xiaomi.xmpush.thrift;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.meta_data.d;
import org.apache.thrift.meta_data.g;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;

public class o implements Serializable, Cloneable, org.apache.thrift.a<o, a> {
    public static final Map<a, b> d;
    private static final j e = new j("NormalConfig");
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("version", 8, 1);
    private static final org.apache.thrift.protocol.b g = new org.apache.thrift.protocol.b("configItems", 15, 2);
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b("type", 8, 3);
    public int a;
    public List<q> b;
    public g c;
    private BitSet i = new BitSet(1);

    public enum a {
        VERSION(1, "version"),
        CONFIG_ITEMS(2, "configItems"),
        TYPE(3, "type");
        
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
        enumMap.put(a.VERSION, new b("version", 1, new c(8)));
        enumMap.put(a.CONFIG_ITEMS, new b("configItems", 1, new d(15, new g(12, q.class))));
        enumMap.put(a.TYPE, new b("type", 1, new org.apache.thrift.meta_data.a(Tnaf.POW_2_WIDTH, g.class)));
        d = Collections.unmodifiableMap(enumMap);
        b.a(o.class, d);
    }

    public int a() {
        return this.a;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!b()) {
                    throw new f("Required field 'version' was not found in serialized data! Struct: " + toString());
                }
                f();
                return;
            }
            switch (i2.c) {
                case 1:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.a = eVar.t();
                        a(true);
                        break;
                    }
                case 2:
                    if (i2.b != 15) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        org.apache.thrift.protocol.c m = eVar.m();
                        this.b = new ArrayList(m.b);
                        for (int i3 = 0; i3 < m.b; i3++) {
                            q qVar = new q();
                            qVar.a(eVar);
                            this.b.add(qVar);
                        }
                        eVar.n();
                        break;
                    }
                case 3:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = g.a(eVar.t());
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
        this.i.set(0, z);
    }

    public boolean a(o oVar) {
        if (oVar == null || this.a != oVar.a) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = oVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.b.equals(oVar.b))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = oVar.e();
        return (!e2 && !e3) || (e2 && e3 && this.c.equals(oVar.c));
    }

    /* renamed from: b */
    public int compareTo(o oVar) {
        if (!getClass().equals(oVar.getClass())) {
            return getClass().getName().compareTo(oVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(oVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a(this.a, oVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(oVar.c()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (c()) {
            int a3 = org.apache.thrift.b.a((List) this.b, (List) oVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(oVar.e()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (e()) {
            int a4 = org.apache.thrift.b.a((Comparable) this.c, (Comparable) oVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        f();
        eVar.a(e);
        eVar.a(f);
        eVar.a(this.a);
        eVar.b();
        if (this.b != null) {
            eVar.a(g);
            eVar.a(new org.apache.thrift.protocol.c(12, this.b.size()));
            for (q b2 : this.b) {
                b2.b(eVar);
            }
            eVar.e();
            eVar.b();
        }
        if (this.c != null) {
            eVar.a(h);
            eVar.a(this.c.a());
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.i.get(0);
    }

    public boolean c() {
        return this.b != null;
    }

    public g d() {
        return this.c;
    }

    public boolean e() {
        return this.c != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof o)) {
            return a((o) obj);
        }
        return false;
    }

    public void f() {
        if (this.b == null) {
            throw new f("Required field 'configItems' was not present! Struct: " + toString());
        } else if (this.c == null) {
            throw new f("Required field 'type' was not present! Struct: " + toString());
        }
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NormalConfig(");
        sb.append("version:");
        sb.append(this.a);
        sb.append(", ");
        sb.append("configItems:");
        if (this.b == null) {
            sb.append("null");
        } else {
            sb.append(this.b);
        }
        sb.append(", ");
        sb.append("type:");
        if (this.c == null) {
            sb.append("null");
        } else {
            sb.append(this.c);
        }
        sb.append(")");
        return sb.toString();
    }
}
