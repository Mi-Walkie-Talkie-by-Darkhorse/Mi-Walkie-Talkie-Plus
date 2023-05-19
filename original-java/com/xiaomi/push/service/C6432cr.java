package com.xiaomi.push.service;

import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.service.XMPushService;

/* renamed from: com.xiaomi.push.service.cr */
/* loaded from: classes2.dex */
class C6432cr extends ContentObserver {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23175a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6432cr(XMPushService xMPushService, Handler handler) {
        super(handler);
        this.f23175a = xMPushService;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        boolean m1729h;
        super.onChange(z);
        m1729h = this.f23175a.m1729h();
        AbstractC5876b.m4147a("SuperPowerMode:" + m1729h);
        this.f23175a.m1737e();
        if (!m1729h) {
            this.f23175a.m1761a(true);
            return;
        }
        XMPushService xMPushService = this.f23175a;
        xMPushService.m1783a(new XMPushService.C6323g(24, null));
    }
}
