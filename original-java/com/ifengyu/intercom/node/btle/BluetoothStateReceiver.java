package com.ifengyu.intercom.node.btle;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ifengyu.intercom.b.s;

public class BluetoothStateReceiver extends BroadcastReceiver {
    private final BtleCentralService a;

    BluetoothStateReceiver(BtleCentralService btleCentralService) {
        this.a = btleCentralService;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        s.b("BluetoothStateReceiver", "Receiver onReceive action: " + action);
        if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
            this.a.a(intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10), intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", 0));
        } else if (action.equals("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED")) {
            s.b("BluetoothStateReceiver", "Connection state:" + intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0));
        }
    }

    public static IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        return intentFilter;
    }
}
