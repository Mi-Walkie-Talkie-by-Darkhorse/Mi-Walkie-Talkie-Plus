package com.xiaomi.mipush.sdk;

import android.content.Context;

final class l implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;

    l(Context context, String str, String str2) {
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    public void run() {
        MiPushClient.initialize(this.a, this.b, this.c, null);
    }
}
