package com.xiaomi.push.service;

import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6016bj;

/* renamed from: com.xiaomi.push.service.ck */
/* loaded from: classes2.dex */
class RunnableC6425ck implements Runnable {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23168a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6425ck(XMPushService xMPushService) {
        this.f23168a = xMPushService;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f23168a.f22892a = true;
        try {
            AbstractC5876b.m4147a("try to trigger the wifi digest broadcast.");
            Object systemService = this.f23168a.getApplicationContext().getSystemService("MiuiWifiService");
            if (systemService != null) {
                C6016bj.m3640b(systemService, "sendCurrentWifiDigestInfo", new Object[0]);
            }
        } catch (Throwable unused) {
        }
    }
}
