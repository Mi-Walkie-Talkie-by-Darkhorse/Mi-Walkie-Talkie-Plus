package com.xiaomi.push;

/* renamed from: com.xiaomi.push.dm */
/* loaded from: classes2.dex */
public class C6087dm {

    /* renamed from: a */
    private static volatile C6087dm f21279a;

    /* renamed from: a */
    private InterfaceC6086dl f21280a;

    /* renamed from: a */
    public static C6087dm m3368a() {
        if (f21279a == null) {
            synchronized (C6087dm.class) {
                if (f21279a == null) {
                    f21279a = new C6087dm();
                }
            }
        }
        return f21279a;
    }

    /* renamed from: a */
    public InterfaceC6086dl m3369a() {
        return this.f21280a;
    }

    /* renamed from: a */
    public void m3367a(InterfaceC6086dl interfaceC6086dl) {
        this.f21280a = interfaceC6086dl;
    }
}
