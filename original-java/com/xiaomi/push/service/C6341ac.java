package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.ac */
/* loaded from: classes2.dex */
class C6341ac extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6260ir f22942a;

    /* renamed from: a */
    final /* synthetic */ XMPushService f22943a;

    /* renamed from: a */
    final /* synthetic */ String f22944a;

    /* renamed from: b */
    final /* synthetic */ String f22945b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6341ac(int i, XMPushService xMPushService, C6260ir c6260ir, String str, String str2) {
        super(i);
        this.f22943a = xMPushService;
        this.f22942a = c6260ir;
        this.f22944a = str;
        this.f22945b = str2;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send wrong message ack for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6260ir m1268a = C6464w.m1268a((Context) this.f22943a, this.f22942a);
            m1268a.f22465a.m2394a("error", this.f22944a);
            m1268a.f22465a.m2394a("reason", this.f22945b);
            C6346af.m1698a(this.f22943a, m1268a);
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f22943a.m1793a(10, e);
        }
    }
}
