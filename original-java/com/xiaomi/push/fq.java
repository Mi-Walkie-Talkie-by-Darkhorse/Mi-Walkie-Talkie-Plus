package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class fq extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ fp f8958a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fq(fp fpVar, int i) {
        super(i);
        this.f8958a = fpVar;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "Handling bind stats";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        this.f8958a.c();
    }
}
