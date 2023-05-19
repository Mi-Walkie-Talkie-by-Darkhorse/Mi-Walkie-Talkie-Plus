package com.xiaomi.push;

import com.xiaomi.push.C6287jn;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* renamed from: com.xiaomi.push.jx */
/* loaded from: classes2.dex */
public class C6298jx extends C6287jn {

    /* renamed from: b */
    private static int f22812b = 10000;

    /* renamed from: c */
    private static int f22813c = 10000;

    /* renamed from: d */
    private static int f22814d = 10000;

    /* renamed from: e */
    private static int f22815e = 10485760;

    /* renamed from: f */
    private static int f22816f = 104857600;

    /* renamed from: com.xiaomi.push.jx$a */
    /* loaded from: classes2.dex */
    public static class C6299a extends C6287jn.C6288a {
        public C6299a() {
            super(false, true);
        }

        public C6299a(boolean z, boolean z2, int i) {
            super(z, z2, i);
        }

        @Override // com.xiaomi.push.C6287jn.C6288a, com.xiaomi.push.InterfaceC6294jt
        /* renamed from: a */
        public AbstractC6292jr mo1867a(AbstractC6304kb abstractC6304kb) {
            C6298jx c6298jx = new C6298jx(abstractC6304kb, ((C6287jn.C6288a) this).f22796a, this.f22797b);
            int i = ((C6287jn.C6288a) this).f22795a;
            if (i != 0) {
                c6298jx.m1906b(i);
            }
            return c6298jx;
        }
    }

    public C6298jx(AbstractC6304kb abstractC6304kb, boolean z, boolean z2) {
        super(abstractC6304kb, z, z2);
    }

    @Override // com.xiaomi.push.C6287jn, com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6290jp mo1872a() {
        byte mo1904a = mo1904a();
        int mo1902a = mo1902a();
        if (mo1902a <= f22813c) {
            return new C6290jp(mo1904a, mo1902a);
        }
        throw new C6293js(3, "Thrift list size " + mo1902a + " out of range!");
    }

    @Override // com.xiaomi.push.C6287jn, com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6291jq mo1871a() {
        byte mo1904a = mo1904a();
        byte mo1904a2 = mo1904a();
        int mo1902a = mo1902a();
        if (mo1902a <= f22812b) {
            return new C6291jq(mo1904a, mo1904a2, mo1902a);
        }
        throw new C6293js(3, "Thrift map size " + mo1902a + " out of range!");
    }

    @Override // com.xiaomi.push.C6287jn, com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public C6296jv mo1870a() {
        byte mo1904a = mo1904a();
        int mo1902a = mo1902a();
        if (mo1902a <= f22814d) {
            return new C6296jv(mo1904a, mo1902a);
        }
        throw new C6293js(3, "Thrift set size " + mo1902a + " out of range!");
    }

    @Override // com.xiaomi.push.C6287jn, com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public String mo1869a() {
        int mo1902a = mo1902a();
        if (mo1902a > f22815e) {
            throw new C6293js(3, "Thrift string size " + mo1902a + " out of range!");
        } else if (((AbstractC6292jr) this).f22806a.mo1858b() >= mo1902a) {
            try {
                String str = new String(((AbstractC6292jr) this).f22806a.mo1862a(), ((AbstractC6292jr) this).f22806a.mo1863a(), mo1902a, "UTF-8");
                ((AbstractC6292jr) this).f22806a.mo1861a(mo1902a);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new C6285jl("JVM DOES NOT SUPPORT UTF-8");
            }
        } else {
            return m1908a(mo1902a);
        }
    }

    @Override // com.xiaomi.push.C6287jn, com.xiaomi.push.AbstractC6292jr
    /* renamed from: a */
    public ByteBuffer mo1868a() {
        int mo1902a = mo1902a();
        if (mo1902a > f22816f) {
            throw new C6293js(3, "Thrift binary size " + mo1902a + " out of range!");
        }
        m1905c(mo1902a);
        if (((AbstractC6292jr) this).f22806a.mo1858b() >= mo1902a) {
            ByteBuffer wrap = ByteBuffer.wrap(((AbstractC6292jr) this).f22806a.mo1862a(), ((AbstractC6292jr) this).f22806a.mo1863a(), mo1902a);
            ((AbstractC6292jr) this).f22806a.mo1861a(mo1902a);
            return wrap;
        }
        byte[] bArr = new byte[mo1902a];
        ((AbstractC6292jr) this).f22806a.m1857b(bArr, 0, mo1902a);
        return ByteBuffer.wrap(bArr);
    }
}
