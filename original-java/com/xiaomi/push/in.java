package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class in implements jg<in, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public int f617a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f618a = new BitSet(2);

    /* renamed from: b  reason: collision with other field name */
    public int f619b;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f616a = new jw("XmPushActionCheckClientInfo");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9107a = new jo("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9108b = new jo("", (byte) 8, 2);

    /* renamed from: a */
    public int compareTo(in inVar) {
        int a2;
        int a3;
        if (!in.class.equals(inVar.getClass())) {
            return in.class.getName().compareTo(inVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m416a()).compareTo(Boolean.valueOf(inVar.m416a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m416a() && (a3 = jh.a(this.f617a, inVar.f617a)) != 0) {
            return a3;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(inVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (!b() || (a2 = jh.a(this.f619b, inVar.f619b)) == 0) {
            return 0;
        }
        return a2;
    }

    public in a(int i) {
        this.f617a = i;
        a(true);
        return this;
    }

    public void a() {
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
            if (s != 1) {
                if (s == 2 && b2 == 8) {
                    this.f619b = jrVar.m506a();
                    b(true);
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else {
                if (b2 == 8) {
                    this.f617a = jrVar.m506a();
                    a(true);
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
        jrVar.f();
        if (!m416a()) {
            throw new js("Required field 'miscConfigVersion' was not found in serialized data! Struct: " + toString());
        } else if (b()) {
            a();
        } else {
            throw new js("Required field 'pluginConfigVersion' was not found in serialized data! Struct: " + toString());
        }
    }

    public void a(boolean z) {
        this.f618a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m416a() {
        return this.f618a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m417a(in inVar) {
        return inVar != null && this.f617a == inVar.f617a && this.f619b == inVar.f619b;
    }

    public in b(int i) {
        this.f619b = i;
        b(true);
        return this;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        a();
        jrVar.a(f616a);
        jrVar.a(f9107a);
        jrVar.mo504a(this.f617a);
        jrVar.b();
        jrVar.a(f9108b);
        jrVar.mo504a(this.f619b);
        jrVar.b();
        jrVar.c();
        jrVar.m516a();
    }

    public void b(boolean z) {
        this.f618a.set(1, z);
    }

    public boolean b() {
        return this.f618a.get(1);
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof in)) {
            return m417a((in) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        return "XmPushActionCheckClientInfo(miscConfigVersion:" + this.f617a + ", pluginConfigVersion:" + this.f619b + ")";
    }
}
