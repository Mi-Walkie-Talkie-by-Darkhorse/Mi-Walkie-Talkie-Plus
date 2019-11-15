package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.misc.g.a;
import com.xiaomi.push.service.aj;
import com.xiaomi.push.service.ak;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.ar;
import com.xiaomi.xmpush.thrift.g;
import com.xiaomi.xmpush.thrift.p;
import com.xiaomi.xmpush.thrift.s;
import com.xiaomi.xmpush.thrift.z;

public class t extends a {
    private Context a;

    public t(Context context) {
        this.a = context;
    }

    public int a() {
        return 2;
    }

    public void run() {
        aj a2 = aj.a(this.a);
        z zVar = new z();
        zVar.a(ak.a(a2, g.MISC_CONFIG));
        zVar.b(ak.a(a2, g.PLUGIN_CONFIG));
        af afVar = new af("-1", false);
        afVar.c(p.DailyCheckClientConfig.T);
        afVar.a(ar.a(zVar));
        z.a(this.a).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, (s) null);
    }
}
