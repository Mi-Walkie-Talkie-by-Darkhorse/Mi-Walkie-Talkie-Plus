package com.ifengyu.intercom.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.ifengyu.intercom.i.z;

/* loaded from: classes2.dex */
public class AutoStarterReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        z.d("AutoStarterReceiver", "on startup. intent = " + intent.getAction());
        Intent intent2 = new Intent("com.ifengyu.intercom.ACTION_STARTUP");
        intent2.setClass(context, MiTalkiControlService.class);
        if (Build.VERSION.SDK_INT >= 26) {
            context.startForegroundService(intent2);
        } else {
            context.startService(intent2);
        }
    }
}
