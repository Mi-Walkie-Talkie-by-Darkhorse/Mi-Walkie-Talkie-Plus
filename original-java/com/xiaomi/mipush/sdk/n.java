package com.xiaomi.mipush.sdk;

import android.text.TextUtils;
import com.xiaomi.channel.commonutils.android.e;
import com.xiaomi.channel.commonutils.string.d;
import com.xiaomi.xmpush.thrift.a;
import com.xiaomi.xmpush.thrift.af;
import java.util.HashMap;
import java.util.Map;

final class n implements Runnable {
    n() {
    }

    public void run() {
        if (e.c(MiPushClient.sContext) != null) {
            af afVar = new af();
            afVar.b(c.a(MiPushClient.sContext).c());
            afVar.c("client_info_update");
            afVar.a(MiPushClient.generatePacketID());
            afVar.a((Map<String, String>) new HashMap<String,String>());
            String a = d.a(e.c(MiPushClient.sContext));
            String e = e.e(MiPushClient.sContext);
            if (!TextUtils.isEmpty(e)) {
                a = a + Constants.ACCEPT_TIME_SEPARATOR_SP + e;
            }
            afVar.i().put(Constants.EXTRA_KEY_IMEI_MD5, a);
            int b = e.b();
            if (b >= 0) {
                afVar.i().put("space_id", Integer.toString(b));
            }
            z.a(MiPushClient.sContext).a(afVar, a.Notification, false, null);
        }
    }
}
