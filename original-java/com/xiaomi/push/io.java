package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class io implements jg<io, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public List<id> f621a;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f620a = new jw("XmPushActionCollectData");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9109a = new jo("", (byte) 15, 1);

    /* renamed from: a */
    public int compareTo(io ioVar) {
        int a2;
        if (!io.class.equals(ioVar.getClass())) {
            return io.class.getName().compareTo(ioVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m418a()).compareTo(Boolean.valueOf(ioVar.m418a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (!m418a() || (a2 = jh.a(this.f621a, ioVar.f621a)) == 0) {
            return 0;
        }
        return a2;
    }

    public io a(List<id> list) {
        this.f621a = list;
        return this;
    }

    public void a() {
        if (this.f621a == null) {
            throw new js("Required field 'dataCollectionItems' was not present! Struct: " + toString());
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
            if (a2.f828a == 1 && b2 == 15) {
                jp a3 = jrVar.m509a();
                this.f621a = new ArrayList(a3.f829a);
                for (int i = 0; i < a3.f829a; i++) {
                    id idVar = new id();
                    idVar.a(jrVar);
                    this.f621a.add(idVar);
                }
                jrVar.i();
            } else {
                ju.a(jrVar, b2);
            }
            jrVar.g();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m418a() {
        return this.f621a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m419a(io ioVar) {
        if (ioVar == null) {
            return false;
        }
        boolean a2 = m418a();
        boolean a3 = ioVar.m418a();
        if (a2 || a3) {
            return a2 && a3 && this.f621a.equals(ioVar.f621a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f620a);
        if (this.f621a != null) {
            jrVar.a(f9109a);
            jrVar.a(new jp((byte) 12, this.f621a.size()));
            for (id idVar : this.f621a) {
                idVar.b(jrVar);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof io)) {
            return m419a((io) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCollectData(");
        sb.append("dataCollectionItems:");
        List<id> list = this.f621a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
