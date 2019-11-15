package com.mi.milinkforgame.sdk.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.mi.milinkforgame.sdk.account.MiAccountManager;
import com.mi.milinkforgame.sdk.data.Const.Extra;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.mi.milinkforgame.sdk.debug.MiLinkLog;

public class NetworkReceiver extends BroadcastReceiver {
    private static final String TAG = "NetworkReceiver";

    public void onReceive(Context context, Intent intent) {
        if (MiAccountManager.getInstance().appHasLogined()) {
            MiLinkLog.v(TAG, "network changed, start milink service");
            Intent intent2 = new Intent();
            intent2.putExtra(Extra.OnStartCommandReturn, 1);
            intent2.setComponent(new ComponentName(context, IPC.ServiceName));
            context.startService(intent2);
            return;
        }
        MiLinkLog.v(TAG, "network changed, app not login");
    }
}
