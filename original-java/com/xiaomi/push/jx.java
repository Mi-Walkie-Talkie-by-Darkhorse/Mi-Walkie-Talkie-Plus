package com.xiaomi.push;

import com.xiaomi.push.jn;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class jx extends jn {

    /* renamed from: b  reason: collision with root package name */
    private static int f9174b = 10000;

    /* renamed from: c  reason: collision with root package name */
    private static int f9175c = 10000;
    private static int d = 10000;
    private static int e = 10485760;
    private static int f = 104857600;

    /* loaded from: classes2.dex */
    public static class a extends jn.a {
        public a() {
            super(false, true);
        }

        public a(boolean z, boolean z2, int i) {
            super(z, z2, i);
        }

        @Override // com.xiaomi.push.jn.a, com.xiaomi.push.jt
        public jr a(kb kbVar) {
            jx jxVar = new jx(kbVar, ((jn.a) this).f826a, this.f9164b);
            int i = ((jn.a) this).f9163a;
            if (i != 0) {
                jxVar.b(i);
            }
            return jxVar;
        }
    }

    public jx(kb kbVar, boolean z, boolean z2) {
        super(kbVar, z, z2);
    }

    @Override // com.xiaomi.push.jn, com.xiaomi.push.jr
    /* renamed from: a */
    public jp mo519a() {
        byte a2 = mo519a();
        int a3 = mo519a();
        if (a3 <= f9175c) {
            return new jp(a2, a3);
        }
        throw new js(3, "Thrift list size " + a3 + " out of range!");
    }

    @Override // com.xiaomi.push.jn, com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public jq mo519a() {
        byte a2 = mo519a();
        byte a3 = mo519a();
        int a4 = mo519a();
        if (a4 <= f9174b) {
            return new jq(a2, a3, a4);
        }
        throw new js(3, "Thrift map size " + a4 + " out of range!");
    }

    @Override // com.xiaomi.push.jn, com.xiaomi.push.jr
    /* renamed from: a */
    public jv mo519a() {
        byte a2 = mo519a();
        int a3 = mo519a();
        if (a3 <= d) {
            return new jv(a2, a3);
        }
        throw new js(3, "Thrift set size " + a3 + " out of range!");
    }

    @Override // com.xiaomi.push.jn, com.xiaomi.push.jr
    /* renamed from: a  reason: collision with other method in class */
    public String mo519a() {
        int a2 = mo519a();
        if (a2 > e) {
            throw new js(3, "Thrift string size " + a2 + " out of range!");
        } else if (((jr) this).f9169a.b() < a2) {
            return mo504a(a2);
        } else {
            try {
                String str = new String(((jr) this).f9169a.a(), ((jr) this).f9169a.mo523a(), a2, "UTF-8");
                ((jr) this).f9169a.a(a2);
                return str;
            } catch (UnsupportedEncodingException unused) {
                throw new jl("JVM DOES NOT SUPPORT UTF-8");
            }
        }
    }

    @Override // com.xiaomi.push.jn, com.xiaomi.push.jr
    /* renamed from: a */
    public ByteBuffer mo519a() {
        int a2 = mo519a();
        if (a2 <= f) {
            c(a2);
            if (((jr) this).f9169a.b() >= a2) {
                ByteBuffer wrap = ByteBuffer.wrap(((jr) this).f9169a.a(), ((jr) this).f9169a.mo523a(), a2);
                ((jr) this).f9169a.a(a2);
                return wrap;
            }
            byte[] bArr = new byte[a2];
            ((jr) this).f9169a.b(bArr, 0, a2);
            return ByteBuffer.wrap(bArr);
        }
        throw new js(3, "Thrift binary size " + a2 + " out of range!");
    }
}
