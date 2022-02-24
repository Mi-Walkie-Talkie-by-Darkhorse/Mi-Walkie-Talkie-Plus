package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.ir;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class z extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9368a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f1016a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(int i, XMPushService xMPushService, ir irVar) {
        super(i);
        this.f1016a = xMPushService;
        this.f9368a = irVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send ack message for obsleted message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            ir a2 = w.a((Context) this.f1016a, this.f9368a);
            a2.m430a().a("message_obsleted", "1");
            af.a(this.f1016a, a2);
        } catch (gu e) {
            b.a(e);
            this.f1016a.a(10, e);
        }
    }
}
