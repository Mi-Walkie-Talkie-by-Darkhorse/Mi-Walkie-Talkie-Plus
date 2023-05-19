package com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity;

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
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a.BtEarAdapter;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.base.old.BaseHandler;
import com.ifengyu.intercom.p216ui.widget.dialog.ListDialog;
import com.ifengyu.intercom.p216ui.widget.view.WaterRippleView;
import com.ifengyu.intercom.protos.SealProtos;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

/* loaded from: classes2.dex */
public class SealBleEarConnectActivity extends BaseActivity1 implements View.OnClickListener, BtEarAdapter.InterfaceC3632b {

    /* renamed from: j */
    private BluetoothAdapter f13214j;

    /* renamed from: k */
    private RecyclerView f13215k;

    /* renamed from: l */
    private BtEarAdapter f13216l;

    /* renamed from: o */
    private Timer f13219o;

    /* renamed from: p */
    private TimerTask f13220p;

    /* renamed from: q */
    private Handler f13221q;

    /* renamed from: r */
    private WaterRippleView f13222r;

    /* renamed from: s */
    private TextView f13223s;

    /* renamed from: t */
    private TextView f13224t;

    /* renamed from: u */
    private boolean f13225u;

    /* renamed from: v */
    private String f13226v;

    /* renamed from: m */
    private HashMap<String, BtEarBean> f13217m = new HashMap<>();

    /* renamed from: n */
    private ArrayList<Map.Entry<String, BtEarBean>> f13218n = new ArrayList<>(this.f13217m.entrySet());

    /* renamed from: w */
    private final BroadcastReceiver f13227w = new C3670d();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$a */
    /* loaded from: classes2.dex */
    public class C3667a implements ListDialog.InterfaceC4927c {
        C3667a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SealBleEarConnectActivity.this.m12899c0();
            } else if (i != 1) {
            } else {
                SealBleEarConnectActivity.this.m10286E(SealBtEarHelpActivity.class);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$b */
    /* loaded from: classes2.dex */
    class RunnableC3668b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_BtEarConnectState f13229a;

        RunnableC3668b(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
            this.f13229a = sEAL_BtEarConnectState;
        }

        @Override // java.lang.Runnable
        public void run() {
            SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT result = this.f13229a.getResult();
            if (C3671e.f13234b[this.f13229a.getOption().ordinal()] != 2) {
                return;
            }
            if (result == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_OK) {
                MethodsUtils.m11302H(SealBleEarConnectActivity.this.getString(R.string.connect_success), false);
                BleCoreClient.m12373n().m12375l(SealBleEarConnectActivity.this.f13226v).m12090q1();
                SealBleEarConnectActivity.this.m10286E(SealSettingActivity.class);
            } else if (result == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_ERROR) {
                SealBleEarConnectActivity.this.f13223s.setText(SealBleEarConnectActivity.this.getString(R.string.connect_fail));
                SealBleEarConnectActivity.this.f13224t.setText(SealBleEarConnectActivity.this.getString(R.string.please_select_new_bt_ear_device));
                MethodsUtils.m11302H(SealBleEarConnectActivity.this.getString(R.string.connect_fail), false);
            } else if (result == SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_CONN_RESULT.SEAL_BTEAR_CONN_TIMEOUT) {
                SealBleEarConnectActivity.this.f13223s.setText(SealBleEarConnectActivity.this.getString(R.string.connect_fail));
                SealBleEarConnectActivity.this.f13224t.setText(SealBleEarConnectActivity.this.getString(R.string.please_select_new_bt_ear_device));
                MethodsUtils.m11302H(SealBleEarConnectActivity.this.getString(R.string.connect_time_out), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$c */
    /* loaded from: classes2.dex */
    public class C3669c extends TimerTask {
        C3669c() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            SealBleEarConnectActivity.this.f13221q.sendMessage(Message.obtain(SealBleEarConnectActivity.this.f13221q, 1));
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$d */
    /* loaded from: classes2.dex */
    class C3670d extends BroadcastReceiver {
        C3670d() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.bluetooth.device.action.FOUND".equals(action)) {
                BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                String address = bluetoothDevice.getAddress();
                if (TextUtils.isEmpty(address) || bluetoothDevice.getBluetoothClass().getMajorDeviceClass() != 1024) {
                    return;
                }
                String str = ((BaseActivity1) SealBleEarConnectActivity.this).f15055a;
                C4161y.m11042m(str, "found bt ear address:" + address);
                SealBleEarConnectActivity.this.f13217m.put(address, new BtEarBean(bluetoothDevice, intent.getShortExtra("android.bluetooth.device.extra.RSSI", Short.MIN_VALUE)));
            } else if ("android.bluetooth.adapter.action.DISCOVERY_STARTED".equals(action)) {
                C4161y.m11049f(((BaseActivity1) SealBleEarConnectActivity.this).f15055a, "Receiver: scan bt ear stated");
                SealBleEarConnectActivity.this.f13223s.setText(SealBleEarConnectActivity.this.getString(R.string.scan_bt_ear_ing));
                SealBleEarConnectActivity.this.f13224t.setText(SealBleEarConnectActivity.this.getString(R.string.please_sure_enter_conn_bt_ear_mode));
                SealBleEarConnectActivity.this.f13222r.m8737e(R.drawable.bluetooth_icon_gif);
            } else if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(action)) {
                C4161y.m11049f(((BaseActivity1) SealBleEarConnectActivity.this).f15055a, "Receiver: scan bt ear finished");
                if (SealBleEarConnectActivity.this.f13217m.size() == 0) {
                    SealBleEarConnectActivity.this.f13223s.setText(R.string.not_scan_any_bt_ear);
                    SealBleEarConnectActivity.this.f13224t.setText(R.string.please_sure_enter_conn_bt_ear_mode);
                    SealBleEarConnectActivity.this.m12902Z();
                } else if (!SealBleEarConnectActivity.this.f13225u) {
                    SealBleEarConnectActivity.this.f13223s.setText(R.string.scan_complete);
                    SealBleEarConnectActivity.this.f13224t.setText(R.string.please_select_bt_ear);
                } else {
                    SealBleEarConnectActivity.this.f13225u = false;
                }
                SealBleEarConnectActivity.this.f13222r.m8736f(R.drawable.bluetooth_icon_normal);
                SealBleEarConnectActivity.this.m12898d0();
                SealBleEarConnectActivity.this.m12897e0();
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$e */
    /* loaded from: classes2.dex */
    static /* synthetic */ class C3671e {

        /* renamed from: a */
        static final /* synthetic */ int[] f13233a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13234b;

        static {
            int[] iArr = new int[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.values().length];
            f13234b = iArr;
            try {
                iArr[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_QUERY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13234b[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_CONNECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13234b[SealProtos.SEAL_BtEarConnectState.SEAL_BTEAR_OPTION.SEAL_BTEAR_DISCONNECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.values().length];
            f13233a = iArr2;
            try {
                iArr2[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13233a[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f13233a[SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_CONTROL.SEAL_BTEAR_SCAN_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$f */
    /* loaded from: classes2.dex */
    private static class HandlerC3672f extends BaseHandler<SealBleEarConnectActivity> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealBleEarConnectActivity$f$a */
        /* loaded from: classes2.dex */
        public class C3673a implements Comparator<Map.Entry<String, BtEarBean>> {
            C3673a(HandlerC3672f handlerC3672f) {
            }

            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(Map.Entry<String, BtEarBean> entry, Map.Entry<String, BtEarBean> entry2) {
                return entry2.getValue().getRssi() - entry.getValue().getRssi();
            }
        }

        /* synthetic */ HandlerC3672f(SealBleEarConnectActivity sealBleEarConnectActivity, C3667a c3667a) {
            this(sealBleEarConnectActivity);
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseHandler
        /* renamed from: b */
        public void mo10264a(Message message, SealBleEarConnectActivity sealBleEarConnectActivity) {
            if (message.what != 1) {
                return;
            }
            C4161y.m11049f(((BaseActivity1) sealBleEarConnectActivity).f15055a, "sort list and refresh bt ear recycler");
            sealBleEarConnectActivity.f13218n.clear();
            for (Map.Entry entry : sealBleEarConnectActivity.f13217m.entrySet()) {
                sealBleEarConnectActivity.f13218n.add(entry);
            }
            Collections.sort(sealBleEarConnectActivity.f13218n, new C3673a(this));
            sealBleEarConnectActivity.f13216l.notifyDataSetChanged();
        }

        private HandlerC3672f(SealBleEarConnectActivity sealBleEarConnectActivity) {
            super(sealBleEarConnectActivity);
        }
    }

    /* renamed from: Y */
    private void m12903Y() {
        findViewById(R.id.title_bar_left).setOnClickListener(this);
        findViewById(R.id.title_bar_title).setVisibility(8);
        findViewById(R.id.not_fount_my_want_bt_ear).setOnClickListener(this);
        this.f13223s = (TextView) findViewById(R.id.major_state);
        this.f13224t = (TextView) findViewById(R.id.minor_state);
        this.f13222r = (WaterRippleView) findViewById(R.id.water_ripple_view);
        this.f13215k = (RecyclerView) findViewById(R.id.scan_recycler);
        BtEarAdapter btEarAdapter = new BtEarAdapter(this, this.f13218n);
        this.f13216l = btEarAdapter;
        btEarAdapter.setOnItemClickListener(this);
        this.f13215k.setAdapter(this.f13216l);
        this.f13215k.setLayoutManager(new LinearLayoutManager(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Z */
    public void m12902Z() {
        String[] strArr = {getString(R.string.common_retry), getString(R.string.connect_help), getString(R.string.common_cancel)};
        ListDialog listDialog = new ListDialog(this);
        listDialog.m8936l(R.string.not_fount_my_want_bt_ear);
        listDialog.m8934n(strArr, new C3667a());
        listDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public void m12899c0() {
        BleCoreClient.m12373n().m12375l(this.f13226v).m12092p1();
        this.f13217m.clear();
        this.f13218n.clear();
        this.f13216l.m13036g(-1);
        this.f13216l.notifyDataSetChanged();
        m12901a0();
    }

    /* renamed from: a0 */
    public void m12901a0() {
        C4161y.m11049f(this.f15055a, "startDiscoveryBtEar");
        this.f13214j.startDiscovery();
        m12900b0();
    }

    /* renamed from: b0 */
    public void m12900b0() {
        m12897e0();
        this.f13219o = new Timer();
        C3669c c3669c = new C3669c();
        this.f13220p = c3669c;
        this.f13219o.schedule(c3669c, 2000L, 1000L);
    }

    /* renamed from: d0 */
    public void m12898d0() {
        C4161y.m11049f(this.f15055a, "stopDiscoveryBtEar");
        if (this.f13214j.isDiscovering()) {
            this.f13214j.cancelDiscovery();
        }
    }

    /* renamed from: e0 */
    public void m12897e0() {
        Timer timer = this.f13219o;
        if (timer != null) {
            timer.cancel();
            this.f13219o = null;
        }
        TimerTask timerTask = this.f13220p;
        if (timerTask != null) {
            timerTask.cancel();
            this.f13220p = null;
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a.BtEarAdapter.InterfaceC3632b
    /* renamed from: h */
    public void mo12896h(View view, int i, Map.Entry<String, BtEarBean> entry) {
        m12897e0();
        m12898d0();
        this.f13223s.setText(R.string.connect_bt_ear_ing);
        this.f13224t.setText(R.string.please_kaojin_between_device_btear);
        this.f13216l.notifyDataSetChanged();
        BleCoreClient.m12373n().m12375l(this.f13226v).m12098m1(entry.getValue());
        this.f13225u = true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.not_fount_my_want_bt_ear) {
            m12902Z();
        } else if (id != R.id.title_bar_left) {
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_connect_ble_ear);
        String stringExtra = getIntent().getStringExtra("device_mac_address");
        this.f13226v = stringExtra;
        if (TextUtils.isEmpty(stringExtra)) {
            return;
        }
        this.f13221q = new HandlerC3672f(this, null);
        m12903Y();
        IntentFilter intentFilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_STARTED");
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        registerReceiver(this.f13227w, intentFilter);
        this.f13214j = BluetoothAdapter.getDefaultAdapter();
        m12899c0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f13227w);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        MiBus.getInstance().m6411j(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        MiBus.getInstance().m6409l(this);
        m12898d0();
        m12897e0();
    }

    @Subscribe
    public void receiveBtEarConnectStateResp(SealProtos.SEAL_BtEarConnectState sEAL_BtEarConnectState) {
        C4161y.m11049f(this.f15055a, "receiveBtEarConnectStateResp");
        runOnUiThread(new RunnableC3668b(sEAL_BtEarConnectState));
    }

    @Subscribe
    public void receiveBtEarScanControlResp(SealProtos.SEAL_BtEarScanControl sEAL_BtEarScanControl) {
        C4161y.m11049f(this.f15055a, "receiveBtEarScanControlResp");
        SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT result = sEAL_BtEarScanControl.getResult();
        if (C3671e.f13233a[sEAL_BtEarScanControl.getOption().ordinal()] != 1) {
            return;
        }
        if (result == SealProtos.SEAL_BtEarScanControl.SEAL_BTEAR_SCAN_RESULT.SEAL_BTEAR_SCAN_OK) {
            C4161y.m11049f(this.f15055a, "open Classic Bluetooth success");
            return;
        }
        C4161y.m11049f(this.f15055a, "open Classic Bluetooth error");
        BleCoreClient.m12373n().m12375l(this.f13226v).m12092p1();
    }
}
