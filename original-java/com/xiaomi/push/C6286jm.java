package com.xiaomi.push;

import com.xiaomi.push.C6287jn;
import java.io.ByteArrayOutputStream;

/* renamed from: com.xiaomi.push.jm */
/* loaded from: classes2.dex */
public class C6286jm {

    /* renamed from: a */
    private AbstractC6292jr f22779a;

    /* renamed from: a */
    private final C6300jy f22780a;

    /* renamed from: a */
    private final ByteArrayOutputStream f22781a;

    public C6286jm() {
        this(new C6287jn.C6288a());
    }

    public C6286jm(InterfaceC6294jt interfaceC6294jt) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f22781a = byteArrayOutputStream;
        C6300jy c6300jy = new C6300jy(byteArrayOutputStream);
        this.f22780a = c6300jy;
        this.f22779a = interfaceC6294jt.mo1867a(c6300jy);
    }

    /* renamed from: a */
    public byte[] m1909a(InterfaceC6279jg interfaceC6279jg) {
        this.f22781a.reset();
        interfaceC6279jg.mo1930b(this.f22779a);
        return this.f22781a.toByteArray();
    }
}
