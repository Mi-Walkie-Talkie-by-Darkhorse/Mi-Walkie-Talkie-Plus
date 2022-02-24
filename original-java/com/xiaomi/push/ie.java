package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

/* loaded from: classes2.dex */
public class ie implements jg<ie, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f522a;

    /* renamed from: a  reason: collision with other field name */
    public ib f523a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f524a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    public List<ig> f525a;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f521a = new jw("NormalConfig");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9080a = new jo("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9081b = new jo("", (byte) 15, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9082c = new jo("", (byte) 8, 3);

    public int a() {
        return this.f522a;
    }

    /* renamed from: a */
    public int compareTo(ie ieVar) {
        int a2;
        int a3;
        int a4;
        if (!ie.class.equals(ieVar.getClass())) {
            return ie.class.getName().compareTo(ieVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m379a()).compareTo(Boolean.valueOf(ieVar.m379a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m379a() && (a4 = jh.a(this.f522a, ieVar.f522a)) != 0) {
            return a4;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(ieVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a3 = jh.a(this.f525a, ieVar.f525a)) != 0) {
            return a3;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(ieVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (!c() || (a2 = jh.a(this.f523a, ieVar.f523a)) == 0) {
            return 0;
        }
        return a2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public ib m377a() {
        return this.f523a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m378a() {
        if (this.f525a == null) {
            throw new js("Required field 'configItems' was not present! Struct: " + toString());
        }
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                break;
            }
            short s = a2.f828a;
            if (s == 1) {
                if (b2 == 8) {
                    this.f522a = jrVar.m506a();
                    a(true);
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s != 2) {
                if (s == 3 && b2 == 8) {
                    this.f523a = ib.a(jrVar.m506a());
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else {
                if (b2 == 15) {
                    jp a3 = jrVar.m509a();
                    this.f525a = new ArrayList(a3.f829a);
                    for (int i = 0; i < a3.f829a; i++) {
                        ig igVar = new ig();
                        igVar.a(jrVar);
                        this.f525a.add(igVar);
                    }
                    jrVar.i();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
        jrVar.f();
        if (m379a()) {
            m378a();
            return;
        }
        throw new js("Required field 'version' was not found in serialized data! Struct: " + toString());
    }

    public void a(boolean z) {
        this.f524a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m379a() {
        return this.f524a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m380a(ie ieVar) {
        if (ieVar == null || this.f522a != ieVar.f522a) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = ieVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f525a.equals(ieVar.f525a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = ieVar.c();
        if (c2 || c3) {
            return c2 && c3 && this.f523a.equals(ieVar.f523a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m378a();
        jrVar.a(f521a);
        jrVar.a(f9080a);
        jrVar.mo504a(this.f522a);
        jrVar.b();
        if (this.f525a != null) {
            jrVar.a(f9081b);
            jrVar.a(new jp((byte) 12, this.f525a.size()));
            for (ig igVar : this.f525a) {
                igVar.b(jrVar);
            }
            jrVar.e();
            jrVar.b();
        }
        if (this.f523a != null && c()) {
            jrVar.a(f9082c);
            jrVar.mo504a(this.f523a.a());
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean b() {
        return this.f525a != null;
    }

    public boolean c() {
        return this.f523a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ie)) {
            return m380a((ie) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NormalConfig(");
        sb.append("version:");
        sb.append(this.f522a);
        sb.append(", ");
        sb.append("configItems:");
        List<ig> list = this.f525a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        if (c()) {
            sb.append(", ");
            sb.append("type:");
            ib ibVar = this.f523a;
            if (ibVar == null) {
                sb.append("null");
            } else {
                sb.append(ibVar);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
