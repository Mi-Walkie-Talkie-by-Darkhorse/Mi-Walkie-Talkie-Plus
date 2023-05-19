package com.xiaomi.push;

import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.gs */
/* loaded from: classes2.dex */
class C6201gs extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ AbstractC6199gq f21777a;

    /* renamed from: a */
    final /* synthetic */ Exception f21778a;

    /* renamed from: b */
    final /* synthetic */ int f21779b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6201gs(AbstractC6199gq abstractC6199gq, int i, int i2, Exception exc) {
        super(i);
        this.f21777a = abstractC6199gq;
        this.f21779b = i2;
        this.f21778a = exc;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "shutdown the connection. " + this.f21779b + ", " + this.f21778a;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        this.f21777a.f21766b.m1793a(this.f21779b, this.f21778a);
    }
}
