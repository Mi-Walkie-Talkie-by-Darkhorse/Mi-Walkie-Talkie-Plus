package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class is implements jg<is, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public List<ig> f657a;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f656a = new jw("XmPushActionCustomConfig");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9119a = new jo("", (byte) 15, 1);

    /* renamed from: a */
    public int compareTo(is isVar) {
        int a2;
        if (!is.class.equals(isVar.getClass())) {
            return is.class.getName().compareTo(isVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m440a()).compareTo(Boolean.valueOf(isVar.m440a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (!m440a() || (a2 = jh.a(this.f657a, isVar.f657a)) == 0) {
            return 0;
        }
        return a2;
    }

    public List<ig> a() {
        return this.f657a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m439a() {
        if (this.f657a == null) {
            throw new js("Required field 'customConfigs' was not present! Struct: " + toString());
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
                m439a();
                return;
            }
            if (a2.f828a == 1 && b2 == 15) {
                jp a3 = jrVar.m509a();
                this.f657a = new ArrayList(a3.f829a);
                for (int i = 0; i < a3.f829a; i++) {
                    ig igVar = new ig();
                    igVar.a(jrVar);
                    this.f657a.add(igVar);
                }
                jrVar.i();
            } else {
                ju.a(jrVar, b2);
            }
            jrVar.g();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m440a() {
        return this.f657a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m441a(is isVar) {
        if (isVar == null) {
            return false;
        }
        boolean a2 = m440a();
        boolean a3 = isVar.m440a();
        if (a2 || a3) {
            return a2 && a3 && this.f657a.equals(isVar.f657a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m439a();
        jrVar.a(f656a);
        if (this.f657a != null) {
            jrVar.a(f9119a);
            jrVar.a(new jp((byte) 12, this.f657a.size()));
            for (ig igVar : this.f657a) {
                igVar.b(jrVar);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof is)) {
            return m441a((is) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionCustomConfig(");
        sb.append("customConfigs:");
        List<ig> list = this.f657a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
