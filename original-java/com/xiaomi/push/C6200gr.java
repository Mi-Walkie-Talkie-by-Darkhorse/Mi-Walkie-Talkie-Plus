package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.gr */
/* loaded from: classes2.dex */
class C6200gr extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ long f21774a;

    /* renamed from: a */
    final /* synthetic */ AbstractC6199gq f21775a;

    /* renamed from: b */
    final /* synthetic */ long f21776b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6200gr(AbstractC6199gq abstractC6199gq, int i, long j, long j2) {
        super(i);
        this.f21775a = abstractC6199gq;
        this.f21774a = j;
        this.f21776b = j2;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "check the ping-pong." + this.f21776b;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        Thread.yield();
        if (!this.f21775a.m2743c() || this.f21775a.m2757a(this.f21774a)) {
            return;
        }
        C6135et.m3055a(this.f21775a.f21766b).m3050d();
        this.f21775a.f21766b.m1793a(22, (Exception) null);
    }
}
