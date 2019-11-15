package com.xiaomi.xmpush.thrift;

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
import org.apache.thrift.protocol.c;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;

public class ad implements Serializable, Cloneable, org.apache.thrift.a<ad, a> {
    public static final Map<a, b> b;
    private static final j c = new j("XmPushActionCustomConfig");
    private static final org.apache.thrift.protocol.b d = new org.apache.thrift.protocol.b("customConfigs", 15, 1);
    public List<q> a;

    public enum a {
        CUSTOM_CONFIGS(1, "customConfigs");
        
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
        enumMap.put(a.CUSTOM_CONFIGS, new b("customConfigs", 1, new d(15, new g(12, q.class))));
        b = Collections.unmodifiableMap(enumMap);
        b.a(ad.class, b);
    }

    public List<q> a() {
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
                    if (i.b != 15) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        c m = eVar.m();
                        this.a = new ArrayList(m.b);
                        for (int i2 = 0; i2 < m.b; i2++) {
                            q qVar = new q();
                            qVar.a(eVar);
                            this.a.add(qVar);
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

    public boolean a(ad adVar) {
        if (adVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = adVar.b();
        return (!b2 && !b3) || (b2 && b3 && this.a.equals(adVar.a));
    }

    /* renamed from: b */
    public int compareTo(ad adVar) {
        if (!getClass().equals(adVar.getClass())) {
            return getClass().getName().compareTo(adVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(adVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a((List) this.a, (List) adVar.a);
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
            eVar.a(new c(12, this.a.size()));
            for (q b2 : this.a) {
                b2.b(eVar);
            }
            eVar.e();
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
            throw new f("Required field 'customConfigs' was not present! Struct: " + toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ad)) {
            return a((ad) obj);
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCustomConfig(");
        sb.append("customConfigs:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        sb.append(")");
        return sb.toString();
    }
}
