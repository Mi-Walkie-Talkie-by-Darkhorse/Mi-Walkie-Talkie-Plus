package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.android.h;
import com.xiaomi.channel.commonutils.misc.g.a;
import com.xiaomi.push.service.m;
import com.xiaomi.xmpush.thrift.af;
import com.xiaomi.xmpush.thrift.p;
import java.util.HashMap;
import java.util.Map;

public class ag extends a {
    private Context a;

    public ag(Context context) {
        this.a = context;
    }

    public int a() {
        return 13;
    }

    public void run() {
        af afVar = new af(MiPushClient.generatePacketID(), false);
        c a2 = c.a(this.a);
        afVar.c(p.SyncMIID.T);
        afVar.b(a2.c());
        afVar.d(this.a.getPackageName());
        HashMap hashMap = new HashMap();
        h.a((Map<String, String>) hashMap, Constants.EXTRA_KEY_MIID, m.a(this.a).c());
        afVar.h = hashMap;
        z.a(this.a).a(afVar, com.xiaomi.xmpush.thrift.a.Notification, true, null);
    }
}
