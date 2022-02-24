package com.ifengyu.library.a;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;

/* compiled from: BluetoothUtils.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static BluetoothAdapter f7167a;

    public static BluetoothAdapter a() {
        if (f7167a == null) {
            f7167a = BluetoothAdapter.getDefaultAdapter();
        }
        return f7167a;
    }

    public static BluetoothDevice a(String str) {
        BluetoothAdapter a2;
        if (TextUtils.isEmpty(str) || (a2 = a()) == null) {
            return null;
        }
        return a2.getRemoteDevice(str);
    }
}
