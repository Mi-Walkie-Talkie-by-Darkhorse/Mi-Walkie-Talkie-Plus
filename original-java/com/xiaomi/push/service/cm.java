package com.xiaomi.push.service;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
class cm implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ XMPushService f9320a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cm(XMPushService xMPushService) {
        this.f9320a = xMPushService;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageManager packageManager = this.f9320a.getApplicationContext().getPackageManager();
            ComponentName componentName = new ComponentName(this.f9320a.getApplicationContext(), "com.xiaomi.push.service.receivers.PingReceiver");
            if (packageManager.getComponentEnabledSetting(componentName) != 2) {
                packageManager.setComponentEnabledSetting(componentName, 2, 1);
            }
        } catch (Throwable th) {
            b.m1a("[Alarm] disable ping receiver may be failure. " + th);
        }
    }
}
