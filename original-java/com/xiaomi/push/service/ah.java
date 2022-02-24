package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.push.Cif;
import com.xiaomi.push.az;
import com.xiaomi.push.hv;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.service.bu;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ah extends bu.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9233a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ r f906a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ah(String str, long j, XMPushService xMPushService, r rVar) {
        super(str, j);
        this.f9233a = xMPushService;
        this.f906a = rVar;
    }

    @Override // com.xiaomi.push.service.bu.a
    void a(bu buVar) {
        az a2 = az.a(this.f9233a);
        String a3 = buVar.a("MSAID", "msaid");
        String str = a2.b() + a2.mo92a() + a2.c() + a2.d();
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(a3, str)) {
            buVar.a("MSAID", "msaid", str);
            iu iuVar = new iu();
            iuVar.b(this.f906a.d);
            iuVar.c(Cif.ClientInfoUpdate.f527a);
            iuVar.a(ba.a());
            iuVar.a(new HashMap());
            a2.a(iuVar.m446a());
            byte[] a4 = jf.a(af.a(this.f9233a.getPackageName(), this.f906a.d, iuVar, hv.Notification));
            XMPushService xMPushService = this.f9233a;
            xMPushService.a(xMPushService.getPackageName(), a4, true);
        }
    }
}
