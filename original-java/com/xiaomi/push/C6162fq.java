package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.fq */
/* loaded from: classes2.dex */
class C6162fq extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6161fp f21648a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6162fq(C6161fp c6161fp, int i) {
        super(i);
        this.f21648a = c6161fp;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "Handling bind stats";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        this.f21648a.m2878c();
    }
}
