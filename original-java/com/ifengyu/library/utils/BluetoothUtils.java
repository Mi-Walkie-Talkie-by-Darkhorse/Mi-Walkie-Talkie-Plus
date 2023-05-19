package com.ifengyu.library.utils;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.text.TextUtils;

/* renamed from: com.ifengyu.library.utils.c */
/* loaded from: classes2.dex */
public class BluetoothUtils {

    /* renamed from: a */
    private static BluetoothAdapter f16381a;

    /* renamed from: a */
    public static BluetoothAdapter m8698a() {
        if (f16381a == null) {
            f16381a = BluetoothAdapter.getDefaultAdapter();
        }
        return f16381a;
    }

    /* renamed from: b */
    public static int m8697b() {
        BluetoothAdapter m8698a = m8698a();
        if (m8698a != null) {
            return m8698a.getState();
        }
        return 0;
    }

    /* renamed from: c */
    public static BluetoothDevice m8696c(String str) {
        BluetoothAdapter m8698a;
        if (TextUtils.isEmpty(str) || (m8698a = m8698a()) == null) {
            return null;
        }
        return m8698a.getRemoteDevice(str);
    }

    /* renamed from: d */
    public static boolean m8695d() {
        return m8697b() == 12;
    }
}
