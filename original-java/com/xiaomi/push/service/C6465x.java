package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.x */
/* loaded from: classes2.dex */
class C6465x extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6260ir f23245a;

    /* renamed from: a */
    final /* synthetic */ XMPushService f23246a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6465x(int i, XMPushService xMPushService, C6260ir c6260ir) {
        super(i);
        this.f23246a = xMPushService;
        this.f23245a = c6260ir;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send app absent message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6346af.m1698a(this.f23246a, C6346af.m1691a(this.f23245a.m2219b(), this.f23245a.m2232a()));
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f23246a.m1793a(10, e);
        }
    }
}
