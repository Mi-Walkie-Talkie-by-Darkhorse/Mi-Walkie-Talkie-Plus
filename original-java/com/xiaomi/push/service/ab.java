package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.ir;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class ab extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9227a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f898a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f899a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab(int i, XMPushService xMPushService, ir irVar, String str) {
        super(i);
        this.f898a = xMPushService;
        this.f9227a = irVar;
        this.f899a = str;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send app absent ack message for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            ir a2 = w.a((Context) this.f898a, this.f9227a);
            a2.m430a().a("absent_target_package", this.f899a);
            af.a(this.f898a, a2);
        } catch (gu e) {
            b.a(e);
            this.f898a.a(10, e);
        }
    }
}
