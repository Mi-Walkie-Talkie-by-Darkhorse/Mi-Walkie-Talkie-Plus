package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5971ad;
import com.xiaomi.push.C6193gk;
import com.xiaomi.push.service.XMPushService;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.cg */
/* loaded from: classes2.dex */
public class C6421cg extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23159a;

    /* renamed from: a */
    final /* synthetic */ String f23160a;

    /* renamed from: a */
    final /* synthetic */ byte[] f23161a;

    /* renamed from: b */
    final /* synthetic */ int f23162b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6421cg(XMPushService xMPushService, int i, int i2, String str, byte[] bArr) {
        super(i);
        this.f23159a = xMPushService;
        this.f23162b = i2;
        this.f23160a = str;
        this.f23161a = bArr;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "clear account cache.";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        C6193gk c6193gk;
        C6459s.m1293a((Context) this.f23159a);
        C6381bd.m1509a().m1499a("5");
        C5971ad.m3795a(this.f23162b);
        c6193gk = this.f23159a.f22875a;
        c6193gk.m2729c(C6193gk.m2737a());
        AbstractC5876b.m4147a("clear account and start registration. " + this.f23160a);
        this.f23159a.m1760a(this.f23161a, this.f23160a);
    }
}
