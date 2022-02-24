package com.xiaomi.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.xiaomi.channel.commonutils.logger.b;

/* loaded from: classes2.dex */
class o implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ComponentName f9185a;

    /* renamed from: a  reason: collision with other field name */
    final /* synthetic */ Context f837a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, ComponentName componentName) {
        this.f837a = context;
        this.f9185a = componentName;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            PackageManager packageManager = this.f837a.getPackageManager();
            if (packageManager.getComponentEnabledSetting(this.f9185a) != 2) {
                packageManager.setComponentEnabledSetting(this.f9185a, 2, 1);
            }
        } catch (Throwable th) {
            b.m1a("close static register of network status receiver failed:" + th);
        }
    }
}
