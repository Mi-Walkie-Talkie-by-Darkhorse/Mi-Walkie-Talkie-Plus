package com.sina.weibo.sdk.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.mi.mimsgsdk.utils.Network;
import org.apache.http.HttpHost;

public class NetStateManager {
    public static NetState a = NetState.Mobile;
    /* access modifiers changed from: private */
    public static Context b;

    public enum NetState {
        Mobile,
        WIFI,
        NOWAY
    }

    public class NetStateReceive extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            NetStateManager.b = context;
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                WifiManager wifiManager = (WifiManager) context.getSystemService(Network.NETWORK_TYPE_WIFI);
                WifiInfo connectionInfo = wifiManager.getConnectionInfo();
                if (!wifiManager.isWifiEnabled() || -1 == connectionInfo.getNetworkId()) {
                    NetStateManager.a = NetState.Mobile;
                }
            }
        }
    }

    public static HttpHost a() {
        Cursor cursor;
        HttpHost httpHost = null;
        Uri parse = Uri.parse("content://telephony/carriers/preferapn");
        if (b != null) {
            cursor = b.getContentResolver().query(parse, null, null, null, null);
        } else {
            cursor = null;
        }
        if (cursor != null && cursor.moveToFirst()) {
            String string = cursor.getString(cursor.getColumnIndex("proxy"));
            if (string != null && string.trim().length() > 0) {
                httpHost = new HttpHost(string, 80);
            }
            cursor.close();
        }
        return httpHost;
    }
}
