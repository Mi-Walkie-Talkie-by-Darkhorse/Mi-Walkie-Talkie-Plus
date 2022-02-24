package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.bj;

/* loaded from: classes2.dex */
class ck implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9318a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ck(XMPushService xMPushService) {
        this.f9318a = xMPushService;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f9318a.f879a = true;
        try {
            b.m1a("try to trigger the wifi digest broadcast.");
            Object systemService = this.f9318a.getApplicationContext().getSystemService("MiuiWifiService");
            if (systemService != null) {
                bj.b(systemService, "sendCurrentWifiDigestInfo", new Object[0]);
            }
        } catch (Throwable unused) {
        }
    }
}
