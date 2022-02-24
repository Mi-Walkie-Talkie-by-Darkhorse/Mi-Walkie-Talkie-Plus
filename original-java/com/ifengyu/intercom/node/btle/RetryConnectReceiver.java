package com.ifengyu.intercom.node.btle;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.ifengyu.intercom.i.z;

/* loaded from: classes2.dex */
public class RetryConnectReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private BtleCentralService f5877a;

    /* JADX INFO: Access modifiers changed from: protected */
    public RetryConnectReceiver(BtleCentralService btleCentralService) {
        this.f5877a = btleCentralService;
    }

    public IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION");
        intentFilter.addDataScheme("content");
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        z.d("RetryConnectReceiver", "onReceive " + intent);
        if (this.f5877a != null && "com.ifengyu.intercom.node.bluetooth.RETRY_CONNECTION".equals(intent.getAction())) {
            this.f5877a.a(intent.getData().getAuthority());
        }
    }
}
