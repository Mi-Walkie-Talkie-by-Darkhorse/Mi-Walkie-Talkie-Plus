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

public class z implements Serializable, Cloneable, org.apache.thrift.a<z, a> {
    public static final Map<a, b> c;
    private static final j d = new j("XmPushActionCheckClientInfo");
    private static final org.apache.thrift.protocol.b e = new org.apache.thrift.protocol.b("miscConfigVersion", 8, 1);
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("pluginConfigVersion", 8, 2);
    public int a;
    public int b;
    private BitSet g = new BitSet(2);

    public enum a {
        MISC_CONFIG_VERSION(1, "miscConfigVersion"),
        PLUGIN_CONFIG_VERSION(2, "pluginConfigVersion");
        
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
        enumMap.put(a.MISC_CONFIG_VERSION, new b("miscConfigVersion", 1, new c(8)));
        enumMap.put(a.PLUGIN_CONFIG_VERSION, new b("pluginConfigVersion", 1, new c(8)));
        c = Collections.unmodifiableMap(enumMap);
        b.a(z.class, c);
    }

    public z a(int i) {
        this.a = i;
        a(true);
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i = eVar.i();
            if (i.b == 0) {
                eVar.h();
                if (!a()) {
                    throw new f("Required field 'miscConfigVersion' was not found in serialized data! Struct: " + toString());
                } else if (!b()) {
                    throw new f("Required field 'pluginConfigVersion' was not found in serialized data! Struct: " + toString());
                } else {
                    c();
                    return;
                }
            } else {
                switch (i.c) {
                    case 1:
                        if (i.b != 8) {
                            h.a(eVar, i.b);
                            break;
                        } else {
                            this.a = eVar.t();
                            a(true);
                            break;
                        }
                    case 2:
                        if (i.b != 8) {
                            h.a(eVar, i.b);
                            break;
                        } else {
                            this.b = eVar.t();
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

    public boolean a() {
        return this.g.get(0);
    }

    public boolean a(z zVar) {
        return zVar != null && this.a == zVar.a && this.b == zVar.b;
    }

    /* renamed from: b */
    public int compareTo(z zVar) {
        if (!getClass().equals(zVar.getClass())) {
            return getClass().getName().compareTo(zVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(zVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, zVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(zVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a(this.b, zVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        return 0;
    }

    public z b(int i) {
        this.b = i;
        b(true);
        return this;
    }

    public void b(e eVar) {
        c();
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
        return this.g.get(1);
    }

    public void c() {
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof z)) {
            return a((z) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCheckClientInfo(");
        sb.append("miscConfigVersion:");
        sb.append(this.a);
        sb.append(", ");
        sb.append("pluginConfigVersion:");
        sb.append(this.b);
        sb.append(")");
        return sb.toString();
    }
}
