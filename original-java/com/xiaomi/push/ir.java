package com.xiaomi.push;

import java.io.Serializable;
import java.nio.ByteBuffer;
import java.util.BitSet;

/* loaded from: classes2.dex */
public class ir implements jg<ir, Object>, Serializable, Cloneable {

    /* renamed from: a  reason: collision with other field name */
    public hv f647a;

    /* renamed from: a  reason: collision with other field name */
    public ii f648a;

    /* renamed from: a  reason: collision with other field name */
    public ik f649a;

    /* renamed from: a  reason: collision with other field name */
    public String f650a;

    /* renamed from: a  reason: collision with other field name */
    public ByteBuffer f651a;

    /* renamed from: b  reason: collision with other field name */
    public String f654b;

    /* renamed from: a  reason: collision with other field name */
    private static final jw f646a = new jw("XmPushActionContainer");

    /* renamed from: a  reason: collision with root package name */
    private static final jo f9116a = new jo("", (byte) 8, 1);

    /* renamed from: b  reason: collision with root package name */
    private static final jo f9117b = new jo("", (byte) 2, 2);

    /* renamed from: c  reason: collision with root package name */
    private static final jo f9118c = new jo("", (byte) 2, 3);
    private static final jo d = new jo("", (byte) 11, 4);
    private static final jo e = new jo("", (byte) 11, 5);
    private static final jo f = new jo("", (byte) 11, 6);
    private static final jo g = new jo("", (byte) 12, 7);
    private static final jo h = new jo("", (byte) 12, 8);

    /* renamed from: a  reason: collision with other field name */
    private BitSet f652a = new BitSet(2);

    /* renamed from: a  reason: collision with other field name */
    public boolean f653a = true;

    /* renamed from: b  reason: collision with other field name */
    public boolean f655b = true;

    /* renamed from: a */
    public int compareTo(ir irVar) {
        int a2;
        int a3;
        int a4;
        int a5;
        int a6;
        int a7;
        int a8;
        int a9;
        if (!ir.class.equals(irVar.getClass())) {
            return ir.class.getName().compareTo(irVar.getClass().getName());
        }
        int compareTo = Boolean.valueOf(m434a()).compareTo(Boolean.valueOf(irVar.m434a()));
        if (compareTo != 0) {
            return compareTo;
        }
        if (m434a() && (a9 = jh.a(this.f647a, irVar.f647a)) != 0) {
            return a9;
        }
        int compareTo2 = Boolean.valueOf(c()).compareTo(Boolean.valueOf(irVar.c()));
        if (compareTo2 != 0) {
            return compareTo2;
        }
        if (c() && (a8 = jh.a(this.f653a, irVar.f653a)) != 0) {
            return a8;
        }
        int compareTo3 = Boolean.valueOf(d()).compareTo(Boolean.valueOf(irVar.d()));
        if (compareTo3 != 0) {
            return compareTo3;
        }
        if (d() && (a7 = jh.a(this.f655b, irVar.f655b)) != 0) {
            return a7;
        }
        int compareTo4 = Boolean.valueOf(e()).compareTo(Boolean.valueOf(irVar.e()));
        if (compareTo4 != 0) {
            return compareTo4;
        }
        if (e() && (a6 = jh.a(this.f651a, irVar.f651a)) != 0) {
            return a6;
        }
        int compareTo5 = Boolean.valueOf(f()).compareTo(Boolean.valueOf(irVar.f()));
        if (compareTo5 != 0) {
            return compareTo5;
        }
        if (f() && (a5 = jh.a(this.f650a, irVar.f650a)) != 0) {
            return a5;
        }
        int compareTo6 = Boolean.valueOf(g()).compareTo(Boolean.valueOf(irVar.g()));
        if (compareTo6 != 0) {
            return compareTo6;
        }
        if (g() && (a4 = jh.a(this.f654b, irVar.f654b)) != 0) {
            return a4;
        }
        int compareTo7 = Boolean.valueOf(h()).compareTo(Boolean.valueOf(irVar.h()));
        if (compareTo7 != 0) {
            return compareTo7;
        }
        if (h() && (a3 = jh.a(this.f649a, irVar.f649a)) != 0) {
            return a3;
        }
        int compareTo8 = Boolean.valueOf(i()).compareTo(Boolean.valueOf(irVar.i()));
        if (compareTo8 != 0) {
            return compareTo8;
        }
        if (!i() || (a2 = jh.a(this.f648a, irVar.f648a)) == 0) {
            return 0;
        }
        return a2;
    }

    public hv a() {
        return this.f647a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public ii m430a() {
        return this.f648a;
    }

    public ir a(hv hvVar) {
        this.f647a = hvVar;
        return this;
    }

    public ir a(ii iiVar) {
        this.f648a = iiVar;
        return this;
    }

    public ir a(ik ikVar) {
        this.f649a = ikVar;
        return this;
    }

    public ir a(String str) {
        this.f650a = str;
        return this;
    }

    public ir a(ByteBuffer byteBuffer) {
        this.f651a = byteBuffer;
        return this;
    }

    public ir a(boolean z) {
        this.f653a = z;
        m433a(true);
        return this;
    }

    /* renamed from: a  reason: collision with other method in class */
    public String m431a() {
        return this.f650a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m432a() {
        if (this.f647a == null) {
            throw new js("Required field 'action' was not present! Struct: " + toString());
        } else if (this.f651a == null) {
            throw new js("Required field 'pushAction' was not present! Struct: " + toString());
        } else if (this.f649a == null) {
            throw new js("Required field 'target' was not present! Struct: " + toString());
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
                if (!c()) {
                    throw new js("Required field 'encryptAction' was not found in serialized data! Struct: " + toString());
                } else if (d()) {
                    m432a();
                    return;
                } else {
                    throw new js("Required field 'isRequest' was not found in serialized data! Struct: " + toString());
                }
            } else {
                switch (a2.f828a) {
                    case 1:
                        if (b2 == 8) {
                            this.f647a = hv.a(jrVar.m506a());
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 2:
                        if (b2 == 2) {
                            this.f653a = jrVar.m517a();
                            m433a(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 3:
                        if (b2 == 2) {
                            this.f655b = jrVar.m517a();
                            m437b(true);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 4:
                        if (b2 == 11) {
                            this.f651a = jrVar.m514a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 5:
                        if (b2 == 11) {
                            this.f650a = jrVar.m513a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 6:
                        if (b2 == 11) {
                            this.f654b = jrVar.m513a();
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 7:
                        if (b2 == 12) {
                            ik ikVar = new ik();
                            this.f649a = ikVar;
                            ikVar.a(jrVar);
                            continue;
                            jrVar.g();
                        }
                        break;
                    case 8:
                        if (b2 == 12) {
                            ii iiVar = new ii();
                            this.f648a = iiVar;
                            iiVar.a(jrVar);
                            continue;
                            jrVar.g();
                        }
                        break;
                }
                ju.a(jrVar, b2);
                jrVar.g();
            }
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public void m433a(boolean z) {
        this.f652a.set(0, z);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m434a() {
        return this.f647a != null;
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m435a(ir irVar) {
        if (irVar == null) {
            return false;
        }
        boolean a2 = m434a();
        boolean a3 = irVar.m434a();
        if (((a2 || a3) && (!a2 || !a3 || !this.f647a.equals(irVar.f647a))) || this.f653a != irVar.f653a || this.f655b != irVar.f655b) {
            return false;
        }
        boolean e2 = e();
        boolean e3 = irVar.e();
        if ((e2 || e3) && (!e2 || !e3 || !this.f651a.equals(irVar.f651a))) {
            return false;
        }
        boolean f2 = f();
        boolean f3 = irVar.f();
        if ((f2 || f3) && (!f2 || !f3 || !this.f650a.equals(irVar.f650a))) {
            return false;
        }
        boolean g2 = g();
        boolean g3 = irVar.g();
        if ((g2 || g3) && (!g2 || !g3 || !this.f654b.equals(irVar.f654b))) {
            return false;
        }
        boolean h2 = h();
        boolean h3 = irVar.h();
        if ((h2 || h3) && (!h2 || !h3 || !this.f649a.m408a(irVar.f649a))) {
            return false;
        }
        boolean i = i();
        boolean i2 = irVar.i();
        if (i || i2) {
            return i && i2 && this.f648a.m400a(irVar.f648a);
        }
        return true;
    }

    /* renamed from: a  reason: collision with other method in class */
    public byte[] m436a() {
        a(jh.a(this.f651a));
        return this.f651a.array();
    }

    public ir b(String str) {
        this.f654b = str;
        return this;
    }

    public ir b(boolean z) {
        this.f655b = z;
        m437b(true);
        return this;
    }

    public String b() {
        return this.f654b;
    }

    @Override // com.xiaomi.push.jg
    public void b(jr jrVar) {
        m432a();
        jrVar.a(f646a);
        if (this.f647a != null) {
            jrVar.a(f9116a);
            jrVar.mo504a(this.f647a.a());
            jrVar.b();
        }
        jrVar.a(f9117b);
        jrVar.a(this.f653a);
        jrVar.b();
        jrVar.a(f9118c);
        jrVar.a(this.f655b);
        jrVar.b();
        if (this.f651a != null) {
            jrVar.a(d);
            jrVar.a(this.f651a);
            jrVar.b();
        }
        if (this.f650a != null && f()) {
            jrVar.a(e);
            jrVar.a(this.f650a);
            jrVar.b();
        }
        if (this.f654b != null && g()) {
            jrVar.a(f);
            jrVar.a(this.f654b);
            jrVar.b();
        }
        if (this.f649a != null) {
            jrVar.a(g);
            this.f649a.b(jrVar);
            jrVar.b();
        }
        if (this.f648a != null && i()) {
            jrVar.a(h);
            this.f648a.b(jrVar);
            jrVar.b();
        }
        jrVar.c();
        jrVar.m516a();
    }

    /* renamed from: b  reason: collision with other method in class */
    public void m437b(boolean z) {
        this.f652a.set(1, z);
    }

    /* renamed from: b  reason: collision with other method in class */
    public boolean m438b() {
        return this.f653a;
    }

    public boolean c() {
        return this.f652a.get(0);
    }

    public boolean d() {
        return this.f652a.get(1);
    }

    public boolean e() {
        return this.f651a != null;
    }

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof ir)) {
            return m435a((ir) obj);
        }
        return false;
    }

    public boolean f() {
        return this.f650a != null;
    }

    public boolean g() {
        return this.f654b != null;
    }

    public boolean h() {
        return this.f649a != null;
    }

    public int hashCode() {
        return 0;
    }

    public boolean i() {
        return this.f648a != null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("XmPushActionContainer(");
        sb.append("action:");
        hv hvVar = this.f647a;
        if (hvVar == null) {
            sb.append("null");
        } else {
            sb.append(hvVar);
        }
        sb.append(", ");
        sb.append("encryptAction:");
        sb.append(this.f653a);
        sb.append(", ");
        sb.append("isRequest:");
        sb.append(this.f655b);
        sb.append(", ");
        sb.append("pushAction:");
        ByteBuffer byteBuffer = this.f651a;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            jh.a(byteBuffer, sb);
        }
        if (f()) {
            sb.append(", ");
            sb.append("appid:");
            String str = this.f650a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (g()) {
            sb.append(", ");
            sb.append("packageName:");
            String str2 = this.f654b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("target:");
        ik ikVar = this.f649a;
        if (ikVar == null) {
            sb.append("null");
        } else {
            sb.append(ikVar);
        }
        if (i()) {
            sb.append(", ");
            sb.append("metaInfo:");
            ii iiVar = this.f648a;
            if (iiVar == null) {
                sb.append("null");
            } else {
                sb.append(iiVar);
            }
        }
        sb.append(")");
        return sb.toString();
    }
}
