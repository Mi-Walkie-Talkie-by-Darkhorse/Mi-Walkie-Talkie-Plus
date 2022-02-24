package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class ci extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9316a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ci(XMPushService xMPushService, int i) {
        super(i);
        this.f9316a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "disconnect for service destroy.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        if (this.f9316a.f861a != null) {
            this.f9316a.f861a.b(15, (Exception) null);
            this.f9316a.f861a = null;
        }
    }
}
