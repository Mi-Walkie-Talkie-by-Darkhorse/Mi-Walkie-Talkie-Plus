package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.ir;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class aa extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9226a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f897a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa(int i, XMPushService xMPushService, ir irVar) {
        super(i);
        this.f897a = xMPushService;
        this.f9226a = irVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send ack message for unrecognized new miui message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            ir a2 = w.a((Context) this.f897a, this.f9226a);
            a2.m430a().a("miui_message_unrecognized", "1");
            af.a(this.f897a, a2);
        } catch (gu e) {
            b.a(e);
            this.f897a.a(10, e);
        }
    }
}
