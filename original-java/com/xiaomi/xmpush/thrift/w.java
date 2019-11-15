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

public class w implements Serializable, Cloneable, org.apache.thrift.a<w, a> {
    public static final Map<a, b> d;
    private static final j e = new j("Wifi");
    private static final org.apache.thrift.protocol.b f = new org.apache.thrift.protocol.b("macAddress", 11, 1);
    private static final org.apache.thrift.protocol.b g = new org.apache.thrift.protocol.b("signalStrength", 8, 2);
    private static final org.apache.thrift.protocol.b h = new org.apache.thrift.protocol.b("ssid", 11, 3);
    public String a;
    public int b;
    public String c;
    private BitSet i = new BitSet(1);

    public enum a {
        MAC_ADDRESS(1, "macAddress"),
        SIGNAL_STRENGTH(2, "signalStrength"),
        SSID(3, "ssid");
        
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
        enumMap.put(a.MAC_ADDRESS, new b("macAddress", 1, new c(11)));
        enumMap.put(a.SIGNAL_STRENGTH, new b("signalStrength", 1, new c(8)));
        enumMap.put(a.SSID, new b("ssid", 2, new c(11)));
        d = Collections.unmodifiableMap(enumMap);
        b.a(w.class, d);
    }

    public w a(int i2) {
        this.b = i2;
        a(true);
        return this;
    }

    public w a(String str) {
        this.a = str;
        return this;
    }

    public void a(e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!b()) {
                    throw new f("Required field 'signalStrength' was not found in serialized data! Struct: " + toString());
                }
                d();
                return;
            }
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
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = eVar.t();
                        a(true);
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

    public boolean a() {
        return this.a != null;
    }

    public boolean a(w wVar) {
        if (wVar == null) {
            return false;
        }
        boolean a2 = a();
        boolean a3 = wVar.a();
        if (((a2 || a3) && (!a2 || !a3 || !this.a.equals(wVar.a))) || this.b != wVar.b) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = wVar.c();
        return (!c2 && !c3) || (c2 && c3 && this.c.equals(wVar.c));
    }

    /* renamed from: b */
    public int compareTo(w wVar) {
        if (!getClass().equals(wVar.getClass())) {
            return getClass().getName().compareTo(wVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(a()).compareTo(Boolean.valueOf(wVar.a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (a()) {
            int a2 = org.apache.thrift.b.a(this.a, wVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(wVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b()) {
            int a3 = org.apache.thrift.b.a(this.b, wVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(wVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (c()) {
            int a4 = org.apache.thrift.b.a(this.c, wVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        return 0;
    }

    public w b(String str) {
        this.c = str;
        return this;
    }

    public void b(e eVar) {
        d();
        eVar.a(e);
        if (this.a != null) {
            eVar.a(f);
            eVar.a(this.a);
            eVar.b();
        }
        eVar.a(g);
        eVar.a(this.b);
        eVar.b();
        if (this.c != null && c()) {
            eVar.a(h);
            eVar.a(this.c);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public boolean b() {
        return this.i.get(0);
    }

    public boolean c() {
        return this.c != null;
    }

    public void d() {
        if (this.a == null) {
            throw new f("Required field 'macAddress' was not present! Struct: " + toString());
        }
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof w)) {
            return a((w) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Wifi(");
        sb.append("macAddress:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        sb.append(", ");
        sb.append("signalStrength:");
        sb.append(this.b);
        if (c()) {
            sb.append(", ");
            sb.append("ssid:");
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
