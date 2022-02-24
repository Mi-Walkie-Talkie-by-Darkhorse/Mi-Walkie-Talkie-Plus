package com.xiaomi.push.service;

import com.xiaomi.push.bi;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class cs extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9326a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cs(XMPushService xMPushService, int i) {
        super(i);
        this.f9326a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "prepare the mi push account.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        af.a(this.f9326a);
        if (bi.b(this.f9326a)) {
            this.f9326a.a(true);
        }
    }
}
