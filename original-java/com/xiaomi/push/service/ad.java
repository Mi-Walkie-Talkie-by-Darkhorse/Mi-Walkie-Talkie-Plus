package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.gu;
import com.xiaomi.push.hv;
import com.xiaomi.push.im;
import com.xiaomi.push.ir;
import com.xiaomi.push.iu;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class ad extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ir f9230a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ iu f902a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ XMPushService f903a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(int i, iu iuVar, ir irVar, XMPushService xMPushService) {
        super(i);
        this.f902a = iuVar;
        this.f9230a = irVar;
        this.f903a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send ack message for clear push message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            im imVar = new im();
            imVar.c(Cif.CancelPushMessageACK.f527a);
            imVar.a(this.f902a.m445a());
            imVar.a(this.f902a.a());
            imVar.b(this.f902a.b());
            imVar.e(this.f902a.c());
            imVar.a(0L);
            imVar.d("success clear push message.");
            af.a(this.f903a, af.b(this.f9230a.b(), this.f9230a.m431a(), imVar, hv.Notification));
        } catch (gu e) {
            b.d("clear push message. " + e);
            this.f903a.a(10, e);
        }
    }
}
