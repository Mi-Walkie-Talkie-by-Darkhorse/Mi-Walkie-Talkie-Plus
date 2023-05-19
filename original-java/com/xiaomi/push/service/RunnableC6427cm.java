package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.service.cm */
/* loaded from: classes2.dex */
class RunnableC6427cm implements Runnable {

    /* renamed from: a */
    final /* synthetic */ XMPushService f23170a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6427cm(XMPushService xMPushService) {
        this.f23170a = xMPushService;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageManager packageManager = this.f23170a.getApplicationContext().getPackageManager();
            ComponentName componentName = new ComponentName(this.f23170a.getApplicationContext(), "com.xiaomi.push.service.receivers.PingReceiver");
            if (packageManager.getComponentEnabledSetting(componentName) != 2) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            }
        } catch (Throwable th) {
            AbstractC5876b.m4147a("[Alarm] disable ping receiver may be failure. " + th);
        }
    }
}
