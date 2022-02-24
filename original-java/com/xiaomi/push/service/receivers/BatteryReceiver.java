package com.xiaomi.push.service.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
public class BatteryReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static volatile boolean f9354a = false;

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if ("android.intent.action.ACTION_POWER_CONNECTED".equals(action)) {
                f9354a = true;
            } else if ("android.intent.action.ACTION_POWER_DISCONNECTED".equals(action)) {
                f9354a = false;
            }
        }
    }
}
