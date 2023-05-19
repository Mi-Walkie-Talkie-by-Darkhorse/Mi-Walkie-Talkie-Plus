package com.xiaomi.push.service;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.service.XMPushService;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.service.cl */
/* loaded from: classes2.dex */
public class C6426cl extends XMPushService.AbstractC6326j {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23169a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6426cl(XMPushService xMPushService, int i) {
        super(i);
        this.f23169a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public String mo1244a() {
        return "[Guardian] send parents_guardian_state";
    }

    @Override // com.xiaomi.push.service.XMPushService.AbstractC6326j
    /* renamed from: a */
    public void mo1243a() {
        if (Build.VERSION.SDK_INT >= 17) {
            String string = Settings.Global.getString(this.f23169a.getContentResolver(), "parents_guardian_state");
            C6457r m1294a = C6459s.m1294a((Context) this.f23169a);
            if (m1294a == null) {
                return;
            }
            C6263iu c6263iu = new C6263iu();
            c6263iu.m2180b(m1294a.f23223d);
            c6263iu.m2176c("1".equals(string) ? "kids_mode_on" : "kids_mode_off");
            c6263iu.m2189a(C6377ba.m1518a());
            c6263iu.m2186a(new HashMap());
            byte[] m1933a = C6278jf.m1933a(C6346af.m1690a(this.f23169a.getPackageName(), m1294a.f23223d, c6263iu, EnumC6237hv.Notification));
            XMPushService xMPushService = this.f23169a;
            xMPushService.m1762a(xMPushService.getPackageName(), m1933a, false);
        }
    }
}
