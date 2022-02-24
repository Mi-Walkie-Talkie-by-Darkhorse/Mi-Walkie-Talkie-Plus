package com.xiaomi.push.service;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import com.xiaomi.push.hv;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.service.XMPushService;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class cl extends XMPushService.j {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9319a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cl(XMPushService xMPushService, int i) {
        super(i);
        this.f9319a = xMPushService;
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a */
    public String mo657a() {
        return "[Guardian] send parents_guardian_state";
    }

    @Override // com.xiaomi.push.service.XMPushService.j
    /* renamed from: a  reason: collision with other method in class */
    public void mo657a() {
        if (Build.VERSION.SDK_INT >= 17) {
            String string = Settings.Global.getString(this.f9319a.getContentResolver(), "parents_guardian_state");
            r a2 = s.m648a((Context) this.f9319a);
            if (a2 != null) {
                iu iuVar = new iu();
                iuVar.b(a2.d);
                iuVar.c("1".equals(string) ? "kids_mode_on" : "kids_mode_off");
                iuVar.a(ba.a());
                iuVar.a(new HashMap());
                byte[] a3 = jf.a(af.a(this.f9319a.getPackageName(), a2.d, iuVar, hv.Notification));
                XMPushService xMPushService = this.f9319a;
                xMPushService.a(xMPushService.getPackageName(), a3, false);
            }
        }
    }
}
