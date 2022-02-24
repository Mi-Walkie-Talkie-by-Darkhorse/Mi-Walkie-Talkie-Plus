package com.ifengyu.intercom.ui.activity;

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
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BtEarBean;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.node.h;
import com.ifengyu.intercom.node.j;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.ui.adapter.b;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.setting.seal.SealSettingActivity;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.WaterRippleView;
import com.ifengyu.intercom.update.dolphin.UpdateManager;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class SealBleEarConnectActivity extends BaseActivity implements View.OnClickListener, b.AbstractC0162b {
    private TextView A;
    private TextView B;
    private boolean C;
    private f q;
    private BluetoothAdapter r;
    private RecyclerView s;
    private com.ifengyu.intercom.ui.adapter.b t;
    private Timer w;
    private TimerTask x;
    private Handler y;
    private WaterRippleView z;
    private HashMap<String, BtEarBean> u = new HashMap<>();
    private ArrayList<Map.Entry<String, BtEarBean>> v = new ArrayList<>(this.u.entrySet());
    private final BroadcastReceiver D = new d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements q.c {
        a() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.q.c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SealBleEarConnectActivity.this.C();
            } else if (i == 1) {
                SealBleEarConnectActivity.this.a(SealBtEarHelpActivity.class);
            }
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_BtEarConnectState f6140a;

        b(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            this.f6140a = sEAL_BtEarConnectState;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT result = this.f6140a.getResult();
            if (e.f6145b[this.f6140a.getOption().ordinal()] == 2) {
                if (result == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                    c0.a((CharSequence) SealBleEarConnectActivity.this.getString(R.string.connect_success), false);
                    g0.g();
                    SealBleEarConnectActivity.this.a(SealSettingActivity.class);
                } else if (result == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_ERROR) {
                    SealBleEarConnectActivity.this.A.setText(SealBleEarConnectActivity.this.getString(R.string.connect_fail));
                    SealBleEarConnectActivity.this.B.setText(SealBleEarConnectActivity.this.getString(R.string.please_select_new_bt_ear_device));
                    c0.a((CharSequence) SealBleEarConnectActivity.this.getString(R.string.connect_fail), false);
                } else if (result == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_TIMEOUT) {
                    SealBleEarConnectActivity.this.A.setText(SealBleEarConnectActivity.this.getString(R.string.connect_fail));
                    SealBleEarConnectActivity.this.B.setText(SealBleEarConnectActivity.this.getString(R.string.please_select_new_bt_ear_device));
                    c0.a((CharSequence) SealBleEarConnectActivity.this.getString(R.string.connect_time_out), false);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends TimerTask {
        c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            SealBleEarConnectActivity.this.y.sendMessage(Message.obtain(SealBleEarConnectActivity.this.y, 1));
        }
    }

    /* loaded from: classes2.dex */
    class d extends BroadcastReceiver {
        d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.bluetooth.device.action.FOUND".equals(action)) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                String address = bluetoothDevice.getAddress();
                if (!TextUtils.isEmpty(address) && bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1024) {
                    String str = ((BaseActivity) SealBleEarConnectActivity.this).f6370a;
                    z.e(str, "found bt ear address:" + address);
                    SealBleEarConnectActivity.this.u.put(address, new BtEarBean(bluetoothDevice, intent.getShortExtra("android.bluetooth.device.extra.RSSI", Short.MIN_VALUE)));
                }
            } else if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(action)) {
                z.c(((BaseActivity) SealBleEarConnectActivity.this).f6370a, "Receiver: scan bt ear stated");
                SealBleEarConnectActivity.this.A.setText(SealBleEarConnectActivity.this.getString(R.string.scan_bt_ear_ing));
                SealBleEarConnectActivity.this.B.setText(SealBleEarConnectActivity.this.getString(R.string.please_sure_enter_conn_bt_ear_mode));
                SealBleEarConnectActivity.this.z.a(R.drawable.bluetooth_icon_gif);
            } else if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                z.c(((BaseActivity) SealBleEarConnectActivity.this).f6370a, "Receiver: scan bt ear finished");
                if (SealBleEarConnectActivity.this.u.size() == 0) {
                    SealBleEarConnectActivity.this.A.setText(R.string.not_scan_any_bt_ear);
                    SealBleEarConnectActivity.this.B.setText(R.string.please_sure_enter_conn_bt_ear_mode);
                    SealBleEarConnectActivity.this.B();
                } else if (!SealBleEarConnectActivity.this.C) {
                    SealBleEarConnectActivity.this.A.setText(R.string.scan_complete);
                    SealBleEarConnectActivity.this.B.setText(R.string.please_select_bt_ear);
                } else {
                    SealBleEarConnectActivity.this.C = false;
                }
                SealBleEarConnectActivity.this.z.b(R.drawable.bluetooth_icon_normal);
                SealBleEarConnectActivity.this.y();
                SealBleEarConnectActivity.this.z();
            }
        }
    }

    /* loaded from: classes2.dex */
    static /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6144a;

        /* renamed from: b  reason: collision with root package name */
        static final /* synthetic */ int[] f6145b;

        static {
            int[] iArr = new int[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.values().length];
            f6145b = iArr;
            try {
                iArr[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6145b[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6145b[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.values().length];
            f6144a = iArr2;
            try {
                iArr2[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f6144a[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f6144a[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* loaded from: classes2.dex */
    private class f implements h {
        private f() {
        }

        @Override // com.ifengyu.intercom.node.h
        public void a(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void b(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void c(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void d(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
        }

        /* synthetic */ f(SealBleEarConnectActivity sealBleEarConnectActivity, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    private static class g extends com.ifengyu.intercom.ui.baseui.b<SealBleEarConnectActivity> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a implements Comparator<Map.Entry<String, BtEarBean>> {
            a(g gVar) {
            }

            /* renamed from: a */
            public int compare(Map.Entry<String, BtEarBean> entry, Map.Entry<String, BtEarBean> entry2) {
                return entry2.getValue().getRssi() - entry.getValue().getRssi();
            }
        }

        /* synthetic */ g(SealBleEarConnectActivity sealBleEarConnectActivity, a aVar) {
            this(sealBleEarConnectActivity);
        }

        private g(SealBleEarConnectActivity sealBleEarConnectActivity) {
            super(sealBleEarConnectActivity);
        }

        public void a(Message message, SealBleEarConnectActivity sealBleEarConnectActivity) {
            if (message.what == 1) {
                z.c(((BaseActivity) sealBleEarConnectActivity).f6370a, "sort list and refresh bt ear recycler");
                sealBleEarConnectActivity.v.clear();
                for (Map.Entry entry : sealBleEarConnectActivity.u.entrySet()) {
                    sealBleEarConnectActivity.v.add(entry);
                }
                Collections.sort(sealBleEarConnectActivity.v, new a(this));
                sealBleEarConnectActivity.t.notifyDataSetChanged();
            }
        }
    }

    private void A() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.title_bar_bottom_line).setVisibility(8);
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.not_fount_my_want_bt_ear).setOnClickListener(this);
        this.A = (TextView) findViewById(R.id.major_state);
        this.B = (TextView) findViewById(R.id.minor_state);
        this.z = (WaterRippleView) findViewById(R.id.water_ripple_view);
        this.s = (RecyclerView) findViewById(R.id.scan_recycler);
        com.ifengyu.intercom.ui.adapter.b bVar = new com.ifengyu.intercom.ui.adapter.b(this, this.v);
        this.t = bVar;
        bVar.setOnItemClickListener(this);
        this.s.setAdapter(this.t);
        this.s.setLayoutManager(new LinearLayoutManager(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        String[] strArr = {getString(R.string.common_retry), getString(R.string.connect_help), getString(R.string.common_cancel)};
        q qVar = new q(this);
        qVar.b(R.string.not_fount_my_want_bt_ear);
        qVar.a(strArr, new a());
        qVar.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        g0.f();
        this.u.clear();
        this.v.clear();
        this.t.a(-1);
        this.t.notifyDataSetChanged();
        w();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.not_fount_my_want_bt_ear) {
            B();
        } else if (id == R.id.title_bar_left) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_connect_ble_ear);
        this.q = new f(this, null);
        this.y = new g(this, null);
        A();
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        registerReceiver(this.D, intentFilter);
        this.r = BluetoothAdapter.getDefaultAdapter();
        C();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.D);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        UpdateManager.d().c();
        j.b().b(this.q);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        j.b().a(this.q);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        com.ifengyu.intercom.eventbus.a.a().b(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.eventbus.a.a().c(this);
        y();
        z();
    }

    @Subscribe
    public void receiveBtEarConnectStateResp(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        z.c(this.f6370a, "receiveBtEarConnectStateResp");
        runOnUiThread(new b(sEAL_BtEarConnectState));
    }

    @Subscribe
    public void receiveBtEarScanControlResp(SealProtos.SEAL_BtEarScanControl sEAL_BtEarScanControl) {
        z.c(this.f6370a, "receiveBtEarScanControlResp");
        SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT result = sEAL_BtEarScanControl.getResult();
        if (e.f6144a[sEAL_BtEarScanControl.getOption().ordinal()] == 1) {
            if (result == SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK) {
                z.c(this.f6370a, "open Classic Bluetooth success");
                return;
            }
            z.c(this.f6370a, "open Classic Bluetooth error");
            g0.f();
        }
    }

    public void w() {
        z.c(this.f6370a, "startDiscoveryBtEar");
        this.r.startDiscovery();
        x();
    }

    public void x() {
        z();
        this.w = new Timer();
        c cVar = new c();
        this.x = cVar;
        this.w.schedule(cVar, 2000L, 1000L);
    }

    public void y() {
        z.c(this.f6370a, "stopDiscoveryBtEar");
        if (this.r.isDiscovering()) {
            this.r.cancelDiscovery();
        }
    }

    public void z() {
        Timer timer = this.w;
        if (timer != null) {
            timer.cancel();
            this.w = null;
        }
        TimerTask timerTask = this.x;
        if (timerTask != null) {
            timerTask.cancel();
            this.x = null;
        }
    }

    @Override // com.ifengyu.intercom.ui.adapter.b.AbstractC0162b
    public void a(View view, int i, Map.Entry<String, BtEarBean> entry) {
        z();
        y();
        this.A.setText(R.string.connect_bt_ear_ing);
        this.B.setText(R.string.please_kaojin_between_device_btear);
        this.t.notifyDataSetChanged();
        g0.a(entry.getValue());
        this.C = true;
    }
}
