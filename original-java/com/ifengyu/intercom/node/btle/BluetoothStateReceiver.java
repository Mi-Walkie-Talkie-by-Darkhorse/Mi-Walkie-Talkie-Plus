package com.ifengyu.intercom.node.btle;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ifengyu.intercom.i.z;

/* loaded from: classes2.dex */
public class BluetoothStateReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private final BtleCentralService f5864a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BluetoothStateReceiver(BtleCentralService btleCentralService) {
        this.f5864a = btleCentralService;
    }

    public static IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        z.a("BluetoothStateReceiver", "Receiver onReceive action: " + action);
        if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED")) {
            this.f5864a.a(intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10), intent.getIntExtra("android.bluetooth.adapter.extra.PREVIOUS_STATE", 0));
        } else if (action.equals("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED")) {
            int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", 0);
            z.a("BluetoothStateReceiver", "Connection state:" + intExtra);
        }
    }
}
