package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.gu;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ch extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9315a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f986a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ byte[] f987a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ch(XMPushService xMPushService, int i, String str, byte[] bArr) {
        super(i);
        this.f9315a = xMPushService;
        this.f986a = str;
        this.f987a = bArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "send mi push message";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        try {
            af.a(this.f9315a, this.f986a, this.f987a);
        } catch (gu e) {
            b.a(e);
            this.f9315a.a(10, e);
        }
    }
}
