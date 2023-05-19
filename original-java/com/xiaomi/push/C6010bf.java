package com.xiaomi.push;

/* renamed from: com.xiaomi.push.bf */
/* loaded from: classes2.dex */
public class C6010bf implements InterfaceC6012bh {

    /* renamed from: a */
    private final String f21096a;

    /* renamed from: b */
    private final String f21097b;

    public C6010bf(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Name may not be null");
        }
        this.f21096a = str;
        this.f21097b = str2;
    }

    @Override // com.xiaomi.push.InterfaceC6012bh
    /* renamed from: a */
    public String mo3679a() {
        return this.f21096a;
    }

    @Override // com.xiaomi.push.InterfaceC6012bh
    /* renamed from: b */
    public String mo3678b() {
        return this.f21097b;
    }
}
