package com.xiaomi.push;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class hy implements jg<hy, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public List<hz> f493a;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f492a = new jw("ClientUploadData");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9062a = new jo("", (byte) 15, 1);

    public int a() {
        List<hz> list = this.f493a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    /* renamed from: a */
    public int compareTo(hy hyVar) {
        int a2;
        if (!hy.class.equals(hyVar.getClass())) {
            return hy.class.getName().compareTo(hyVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m354a()).compareTo(Boolean.valueOf(hyVar.m354a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (!m354a() || (a2 = jh.a(this.f493a, hyVar.f493a)) == 0) {
            return 0;
        }
        return a2;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m353a() {
        if (this.f493a == null) {
            throw new js("Required field 'uploadDataItems' was not present! Struct: " + toString());
        }
    }

    public void a(hz hzVar) {
        if (this.f493a == null) {
            this.f493a = new ArrayList();
        }
        this.f493a.add(hzVar);
    }

    @Override // com.xiaomi.push.jg
    public void a(jr jrVar) {
        jrVar.m512a();
        while (true) {
            jo a2 = jrVar.m508a();
            byte b2 = a2.f9165a;
            if (b2 == 0) {
                jrVar.f();
                m353a();
                return;
            }
            if (a2.f828a == 1 && b2 == 15) {
                jp a3 = jrVar.m509a();
                this.f493a = new ArrayList(a3.f829a);
                for (int i = 0; i < a3.f829a; i++) {
                    hz hzVar = new hz();
                    hzVar.a(jrVar);
                    this.f493a.add(hzVar);
                }
                jrVar.i();
            } else {
                ju.a(jrVar, b2);
            }
            jrVar.g();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m354a() {
        return this.f493a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m355a(hy hyVar) {
        if (hyVar == null) {
            return false;
        }
        boolean a2 = m354a();
        boolean a3 = hyVar.m354a();
        if (a2 || a3) {
            return a2 && a3 && this.f493a.equals(hyVar.f493a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m353a();
        jrVar.a(f492a);
        if (this.f493a != null) {
            jrVar.a(f9062a);
            jrVar.a(new jp((byte) 12, this.f493a.size()));
            for (hz hzVar : this.f493a) {
                hzVar.b(jrVar);
            }
            jrVar.e();
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof hy)) {
            return m355a((hy) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ClientUploadData(");
        sb.append("uploadDataItems:");
        List<hz> list = this.f493a;
        if (list == null) {
            sb.append("null");
        } else {
            sb.append(list);
        }
        sb.append(")");
        return sb.toString();
    }
}
