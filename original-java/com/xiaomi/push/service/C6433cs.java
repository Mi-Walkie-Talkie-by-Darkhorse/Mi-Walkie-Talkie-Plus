package com.xiaomi.push.service;

import com.xiaomi.push.C6013bi;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.cs */
/* loaded from: classes2.dex */
public class C6433cs extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23176a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6433cs(XMPushService xMPushService, int i) {
        super(i);
        this.f23176a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "prepare the mi push account.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        C6346af.m1699a(this.f23176a);
        if (C6013bi.m3662b(this.f23176a)) {
            this.f23176a.m1761a(true);
        }
    }
}
