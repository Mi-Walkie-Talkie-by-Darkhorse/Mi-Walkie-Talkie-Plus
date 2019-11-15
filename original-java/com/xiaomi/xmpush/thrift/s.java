package com.xiaomi.xmpush.thrift;

import com.tencent.open.SocialConstants;
import java.io.Serializable;
import java.util.BitSet;
import java.util.Collections;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.apache.thrift.meta_data.b;
import org.apache.thrift.meta_data.c;
import org.apache.thrift.meta_data.e;
import org.apache.thrift.protocol.d;
import org.apache.thrift.protocol.f;
import org.apache.thrift.protocol.h;
import org.apache.thrift.protocol.j;
import org.jboss.netty.handler.codec.http.HttpConstants;

public class s implements Serializable, Cloneable, org.apache.thrift.a<s, a> {
    public static final Map<a, b> m;
    private static final j n = new j("PushMetaInfo");
    private static final org.apache.thrift.protocol.b o = new org.apache.thrift.protocol.b("id", 11, 1);
    private static final org.apache.thrift.protocol.b p = new org.apache.thrift.protocol.b("messageTs", 10, 2);
    private static final org.apache.thrift.protocol.b q = new org.apache.thrift.protocol.b("topic", 11, 3);
    private static final org.apache.thrift.protocol.b r = new org.apache.thrift.protocol.b("title", 11, 4);
    private static final org.apache.thrift.protocol.b s = new org.apache.thrift.protocol.b(SocialConstants.PARAM_COMMENT, 11, 5);
    private static final org.apache.thrift.protocol.b t = new org.apache.thrift.protocol.b("notifyType", 8, 6);
    private static final org.apache.thrift.protocol.b u = new org.apache.thrift.protocol.b("url", 11, 7);
    private static final org.apache.thrift.protocol.b v = new org.apache.thrift.protocol.b("passThrough", 8, 8);
    private static final org.apache.thrift.protocol.b w = new org.apache.thrift.protocol.b("notifyId", 8, 9);
    private static final org.apache.thrift.protocol.b x = new org.apache.thrift.protocol.b(Key.EXTRA, HttpConstants.CR, 10);
    private static final org.apache.thrift.protocol.b y = new org.apache.thrift.protocol.b("internal", HttpConstants.CR, 11);
    private static final org.apache.thrift.protocol.b z = new org.apache.thrift.protocol.b("ignoreRegInfo", 2, 12);
    private BitSet A;
    public String a;
    public long b;
    public String c;
    public String d;
    public String e;
    public int f;
    public String g;
    public int h;
    public int i;
    public Map<String, String> j;
    public Map<String, String> k;
    public boolean l;

    public enum a {
        ID(1, "id"),
        MESSAGE_TS(2, "messageTs"),
        TOPIC(3, "topic"),
        TITLE(4, "title"),
        DESCRIPTION(5, SocialConstants.PARAM_COMMENT),
        NOTIFY_TYPE(6, "notifyType"),
        URL(7, "url"),
        PASS_THROUGH(8, "passThrough"),
        NOTIFY_ID(9, "notifyId"),
        EXTRA(10, Key.EXTRA),
        INTERNAL(11, "internal"),
        IGNORE_REG_INFO(12, "ignoreRegInfo");
        
        private static final Map<String, a> m = null;
        private final short n;
        private final String o;

        static {
            m = new HashMap();
            Iterator it = EnumSet.allOf(a.class).iterator();
            while (it.hasNext()) {
                a aVar = (a) it.next();
                m.put(aVar.a(), aVar);
            }
        }

        private a(short s, String str) {
            this.n = s;
            this.o = str;
        }

        public String a() {
            return this.o;
        }
    }

    static {
        EnumMap enumMap = new EnumMap(a.class);
        enumMap.put(a.ID, new b("id", 1, new c(11)));
        enumMap.put(a.MESSAGE_TS, new b("messageTs", 1, new c(10)));
        enumMap.put(a.TOPIC, new b("topic", 2, new c(11)));
        enumMap.put(a.TITLE, new b("title", 2, new c(11)));
        enumMap.put(a.DESCRIPTION, new b(SocialConstants.PARAM_COMMENT, 2, new c(11)));
        enumMap.put(a.NOTIFY_TYPE, new b("notifyType", 2, new c(8)));
        enumMap.put(a.URL, new b("url", 2, new c(11)));
        enumMap.put(a.PASS_THROUGH, new b("passThrough", 2, new c(8)));
        enumMap.put(a.NOTIFY_ID, new b("notifyId", 2, new c(8)));
        enumMap.put(a.EXTRA, new b(Key.EXTRA, 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.INTERNAL, new b("internal", 2, new e(HttpConstants.CR, new c(11), new c(11))));
        enumMap.put(a.IGNORE_REG_INFO, new b("ignoreRegInfo", 2, new c(2)));
        m = Collections.unmodifiableMap(enumMap);
        b.a(s.class, m);
    }

    public s() {
        this.A = new BitSet(5);
        this.l = false;
    }

    public s(s sVar) {
        this.A = new BitSet(5);
        this.A.clear();
        this.A.or(sVar.A);
        if (sVar.c()) {
            this.a = sVar.a;
        }
        this.b = sVar.b;
        if (sVar.g()) {
            this.c = sVar.c;
        }
        if (sVar.i()) {
            this.d = sVar.d;
        }
        if (sVar.k()) {
            this.e = sVar.e;
        }
        this.f = sVar.f;
        if (sVar.n()) {
            this.g = sVar.g;
        }
        this.h = sVar.h;
        this.i = sVar.i;
        if (sVar.t()) {
            HashMap hashMap = new HashMap();
            for (Entry entry : sVar.j.entrySet()) {
                hashMap.put((String) entry.getKey(), (String) entry.getValue());
            }
            this.j = hashMap;
        }
        if (sVar.v()) {
            HashMap hashMap2 = new HashMap();
            for (Entry entry2 : sVar.k.entrySet()) {
                hashMap2.put((String) entry2.getKey(), (String) entry2.getValue());
            }
            this.k = hashMap2;
        }
        this.l = sVar.l;
    }

    public s a() {
        return new s(this);
    }

    public s a(int i2) {
        this.f = i2;
        b(true);
        return this;
    }

    public s a(String str) {
        this.a = str;
        return this;
    }

    public s a(Map<String, String> map) {
        this.j = map;
        return this;
    }

    public void a(String str, String str2) {
        if (this.j == null) {
            this.j = new HashMap();
        }
        this.j.put(str, str2);
    }

    public void a(org.apache.thrift.protocol.e eVar) {
        eVar.g();
        while (true) {
            org.apache.thrift.protocol.b i2 = eVar.i();
            if (i2.b == 0) {
                eVar.h();
                if (!e()) {
                    throw new f("Required field 'messageTs' was not found in serialized data! Struct: " + toString());
                }
                y();
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
                    if (i2.b != 10) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.b = eVar.u();
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
                        b(true);
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
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.h = eVar.t();
                        c(true);
                        break;
                    }
                case 9:
                    if (i2.b != 8) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.i = eVar.t();
                        d(true);
                        break;
                    }
                case 10:
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k2 = eVar.k();
                        this.j = new HashMap(k2.c * 2);
                        for (int i3 = 0; i3 < k2.c; i3++) {
                            this.j.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
                        break;
                    }
                case 11:
                    if (i2.b != 13) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        d k3 = eVar.k();
                        this.k = new HashMap(k3.c * 2);
                        for (int i4 = 0; i4 < k3.c; i4++) {
                            this.k.put(eVar.w(), eVar.w());
                        }
                        eVar.l();
                        break;
                    }
                case 12:
                    if (i2.b != 2) {
                        h.a(eVar, i2.b);
                        break;
                    } else {
                        this.l = eVar.q();
                        e(true);
                        break;
                    }
                default:
                    h.a(eVar, i2.b);
                    break;
            }
            eVar.j();
        }
    }

    public void a(boolean z2) {
        this.A.set(0, z2);
    }

    public boolean a(s sVar) {
        if (sVar == null) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = sVar.c();
        if (((c2 || c3) && (!c2 || !c3 || !this.a.equals(sVar.a))) || this.b != sVar.b) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = sVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.c.equals(sVar.c))) {
            return false;
        }
        boolean i2 = i();
        boolean i3 = sVar.i();
        if ((i2 || i3) && (!i2 || !i3 || !this.d.equals(sVar.d))) {
            return false;
        }
        boolean k2 = k();
        boolean k3 = sVar.k();
        if ((k2 || k3) && (!k2 || !k3 || !this.e.equals(sVar.e))) {
            return false;
        }
        boolean m2 = m();
        boolean m3 = sVar.m();
        if ((m2 || m3) && (!m2 || !m3 || this.f != sVar.f)) {
            return false;
        }
        boolean n2 = n();
        boolean n3 = sVar.n();
        if ((n2 || n3) && (!n2 || !n3 || !this.g.equals(sVar.g))) {
            return false;
        }
        boolean p2 = p();
        boolean p3 = sVar.p();
        if ((p2 || p3) && (!p2 || !p3 || this.h != sVar.h)) {
            return false;
        }
        boolean r2 = r();
        boolean r3 = sVar.r();
        if ((r2 || r3) && (!r2 || !r3 || this.i != sVar.i)) {
            return false;
        }
        boolean t2 = t();
        boolean t3 = sVar.t();
        if ((t2 || t3) && (!t2 || !t3 || !this.j.equals(sVar.j))) {
            return false;
        }
        boolean v2 = v();
        boolean v3 = sVar.v();
        if ((v2 || v3) && (!v2 || !v3 || !this.k.equals(sVar.k))) {
            return false;
        }
        boolean x2 = x();
        boolean x3 = sVar.x();
        return (!x2 && !x3) || (x2 && x3 && this.l == sVar.l);
    }

    /* renamed from: b */
    public int compareTo(s sVar) {
        if (!getClass().equals(sVar.getClass())) {
            return getClass().getName().compareTo(sVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(c()).compareTo(Boolean.valueOf(sVar.c()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (c()) {
            int a2 = org.apache.thrift.b.a(this.a, sVar.a);
            if (a2 != 0) {
                return a2;
            }
        }
        int compareTo2 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(sVar.e()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (e()) {
            int a3 = org.apache.thrift.b.a(this.b, sVar.b);
            if (a3 != 0) {
                return a3;
            }
        }
        int compareTo3 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(sVar.g()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (g()) {
            int a4 = org.apache.thrift.b.a(this.c, sVar.c);
            if (a4 != 0) {
                return a4;
            }
        }
        int compareTo4 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(sVar.i()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (i()) {
            int a5 = org.apache.thrift.b.a(this.d, sVar.d);
            if (a5 != 0) {
                return a5;
            }
        }
        int compareTo5 = Boolean.valueOf(k()).compareTo(Boolean.valueOf(sVar.k()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (k()) {
            int a6 = org.apache.thrift.b.a(this.e, sVar.e);
            if (a6 != 0) {
                return a6;
            }
        }
        int compareTo6 = Boolean.valueOf(m()).compareTo(Boolean.valueOf(sVar.m()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (m()) {
            int a7 = org.apache.thrift.b.a(this.f, sVar.f);
            if (a7 != 0) {
                return a7;
            }
        }
        int compareTo7 = Boolean.valueOf(n()).compareTo(Boolean.valueOf(sVar.n()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (n()) {
            int a8 = org.apache.thrift.b.a(this.g, sVar.g);
            if (a8 != 0) {
                return a8;
            }
        }
        int compareTo8 = Boolean.valueOf(p()).compareTo(Boolean.valueOf(sVar.p()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (p()) {
            int a9 = org.apache.thrift.b.a(this.h, sVar.h);
            if (a9 != 0) {
                return a9;
            }
        }
        int compareTo9 = Boolean.valueOf(r()).compareTo(Boolean.valueOf(sVar.r()));
        if (compareTo9 != 0) {
            return compareTo9;
        }
        if (r()) {
            int a10 = org.apache.thrift.b.a(this.i, sVar.i);
            if (a10 != 0) {
                return a10;
            }
        }
        int compareTo10 = Boolean.valueOf(t()).compareTo(Boolean.valueOf(sVar.t()));
        if (compareTo10 != 0) {
            return compareTo10;
        }
        if (t()) {
            int a11 = org.apache.thrift.b.a((Map) this.j, (Map) sVar.j);
            if (a11 != 0) {
                return a11;
            }
        }
        int compareTo11 = Boolean.valueOf(v()).compareTo(Boolean.valueOf(sVar.v()));
        if (compareTo11 != 0) {
            return compareTo11;
        }
        if (v()) {
            int a12 = org.apache.thrift.b.a((Map) this.k, (Map) sVar.k);
            if (a12 != 0) {
                return a12;
            }
        }
        int compareTo12 = Boolean.valueOf(x()).compareTo(Boolean.valueOf(sVar.x()));
        if (compareTo12 != 0) {
            return compareTo12;
        }
        if (x()) {
            int a13 = org.apache.thrift.b.a(this.l, sVar.l);
            if (a13 != 0) {
                return a13;
            }
        }
        return 0;
    }

    public s b(int i2) {
        this.h = i2;
        c(true);
        return this;
    }

    public s b(String str) {
        this.c = str;
        return this;
    }

    public String b() {
        return this.a;
    }

    public void b(String str, String str2) {
        if (this.k == null) {
            this.k = new HashMap();
        }
        this.k.put(str, str2);
    }

    public void b(org.apache.thrift.protocol.e eVar) {
        y();
        eVar.a(n);
        if (this.a != null) {
            eVar.a(o);
            eVar.a(this.a);
            eVar.b();
        }
        eVar.a(p);
        eVar.a(this.b);
        eVar.b();
        if (this.c != null && g()) {
            eVar.a(q);
            eVar.a(this.c);
            eVar.b();
        }
        if (this.d != null && i()) {
            eVar.a(r);
            eVar.a(this.d);
            eVar.b();
        }
        if (this.e != null && k()) {
            eVar.a(s);
            eVar.a(this.e);
            eVar.b();
        }
        if (m()) {
            eVar.a(t);
            eVar.a(this.f);
            eVar.b();
        }
        if (this.g != null && n()) {
            eVar.a(u);
            eVar.a(this.g);
            eVar.b();
        }
        if (p()) {
            eVar.a(v);
            eVar.a(this.h);
            eVar.b();
        }
        if (r()) {
            eVar.a(w);
            eVar.a(this.i);
            eVar.b();
        }
        if (this.j != null && t()) {
            eVar.a(x);
            eVar.a(new d(11, 11, this.j.size()));
            for (Entry entry : this.j.entrySet()) {
                eVar.a((String) entry.getKey());
                eVar.a((String) entry.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (this.k != null && v()) {
            eVar.a(y);
            eVar.a(new d(11, 11, this.k.size()));
            for (Entry entry2 : this.k.entrySet()) {
                eVar.a((String) entry2.getKey());
                eVar.a((String) entry2.getValue());
            }
            eVar.d();
            eVar.b();
        }
        if (x()) {
            eVar.a(z);
            eVar.a(this.l);
            eVar.b();
        }
        eVar.c();
        eVar.a();
    }

    public void b(boolean z2) {
        this.A.set(1, z2);
    }

    public s c(int i2) {
        this.i = i2;
        d(true);
        return this;
    }

    public s c(String str) {
        this.d = str;
        return this;
    }

    public void c(boolean z2) {
        this.A.set(2, z2);
    }

    public boolean c() {
        return this.a != null;
    }

    public long d() {
        return this.b;
    }

    public s d(String str) {
        this.e = str;
        return this;
    }

    public void d(boolean z2) {
        this.A.set(3, z2);
    }

    public void e(boolean z2) {
        this.A.set(4, z2);
    }

    public boolean e() {
        return this.A.get(0);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof s)) {
            return a((s) obj);
        }
        return false;
    }

    public String f() {
        return this.c;
    }

    public boolean g() {
        return this.c != null;
    }

    public String h() {
        return this.d;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.d != null;
    }

    public String j() {
        return this.e;
    }

    public boolean k() {
        return this.e != null;
    }

    public int l() {
        return this.f;
    }

    public boolean m() {
        return this.A.get(1);
    }

    public boolean n() {
        return this.g != null;
    }

    public int o() {
        return this.h;
    }

    public boolean p() {
        return this.A.get(2);
    }

    public int q() {
        return this.i;
    }

    public boolean r() {
        return this.A.get(3);
    }

    public Map<String, String> s() {
        return this.j;
    }

    public boolean t() {
        return this.j != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PushMetaInfo(");
        sb.append("id:");
        if (this.a == null) {
            sb.append("null");
        } else {
            sb.append(this.a);
        }
        sb.append(", ");
        sb.append("messageTs:");
        sb.append(this.b);
        if (g()) {
            sb.append(", ");
            sb.append("topic:");
            if (this.c == null) {
                sb.append("null");
            } else {
                sb.append(this.c);
            }
        }
        if (i()) {
            sb.append(", ");
            sb.append("title:");
            if (this.d == null) {
                sb.append("null");
            } else {
                sb.append(this.d);
            }
        }
        if (k()) {
            sb.append(", ");
            sb.append("description:");
            if (this.e == null) {
                sb.append("null");
            } else {
                sb.append(this.e);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("notifyType:");
            sb.append(this.f);
        }
        if (n()) {
            sb.append(", ");
            sb.append("url:");
            if (this.g == null) {
                sb.append("null");
            } else {
                sb.append(this.g);
            }
        }
        if (p()) {
            sb.append(", ");
            sb.append("passThrough:");
            sb.append(this.h);
        }
        if (r()) {
            sb.append(", ");
            sb.append("notifyId:");
            sb.append(this.i);
        }
        if (t()) {
            sb.append(", ");
            sb.append("extra:");
            if (this.j == null) {
                sb.append("null");
            } else {
                sb.append(this.j);
            }
        }
        if (v()) {
            sb.append(", ");
            sb.append("internal:");
            if (this.k == null) {
                sb.append("null");
            } else {
                sb.append(this.k);
            }
        }
        if (x()) {
            sb.append(", ");
            sb.append("ignoreRegInfo:");
            sb.append(this.l);
        }
        sb.append(")");
        return sb.toString();
    }

    public Map<String, String> u() {
        return this.k;
    }

    public boolean v() {
        return this.k != null;
    }

    public boolean w() {
        return this.l;
    }

    public boolean x() {
        return this.A.get(4);
    }

    public void y() {
        if (this.a == null) {
            throw new f("Required field 'id' was not present! Struct: " + toString());
        }
    }
}
