package com.xiaomi.tinyData;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.channel.commonutils.network.d;
import com.xiaomi.push.service.ay;
import com.xiaomi.xmpush.thrift.e;
import java.util.Arrays;

public class c implements Runnable {
    d a;
    e b;
    String c;

    public c(d dVar) {
        this.a = dVar;
    }

    public void run() {
        boolean z;
        if (this.b.f) {
            this.b.a("push_sdk_channel");
        }
        if (TextUtils.isEmpty(this.b.l())) {
            this.b.f(ay.a());
        }
        this.b.b(System.currentTimeMillis());
        e b2 = this.a.b();
        String str = null;
        if (!d.d(this.a.a())) {
            str = "No network";
            z = true;
        } else {
            z = false;
        }
        if (!z && b2 == null) {
            str = "mUploader is null";
            z = true;
        }
        if (!z && !b2.a(this.b, this.c)) {
            str = "mUploader refuse upload";
            z = true;
        }
        if (z) {
            b.c("A tinyData is added to pending list. Pending Reason is " + str + ". " + this.b.toString());
            this.a.a(this.b, this.c);
            return;
        }
        b.c("A tinyData is uploaded immediately." + this.b.toString());
        String j = this.b.j();
        if (TextUtils.isEmpty(j)) {
            j = this.c;
        }
        b2.a(Arrays.asList(new e[]{this.b}), this.c, j);
    }
}
