package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6203gu;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.ch */
/* loaded from: classes2.dex */
public class C6422ch extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23163a;

    /* renamed from: a */
    final /* synthetic */ String f23164a;

    /* renamed from: a */
    final /* synthetic */ byte[] f23165a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6422ch(XMPushService xMPushService, int i, String str, byte[] bArr) {
        super(i);
        this.f23163a = xMPushService;
        this.f23164a = str;
        this.f23165a = bArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "send mi push message";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        try {
            C6346af.m1695a(this.f23163a, this.f23164a, this.f23165a);
        } catch (C6203gu e) {
            AbstractC5876b.m4143a(e);
            this.f23163a.m1793a(10, e);
        }
    }
}
