package com.xiaomi.push;

import java.io.Serializable;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class id implements jg<id, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public long f517a;

    /* renamed from: a  reason: collision with other field name */
    public hx f518a;

    /* renamed from: a  reason: collision with other field name */
    public String f519a;

    /* renamed from: a  reason: collision with other field name */
    private BitSet f520a = new BitSet(1);

    /* renamed from: a  reason: collision with other field name */
    private static final jw f516a = new jw("DataCollectionItem");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9077a = new jo("", (byte) 10, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9078b = new jo("", (byte) 8, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9079c = new jo("", (byte) 11, 3);

    /* renamed from: a */
    public int compareTo(id idVar) {
        int a2;
        int a3;
        int a4;
        if (!id.class.equals(idVar.getClass())) {
            return id.class.getName().compareTo(idVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m375a()).compareTo(Boolean.valueOf(idVar.m375a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m375a() && (a4 = jh.a(this.f517a, idVar.f517a)) != 0) {
            return a4;
        }
        int compareTo2 = Boolean.valueOf(b()).compareTo(Boolean.valueOf(idVar.b()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (b() && (a3 = jh.a(this.f518a, idVar.f518a)) != 0) {
            return a3;
        }
        int compareTo3 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(idVar.c()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (!c() || (a2 = jh.a(this.f519a, idVar.f519a)) == 0) {
            return 0;
        }
        return a2;
    }

    public id a(long j) {
        this.f517a = j;
        a(true);
        return this;
    }

    public id a(hx hxVar) {
        this.f518a = hxVar;
        return this;
    }

    public id a(String str) {
        this.f519a = str;
        return this;
    }

    public String a() {
        return this.f519a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m374a() {
        if (this.f518a == null) {
            throw new js("Required field 'collectionType' was not present! Struct: " + toString());
        } else if (this.f519a == null) {
            throw new js("Required field 'content' was not present! Struct: " + toString());
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
                if (b2 == 10) {
                    this.f517a = jrVar.m507a();
                    a(true);
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else if (s != 2) {
                if (s == 3 && b2 == 11) {
                    this.f519a = jrVar.m513a();
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            } else {
                if (b2 == 8) {
                    this.f518a = hx.a(jrVar.m506a());
                    jrVar.g();
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
        jrVar.f();
        if (m375a()) {
            m374a();
            return;
        }
        throw new js("Required field 'collectedAt' was not found in serialized data! Struct: " + toString());
    }

    public void a(boolean z) {
        this.f520a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m375a() {
        return this.f520a.get(0);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m376a(id idVar) {
        if (idVar == null || this.f517a != idVar.f517a) {
            return false;
        }
        boolean b2 = b();
        boolean b3 = idVar.b();
        if ((b2 || b3) && (!b2 || !b3 || !this.f518a.equals(idVar.f518a))) {
            return false;
        }
        boolean c2 = c();
        boolean c3 = idVar.c();
        if (c2 || c3) {
            return c2 && c3 && this.f519a.equals(idVar.f519a);
        }
        return true;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m374a();
        jrVar.a(f516a);
        jrVar.a(f9077a);
        jrVar.a(this.f517a);
        jrVar.b();
        if (this.f518a != null) {
            jrVar.a(f9078b);
            jrVar.mo504a(this.f518a.a());
            jrVar.b();
        }
        if (this.f519a != null) {
            jrVar.a(f9079c);
            jrVar.a(this.f519a);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    public boolean b() {
        return this.f518a != null;
    }

    public boolean c() {
        return this.f519a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof id)) {
            return m376a((id) obj);
        }
        return false;
    }

    public int hashCode() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("DataCollectionItem(");
        sb.append("collectedAt:");
        sb.append(this.f517a);
        sb.append(", ");
        sb.append("collectionType:");
        hx hxVar = this.f518a;
        if (hxVar == null) {
            sb.append("null");
        } else {
            sb.append(hxVar);
        }
        sb.append(", ");
        sb.append("content:");
        String str = this.f519a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }
}
