package com.ifengyu.intercom;

import android.bluetooth.BluetoothDevice;
import com.ifengyu.intercom.i.z;
import no.nordicsemi.android.ble.u2.d;

/* compiled from: lambda */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements d {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ b f5219a = new b();

    private /* synthetic */ b() {
    }

    @Override // no.nordicsemi.android.ble.u2.d
    public final void a(BluetoothDevice bluetoothDevice, int i) {
        z.e("MiTalkiApp", "reconnect failed, status: " + i);
    }
}
