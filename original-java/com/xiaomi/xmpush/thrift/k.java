package com.xiaomi.xmpush.thrift;

import com.mi.mimsgsdk.stat.model.BaseStatModel.Key;
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

public class k implements Serializable, Cloneable, org.apache.thrift.a<k, a> {
    public static final Map<a, b> k;
    private static final j l = new j("GeoFencing");
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("id", 11, 1);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b(HttpPostBodyUtil.NAME, 11, 2);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("appId", 10, 3);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("packageName", 11, 4);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b(Key.CREATE_TIME, 10, 5);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("type", 8, 6);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b("circleCenter", 12, 7);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("circleRadius", 4, 9);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b("polygonPoints", 15, 10);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b("coordinateProvider", 8, 11);
    public String a;
    public String b;
    public long c;
    public String d;
    public long e;
    public l f;
    public m g;
    public double h;
    public List<m> i;
    public i j;
    private BitSet w = new BitSet(3);

    public enum a {
        ID(1, "id"),
        NAME(2, HttpPostBodyUtil.NAME),
        APP_ID(3, "appId"),
        PACKAGE_NAME(4, "packageName"),
        CREATE_TIME(5, Key.CREATE_TIME),
        TYPE(6, "type"),
        CIRCLE_CENTER(7, "circleCenter"),
        CIRCLE_RADIUS(9, "circleRadius"),
        POLYGON_POINTS(10, "polygonPoints"),
        COORDINATE_PROVIDER(11, "coordinateProvider");
        
        private static final Map<String, a> k = null;
        private final short l;
        private final String m;

        static {
            k = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                k.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.l = s;
            this.m = str;
        }

        public String a() {
            return this.m;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.NAME, new b(HttpPostBodyUtil.NAME, 1, new c(11)));
        enumMap.put(a.APP_ID, new b("appId", 1, new c(10)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 1, new c(11)));
        enumMap.put(a.CREATE_TIME, new b(Key.CREATE_TIME, 1, new c(10)));
        enumMap.put(a.TYPE, new b("type", 1, new org.apache.thrift.meta_data.a(Tnaf.POW_2_WIDTH, l.class)));
        enumMap.put(a.CIRCLE_CENTER, new b("circleCenter", 2, new g(12, m.class)));
        enumMap.put(a.CIRCLE_RADIUS, new b("circleRadius", 2, new c(4)));
        enumMap.put(a.POLYGON_POINTS, new b("polygonPoints", 2, new d(15, new g(12, m.class))));
        enumMap.put(a.COORDINATE_PROVIDER, new b("coordinateProvider", 1, new org.apache.thrift.meta_data.a(Tnaf.POW_2_WIDTH, i.class)));
        k = Collections.unmodifiableMap(enumMap);
        b.a(k.class, k);
    }

    public k a(double d2) {
        this.h = d2;
        c(true);
        return this;
    }

    public k a(long j2) {
        this.c = j2;
        a(true);
        return this;
    }

    public k a(i iVar) {
        this.j = iVar;
        return this;
    }

    public k a(l lVar) {
        this.f = lVar;
        return this;
    }

    public k a(m mVar) {
        this.g = mVar;
        return this;
    }

    public k a(String str) {
        this.a = str;
        return this;
    }

    public k a(List<m> list) {
        this.i = list;
        return this;
    }

    public String a() {
        return this.a;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!f()) {
                    throw new f("Required field 'appId' was not found in serialized data! Struct: " + toString());
                } else if (!j()) {
                    throw new f("Required field 'createTime' was not found in serialized data! Struct: " + toString());
                } else {
                    u();
                    return;
                }
            } else {
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
                        if (i2.b != 11) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.d = eVar.w();
                            break;
                        }
                    case 5:
                        if (i2.b != 10) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.e = eVar.u();
                            b(true);
                            break;
                        }
                    case 6:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.f = l.a(eVar.t());
                            break;
                        }
                    case 7:
                        if (i2.b != 12) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.g = new m();
                            this.g.a(eVar);
                            break;
                        }
                    case 9:
                        if (i2.b != 4) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.h = eVar.v();
                            c(true);
                            break;
                        }
                    case 10:
                        if (i2.b != 15) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            org.apache.thrift.protocol.c m2 = eVar.m();
                            this.i = new ArrayList(m2.b);
                            for (int i3 = 0; i3 < m2.b; i3++) {
                                m mVar = new m();
                                mVar.a(eVar);
                                this.i.add(mVar);
                            }
                            eVar.n();
                            break;
                        }
                    case 11:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.j = i.a(eVar.t());
                            break;
                        }
                    default:
                        h.a(eVar, i2.b);
                        break;
                }
                eVar.j();
            }
        }
    }

    public void a(boolean z) {
        this.w.set(0, z);
    }

    public boolean a(k kVar) {
        if (kVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = kVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.a.equals(kVar.a))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = kVar.d();
        if (((d2 || d3) && (!d2 || !d3 || !this.b.equals(kVar.b))) || this.c != kVar.c) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = kVar.h();
        if (((h2 || h3) && (!h2 || !h3 || !this.d.equals(kVar.d))) || this.e != kVar.e) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = kVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.f.equals(kVar.f))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = kVar.n();
        if ((n2 || n3) && (!n2 || !n3 || !this.g.a(kVar.g))) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = kVar.p();
        if ((p2 || p3) && (!p2 || !p3 || this.h != kVar.h)) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = kVar.r();
        if ((r2 || r3) && (!r2 || !r3 || !this.i.equals(kVar.i))) {
            return false;
        }
        boolean t2 = t();
        boolean t3 = kVar.t();
        return (!t2 && !t3) || (t2 && t3 && this.j.equals(kVar.j));
    }

    /* renamed from: b */
    public int compareTo(k kVar) {
        if (!getClass().equals(kVar.getClass())) {
            return getClass().getName().compareTo(kVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(kVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a(this.a, kVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(kVar.d()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (d()) {
            int a3 = org.apache.thrift.b.a(this.b, kVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(kVar.f()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (f()) {
            int a4 = org.apache.thrift.b.a(this.c, kVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(kVar.h()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (h()) {
            int a5 = org.apache.thrift.b.a(this.d, kVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(kVar.j()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (j()) {
            int a6 = org.apache.thrift.b.a(this.e, kVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(kVar.l()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (l()) {
            int a7 = org.apache.thrift.b.a((Comparable) this.f, (Comparable) kVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(kVar.n()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (n()) {
            int a8 = org.apache.thrift.b.a((Comparable) this.g, (Comparable) kVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(kVar.p()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (p()) {
            int a9 = org.apache.thrift.b.a(this.h, kVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(kVar.r()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (r()) {
            int a10 = org.apache.thrift.b.a((List) this.i, (List) kVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(kVar.t()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (t()) {
            int a11 = org.apache.thrift.b.a((Comparable) this.j, (Comparable) kVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        return 0;
    }

    public k b(long j2) {
        this.e = j2;
        b(true);
        return this;
    }

    public k b(String str) {
        this.b = str;
        return this;
    }

    public void b(e eVar) {
        u();
        eVar.a(l);
        if (this.a != null) {
            eVar.a(m);
            eVar.a(this.a);
            eVar.b();
        }
        if (this.b != null) {
            eVar.a(n);
            eVar.a(this.b);
            eVar.b();
        }
        eVar.a(o);
        eVar.a(this.c);
        eVar.b();
        if (this.d != null) {
            eVar.a(p);
            eVar.a(this.d);
            eVar.b();
        }
        eVar.a(q);
        eVar.a(this.e);
        eVar.b();
        if (this.f != null) {
            eVar.a(r);
            eVar.a(this.f.a());
            eVar.b();
        }
        if (this.g != null && n()) {
            eVar.a(s);
            this.g.b(eVar);
            eVar.b();
        }
        if (p()) {
            eVar.a(t);
            eVar.a(this.h);
            eVar.b();
        }
        if (this.i != null && r()) {
            eVar.a(u);
            eVar.a(new org.apache.thrift.protocol.c(12, this.i.size()));
            for (m b2 : this.i) {
                b2.b(eVar);
            }
            eVar.e();
            eVar.b();
        }
        if (this.j != null) {
            eVar.a(v);
            eVar.a(this.j.a());
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.w.set(1, z);
    }

    public boolean b() {
        return this.a != null;
    }

    public k c(String str) {
        this.d = str;
        return this;
    }

    public String c() {
        return this.b;
    }

    public void c(boolean z) {
        this.w.set(2, z);
    }

    public boolean d() {
        return this.b != null;
    }

    public long e() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof k)) {
            return a((k) obj);
        }
        return false;
    }

    public boolean f() {
        return this.w.get(0);
    }

    public String g() {
        return this.d;
    }

    public boolean h() {
        return this.d != null;
    }

    public int hashCode() {
        return 0;
    }

    public long i() {
        return this.e;
    }

    public boolean j() {
        return this.w.get(1);
    }

    public l k() {
        return this.f;
    }

    public boolean l() {
        return this.f != null;
    }

    public m m() {
        return this.g;
    }

    public boolean n() {
        return this.g != null;
    }

    public double o() {
        return this.h;
    }

    public boolean p() {
        return this.w.get(2);
    }

    public List<m> q() {
        return this.i;
    }

    public boolean r() {
        return this.i != null;
    }

    public i s() {
        return this.j;
    }

    public boolean t() {
        return this.j != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GeoFencing(");
        sb.append("id:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        sb.append(", ");
        sb.append("name:");
        if (this.b == null) {
            sb.append("null");
        } else {
            sb.append(this.b);
        }
        sb.append(", ");
        sb.append("appId:");
        sb.append(this.c);
        sb.append(", ");
        sb.append("packageName:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        sb.append(", ");
        sb.append("createTime:");
        sb.append(this.e);
        sb.append(", ");
        sb.append("type:");
        if (this.f == null) {
            sb.append("null");
        } else {
            sb.append(this.f);
        }
        if (n()) {
            sb.append(", ");
            sb.append("circleCenter:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (p()) {
            sb.append(", ");
            sb.append("circleRadius:");
            sb.append(this.h);
        }
        if (r()) {
            sb.append(", ");
            sb.append("polygonPoints:");
            if (this.i == null) {
                sb.append("null");
            } else {
                sb.append(this.i);
            }
        }
        sb.append(", ");
        sb.append("coordinateProvider:");
        if (this.j == null) {
            sb.append("null");
        } else {
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u() {
        if (this.a == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        } else if (this.b == null) {
            throw new f("Required field 'name' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'packageName' was not present! Struct: " + toString());
        } else if (this.f == null) {
            throw new f("Required field 'type' was not present! Struct: " + toString());
        } else if (this.j == null) {
            throw new f("Required field 'coordinateProvider' was not present! Struct: " + toString());
        }
    }
}
