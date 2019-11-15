package com.xiaomi.mipush.sdk;

import com.xiaomi.mipush.sdk.MiTinyDataClient.a.C0064a;

class s implements Runnable {
    final /* synthetic */ C0064a a;

    s(C0064a aVar) {
        this.a = aVar;
    }

    public void run() {
        if (this.a.a.size() != 0) {
            this.a.b();
        } else if (this.a.d != null) {
            this.a.d.cancel(false);
            this.a.d = null;
        }
    }
}
