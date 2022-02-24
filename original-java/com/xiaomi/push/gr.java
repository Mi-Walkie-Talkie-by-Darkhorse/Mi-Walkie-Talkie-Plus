package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class gr extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ long f9002a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ gq f446a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ long f9003b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gr(gq gqVar, int i, long j, long j2) {
        super(i);
        this.f446a = gqVar;
        this.f9002a = j;
        this.f9003b = j2;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "check the ping-pong." + this.f9003b;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        Thread.yield();
        if (this.f446a.m320c() && !this.f446a.a(this.f9002a)) {
            et.a(this.f446a.f9000b).d();
            this.f446a.f9000b.a(22, (Exception) null);
        }
    }
}
