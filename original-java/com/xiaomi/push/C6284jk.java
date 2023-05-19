package com.xiaomi.push;

import com.xiaomi.push.C6287jn;

/* renamed from: com.xiaomi.push.jk */
/* loaded from: classes2.dex */
public class C6284jk {

    /* renamed from: a */
    private final AbstractC6292jr f22777a;

    /* renamed from: a */
    private final C6303ka f22778a;

    public C6284jk() {
        this(new C6287jn.C6288a());
    }

    public C6284jk(InterfaceC6294jt interfaceC6294jt) {
        C6303ka c6303ka = new C6303ka();
        this.f22778a = c6303ka;
        this.f22777a = interfaceC6294jt.mo1867a(c6303ka);
    }

    /* renamed from: a */
    public void m1910a(InterfaceC6279jg interfaceC6279jg, byte[] bArr) {
        try {
            this.f22778a.m1865a(bArr);
            interfaceC6279jg.mo1931a(this.f22777a);
        } finally {
            this.f22777a.m1875k();
        }
    }
}
