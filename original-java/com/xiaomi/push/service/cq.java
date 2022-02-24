package com.xiaomi.push.service;

import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class cq extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9324a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cq(XMPushService xMPushService, Handler handler) {
        super(handler);
        this.f9324a = xMPushService;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        boolean g;
        super.onChange(z);
        g = this.f9324a.m545g();
        b.m1a("ExtremePowerMode:" + g);
        if (g) {
            XMPushService xMPushService = this.f9324a;
            xMPushService.a(new XMPushService.g(23, null));
            return;
        }
        this.f9324a.a(true);
    }
}
