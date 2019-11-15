package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class PushServiceReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent(context, PushMessageHandler.class);
        intent2.putExtras(intent);
        intent2.setAction(intent.getAction());
        try {
            context.startService(intent2);
        } catch (Exception e) {
        }
    }
}
