package com.xiaomi.push.service.receivers;

import android.content.Context;

class a implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ NetworkStatusReceiver b;

    a(NetworkStatusReceiver networkStatusReceiver, Context context) {
        this.b = networkStatusReceiver;
        this.a = context;
    }

    public void run() {
        this.b.a(this.a);
    }
}
