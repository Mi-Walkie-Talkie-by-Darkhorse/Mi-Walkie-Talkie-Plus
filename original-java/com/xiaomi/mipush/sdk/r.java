package com.xiaomi.mipush.sdk;

import com.xiaomi.mipush.sdk.MiTinyDataClient.a.C0064a;
import com.xiaomi.xmpush.thrift.e;

class r implements Runnable {
    final /* synthetic */ e a;
    final /* synthetic */ C0064a b;

    r(C0064a aVar, e eVar) {
        this.b = aVar;
        this.a = eVar;
    }

    public void run() {
        this.b.a.add(this.a);
        this.b.a();
    }
}
