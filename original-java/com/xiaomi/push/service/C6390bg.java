package com.xiaomi.push.service;

import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.bg */
/* loaded from: classes2.dex */
class C6390bg extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6381bd.C6383b.C6386c f23059a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6390bg(C6381bd.C6383b.C6386c c6386c, int i) {
        super(i);
        this.f23059a = c6386c;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "check peer job";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        C6381bd m1509a = C6381bd.m1509a();
        C6381bd.C6383b c6383b = this.f23059a.f23051a;
        if (m1509a.m1498a(c6383b.f23042g, c6383b.f23036b).f23026a == null) {
            XMPushService xMPushService = C6381bd.C6383b.this.f23028a;
            C6381bd.C6383b c6383b2 = this.f23059a.f23051a;
            xMPushService.m1763a(c6383b2.f23042g, c6383b2.f23036b, 2, null, null);
        }
    }
}
