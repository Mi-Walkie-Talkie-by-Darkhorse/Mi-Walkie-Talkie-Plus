package com.xiaomi.xmpush.thrift;

import com.amap.api.services.geocoder.GeocodeSearch;
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
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;

public class n implements Serializable, Cloneable, org.apache.thrift.a<n, a> {
    public static final Map<a, b> d;
    private static final j e = new j("LocationInfo");
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("wifiList", 15, 1);
    private static final org.apache.thrift.protocol.b g = new org.apache.thrift.protocol.b("cellList", 15, 2);
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b(GeocodeSearch.GPS, 12, 3);
    public List<w> a;
    public List<c> b;
    public j c;

    public enum a {
        WIFI_LIST(1, "wifiList"),
        CELL_LIST(2, "cellList"),
        GPS(3, GeocodeSearch.GPS);
        
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
        enumMap.put(a.WIFI_LIST, new b("wifiList", 2, new d(15, new g(12, w.class))));
        enumMap.put(a.CELL_LIST, new b("cellList", 2, new d(15, new g(12, c.class))));
        enumMap.put(a.GPS, new b(GeocodeSearch.GPS, 2, new g(12, j.class)));
        d = Collections.unmodifiableMap(enumMap);
        b.a(n.class, d);
    }

    public n a(j jVar) {
        this.c = jVar;
        return this;
    }

    public n a(List<w> list) {
        this.a = list;
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
                    if (i.b != 15) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        c m = eVar.m();
                        this.a = new ArrayList(m.b);
                        for (int i2 = 0; i2 < m.b; i2++) {
                            w wVar = new w();
                            wVar.a(eVar);
                            this.a.add(wVar);
                        }
                        eVar.n();
                        break;
                    }
                case 2:
                    if (i.b != 15) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        c m2 = eVar.m();
                        this.b = new ArrayList(m2.b);
                        for (int i3 = 0; i3 < m2.b; i3++) {
                            c cVar = new c();
                            cVar.a(eVar);
                            this.b.add(cVar);
                        }
                        eVar.n();
                        break;
                    }
                case 3:
                    if (i.b != 12) {
                        h.a(eVar, i.b);
                        break;
                    } else {
                        this.c = new j();
                        this.c.a(eVar);
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

    public boolean a(n nVar) {
        if (nVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = nVar.a();
        if ((a2 || a3) && (!a2 || !a3 || !this.a.equals(nVar.a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = nVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.equals(nVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = nVar.c();
        return (!c2 && !c3) || (c2 && c3 && this.c.a(nVar.c));
    }

    /* renamed from: b */
    public int compareTo(n nVar) {
        if (!getClass().equals(nVar.getClass())) {
            return getClass().getName().compareTo(nVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(nVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a((List) this.a, (List) nVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(nVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a((List) this.b, (List) nVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(nVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a((Comparable) this.c, (Comparable) nVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    public n b(List<c> list) {
        this.b = list;
        return this;
    }

    public void b(e eVar) {
        d();
        eVar.a(e);
        if (this.a != null && a()) {
            eVar.a(f);
            eVar.a(new c(12, this.a.size()));
            for (w b2 : this.a) {
                b2.b(eVar);
            }
            eVar.e();
            eVar.b();
        }
        if (this.b != null && b()) {
            eVar.a(g);
            eVar.a(new c(12, this.b.size()));
            for (c b3 : this.b) {
                b3.b(eVar);
            }
            eVar.e();
            eVar.b();
        }
        if (this.c != null && c()) {
            eVar.a(h);
            this.c.b(eVar);
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
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof n)) {
            return a((n) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("LocationInfo(");
        boolean z2 = true;
        if (a()) {
            sb.append("wifiList:");
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
            sb.append("cellList:");
            if (this.b == null) {
                sb.append("null");
            } else {
                sb.append(this.b);
            }
        } else {
            z = z2;
        }
        if (c()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("gps:");
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
