package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.ab */
/* loaded from: classes2.dex */
class C6340ab extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6260ir f22939a;

    /* renamed from: a */
    final /* synthetic */ XMPushService f22940a;

    /* renamed from: a */
    final /* synthetic */ String f22941a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6340ab(int i, XMPushService xMPushService, C6260ir c6260ir, String str) {
        super(i);
        this.f22940a = xMPushService;
        this.f22939a = c6260ir;
        this.f22941a = str;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send app absent ack message for message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6260ir m1268a = C6464w.m1268a((Context) this.f22940a, this.f22939a);
            m1268a.m2233a().m2394a("absent_target_package", this.f22941a);
            C6346af.m1698a(this.f22940a, m1268a);
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f22940a.m1793a(10, e);
        }
    }
}
