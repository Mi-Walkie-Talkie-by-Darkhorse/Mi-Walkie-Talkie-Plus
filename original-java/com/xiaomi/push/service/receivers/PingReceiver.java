package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6152fh;
import com.xiaomi.push.service.AbstractC6391bh;
import com.xiaomi.push.service.ServiceClient;
import com.xiaomi.push.service.XMPushService;

/* loaded from: classes2.dex */
public class PingReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        AbstractC5876b.m4139c(intent.getPackage() + " is the package name");
        if (XMPushService.m1736e()) {
            return;
        }
        if (!AbstractC6391bh.f23091q.equals(intent.getAction())) {
            AbstractC5876b.m4147a("cancel the old ping timer");
            C6152fh.m2935a();
        } else if (TextUtils.equals(context.getPackageName(), intent.getPackage())) {
            AbstractC5876b.m4139c("Ping XMChannelService on timer");
            try {
                Intent intent2 = new Intent(context, XMPushService.class);
                intent2.putExtra("time_stamp", System.currentTimeMillis());
                intent2.setAction("com.xiaomi.push.timer");
                ServiceClient.getInstance(context).startServiceSafely(intent2);
            } catch (Exception e) {
                AbstractC5876b.m4143a(e);
            }
        }
    }
}
