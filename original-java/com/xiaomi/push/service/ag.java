package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.Cif;
import com.xiaomi.push.hv;
import com.xiaomi.push.i;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.service.bu;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ag extends bu.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9232a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ r f905a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ag(String str, long j, XMPushService xMPushService, r rVar) {
        super(str, j);
        this.f9232a = xMPushService;
        this.f905a = rVar;
    }

    @Override // com.xiaomi.push.service.bu.a
    void a(bu buVar) {
        String a2 = buVar.a("GAID", "gaid");
        String a3 = i.a((Context) this.f9232a);
        if (!TextUtils.isEmpty(a3) && !TextUtils.equals(a2, a3)) {
            buVar.a("GAID", "gaid", a3);
            iu iuVar = new iu();
            iuVar.b(this.f905a.d);
            iuVar.c(Cif.ClientInfoUpdate.f527a);
            iuVar.a(ba.a());
            iuVar.a(new HashMap());
            iuVar.m446a().put("gaid", a3);
            byte[] a4 = jf.a(af.a(this.f9232a.getPackageName(), this.f905a.d, iuVar, hv.Notification));
            XMPushService xMPushService = this.f9232a;
            xMPushService.a(xMPushService.getPackageName(), a4, true);
        }
    }
}
