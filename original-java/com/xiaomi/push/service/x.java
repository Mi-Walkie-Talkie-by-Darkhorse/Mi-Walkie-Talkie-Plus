package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.ir;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class x extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9366a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f1014a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(int i, XMPushService xMPushService, ir irVar) {
        super(i);
        this.f1014a = xMPushService;
        this.f9366a = irVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send app absent message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            af.a(this.f1014a, af.a(this.f9366a.b(), this.f9366a.m431a()));
        } catch (gu e) {
            b.a(e);
            this.f1014a.a(10, e);
        }
    }
}
