package com.xiaomi.xmpush.thrift;

import com.tencent.tauth.AuthActivity;
import java.io.Serializable;
import java.nio.ByteBuffer;
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
import org.apache.thrift.protocol.j;

public class ac implements Serializable, Cloneable, org.apache.thrift.a<ac, a> {
    public static final Map<a, b> i;
    private static final j j = new j("XmPushActionContainer");
    private static final org.apache.thrift.protocol.b k = new org.apache.thrift.protocol.b(AuthActivity.ACTION_KEY, 8, 1);
    private static final org.apache.thrift.protocol.b l = new org.apache.thrift.protocol.b("encryptAction", 2, 2);
    private static final org.apache.thrift.protocol.b m = new org.apache.thrift.protocol.b("isRequest", 2, 3);
    private static final org.apache.thrift.protocol.b n = new org.apache.thrift.protocol.b("pushAction", 11, 4);
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("appid", 11, 5);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("packageName", 11, 6);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("target", 12, 7);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("metaInfo", 12, 8);
    public a a;
    public boolean b = true;
    public boolean c = true;
    public ByteBuffer d;
    public String e;
    public String f;
    public v g;
    public s h;
    private BitSet s = new BitSet(2);

    public enum a {
        ACTION(1, AuthActivity.ACTION_KEY),
        ENCRYPT_ACTION(2, "encryptAction"),
        IS_REQUEST(3, "isRequest"),
        PUSH_ACTION(4, "pushAction"),
        APPID(5, "appid"),
        PACKAGE_NAME(6, "packageName"),
        TARGET(7, "target"),
        META_INFO(8, "metaInfo");
        
        private static final Map<String, a> i = null;
        private final short j;
        private final String k;

        static {
            i = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                i.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.j = s;
            this.k = str;
        }

        public String a() {
            return this.k;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.ACTION, new b(AuthActivity.ACTION_KEY, 1, new org.apache.thrift.meta_data.a(Tnaf.POW_2_WIDTH, a.class)));
        enumMap.put(a.ENCRYPT_ACTION, new b("encryptAction", 1, new c(2)));
        enumMap.put(a.IS_REQUEST, new b("isRequest", 1, new c(2)));
        enumMap.put(a.PUSH_ACTION, new b("pushAction", 1, new c(11)));
        enumMap.put(a.APPID, new b("appid", 2, new c(11)));
        enumMap.put(a.PACKAGE_NAME, new b("packageName", 2, new c(11)));
        enumMap.put(a.TARGET, new b("target", 1, new g(12, v.class)));
        enumMap.put(a.META_INFO, new b("metaInfo", 2, new g(12, s.class)));
        i = Collections.unmodifiableMap(enumMap);
        b.a(ac.class, i);
    }

    public a a() {
        return this.a;
    }

    public ac a(a aVar) {
        this.a = aVar;
        return this;
    }

    public ac a(s sVar) {
        this.h = sVar;
        return this;
    }

    public ac a(v vVar) {
        this.g = vVar;
        return this;
    }

    public ac a(String str) {
        this.e = str;
        return this;
    }

    public ac a(ByteBuffer byteBuffer) {
        this.d = byteBuffer;
        return this;
    }

    public ac a(boolean z) {
        this.b = z;
        b(true);
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!d()) {
                    throw new f("Required field 'encryptAction' was not found in serialized data! Struct: " + toString());
                } else if (!e()) {
                    throw new f("Required field 'isRequest' was not found in serialized data! Struct: " + toString());
                } else {
                    o();
                    return;
                }
            } else {
                switch (i2.c) {
                    case 1:
                        if (i2.b != 8) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.a = a.a(eVar.t());
                            break;
                        }
                    case 2:
                        if (i2.b != 2) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.b = eVar.q();
                            b(true);
                            break;
                        }
                    case 3:
                        if (i2.b != 2) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.c = eVar.q();
                            d(true);
                            break;
                        }
                    case 4:
                        if (i2.b != 11) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.d = eVar.x();
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
                        if (i2.b != 11) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.f = eVar.w();
                            break;
                        }
                    case 7:
                        if (i2.b != 12) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.g = new v();
                            this.g.a(eVar);
                            break;
                        }
                    case 8:
                        if (i2.b != 12) {
                            h.a(eVar, i2.b);
                            break;
                        } else {
                            this.h = new s();
                            this.h.a(eVar);
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

    public boolean a(ac acVar) {
        if (acVar == null) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = acVar.b();
        if (((b2 || b3) && (!b2 || !b3 || !this.a.equals(acVar.a))) || this.b != acVar.b || this.c != acVar.c) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = acVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.d.equals(acVar.d))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = acVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.e.equals(acVar.e))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = acVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.f.equals(acVar.f))) {
            return false;
        }
        boolean l2 = l();
        boolean l3 = acVar.l();
        if ((l2 || l3) && (!l2 || !l3 || !this.g.a(acVar.g))) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = acVar.n();
        return (!n2 && !n3) || (n2 && n3 && this.h.a(acVar.h));
    }

    /* renamed from: b */
    public int compareTo(ac acVar) {
        if (!getClass().equals(acVar.getClass())) {
            return getClass().getName().compareTo(acVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(b()).compareTo(Boolean.valueOf(acVar.b()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (b()) {
            int a2 = org.apache.thrift.b.a((Comparable) this.a, (Comparable) acVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(acVar.d()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (d()) {
            int a3 = org.apache.thrift.b.a(this.b, acVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(acVar.e()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (e()) {
            int a4 = org.apache.thrift.b.a(this.c, acVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(acVar.g()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (g()) {
            int a5 = org.apache.thrift.b.a((Comparable) this.d, (Comparable) acVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(acVar.i()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (i()) {
            int a6 = org.apache.thrift.b.a(this.e, acVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(acVar.k()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (k()) {
            int a7 = org.apache.thrift.b.a(this.f, acVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(l()).compareTo(Boolean.valueOf(acVar.l()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (l()) {
            int a8 = org.apache.thrift.b.a((Comparable) this.g, (Comparable) acVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(acVar.n()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (n()) {
            int a9 = org.apache.thrift.b.a((Comparable) this.h, (Comparable) acVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        return 0;
    }

    public ac b(String str) {
        this.f = str;
        return this;
    }

    public void b(e eVar) {
        o();
        eVar.a(j);
        if (this.a != null) {
            eVar.a(k);
            eVar.a(this.a.a());
            eVar.b();
        }
        eVar.a(l);
        eVar.a(this.b);
        eVar.b();
        eVar.a(m);
        eVar.a(this.c);
        eVar.b();
        if (this.d != null) {
            eVar.a(n);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && i()) {
            eVar.a(o);
            eVar.a(this.e);
            eVar.b();
        }
        if (this.f != null && k()) {
            eVar.a(p);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null) {
            eVar.a(q);
            this.g.b(eVar);
            eVar.b();
        }
        if (this.h != null && n()) {
            eVar.a(r);
            this.h.b(eVar);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z) {
        this.s.set(0, z);
    }

    public boolean b() {
        return this.a != null;
    }

    public ac c(boolean z) {
        this.c = z;
        d(true);
        return this;
    }

    public boolean c() {
        return this.b;
    }

    public void d(boolean z) {
        this.s.set(1, z);
    }

    public boolean d() {
        return this.s.get(0);
    }

    public boolean e() {
        return this.s.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ac)) {
            return a((ac) obj);
        }
        return false;
    }

    public byte[] f() {
        a(org.apache.thrift.b.c(this.d));
        return this.d.array();
    }

    public boolean g() {
        return this.d != null;
    }

    public String h() {
        return this.e;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.e != null;
    }

    public String j() {
        return this.f;
    }

    public boolean k() {
        return this.f != null;
    }

    public boolean l() {
        return this.g != null;
    }

    public s m() {
        return this.h;
    }

    public boolean n() {
        return this.h != null;
    }

    public void o() {
        if (this.a == null) {
            throw new f("Required field 'action' was not present! Struct: " + toString());
        } else if (this.d == null) {
            throw new f("Required field 'pushAction' was not present! Struct: " + toString());
        } else if (this.g == null) {
            throw new f("Required field 'target' was not present! Struct: " + toString());
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionContainer(");
        sb.append("action:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        sb.append(", ");
        sb.append("encryptAction:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("isRequest:");
        sb.append(this.c);
        sb.append(", ");
        sb.append("pushAction:");
        if (this.d == null) {
            sb.append("null");
        } else {
            org.apache.thrift.b.a(this.d, sb);
        }
        if (i()) {
            sb.append(", ");
            sb.append("appid:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("packageName:");
            if (this.f == null) {
                sb.append("null");
            } else {
                sb.append(this.f);
            }
        }
        sb.append(", ");
        sb.append("target:");
        if (this.g == null) {
            sb.append("null");
        } else {
            sb.append(this.g);
        }
        if (n()) {
            sb.append(", ");
            sb.append("metaInfo:");
            if (this.h == null) {
                sb.append("null");
            } else {
                sb.append(this.h);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
