package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class fo implements jg<fo, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public String f370a;

    /* renamed from: a  reason: collision with other field name */
    public List<fn> f371a;

    /* renamed from: b  reason: collision with other field name */
    public String f372b;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f369a = new jw("StatsEvents");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f8954a = new jo("", (byte) 11, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f8955b = new jo("", (byte) 11, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f8956c = new jo("", (byte) 15, 3);

    public fo() {
    }

    public fo(String str, List<fn> list) {
        this();
        this.f370a = str;
        this.f371a = list;
    }

    /* renamed from: a */
    public int compareTo(fo foVar) {
        int a2;
        int a3;
        int a4;
        if (!fo.class.equals(foVar.getClass())) {
            return fo.class.getName().compareTo(foVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m279a()).compareTo(Boolean.valueOf(foVar.m279a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m279a() && (a4 = jh.a(this.f370a, foVar.f370a)) != 0) {
            return a4;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(foVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a3 = jh.a(this.f372b, foVar.f372b)) != 0) {
            return a3;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(foVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (!c() || (a2 = jh.a(this.f371a, foVar.f371a)) == 0) {
            return 0;
        }
        return a2;
    }

    public fo a(String str) {
        this.f372b = str;
        return this;
    }

    public void a() {
        if (this.f370a == null) {
            throw new js("Required field 'uuid' was not present! Struct: " + toString());
        } else if (this.f371a == null) {
            throw new js("Required field 'events' was not present! Struct: " + toString());
        }
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                a();
                return;
            }
            short s = a2.f828a;
            if (s == 1) {
                if (b2 == 11) {
                    this.f370a = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s != 2) {
                if (s == 3 && b2 == 15) {
                    jp a3 = jrVar.m509a();
                    this.f371a = new ArrayList(a3.f829a);
                    for (int i = 0; i < a3.f829a; i++) {
                        fn fnVar = new fn();
                        fnVar.a(jrVar);
                        this.f371a.add(fnVar);
                    }
                    jrVar.i();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else {
                if (b2 == 11) {
                    this.f372b = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m279a() {
        return this.f370a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m280a(fo foVar) {
        if (foVar == null) {
            return false;
        }
        boolean a2 = m279a();
        boolean a3 = foVar.m279a();
        if ((a2 || a3) && (!a2 || !a3 || !this.f370a.equals(foVar.f370a))) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = foVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f372b.equals(foVar.f372b))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = foVar.c();
        if (c2 || c3) {
            return c2 && c3 && this.f371a.equals(foVar.f371a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f369a);
        if (this.f370a != null) {
            jrVar.a(f8954a);
            jrVar.a(this.f370a);
            jrVar.b();
        }
        if (this.f372b != null && b()) {
            jrVar.a(f8955b);
            jrVar.a(this.f372b);
            jrVar.b();
        }
        if (this.f371a != null) {
            jrVar.a(f8956c);
            jrVar.a(new jp((byte) 12, this.f371a.size()));
            for (fn fnVar : this.f371a) {
                fnVar.b(jrVar);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean b() {
        return this.f372b != null;
    }

    public boolean c() {
        return this.f371a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof fo)) {
            return m280a((fo) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StatsEvents(");
        sb.append("uuid:");
        String str = this.f370a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (b()) {
            sb.append(", ");
            sb.append("operator:");
            String str2 = this.f372b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("events:");
        List<fn> list = this.f371a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
