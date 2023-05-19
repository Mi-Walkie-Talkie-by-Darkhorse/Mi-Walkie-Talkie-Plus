package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.bf */
/* loaded from: classes2.dex */
class C6389bf extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ C6381bd.C6383b.C6386c f23058a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6389bf(C6381bd.C6383b.C6386c c6386c, int i) {
        super(i);
        this.f23058a = c6386c;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "clear peer job";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        C6381bd.C6383b.C6386c c6386c = this.f23058a;
        if (c6386c.f23050a == c6386c.f23051a.f23026a) {
            AbstractC5876b.m4141b("clean peer, chid = " + this.f23058a.f23051a.f23042g);
            this.f23058a.f23051a.f23026a = null;
        }
    }
}
