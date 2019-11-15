package com.ifengyu.library.util;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import de.greenrobot.event.c;
import java.lang.reflect.Method;

public class BluetoothHeadsetUtils {
    /* access modifiers changed from: private */
    public static final String a = BluetoothHeadsetUtils.class.getSimpleName();
    private Context b;
    /* access modifiers changed from: private */
    public BluetoothDevice c;
    /* access modifiers changed from: private */
    public BluetoothHeadset d;
    private Status e = Status.DISCONNECTED;
    private ServiceListener f = new ServiceListener() {
        public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            c.a(BluetoothHeadsetUtils.a, "onServiceConnected:profile = " + i);
            BluetoothHeadsetUtils.this.d = (BluetoothHeadset) bluetoothProfile;
            if (BluetoothHeadsetUtils.this.c == null) {
                c.a(BluetoothHeadsetUtils.a, "BluetoothDevice is NULL");
            } else if (BluetoothHeadsetUtils.this.d.getConnectionState(BluetoothHeadsetUtils.this.c) == 2) {
                l.a((CharSequence) "HFP已连接");
            } else {
                try {
                    Method method = BluetoothHeadset.class.getMethod("connect", new Class[]{BluetoothDevice.class});
                    method.setAccessible(true);
                    method.invoke(BluetoothHeadsetUtils.this.d, new Object[]{BluetoothHeadsetUtils.this.c});
                } catch (Exception e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        }

        public void onServiceDisconnected(int i) {
            c.a(BluetoothHeadsetUtils.a, "onServiceDisconnected:profile = " + i);
            if (i == 1) {
                BluetoothHeadsetUtils.this.d = null;
            }
        }
    };
    private BroadcastReceiver g = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                c.a(BluetoothHeadsetUtils.a, "Receive action:" + intent.toString());
                if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                    switch (intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0)) {
                        case 10:
                            c.a(BluetoothHeadsetUtils.a, "Bluetooth is off");
                            return;
                        case 12:
                            c.a(BluetoothHeadsetUtils.a, "Bluetooth is on");
                            return;
                        default:
                            return;
                    }
                } else if ("android.bluetooth.device.action.BOND_STATE_CHANGED".equals(action)) {
                    switch (intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", -1)) {
                        case 10:
                            c.a(BluetoothHeadsetUtils.a, "BluetoothDevice unbonded");
                            break;
                        case 11:
                            c.a(BluetoothHeadsetUtils.a, "BluetoothDevice bonding");
                            break;
                        case 12:
                            c.a(BluetoothHeadsetUtils.a, "BluetoothDevice bonded");
                            break;
                    }
                    if (BluetoothHeadsetUtils.this.c != null) {
                        c.a(BluetoothHeadsetUtils.a, "BluetoothDevice bond state:" + BluetoothHeadsetUtils.this.c.getBondState());
                        if (BluetoothHeadsetUtils.this.c.getBondState() == 12) {
                            BluetoothHeadsetUtils.this.c(BluetoothHeadsetUtils.this.c);
                        }
                    }
                } else if ("android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED".equals(action)) {
                    switch (intent.getIntExtra("android.bluetooth.adapter.extra.CONNECTION_STATE", -1)) {
                        case 0:
                            c.a(BluetoothHeadsetUtils.a, "Bluetooth disconnected");
                            return;
                        case 2:
                            c.a(BluetoothHeadsetUtils.a, "Bluetooth connected");
                            return;
                        default:
                            return;
                    }
                } else if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(action)) {
                    switch (intent.getIntExtra("android.bluetooth.profile.extra.STATE", -1)) {
                        case 0:
                            c.a(BluetoothHeadsetUtils.a, "BluetoothHeadset disconnected");
                            BluetoothHeadsetUtils.this.b(Status.DISCONNECTED);
                            return;
                        case 2:
                            c.a(BluetoothHeadsetUtils.a, "BluetoothHeadset connected");
                            BluetoothHeadsetUtils.this.b(Status.CONNECTED);
                            return;
                        default:
                            return;
                    }
                } else if ("android.bluetooth.device.action.PAIRING_REQUEST".equals(action)) {
                    c.a(BluetoothHeadsetUtils.a, "request paring");
                    c.a().e(Status.PARING);
                }
            }
        }
    };

    public enum Status {
        DISCONNECTED,
        CONNECTED,
        CONNECTING,
        BONDING,
        PARING
    }

    public BluetoothHeadsetUtils(Context context) {
        this.b = context.getApplicationContext();
        c();
    }

    public void a() {
        this.b.unregisterReceiver(this.g);
        a.b().closeProfileProxy(1, this.d);
        this.d = null;
        this.b = null;
        this.g = null;
    }

    public void a(Status status) {
        c.a().e(status);
    }

    public void a(BluetoothDevice bluetoothDevice) {
        this.c = bluetoothDevice;
        if (bluetoothDevice.getBondState() == 12) {
            c(bluetoothDevice);
            b(Status.CONNECTING);
        } else if (bluetoothDevice.getBondState() == 10) {
            b(bluetoothDevice);
            b(Status.BONDING);
        }
    }

    /* access modifiers changed from: private */
    public void b(Status status) {
        this.e = status;
        a(this.e);
    }

    @TargetApi(19)
    private void b(BluetoothDevice bluetoothDevice) {
        bluetoothDevice.createBond();
    }

    /* access modifiers changed from: private */
    public void c(BluetoothDevice bluetoothDevice) {
        c.a(a, String.format("connectDevice#device major is %s", new Object[]{d(bluetoothDevice)}));
        if (bluetoothDevice.getBluetoothClass().getMajorDeviceClass() != 1024) {
            c.d(a, "not support audio video!!!");
        }
        a.b().getProfileProxy(this.b, this.f, 1);
    }

    private void c() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.PAIRING_REQUEST");
        this.b.registerReceiver(this.g, intentFilter);
    }

    private String d(BluetoothDevice bluetoothDevice) {
        String str = "未知....";
        switch (bluetoothDevice.getBluetoothClass().getMajorDeviceClass()) {
            case 0:
                return "麦克风";
            case 256:
                return "电脑";
            case 512:
                return "电话";
            case 768:
                return "网络";
            case 1024:
                return "音配设备";
            case 1280:
                return "外部设备";
            case 1536:
                return "镜像";
            case 1792:
                return "穿戴设备";
            case 2048:
                return "玩具";
            case 2304:
                return "健康状况";
            case 7936:
                return "未知的";
            default:
                return str;
        }
    }
}
