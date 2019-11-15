package com.ifengyu.library.util;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.text.TextUtils;
import com.ifengyu.library.base.BaseApp;

/* compiled from: BluetoothUtils */
public class a {
    private static final String a = a.class.getSimpleName();
    private static BluetoothAdapter b;

    public static Context a() {
        return BaseApp.l();
    }

    public static void a(BroadcastReceiver broadcastReceiver) {
        b(broadcastReceiver);
    }

    private static void b(BroadcastReceiver broadcastReceiver) {
        a().unregisterReceiver(broadcastReceiver);
    }

    public static BluetoothAdapter b() {
        if (b == null) {
            b = BluetoothAdapter.getDefaultAdapter();
        }
        return b;
    }

    public static BluetoothDevice a(String str) {
        if (!TextUtils.isEmpty(str)) {
            BluetoothAdapter b2 = b();
            if (b2 != null) {
                return b2.getRemoteDevice(str);
            }
        }
        return null;
    }

    public static boolean c() {
        return 2 == b().getProfileConnectionState(1);
    }
}
