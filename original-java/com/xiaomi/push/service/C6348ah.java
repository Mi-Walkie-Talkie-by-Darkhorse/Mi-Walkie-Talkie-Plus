package com.xiaomi.push.service;

import android.text.TextUtils;
import com.xiaomi.push.C6000az;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.C6407bu;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.ah */
/* loaded from: classes2.dex */
public class C6348ah extends C6407bu.AbstractRunnableC6408a {

    /* renamed from: a */
    final /* synthetic */ XMPushService f22953a;

    /* renamed from: a */
    final /* synthetic */ C6457r f22954a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6348ah(String str, long j, XMPushService xMPushService, C6457r c6457r) {
        super(str, j);
        this.f22953a = xMPushService;
        this.f22954a = c6457r;
    }

    @Override // com.xiaomi.push.service.C6407bu.AbstractRunnableC6408a
    /* renamed from: a */
    void mo1420a(C6407bu c6407bu) {
        C6000az m3729a = C6000az.m3729a(this.f22953a);
        String m1422a = c6407bu.m1422a("MSAID", "msaid");
        String str = m3729a.m3726b() + m3729a.mo3684a() + m3729a.m3725c() + m3729a.m3724d();
        if (TextUtils.isEmpty(str) || TextUtils.equals(m1422a, str)) {
            return;
        }
        c6407bu.m1421a("MSAID", "msaid", str);
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(this.f22954a.f23223d);
        c6263iu.m2176c(EnumC6248if.ClientInfoUpdate.f22236a);
        c6263iu.m2189a(C6377ba.m1518a());
        c6263iu.m2186a(new HashMap());
        m3729a.m3727a(c6263iu.m2195a());
        byte[] m1933a = C6278jf.m1933a(C6346af.m1690a(this.f22953a.getPackageName(), this.f22954a.f23223d, c6263iu, EnumC6237hv.Notification));
        XMPushService xMPushService = this.f22953a;
        xMPushService.m1762a(xMPushService.getPackageName(), m1933a, true);
    }
}
