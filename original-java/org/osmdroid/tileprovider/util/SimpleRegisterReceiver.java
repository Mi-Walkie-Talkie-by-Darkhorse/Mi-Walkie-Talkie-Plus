package org.osmdroid.tileprovider.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import org.osmdroid.tileprovider.IRegisterReceiver;

public class SimpleRegisterReceiver implements IRegisterReceiver {
    private Context mContext;

    public SimpleRegisterReceiver(Context context) {
        this.mContext = context;
    }

    public Intent registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return this.mContext.registerReceiver(broadcastReceiver, intentFilter);
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        this.mContext.unregisterReceiver(broadcastReceiver);
    }

    public void destroy() {
        this.mContext = null;
    }
}
