package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;

/* loaded from: classes2.dex */
class cp implements bd.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9323a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cp(XMPushService xMPushService) {
        this.f9323a = xMPushService;
    }

    @Override // com.xiaomi.push.service.bd.a
    public void a() {
        this.f9323a.e();
        if (bd.a().m609a() <= 0) {
            XMPushService xMPushService = this.f9323a;
            xMPushService.a(new XMPushService.g(12, null));
        }
    }
}
