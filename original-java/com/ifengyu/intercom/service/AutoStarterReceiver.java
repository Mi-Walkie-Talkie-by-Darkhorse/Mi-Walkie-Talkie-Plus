package com.ifengyu.intercom.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ifengyu.intercom.b.s;

public class AutoStarterReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        s.a("AutoStarterReceiver", "on startup. intent = " + intent.getAction());
        Intent intent2 = new Intent("com.ifengyu.intercom.ACTION_STARTUP");
        intent2.setClass(context, MiTalkiControlService.class);
        context.startService(intent2);
    }
}
