package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;

final class o implements Runnable {
    final /* synthetic */ String[] a;
    final /* synthetic */ Context b;

    o(String[] strArr, Context context) {
        this.a = strArr;
        this.b = context;
    }

    public void run() {
        String[] strArr;
        try {
            for (String str : this.a) {
                if (!TextUtils.isEmpty(str)) {
                    PackageInfo packageInfo = this.b.getPackageManager().getPackageInfo(str, 4);
                    if (packageInfo != null) {
                        MiPushClient.awakePushServiceByPackageInfo(this.b, packageInfo);
                    }
                }
            }
        } catch (Throwable th) {
            b.a(th);
        }
    }
}
