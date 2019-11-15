package com.xiaomi.push.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.smack.util.e;

class bi extends BroadcastReceiver {
    final /* synthetic */ XMPushService a;

    bi(XMPushService xMPushService) {
        this.a = xMPushService;
    }

    public void onReceive(Context context, Intent intent) {
        if (TextUtils.equals("com.xiaomi.metoknlp.geofencing.state_change", intent.getAction())) {
            String stringExtra = intent.getStringExtra("Describe");
            String stringExtra2 = intent.getStringExtra("State");
            if (!TextUtils.isEmpty(stringExtra)) {
                if (!this.a.a(stringExtra2, stringExtra, context)) {
                    stringExtra2 = "Unknown";
                    b.a(" updated geofence statue about geo_id:" + stringExtra + " falied. current_statue:" + stringExtra2);
                }
                e.a((Runnable) new bj(this, context, stringExtra, stringExtra2));
                b.c("ownresilt结果:state= " + stringExtra2 + "\n describe=" + stringExtra);
            }
        }
    }
}
