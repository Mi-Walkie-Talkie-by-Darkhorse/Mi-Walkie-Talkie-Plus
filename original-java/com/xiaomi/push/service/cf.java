package com.xiaomi.push.service;

import com.xiaomi.push.fy;
import com.xiaomi.push.go;
import com.xiaomi.push.ha;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class cf implements go {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9312a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cf(XMPushService xMPushService) {
        this.f9312a = xMPushService;
    }

    @Override // com.xiaomi.push.go
    public void a(fy fyVar) {
        XMPushService xMPushService = this.f9312a;
        xMPushService.a(new XMPushService.d(fyVar));
    }

    @Override // com.xiaomi.push.go, com.xiaomi.push.gw
    /* renamed from: a */
    public void mo312a(ha haVar) {
        XMPushService xMPushService = this.f9312a;
        xMPushService.a(new XMPushService.m(haVar));
    }
}
