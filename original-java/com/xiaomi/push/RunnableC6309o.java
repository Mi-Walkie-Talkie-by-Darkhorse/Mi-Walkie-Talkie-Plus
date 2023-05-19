package com.xiaomi.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;

/* renamed from: com.xiaomi.push.o */
/* loaded from: classes2.dex */
class RunnableC6309o implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ComponentName f22831a;

    /* renamed from: a */
    final /* synthetic */ Context f22832a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC6309o(Context context, ComponentName componentName) {
        this.f22832a = context;
        this.f22831a = componentName;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageManager packageManager = this.f22832a.getPackageManager();
            if (packageManager.getComponentEnabledSetting(this.f22831a) != 2) {
                packageManager.setComponentEnabledSetting(this.f22831a, 2, 1);
            }
        } catch (Throwable th) {
            AbstractC5876b.m4147a("close static register of network status receiver failed:" + th);
        }
    }
}
