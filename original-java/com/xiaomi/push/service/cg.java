package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.ad;
import com.xiaomi.push.gk;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class cg extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9313a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ String f984a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ byte[] f985a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f9314b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cg(XMPushService xMPushService, int i, int i2, String str, byte[] bArr) {
        super(i);
        this.f9313a = xMPushService;
        this.f9314b = i2;
        this.f984a = str;
        this.f985a = bArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "clear account cache.";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        gk gkVar;
        s.m649a((Context) this.f9313a);
        bd.a().m614a("5");
        ad.a(this.f9314b);
        gkVar = this.f9313a.f862a;
        gkVar.c(gk.a());
        b.m1a("clear account and start registration. " + this.f984a);
        this.f9313a.a(this.f985a, this.f984a);
    }
}
