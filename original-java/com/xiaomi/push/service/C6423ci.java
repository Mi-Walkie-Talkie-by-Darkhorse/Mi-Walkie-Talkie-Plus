package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.ci */
/* loaded from: classes2.dex */
class C6423ci extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23166a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6423ci(XMPushService xMPushService, int i) {
        super(i);
        this.f23166a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "disconnect for service destroy.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        if (this.f23166a.f22874a != null) {
            this.f23166a.f22874a.mo2710b(15, (Exception) null);
            this.f23166a.f22874a = null;
        }
    }
}
