package com.xiaomi.push.service;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.push.C6242i;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.C6407bu;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.ag */
/* loaded from: classes2.dex */
public class C6347ag extends C6407bu.AbstractRunnableC6408a {

    /* renamed from: a */
    final /* synthetic */ XMPushService f22951a;

    /* renamed from: a */
    final /* synthetic */ C6457r f22952a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6347ag(String str, long j, XMPushService xMPushService, C6457r c6457r) {
        super(str, j);
        this.f22951a = xMPushService;
        this.f22952a = c6457r;
    }

    @Override // com.xiaomi.push.service.C6407bu.AbstractRunnableC6408a
    /* renamed from: a */
    void mo1420a(C6407bu c6407bu) {
        String m1422a = c6407bu.m1422a("GAID", "gaid");
        String m2511a = C6242i.m2511a((Context) this.f22951a);
        if (TextUtils.isEmpty(m2511a) || TextUtils.equals(m1422a, m2511a)) {
            return;
        }
        c6407bu.m1421a("GAID", "gaid", m2511a);
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(this.f22952a.f23223d);
        c6263iu.m2176c(EnumC6248if.ClientInfoUpdate.f22236a);
        c6263iu.m2189a(C6377ba.m1518a());
        c6263iu.m2186a(new HashMap());
        c6263iu.m2195a().put("gaid", m2511a);
        byte[] m1933a = C6278jf.m1933a(C6346af.m1690a(this.f22951a.getPackageName(), this.f22952a.f23223d, c6263iu, EnumC6237hv.Notification));
        XMPushService xMPushService = this.f22951a;
        xMPushService.m1762a(xMPushService.getPackageName(), m1933a, true);
    }
}
