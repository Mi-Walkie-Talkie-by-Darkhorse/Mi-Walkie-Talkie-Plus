package com.xiaomi.push.service;

import com.xiaomi.push.service.C6381bd;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.be */
/* loaded from: classes2.dex */
public class C6388be implements C6381bd.C6383b.InterfaceC6384a {

    /* renamed from: a */
    final /* synthetic */ C6381bd.C6383b f23057a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C6388be(C6381bd.C6383b c6383b) {
        this.f23057a = c6383b;
    }

    @Override // com.xiaomi.push.service.C6381bd.C6383b.InterfaceC6384a
    /* renamed from: a */
    public void mo1478a(C6381bd.EnumC6387c enumC6387c, C6381bd.EnumC6387c enumC6387c2, int i) {
        XMPushService.C6319c c6319c;
        XMPushService.C6319c c6319c2;
        if (enumC6387c2 == C6381bd.EnumC6387c.binding) {
            XMPushService xMPushService = this.f23057a.f23028a;
            c6319c2 = this.f23057a.f23027a;
            xMPushService.m1782a(c6319c2, 60000L);
            return;
        }
        XMPushService xMPushService2 = this.f23057a.f23028a;
        c6319c = this.f23057a.f23027a;
        xMPushService2.m1752b(c6319c);
    }
}
