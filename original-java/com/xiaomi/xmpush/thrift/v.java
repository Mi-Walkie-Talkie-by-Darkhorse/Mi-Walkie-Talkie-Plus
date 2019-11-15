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

public class v implements Serializable, Cloneable, org.apache.thrift.a<v, a> {
    public static final Map<a, b> f;
    private static final j g = new j("Target");
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b("channelId", 10, 1);
    private static final org.apache.thrift.protocol.b i = new org.apache.thrift.protocol.b("userId", 11, 2);
    private static final org.apache.thrift.protocol.b j = new org.apache.thrift.protocol.b("server", 11, 3);
    private static final org.apache.thrift.protocol.b k = new org.apache.thrift.protocol.b("resource", 11, 4);
    private static final org.apache.thrift.protocol.b l = new org.apache.thrift.protocol.b("isPreview", 2, 5);
    public long a = 5;
    public String b;
    public String c = "xiaomi.com";
    public String d = "";
    public boolean e = false;
    private BitSet m = new BitSet(2);

    public enum a {
        CHANNEL_ID(1, "channelId"),
        USER_ID(2, "userId"),
        SERVER(3, "server"),
        RESOURCE(4, "resource"),
        IS_PREVIEW(5, "isPreview");
        
        private static final Map<String, a> f = null;
        private final short g;
        private final String h;

        static {
            f = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                f.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.g = s;
            this.h = str;
        }

        public String a() {
            return this.h;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.CHANNEL_ID, new b("channelId", 1, new c(10)));
        enumMap.put(a.USER_ID, new b("userId", 1, new c(11)));
        enumMap.put(a.SERVER, new b("server", 2, new c(11)));
        enumMap.put(a.RESOURCE, new b("resource", 2, new c(11)));
        enumMap.put(a.IS_PREVIEW, new b("isPreview", 2, new c(2)));
        f = Collections.unmodifiableMap(enumMap);
        b.a(v.class, f);
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!a()) {
                    throw new f("Required field 'channelId' was not found in serialized data! Struct: " + toString());
                }
                f();
                return;
            }
            switch (i2.c) {
                case 1:
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.a = eVar.u();
                        a(true);
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
                    if (i2.b != 11) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.c = eVar.w();
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
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.e = eVar.q();
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
        this.m.set(0, z);
    }

    public boolean a() {
        return this.m.get(0);
    }

    public boolean a(v vVar) {
        if (vVar == null || this.a != vVar.a) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = vVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.b.equals(vVar.b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = vVar.c();
        if ((c2 || c3) && (!c2 || !c3 || !this.c.equals(vVar.c))) {
            return false;
        }
        boolean d2 = d();
        boolean d3 = vVar.d();
        if ((d2 || d3) && (!d2 || !d3 || !this.d.equals(vVar.d))) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = vVar.e();
        return (!e2 && !e3) || (e2 && e3 && this.e == vVar.e);
    }

    /* renamed from: b */
    public int compareTo(v vVar) {
        if (!getClass().equals(vVar.getClass())) {
            return getClass().getName().compareTo(vVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(vVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, vVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(vVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a(this.b, vVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(vVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, vVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(vVar.d()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (d()) {
            int a5 = org.apache.thrift.b.a(this.d, vVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(vVar.e()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (e()) {
            int a6 = org.apache.thrift.b.a(this.e, vVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        return 0;
    }

    public void b(e eVar) {
        f();
        eVar.a(g);
        eVar.a(h);
        eVar.a(this.a);
        eVar.b();
        if (this.b != null) {
            eVar.a(i);
            eVar.a(this.b);
            eVar.b();
        }
        if (this.c != null && c()) {
            eVar.a(j);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null && d()) {
            eVar.a(k);
            eVar.a(this.d);
            eVar.b();
        }
        if (e()) {
            eVar.a(l);
            eVar.a(this.e);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.m.set(1, z);
    }

    public boolean b() {
        return this.b != null;
    }

    public boolean c() {
        return this.c != null;
    }

    public boolean d() {
        return this.d != null;
    }

    public boolean e() {
        return this.m.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof v)) {
            return a((v) obj);
        }
        return false;
    }

    public void f() {
        if (this.b == null) {
            throw new f("Required field 'userId' was not present! Struct: " + toString());
        }
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Target(");
        sb.append("channelId:");
        sb.append(this.a);
        sb.append(", ");
        sb.append("userId:");
        if (this.b == null) {
            sb.append("null");
        } else {
            sb.append(this.b);
        }
        if (c()) {
            sb.append(", ");
            sb.append("server:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        if (d()) {
            sb.append(", ");
            sb.append("resource:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
        }
        if (e()) {
            sb.append(", ");
            sb.append("isPreview:");
            sb.append(this.e);
        }
        sb.append(")");
        return sb.toString();
    }
}
