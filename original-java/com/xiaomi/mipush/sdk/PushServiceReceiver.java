package com.xiaomi.mipush.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* loaded from: classes2.dex */
public class PushServiceReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intent intent2 = new Intent(context, PushMessageHandler.class);
        intent2.putExtras(intent);
        intent2.setAction(intent.getAction());
        PushMessageHandler.a(context, intent2);
    }
}
