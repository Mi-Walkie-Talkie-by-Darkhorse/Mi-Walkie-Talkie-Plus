package com.xiaomi.push.service;

import com.xiaomi.push.service.XMPushService;
import com.xiaomi.push.service.bd;

/* loaded from: classes2.dex */
class bg extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ bd.b.c f9281a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bg(bd.b.c cVar, int i) {
        super(i);
        this.f9281a = cVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "check peer job";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        bd a2 = bd.a();
        bd.b bVar = this.f9281a.f954a;
        if (a2.a(bVar.g, bVar.f950b).f941a == null) {
            XMPushService xMPushService = bd.b.this.f943a;
            bd.b bVar2 = this.f9281a.f954a;
            xMPushService.a(bVar2.g, bVar2.f950b, 2, null, null);
        }
    }
}
