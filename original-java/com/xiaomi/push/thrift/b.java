package com.xiaomi.push.thrift;

import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.protocol.e;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class b implements Serializable, Cloneable, org.apache.thrift.a<b, a> {
    public static final Map<a, org.apache.thrift.meta_data.b> k;
    private static final j l = new j("StatsEvent");
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("chid", 3, 1);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("type", 8, 2);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("value", 8, 3);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("connpt", 11, 4);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("host", 11, 5);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("subvalue", 8, 6);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b("annotation", 11, 7);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("user", 11, 8);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b(Values.TIME, 8, 9);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b("clientIp", 8, 10);
    public byte a;
    public int b;
    public int c;
    public String d;
    public String e;
    public int f;
    public String g;
    public String h;
    public int i;
    public int j;
    private BitSet w = new BitSet(6);

    public enum a {
        CHID(1, "chid"),
        TYPE(2, "type"),
        VALUE(3, "value"),
        CONNPT(4, "connpt"),
        HOST(5, "host"),
        SUBVALUE(6, "subvalue"),
        ANNOTATION(7, "annotation"),
        USER(8, "user"),
        TIME(9, Values.TIME),
        CLIENT_IP(10, "clientIp");
        
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
        enumMap.put(a.CHID, new org.apache.thrift.meta_data.b("chid", 1, new c(3)));
        enumMap.put(a.TYPE, new org.apache.thrift.meta_data.b("type", 1, new c(8)));
        enumMap.put(a.VALUE, new org.apache.thrift.meta_data.b("value", 1, new c(8)));
        enumMap.put(a.CONNPT, new org.apache.thrift.meta_data.b("connpt", 1, new c(11)));
        enumMap.put(a.HOST, new org.apache.thrift.meta_data.b("host", 2, new c(11)));
        enumMap.put(a.SUBVALUE, new org.apache.thrift.meta_data.b("subvalue", 2, new c(8)));
        enumMap.put(a.ANNOTATION, new org.apache.thrift.meta_data.b("annotation", 2, new c(11)));
        enumMap.put(a.USER, new org.apache.thrift.meta_data.b("user", 2, new c(11)));
        enumMap.put(a.TIME, new org.apache.thrift.meta_data.b(Values.TIME, 2, new c(8)));
        enumMap.put(a.CLIENT_IP, new org.apache.thrift.meta_data.b("clientIp", 2, new c(8)));
        k = Collections.unmodifiableMap(enumMap);
        org.apache.thrift.meta_data.b.a(b.class, k);
    }

    public b a(byte b2) {
        this.a = b2;
        a(true);
        return this;
    }

    public b a(int i2) {
        this.b = i2;
        b(true);
        return this;
    }

    public b a(String str) {
        this.d = str;
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!a()) {
                    throw new f("Required field 'chid' was not found in serialized data! Struct: " + toString());
                } else if (!b()) {
                    throw new f("Required field 'type' was not found in serialized data! Struct: " + toString());
                } else if (!c()) {
                    throw new f("Required field 'value' was not found in serialized data! Struct: " + toString());
                } else {
                    k();
                    return;
                }
            } else {
                switch (i2.c) {
                    case 1:
                        if (i2.b != 3) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.a = eVar.r();
                            a(true);
                            break;
                        }
                    case 2:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.b = eVar.t();
                            b(true);
                            break;
                        }
                    case 3:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.c = eVar.t();
                            c(true);
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
                        if (i2.b != 11) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.e = eVar.w();
                            break;
                        }
                    case 6:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.f = eVar.t();
                            d(true);
                            break;
                        }
                    case 7:
                        if (i2.b != 11) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.g = eVar.w();
                            break;
                        }
                    case 8:
                        if (i2.b != 11) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.h = eVar.w();
                            break;
                        }
                    case 9:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.i = eVar.t();
                            e(true);
                            break;
                        }
                    case 10:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.j = eVar.t();
                            f(true);
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

    public boolean a() {
        return this.w.get(0);
    }

    public boolean a(b bVar) {
        if (bVar == null || this.a != bVar.a || this.b != bVar.b || this.c != bVar.c) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = bVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.d.equals(bVar.d))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = bVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.e.equals(bVar.e))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = bVar.f();
        if ((f2 || f3) && (!f2 || !f3 || this.f != bVar.f)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = bVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.g.equals(bVar.g))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = bVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.h.equals(bVar.h))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = bVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.i != bVar.i)) {
            return false;
        }
        boolean j2 = j();
        boolean j3 = bVar.j();
        return (!j2 && !j3) || (j2 && j3 && this.j == bVar.j);
    }

    /* renamed from: b */
    public int compareTo(b bVar) {
        if (!getClass().equals(bVar.getClass())) {
            return getClass().getName().compareTo(bVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(bVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, bVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(bVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a(this.b, bVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(bVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, bVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(bVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, bVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(bVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e()) {
            int a6 = org.apache.thrift.b.a(this.e, bVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(bVar.f()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (f()) {
            int a7 = org.apache.thrift.b.a(this.f, bVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(bVar.g()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (g()) {
            int a8 = org.apache.thrift.b.a(this.g, bVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(bVar.h()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (h()) {
            int a9 = org.apache.thrift.b.a(this.h, bVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(bVar.i()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (i()) {
            int a10 = org.apache.thrift.b.a(this.i, bVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(j()).compareTo(Boolean.valueOf(bVar.j()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (j()) {
            int a11 = org.apache.thrift.b.a(this.j, bVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        return 0;
    }

    public b b(int i2) {
        this.c = i2;
        c(true);
        return this;
    }

    public b b(String str) {
        this.e = str;
        return this;
    }

    public void b(e eVar) {
        k();
        eVar.a(l);
        eVar.a(m);
        eVar.a(this.a);
        eVar.b();
        eVar.a(n);
        eVar.a(this.b);
        eVar.b();
        eVar.a(o);
        eVar.a(this.c);
        eVar.b();
        if (this.d != null) {
            eVar.a(p);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && e()) {
            eVar.a(q);
            eVar.a(this.e);
            eVar.b();
        }
        if (f()) {
            eVar.a(r);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && g()) {
            eVar.a(s);
            eVar.a(this.g);
            eVar.b();
        }
        if (this.h != null && h()) {
            eVar.a(t);
            eVar.a(this.h);
            eVar.b();
        }
        if (i()) {
            eVar.a(u);
            eVar.a(this.i);
            eVar.b();
        }
        if (j()) {
            eVar.a(v);
            eVar.a(this.j);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.w.set(1, z);
    }

    public boolean b() {
        return this.w.get(1);
    }

    public b c(int i2) {
        this.f = i2;
        d(true);
        return this;
    }

    public b c(String str) {
        this.g = str;
        return this;
    }

    public void c(boolean z) {
        this.w.set(2, z);
    }

    public boolean c() {
        return this.w.get(2);
    }

    public b d(int i2) {
        this.i = i2;
        e(true);
        return this;
    }

    public b d(String str) {
        this.h = str;
        return this;
    }

    public void d(boolean z) {
        this.w.set(3, z);
    }

    public boolean d() {
        return this.d != null;
    }

    public b e(int i2) {
        this.j = i2;
        f(true);
        return this;
    }

    public void e(boolean z) {
        this.w.set(4, z);
    }

    public boolean e() {
        return this.e != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof b)) {
            return a((b) obj);
        }
        return false;
    }

    public void f(boolean z) {
        this.w.set(5, z);
    }

    public boolean f() {
        return this.w.get(3);
    }

    public boolean g() {
        return this.g != null;
    }

    public boolean h() {
        return this.h != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.w.get(4);
    }

    public boolean j() {
        return this.w.get(5);
    }

    public void k() {
        if (this.d == null) {
            throw new f("Required field 'connpt' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvent(");
        sb.append("chid:");
        sb.append(this.a);
        sb.append(", ");
        sb.append("type:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("value:");
        sb.append(this.c);
        sb.append(", ");
        sb.append("connpt:");
        if (this.d == null) {
            sb.append("null");
        } else {
            sb.append(this.d);
        }
        if (e()) {
            sb.append(", ");
            sb.append("host:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (f()) {
            sb.append(", ");
            sb.append("subvalue:");
            sb.append(this.f);
        }
        if (g()) {
            sb.append(", ");
            sb.append("annotation:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (h()) {
            sb.append(", ");
            sb.append("user:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("time:");
            sb.append(this.i);
        }
        if (j()) {
            sb.append(", ");
            sb.append("clientIp:");
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }
}
