package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;

/* loaded from: classes2.dex */
class bf extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bd.b.c f9280a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bf(bd.b.c cVar, int i) {
        super(i);
        this.f9280a = cVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "clear peer job";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        bd.b.c cVar = this.f9280a;
        if (cVar.f9274a == cVar.f954a.f941a) {
            b.b("clean peer, chid = " + this.f9280a.f954a.g);
            this.f9280a.f954a.f941a = null;
        }
    }
}
