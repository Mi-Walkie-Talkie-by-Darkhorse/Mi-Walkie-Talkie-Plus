package com.xiaomi.smack;

import com.xiaomi.network.HostManager;

class k implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ h b;

    k(h hVar, String str) {
        this.b = hVar;
        this.a = str;
    }

    public void run() {
        HostManager.getInstance().getFallbacksByHost(this.a, true);
    }
}
