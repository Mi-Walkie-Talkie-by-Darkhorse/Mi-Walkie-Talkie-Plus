package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.util.Log;

final class j implements Runnable {
    final /* synthetic */ Context a;

    j(Context context) {
        this.a = context;
    }

    public void run() {
        try {
            PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 4612);
            i.c(this.a);
            i.d(this.a, packageInfo);
            i.c(this.a, packageInfo);
        } catch (Throwable th) {
            Log.e("ManifestChecker", "", th);
        }
    }
}
