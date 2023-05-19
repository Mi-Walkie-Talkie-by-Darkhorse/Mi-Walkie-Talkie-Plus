package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.z */
/* loaded from: classes2.dex */
class C6467z extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6260ir f23249a;

    /* renamed from: a */
    final /* synthetic */ XMPushService f23250a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6467z(int i, XMPushService xMPushService, C6260ir c6260ir) {
        super(i);
        this.f23250a = xMPushService;
        this.f23249a = c6260ir;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send ack message for obsleted message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6260ir m1268a = C6464w.m1268a((Context) this.f23250a, this.f23249a);
            m1268a.m2233a().m2394a("message_obsleted", "1");
            C6346af.m1698a(this.f23250a, m1268a);
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f23250a.m1793a(10, e);
        }
    }
}
