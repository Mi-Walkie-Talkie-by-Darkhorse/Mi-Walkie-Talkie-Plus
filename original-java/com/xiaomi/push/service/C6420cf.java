package com.xiaomi.push.service;

import com.xiaomi.push.AbstractC6211ha;
import com.xiaomi.push.C6173fy;
import com.xiaomi.push.InterfaceC6197go;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.cf */
/* loaded from: classes2.dex */
class C6420cf implements InterfaceC6197go {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23158a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6420cf(XMPushService xMPushService) {
        this.f23158a = xMPushService;
    }

    @Override // com.xiaomi.push.InterfaceC6197go
    /* renamed from: a */
    public void mo1389a(C6173fy c6173fy) {
        XMPushService xMPushService = this.f23158a;
        xMPushService.m1783a(new XMPushService.C6320d(c6173fy));
    }

    @Override // com.xiaomi.push.InterfaceC6197go
    /* renamed from: a */
    public void mo1388a(AbstractC6211ha abstractC6211ha) {
        XMPushService xMPushService = this.f23158a;
        xMPushService.m1783a(new XMPushService.C6329m(abstractC6211ha));
    }
}
