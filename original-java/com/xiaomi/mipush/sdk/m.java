package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.service.module.c;
import com.xiaomi.push.service.module.d;
import com.xiaomi.push.service.module.e;

final class m implements Runnable {
    m() {
    }

    public void run() {
        c a = d.a(MiPushClient.sContext).a(e.MODULE_CDATA);
        if (a != null) {
            try {
                a.a().loadClass("com.xiaomi.push.mpcd.MpcdPlugin").getMethod("main", new Class[]{Context.class}).invoke(null, new Object[]{MiPushClient.sContext});
            } catch (Exception e) {
                b.a("plugin load fail");
            }
        }
    }
}
