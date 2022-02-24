package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class it implements jg<it, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public List<ie> f659a;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f658a = new jw("XmPushActionNormalConfig");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9120a = new jo("", (byte) 15, 1);

    /* renamed from: a */
    public int compareTo(it itVar) {
        int a2;
        if (!it.class.equals(itVar.getClass())) {
            return it.class.getName().compareTo(itVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m443a()).compareTo(Boolean.valueOf(itVar.m443a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (!m443a() || (a2 = jh.a(this.f659a, itVar.f659a)) == 0) {
            return 0;
        }
        return a2;
    }

    public List<ie> a() {
        return this.f659a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m442a() {
        if (this.f659a == null) {
            throw new js("Required field 'normalConfigs' was not present! Struct: " + toString());
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
                m442a();
                return;
            }
            if (a2.f828a == 1 && b2 == 15) {
                jp a3 = jrVar.m509a();
                this.f659a = new ArrayList(a3.f829a);
                for (int i = 0; i < a3.f829a; i++) {
                    ie ieVar = new ie();
                    ieVar.a(jrVar);
                    this.f659a.add(ieVar);
                }
                jrVar.i();
            } else {
                ju.a(jrVar, b2);
            }
            jrVar.g();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m443a() {
        return this.f659a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m444a(it itVar) {
        if (itVar == null) {
            return false;
        }
        boolean a2 = m443a();
        boolean a3 = itVar.m443a();
        if (a2 || a3) {
            return a2 && a3 && this.f659a.equals(itVar.f659a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m442a();
        jrVar.a(f658a);
        if (this.f659a != null) {
            jrVar.a(f9120a);
            jrVar.a(new jp((byte) 12, this.f659a.size()));
            for (ie ieVar : this.f659a) {
                ieVar.b(jrVar);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof it)) {
            return m444a((it) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionNormalConfig(");
        sb.append("normalConfigs:");
        List<ie> list = this.f659a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
