package com.xiaomi.push.service;

import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.cq */
/* loaded from: classes2.dex */
class C6431cq extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23174a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6431cq(XMPushService xMPushService, Handler handler) {
        super(handler);
        this.f23174a = xMPushService;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        boolean m1731g;
        super.onChange(z);
        m1731g = this.f23174a.m1731g();
        AbstractC5876b.m4147a("ExtremePowerMode:" + m1731g);
        if (!m1731g) {
            this.f23174a.m1761a(true);
            return;
        }
        XMPushService xMPushService = this.f23174a;
        xMPushService.m1783a(new XMPushService.C6323g(23, null));
    }
}
