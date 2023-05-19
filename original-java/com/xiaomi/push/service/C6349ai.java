package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.mipush.sdk.ErrorCode;
import com.xiaomi.push.service.C6381bd;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.ai */
/* loaded from: classes2.dex */
public class C6349ai implements C6381bd.C6383b.InterfaceC6384a {

    /* renamed from: a */
    final /* synthetic */ XMPushService f22955a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6349ai(XMPushService xMPushService) {
        this.f22955a = xMPushService;
    }

    @Override // com.xiaomi.push.service.C6381bd.C6383b.InterfaceC6384a
    /* renamed from: a */
    public void mo1478a(C6381bd.EnumC6387c enumC6387c, C6381bd.EnumC6387c enumC6387c2, int i) {
        if (enumC6387c2 == C6381bd.EnumC6387c.binded) {
            C6463v.m1273a(this.f22955a);
            C6463v.m1271b(this.f22955a);
        } else if (enumC6387c2 == C6381bd.EnumC6387c.unbind) {
            AbstractC5876b.m4147a("onChange unbind");
            C6463v.m1275a(this.f22955a, ErrorCode.ERROR_SERVICE_UNAVAILABLE, " the push is not connected.");
        }
    }
}
