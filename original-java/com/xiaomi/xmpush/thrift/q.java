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
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;

public class q implements Serializable, Cloneable, org.apache.thrift.a<q, a> {
    public static final Map<a, b> h;
    private static final j i = new j("OnlineConfigItem");
    private static final org.apache.thrift.protocol.b j = new org.apache.thrift.protocol.b("key", 8, 1);
    private static final org.apache.thrift.protocol.b k = new org.apache.thrift.protocol.b("type", 8, 2);
    private static final org.apache.thrift.protocol.b l = new org.apache.thrift.protocol.b("clear", 2, 3);
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("intValue", 8, 4);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("longValue", 10, 5);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("stringValue", 11, 6);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("boolValue", 2, 7);
    public int a;
    public int b;
    public boolean c;
    public int d;
    public long e;
    public String f;
    public boolean g;
    private BitSet q = new BitSet(6);

    public enum a {
        KEY(1, "key"),
        TYPE(2, "type"),
        CLEAR(3, "clear"),
        INT_VALUE(4, "intValue"),
        LONG_VALUE(5, "longValue"),
        STRING_VALUE(6, "stringValue"),
        BOOL_VALUE(7, "boolValue");
        
        private static final Map<String, a> h = null;
        private final short i;
        private final String j;

        static {
            h = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                h.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.i = s;
            this.j = str;
        }

        public String a() {
            return this.j;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.KEY, new b("key", 2, new c(8)));
        enumMap.put(a.TYPE, new b("type", 2, new c(8)));
        enumMap.put(a.CLEAR, new b("clear", 2, new c(2)));
        enumMap.put(a.INT_VALUE, new b("intValue", 2, new c(8)));
        enumMap.put(a.LONG_VALUE, new b("longValue", 2, new c(10)));
        enumMap.put(a.STRING_VALUE, new b("stringValue", 2, new c(11)));
        enumMap.put(a.BOOL_VALUE, new b("boolValue", 2, new c(2)));
        h = Collections.unmodifiableMap(enumMap);
        b.a(q.class, h);
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
                n();
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
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = eVar.t();
                        b(true);
                        break;
                    }
                case 3:
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = eVar.q();
                        c(true);
                        break;
                    }
                case 4:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.d = eVar.t();
                        d(true);
                        break;
                    }
                case 5:
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = eVar.u();
                        e(true);
                        break;
                    }
                case 6:
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.f = eVar.w();
                        break;
                    }
                case 7:
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.g = eVar.q();
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

    public void a(boolean z) {
        this.q.set(0, z);
    }

    public boolean a(q qVar) {
        if (qVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = qVar.b();
        if ((b2 || b3) && (!b2 || !b3 || this.a != qVar.a)) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = qVar.d();
        if ((d2 || d3) && (!d2 || !d3 || this.b != qVar.b)) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = qVar.e();
        if ((e2 || e3) && (!e2 || !e3 || this.c != qVar.c)) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = qVar.g();
        if ((g2 || g3) && (!g2 || !g3 || this.d != qVar.d)) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = qVar.i();
        if ((i2 || i3) && (!i2 || !i3 || this.e != qVar.e)) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = qVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f.equals(qVar.f))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = qVar.m();
        return (!m2 && !m3) || (m2 && m3 && this.g == qVar.g);
    }

    /* renamed from: b */
    public int compareTo(q qVar) {
        if (!getClass().equals(qVar.getClass())) {
            return getClass().getName().compareTo(qVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(qVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a(this.a, qVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(qVar.d()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (d()) {
            int a3 = org.apache.thrift.b.a(this.b, qVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(qVar.e()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (e()) {
            int a4 = org.apache.thrift.b.a(this.c, qVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(qVar.g()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (g()) {
            int a5 = org.apache.thrift.b.a(this.d, qVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(qVar.i()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (i()) {
            int a6 = org.apache.thrift.b.a(this.e, qVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(qVar.k()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (k()) {
            int a7 = org.apache.thrift.b.a(this.f, qVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(qVar.m()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (m()) {
            int a8 = org.apache.thrift.b.a(this.g, qVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        n();
        eVar.a(i);
        if (b()) {
            eVar.a(j);
            eVar.a(this.a);
            eVar.b();
        }
        if (d()) {
            eVar.a(k);
            eVar.a(this.b);
            eVar.b();
        }
        if (e()) {
            eVar.a(l);
            eVar.a(this.c);
            eVar.b();
        }
        if (g()) {
            eVar.a(m);
            eVar.a(this.d);
            eVar.b();
        }
        if (i()) {
            eVar.a(n);
            eVar.a(this.e);
            eVar.b();
        }
        if (this.f != null && k()) {
            eVar.a(o);
            eVar.a(this.f);
            eVar.b();
        }
        if (m()) {
            eVar.a(p);
            eVar.a(this.g);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.q.set(1, z);
    }

    public boolean b() {
        return this.q.get(0);
    }

    public int c() {
        return this.b;
    }

    public void c(boolean z) {
        this.q.set(2, z);
    }

    public void d(boolean z) {
        this.q.set(3, z);
    }

    public boolean d() {
        return this.q.get(1);
    }

    public void e(boolean z) {
        this.q.set(4, z);
    }

    public boolean e() {
        return this.q.get(2);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof q)) {
            return a((q) obj);
        }
        return false;
    }

    public int f() {
        return this.d;
    }

    public void f(boolean z) {
        this.q.set(5, z);
    }

    public boolean g() {
        return this.q.get(3);
    }

    public long h() {
        return this.e;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.q.get(4);
    }

    public String j() {
        return this.f;
    }

    public boolean k() {
        return this.f != null;
    }

    public boolean l() {
        return this.g;
    }

    public boolean m() {
        return this.q.get(5);
    }

    public void n() {
    }

    public String toString() {
        boolean z = false;
        StringBuilder sb = new StringBuilder("OnlineConfigItem(");
        boolean z2 = true;
        if (b()) {
            sb.append("key:");
            sb.append(this.a);
            z2 = false;
        }
        if (d()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("type:");
            sb.append(this.b);
            z2 = false;
        }
        if (e()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("clear:");
            sb.append(this.c);
            z2 = false;
        }
        if (g()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("intValue:");
            sb.append(this.d);
            z2 = false;
        }
        if (i()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("longValue:");
            sb.append(this.e);
            z2 = false;
        }
        if (k()) {
            if (!z2) {
                sb.append(", ");
            }
            sb.append("stringValue:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        } else {
            z = z2;
        }
        if (m()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append("boolValue:");
            sb.append(this.g);
        }
        sb.append(")");
        return sb.toString();
    }
}
