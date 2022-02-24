package com.xiaomi.push.service;

import android.database.ContentObserver;
import android.os.Handler;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
class cr extends ContentObserver {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9325a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public cr(XMPushService xMPushService, Handler handler) {
        super(handler);
        this.f9325a = xMPushService;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        boolean h;
        super.onChange(z);
        h = this.f9325a.m546h();
        b.m1a("SuperPowerMode:" + h);
        this.f9325a.e();
        if (h) {
            XMPushService xMPushService = this.f9325a;
            xMPushService.a(new XMPushService.g(24, null));
            return;
        }
        this.f9325a.a(true);
    }
}
