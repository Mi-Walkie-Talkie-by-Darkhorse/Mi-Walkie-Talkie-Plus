package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.C6255im;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.ad */
/* loaded from: classes2.dex */
class C6342ad extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6260ir f22946a;

    /* renamed from: a */
    final /* synthetic */ C6263iu f22947a;

    /* renamed from: a */
    final /* synthetic */ XMPushService f22948a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6342ad(int i, C6263iu c6263iu, C6260ir c6260ir, XMPushService xMPushService) {
        super(i);
        this.f22947a = c6263iu;
        this.f22946a = c6260ir;
        this.f22948a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send ack message for clear push message.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6255im c6255im = new C6255im();
            c6255im.m2300c(EnumC6248if.CancelPushMessageACK.f22236a);
            c6255im.m2306a(this.f22947a.m2196a());
            c6255im.m2309a(this.f22947a.m2197a());
            c6255im.m2302b(this.f22947a.m2182b());
            c6255im.m2296e(this.f22947a.m2178c());
            c6255im.m2310a(0L);
            c6255im.m2298d("success clear push message.");
            C6346af.m1698a(this.f22948a, C6346af.m1687b(this.f22946a.m2219b(), this.f22946a.m2232a(), c6255im, EnumC6237hv.Notification));
        } catch (C6203gu e) {
            AbstractC5876b.m4138d("clear push message. " + e);
            this.f22948a.m1793a(10, e);
        }
    }
}
