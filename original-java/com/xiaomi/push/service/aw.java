package com.xiaomi.push.service;

import android.util.Base64;
import com.xiaomi.channel.commonutils.android.j;
import com.xiaomi.channel.commonutils.misc.i.b;
import com.xiaomi.network.HttpUtils;
import com.xiaomi.push.protobuf.a.C0069a;
import com.xiaomi.push.service.av.a;

class aw extends b {
    boolean a = false;
    final /* synthetic */ av b;

    aw(av avVar) {
        this.b = avVar;
    }

    public void b() {
        try {
            C0069a b2 = C0069a.b(Base64.decode(HttpUtils.a(j.a(), "http://resolver.msg.xiaomi.net/psc/?t=a", null), 10));
            if (b2 != null) {
                this.b.c = b2;
                this.a = true;
                this.b.i();
            }
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a("fetch config failure: " + e.getMessage());
        }
    }

    public void c() {
        a[] aVarArr;
        this.b.d = null;
        if (this.a) {
            synchronized (this.b) {
                aVarArr = (a[]) this.b.b.toArray(new a[this.b.b.size()]);
            }
            for (a a2 : aVarArr) {
                a2.a(this.b.c);
            }
        }
    }
}
