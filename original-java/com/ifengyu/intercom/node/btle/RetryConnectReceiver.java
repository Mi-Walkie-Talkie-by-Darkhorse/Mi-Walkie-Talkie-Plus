package com.ifengyu.intercom.node.btle;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ifengyu.intercom.b.s;

public class RetryConnectReceiver extends BroadcastReceiver {
    private BtleCentralService a;

    protected RetryConnectReceiver(BtleCentralService btleCentralService) {
        this.a = btleCentralService;
    }

    public void onReceive(Context context, Intent intent) {
        s.a("RetryConnectReceiver", "onReceive " + intent);
        if (this.a != null && "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION".equals(intent.getAction())) {
            this.a.a(intent.getData().getAuthority());
        }
    }

    public IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION");
        intentFilter.addDataScheme("content");
        return intentFilter;
    }
}
