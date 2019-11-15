package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL;
import com.ifengyu.intercom.protos.SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT;
import com.ifengyu.intercom.ui.adapter.b.C0031b;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.seal.SealSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.WaterRippleView;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.squareup.otto.Subscribe;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.Timer;
import java.util.TimerTask;

public class SealBleEarConnectActivity extends BaseActivity implements OnClickListener, C0031b {
    private a a;
    private BluetoothAdapter b;
    private RecyclerView c;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.adapter.b d;
    /* access modifiers changed from: private */
    public HashMap<String, BtEarBean> q = new HashMap<>();
    /* access modifiers changed from: private */
    public ArrayList<Entry<String, BtEarBean>> r = new ArrayList<>(this.q.entrySet());
    private Timer s;
    private TimerTask t;
    /* access modifiers changed from: private */
    public Handler u;
    /* access modifiers changed from: private */
    public WaterRippleView v;
    /* access modifiers changed from: private */
    public TextView w;
    /* access modifiers changed from: private */
    public TextView x;
    /* access modifiers changed from: private */
    public boolean y;
    private final BroadcastReceiver z = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.bluetooth.device.action.FOUND".equals(action)) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                String address = bluetoothDevice.getAddress();
                if (!TextUtils.isEmpty(address) && bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1024) {
                    s.d(SealBleEarConnectActivity.this.e, "found bt ear address:" + address);
                    SealBleEarConnectActivity.this.q.put(address, new BtEarBean(bluetoothDevice, intent.getShortExtra("android.bluetooth.device.extra.RSSI", Short.MIN_VALUE)));
                }
            } else if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(action)) {
                s.c(SealBleEarConnectActivity.this.e, "Receiver: scan bt ear stated");
                SealBleEarConnectActivity.this.w.setText(SealBleEarConnectActivity.this.getString(R.string.scan_bt_ear_ing));
                SealBleEarConnectActivity.this.x.setText(SealBleEarConnectActivity.this.getString(R.string.please_sure_enter_conn_bt_ear_mode));
                SealBleEarConnectActivity.this.v.a((int) R.drawable.bluetooth_icon_gif);
            } else if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                s.c(SealBleEarConnectActivity.this.e, "Receiver: scan bt ear finished");
                if (SealBleEarConnectActivity.this.q.size() == 0) {
                    SealBleEarConnectActivity.this.w.setText(R.string.not_scan_any_bt_ear);
                    SealBleEarConnectActivity.this.x.setText(R.string.please_sure_enter_conn_bt_ear_mode);
                    SealBleEarConnectActivity.this.q();
                } else if (!SealBleEarConnectActivity.this.y) {
                    SealBleEarConnectActivity.this.w.setText(R.string.scan_complete);
                    SealBleEarConnectActivity.this.x.setText(R.string.please_select_bt_ear);
                } else {
                    SealBleEarConnectActivity.this.y = false;
                }
                SealBleEarConnectActivity.this.v.b((int) R.drawable.bluetooth_icon_normal);
                SealBleEarConnectActivity.this.e();
                SealBleEarConnectActivity.this.f();
            }
        }
    };

    /* renamed from: com.ifengyu.intercom.ui.activity.SealBleEarConnectActivity$5 reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] b = new int[SEAL_BTEAR_OPTION.values().length];

        static {
            try {
                b[SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                b[SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                b[SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            a = new int[SEAL_BTEAR_CONTROL.values().length];
            try {
                a[SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                a[SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                a[SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    private class a implements com.ifengyu.intercom.node.i.a {
        private a() {
        }

        public void b(String str) {
        }

        public void c(String str) {
        }

        public void a(String str) {
        }

        public void d(String str) {
        }

        public void e(String str) {
        }

        public void f(String str) {
        }
    }

    private static class b extends com.ifengyu.intercom.ui.baseui.a<SealBleEarConnectActivity> {
        private b(SealBleEarConnectActivity sealBleEarConnectActivity) {
            super(sealBleEarConnectActivity);
        }

        public void a(Message message, SealBleEarConnectActivity sealBleEarConnectActivity) {
            switch (message.what) {
                case 1:
                    s.c(sealBleEarConnectActivity.e, "sort list and refresh bt ear recycler");
                    sealBleEarConnectActivity.r.clear();
                    for (Entry add : sealBleEarConnectActivity.q.entrySet()) {
                        sealBleEarConnectActivity.r.add(add);
                    }
                    Collections.sort(sealBleEarConnectActivity.r, new Comparator<Entry<String, BtEarBean>>() {
                        /* renamed from: a */
                        public int compare(Entry<String, BtEarBean> entry, Entry<String, BtEarBean> entry2) {
                            return ((BtEarBean) entry2.getValue()).getRssi() - ((BtEarBean) entry.getValue()).getRssi();
                        }
                    });
                    sealBleEarConnectActivity.d.notifyDataSetChanged();
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_connect_ble_ear);
        this.a = new a();
        this.u = new b();
        s();
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        registerReceiver(this.z, intentFilter);
        this.b = BluetoothAdapter.getDefaultAdapter();
        r();
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().a((Object) this);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
        k.a().a((com.ifengyu.intercom.node.i.a) this.a);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
        UpdateManager.a().d();
        k.a().b((com.ifengyu.intercom.node.i.a) this.a);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().b((Object) this);
        e();
        f();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.z);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.not_fount_my_want_bt_ear /*2131755189*/:
                q();
                return;
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void q() {
        new q(this).b((int) R.string.not_fount_my_want_bt_ear).a(new String[]{getString(R.string.common_retry), getString(R.string.connect_help), getString(R.string.common_cancel)}, new com.ifengyu.intercom.ui.widget.dialog.q.b() {
            public void a(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case 0:
                        SealBleEarConnectActivity.this.r();
                        return;
                    case 1:
                        SealBleEarConnectActivity.this.a(SealBtEarHelpActivity.class);
                        return;
                    default:
                        return;
                }
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void r() {
        aa.f();
        this.q.clear();
        this.r.clear();
        this.d.a(-1);
        this.d.notifyDataSetChanged();
        c();
    }

    public void a(View view, int i, Entry<String, BtEarBean> entry) {
        f();
        e();
        this.w.setText(R.string.connect_bt_ear_ing);
        this.x.setText(R.string.please_kaojin_between_device_btear);
        this.d.notifyDataSetChanged();
        aa.a((BtEarBean) entry.getValue());
        this.y = true;
    }

    @Subscribe
    public void receiveBtEarScanControlResp(SEAL_BtEarScanControl sEAL_BtEarScanControl) {
        s.c(this.e, "receiveBtEarScanControlResp");
        SEAL_BTEAR_SCAN_RESULT result = sEAL_BtEarScanControl.getResult();
        switch (sEAL_BtEarScanControl.getOption()) {
            case SEAL_BTEAR_SCAN_START:
                if (result == SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK) {
                    s.c(this.e, "open Classic Bluetooth success");
                    return;
                }
                s.c(this.e, "open Classic Bluetooth error");
                aa.f();
                return;
            default:
                return;
        }
    }

    @Subscribe
    public void receiveBtEarConnectStateResp(final SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        s.c(this.e, "receiveBtEarConnectStateResp");
        runOnUiThread(new Runnable() {
            public void run() {
                SEAL_BTEAR_CONN_RESULT result = sEAL_BtEarConnectState.getResult();
                switch (AnonymousClass5.b[sEAL_BtEarConnectState.getOption().ordinal()]) {
                    case 2:
                        if (result == SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                            v.a((CharSequence) SealBleEarConnectActivity.this.getString(R.string.connect_success), false);
                            aa.g();
                            SealBleEarConnectActivity.this.a(SealSettingActivity.class);
                            return;
                        } else if (result == SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_ERROR) {
                            SealBleEarConnectActivity.this.w.setText(SealBleEarConnectActivity.this.getString(R.string.connect_fail));
                            SealBleEarConnectActivity.this.x.setText(SealBleEarConnectActivity.this.getString(R.string.please_select_new_bt_ear_device));
                            v.a((CharSequence) SealBleEarConnectActivity.this.getString(R.string.connect_fail), false);
                            return;
                        } else if (result == SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_TIMEOUT) {
                            SealBleEarConnectActivity.this.w.setText(SealBleEarConnectActivity.this.getString(R.string.connect_fail));
                            SealBleEarConnectActivity.this.x.setText(SealBleEarConnectActivity.this.getString(R.string.please_select_new_bt_ear_device));
                            v.a((CharSequence) SealBleEarConnectActivity.this.getString(R.string.connect_time_out), false);
                            return;
                        } else {
                            return;
                        }
                    default:
                        return;
                }
            }
        });
    }

    public void c() {
        s.c(this.e, "startDiscoveryBtEar");
        this.b.startDiscovery();
        d();
    }

    public void d() {
        f();
        this.s = new Timer();
        this.t = new TimerTask() {
            public void run() {
                SealBleEarConnectActivity.this.u.sendMessage(Message.obtain(SealBleEarConnectActivity.this.u, 1));
            }
        };
        this.s.schedule(this.t, 2000, 1000);
    }

    public void e() {
        s.c(this.e, "stopDiscoveryBtEar");
        if (this.b.isDiscovering()) {
            this.b.cancelDiscovery();
        }
    }

    public void f() {
        if (this.s != null) {
            this.s.cancel();
            this.s = null;
        }
        if (this.t != null) {
            this.t.cancel();
            this.t = null;
        }
    }

    private void s() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.not_fount_my_want_bt_ear).setOnClickListener(this);
        this.w = (TextView) findViewById(R.id.major_state);
        this.x = (TextView) findViewById(R.id.minor_state);
        this.v = (WaterRippleView) findViewById(R.id.water_ripple_view);
        this.c = (RecyclerView) findViewById(R.id.scan_recycler);
        this.d = new com.ifengyu.intercom.ui.adapter.b(this, this.r);
        this.d.setOnItemClickListener(this);
        this.c.setAdapter(this.d);
        this.c.setLayoutManager(new LinearLayoutManager(this));
    }
}
