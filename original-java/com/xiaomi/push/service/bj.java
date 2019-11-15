package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import com.xiaomi.push.service.module.b;
import java.util.Iterator;

class bj implements Runnable {
    final /* synthetic */ Context a;
    final /* synthetic */ String b;
    final /* synthetic */ String c;
    final /* synthetic */ bi d;

    bj(bi biVar, Context context, String str, String str2) {
        this.d = biVar;
        this.a = context;
        this.b = str;
        this.c = str2;
    }

    public void run() {
        Iterator it = g.a(this.a).c(this.b).iterator();
        while (it.hasNext()) {
            b bVar = (b) it.next();
            if (XMPushService.a(bVar.e(), this.c)) {
                if (bVar.a() >= System.currentTimeMillis()) {
                    byte[] d2 = bVar.d();
                    if (d2 == null) {
                        com.xiaomi.channel.commonutils.logger.b.a("Geo canBeShownMessage content null");
                    } else {
                        Intent a2 = u.a(d2, System.currentTimeMillis());
                        if (a2 == null) {
                            com.xiaomi.channel.commonutils.logger.b.a("Geo canBeShownMessage intent null");
                        } else {
                            u.a(this.d.a, (String) null, d2, a2, true);
                            if (g.a((Context) this.d.a).a(bVar.b()) == 0) {
                                com.xiaomi.channel.commonutils.logger.b.a("show some exit geofence message. then remove this message failed. message_id:" + bVar.b());
                            }
                        }
                    }
                } else if (g.a(this.a).a(bVar.b()) == 0) {
                    com.xiaomi.channel.commonutils.logger.b.a("XMPushService remove some geofence message failed. message_id:" + bVar.b());
                }
            }
        }
    }
}
