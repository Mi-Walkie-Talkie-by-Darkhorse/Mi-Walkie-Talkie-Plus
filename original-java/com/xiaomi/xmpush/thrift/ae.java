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

public class ae implements Serializable, Cloneable, org.apache.thrift.a<ae, a> {
    public static final Map<a, b> d;
    private static final j e = new j("XmPushActionNormalConfig");
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("normalConfigs", 15, 1);
    private static final org.apache.thrift.protocol.b g = new org.apache.thrift.protocol.b("appId", 10, 4);
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b("packageName", 11, 5);
    public List<o> a;
    public long b;
    public String c;
    private BitSet i = new BitSet(1);

    public enum a {
        NORMAL_CONFIGS(1, "normalConfigs"),
        APP_ID(4, "appId"),
        PACKAGE_NAME(5, "packageName");
        
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
        enumMap.put(a.NORMAL_CONFIGS, new b("normalConfigs", 1, new d(15, new g(12, o.class))));
        enumMap.put(a.APP_ID, new b("appId", 2, new c(10)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        d = Collections.unmodifiableMap(enumMap);
        b.a(ae.class, d);
    }

    public List<o> a() {
        return this.a;
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
                    if (i2.b != 15) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        org.apache.thrift.protocol.c m = eVar.m();
                        this.a = new ArrayList(m.b);
                        for (int i3 = 0; i3 < m.b; i3++) {
                            o oVar = new o();
                            oVar.a(eVar);
                            this.a.add(oVar);
                        }
                        eVar.n();
                        break;
                    }
                case 4:
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = eVar.u();
                        a(true);
                        break;
                    }
                case 5:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = eVar.w();
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

    public boolean a(ae aeVar) {
        if (aeVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = aeVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.a.equals(aeVar.a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = aeVar.c();
        if ((c2 || c3) && (!c2 || !c3 || this.b != aeVar.b)) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = aeVar.d();
        return (!d2 && !d3) || (d2 && d3 && this.c.equals(aeVar.c));
    }

    /* renamed from: b */
    public int compareTo(ae aeVar) {
        if (!getClass().equals(aeVar.getClass())) {
            return getClass().getName().compareTo(aeVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(aeVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a((List) this.a, (List) aeVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(aeVar.c()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (c()) {
            int a3 = org.apache.thrift.b.a(this.b, aeVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(aeVar.d()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (d()) {
            int a4 = org.apache.thrift.b.a(this.c, aeVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        e();
        eVar.a(e);
        if (this.a != null) {
            eVar.a(f);
            eVar.a(new org.apache.thrift.protocol.c(12, this.a.size()));
            for (o b2 : this.a) {
                b2.b(eVar);
            }
            eVar.e();
            eVar.b();
        }
        if (c()) {
            eVar.a(g);
            eVar.a(this.b);
            eVar.b();
        }
        if (this.c != null && d()) {
            eVar.a(h);
            eVar.a(this.c);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.a != null;
    }

    public boolean c() {
        return this.i.get(0);
    }

    public boolean d() {
        return this.c != null;
    }

    public void e() {
        if (this.a == null) {
            throw new f("Required field 'normalConfigs' was not present! Struct: " + toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ae)) {
            return a((ae) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionNormalConfig(");
        sb.append("normalConfigs:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        if (c()) {
            sb.append(", ");
            sb.append("appId:");
            sb.append(this.b);
        }
        if (d()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
