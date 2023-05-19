package com.xiaomi.push.service;

import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.cp */
/* loaded from: classes2.dex */
class C6430cp implements C6381bd.InterfaceC6382a {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23173a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6430cp(XMPushService xMPushService) {
        this.f23173a = xMPushService;
    }

    @Override // com.xiaomi.push.service.C6381bd.InterfaceC6382a
    /* renamed from: a */
    public void mo1385a() {
        this.f23173a.m1737e();
        if (C6381bd.m1509a().m1510a() <= 0) {
            XMPushService xMPushService = this.f23173a;
            xMPushService.m1783a(new XMPushService.C6323g(12, null));
        }
    }
}
