package com.ifengyu.intercom.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.ParcelUuid;
import android.provider.Settings.Secure;
import android.provider.Settings.SettingNotFoundException;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.aa;
import com.ifengyu.intercom.b.ab;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.b.x;
import com.ifengyu.intercom.b.z;
import com.ifengyu.intercom.bean.BluetoothDeviceBean;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.protos.MitalkProtos.ParamUpdate;
import com.ifengyu.intercom.protos.MitalkProtos.STATECODE;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam;
import com.ifengyu.intercom.protos.SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam;
import com.ifengyu.intercom.protos.SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.mi.milinkforgame.sdk.data.Const.Debug;
import com.mi.milinkforgame.sdk.data.Const.IPC;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class ConnectDeviceActivity extends BaseActivity implements OnClickListener, com.ifengyu.intercom.node.f.a {
    /* access modifiers changed from: private */
    public boolean A = false;
    /* access modifiers changed from: private */
    public ListView B;
    /* access modifiers changed from: private */
    public TextView C;
    /* access modifiers changed from: private */
    public ViewPropertyAnimator D;
    /* access modifiers changed from: private */
    public boolean E = true;
    private TextView F;
    private RelativeLayout G;
    /* access modifiers changed from: private */
    public ImageView H;
    /* access modifiers changed from: private */
    public ObjectAnimator I;
    private TextView J;
    private LinearLayout K;
    private Intent L;
    private b M;
    /* access modifiers changed from: private */
    public BluetoothDeviceBean N;
    /* access modifiers changed from: private */
    public String O;
    /* access modifiers changed from: private */
    public String P;
    /* access modifiers changed from: private */
    public ObjectAnimator Q;
    /* access modifiers changed from: private */
    public ImageView R;
    private IntentFilter S;
    private MiTalkiApp T;
    private String U;
    private q V;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.node.btle.BtleCentralService.a W;
    private ServiceConnection X = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ConnectDeviceActivity.this.W = (com.ifengyu.intercom.node.btle.BtleCentralService.a) iBinder;
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    };
    /* access modifiers changed from: private */
    public Runnable Y = new Runnable() {
        public void run() {
            if (!k.a().b() && ConnectDeviceActivity.this.v.getText().equals(ConnectDeviceActivity.this.getString(R.string.connecting_device))) {
                ConnectDeviceActivity.this.v.setText(R.string.connect_please_choice_mitalki);
                ConnectDeviceActivity.this.a((int) R.string.connect_time_out);
                if (ConnectDeviceActivity.this.t != null) {
                    ConnectDeviceActivity.this.N = null;
                    ConnectDeviceActivity.this.t.a(-1);
                    ConnectDeviceActivity.this.t.notifyDataSetChanged();
                }
            }
        }
    };
    /* access modifiers changed from: private */
    public Runnable Z = new Runnable() {
        public void run() {
            ConnectDeviceActivity.this.a(MainActivity.class);
            ConnectDeviceActivity.this.finish();
        }
    };
    /* access modifiers changed from: private */
    public BluetoothAdapter a;
    /* access modifiers changed from: private */
    public ImageView aa;
    /* access modifiers changed from: private */
    public Comparator<BluetoothDeviceBean> ab = new Comparator<BluetoothDeviceBean>() {
        /* renamed from: a */
        public int compare(BluetoothDeviceBean bluetoothDeviceBean, BluetoothDeviceBean bluetoothDeviceBean2) {
            int compareTo = Integer.valueOf(bluetoothDeviceBean2.getRssi()).compareTo(Integer.valueOf(bluetoothDeviceBean.getRssi()));
            if (compareTo == 0) {
                return bluetoothDeviceBean2.getAddress().compareTo(bluetoothDeviceBean.getAddress());
            }
            return compareTo;
        }
    };
    /* access modifiers changed from: private */
    public BluetoothLeScanner b;
    private boolean c = false;
    private a d;
    /* access modifiers changed from: private */
    public d q;
    /* access modifiers changed from: private */
    public List<BluetoothDeviceBean> r = new ArrayList();
    private Set<String> s = new HashSet();
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.ui.adapter.a t;
    /* access modifiers changed from: private */
    public TextView u;
    /* access modifiers changed from: private */
    public TextView v;
    /* access modifiers changed from: private */
    public ImageView w;
    private com.ifengyu.intercom.node.i.a x;
    private List<ParcelUuid> y;
    private int z = 0;

    static class a implements LeScanCallback {
        private d a;
        private List<ParcelUuid> b;
        private boolean c;

        private a(d dVar, List<ParcelUuid> list) {
            this.c = true;
            this.a = dVar;
            this.b = list;
            a();
        }

        public void a() {
            try {
                String[] split = MiTalkiApp.a().getPackageManager().getPackageInfo(ad.c(), 0).versionName.split("\\.");
                if (Integer.parseInt(split[2]) + (Integer.parseInt(split[0]) * 16777216) + (Integer.parseInt(split[1]) * 65536) < 34144286) {
                    this.c = false;
                }
            } catch (NameNotFoundException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }

        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            String address = bluetoothDevice.getAddress();
            int a2 = v.a(i);
            x a3 = x.a(bArr);
            String b2 = a3.b();
            int c2 = a3.c();
            List<ParcelUuid> a4 = a3.a();
            if (!TextUtils.isEmpty(b2) && a4 != null) {
                for (ParcelUuid parcelUuid : a4) {
                    Iterator it = this.b.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        } else if (((ParcelUuid) it.next()).equals(parcelUuid)) {
                            if (c2 != 4) {
                                this.a.sendMessage(Message.obtain(this.a, 1, a2, 0, new BluetoothDeviceBean(address, b2, c2, bluetoothDevice)));
                            } else if (this.c) {
                                this.a.sendMessage(Message.obtain(this.a, 1, a2, 0, new BluetoothDeviceBean(address, b2, c2, bluetoothDevice)));
                            }
                        }
                    }
                }
            }
        }
    }

    class b extends BroadcastReceiver {
        b() {
        }

        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                s.c("ConnectDeviceActivity", "onReceive: action = " + action);
                if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                    switch (intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0)) {
                        case 10:
                            ConnectDeviceActivity.this.q.sendMessage(Message.obtain(ConnectDeviceActivity.this.q, 4, 0, 0, null));
                            return;
                        case 12:
                            ConnectDeviceActivity.this.q.sendMessage(Message.obtain(ConnectDeviceActivity.this.q, 3, 0, 0, null));
                            return;
                        default:
                            return;
                    }
                }
            }
        }
    }

    class c implements com.ifengyu.intercom.node.i.a {
        c() {
        }

        public void a(String str) {
            ConnectDeviceActivity.this.z();
        }

        public void b(String str) {
            s.a("ConnectDeviceActivity", "onPeerConnected: nodeId=" + str);
            ConnectDeviceActivity.this.q.removeCallbacksAndMessages(null);
            MiTalkiApp.n().removeCallbacks(ConnectDeviceActivity.this.Y);
            if (w.ad() == 1) {
                f.a().a(Integer.parseInt(w.K()), w.M());
            }
            ConnectDeviceActivity.this.A();
            ConnectDeviceActivity.this.q.postDelayed(ConnectDeviceActivity.this.Z, 3000);
        }

        public void c(String str) {
            s.a("ConnectDeviceActivity", "onPeerDisConnected: nodeId=" + str);
        }

        public void d(String str) {
            s.a("ConnectDeviceActivity", "onPeerConnectDenied: address=" + str);
            ad.a((Runnable) new Runnable() {
                public void run() {
                    if (ConnectDeviceActivity.this.N != null) {
                        ConnectDeviceActivity.this.q.removeMessages(5);
                        ConnectDeviceActivity.this.q.sendMessage(Message.obtain(ConnectDeviceActivity.this.q, 6, 0, 0, ConnectDeviceActivity.this.N));
                    }
                    ConnectDeviceActivity.this.v.setText(R.string.connect_please_choice_mitalki);
                    ConnectDeviceActivity.this.a((int) R.string.connect_failed_device_reject);
                    if (ConnectDeviceActivity.this.t != null) {
                        ConnectDeviceActivity.this.N = null;
                        ConnectDeviceActivity.this.t.a(-1);
                        ConnectDeviceActivity.this.t.notifyDataSetChanged();
                    }
                }
            });
        }

        public void e(String str) {
            s.a("ConnectDeviceActivity", "onPeerVersionMismathed: address=" + str);
        }

        public void f(String str) {
            s.a("ConnectDeviceActivity", "onPeerLowpower: address=" + str);
            ad.a((Runnable) new Runnable() {
                public void run() {
                    if (ConnectDeviceActivity.this.N != null) {
                        ConnectDeviceActivity.this.q.removeMessages(5);
                        ConnectDeviceActivity.this.q.sendMessage(Message.obtain(ConnectDeviceActivity.this.q, 6, 0, 0, ConnectDeviceActivity.this.N));
                    }
                    ConnectDeviceActivity.this.a((int) R.string.connect_failed_low_power);
                    if (ConnectDeviceActivity.this.t != null) {
                        ConnectDeviceActivity.this.N = null;
                        ConnectDeviceActivity.this.t.a(-1);
                        ConnectDeviceActivity.this.t.notifyDataSetChanged();
                    }
                }
            });
        }
    }

    static class d extends com.ifengyu.intercom.ui.baseui.a<ConnectDeviceActivity> {
        public d(ConnectDeviceActivity connectDeviceActivity) {
            super(connectDeviceActivity);
        }

        public void a(Message message, ConnectDeviceActivity connectDeviceActivity) {
            if (connectDeviceActivity == null) {
                s.e("ConnectDeviceActivity", "scanBleActivity == null");
                return;
            }
            switch (message.what) {
                case 1:
                    int i = message.arg1;
                    BluetoothDeviceBean bluetoothDeviceBean = (BluetoothDeviceBean) message.obj;
                    if (connectDeviceActivity.r.contains(bluetoothDeviceBean)) {
                        BluetoothDeviceBean bluetoothDeviceBean2 = (BluetoothDeviceBean) connectDeviceActivity.r.get(connectDeviceActivity.r.indexOf(bluetoothDeviceBean));
                        bluetoothDeviceBean2.getList().add(Integer.valueOf(i));
                        if (bluetoothDeviceBean2.getList().size() == 101) {
                            Collections.sort(bluetoothDeviceBean2.getList());
                            bluetoothDeviceBean2.setRssi(((Integer) bluetoothDeviceBean2.getList().get(50)).intValue());
                            bluetoothDeviceBean2.getList().clear();
                            Collections.sort(connectDeviceActivity.r, connectDeviceActivity.ab);
                            connectDeviceActivity.c();
                            return;
                        }
                        return;
                    }
                    s.b("ConnectDeviceActivity", "Scan the new device:" + bluetoothDeviceBean.getAddress());
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(Integer.valueOf(i));
                    bluetoothDeviceBean.setList(arrayList);
                    bluetoothDeviceBean.setRssi(i);
                    connectDeviceActivity.r.add(bluetoothDeviceBean);
                    Collections.sort(connectDeviceActivity.r, connectDeviceActivity.ab);
                    connectDeviceActivity.c();
                    return;
                case 2:
                    connectDeviceActivity.x();
                    return;
                case 3:
                    connectDeviceActivity.A = true;
                    if (v.h(21) && !Build.MODEL.equals("DUK-AL20")) {
                        connectDeviceActivity.b = connectDeviceActivity.a.getBluetoothLeScanner();
                    }
                    connectDeviceActivity.a(true);
                    return;
                case 4:
                    connectDeviceActivity.a(false);
                    connectDeviceActivity.A = false;
                    return;
                case 5:
                    connectDeviceActivity.a(false);
                    if (message.obj != null && (message.obj instanceof BluetoothDeviceBean)) {
                        connectDeviceActivity.a((BluetoothDeviceBean) message.obj);
                    }
                    MiTalkiApp.n().postDelayed(connectDeviceActivity.Y, FileTracerConfig.DEF_FLUSH_INTERVAL);
                    return;
                case 6:
                    if (message.obj != null && (message.obj instanceof BluetoothDeviceBean) && connectDeviceActivity.N != null) {
                        connectDeviceActivity.a(new ConnectionConfiguration(connectDeviceActivity.N.getName(), connectDeviceActivity.N.getAddress(), false));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_connect_device);
        this.U = getIntent().getAction();
        this.O = w.af();
        d();
        e();
        q();
        this.T = (MiTalkiApp) getApplication();
        bindService(new Intent(this, BtleCentralService.class), this.X, 1);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "ConnectDeviceActivity");
        f.a().a((com.ifengyu.intercom.node.f.a) this);
        k.a().a(this.x);
        this.M = new b();
        this.S = new IntentFilter();
        this.S.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        this.S.addAction("android.bluetooth.device.action.FOUND");
        this.S.addAction("android.bluetooth.adapter.action.SCAN_MODE_CHANGED");
        this.S.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        registerReceiver(this.M, this.S);
        if (this.U == null || !"com.ifengyu.intercom.RECONNECT_DEVICE".equals(this.U)) {
            f();
        } else {
            a((Activity) this);
            if (this.I != null && !this.I.isRunning()) {
                this.I.start();
            }
            this.O = this.L.getStringExtra("device_address");
            this.P = this.L.getStringExtra("device_name");
            this.N = new BluetoothDeviceBean();
            this.N.setAddress(this.O);
            this.N.setName(this.P);
            this.N.setDeviceType(w.ad());
            a(this.N);
            this.q.postDelayed(new Runnable() {
                public void run() {
                    ConnectDeviceActivity.this.a(new ConnectionConfiguration(ConnectDeviceActivity.this.P, ConnectDeviceActivity.this.O, false, w.ad()));
                    ConnectDeviceActivity.this.f();
                }
            }, IPC.LogoutAsyncTellServerTimeout);
        }
        r();
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        f.a().d();
        MiStatInterface.recordPageEnd();
        if (this.x != null) {
            k.a().b(this.x);
        }
        if (this.I != null) {
            this.I.cancel();
        }
        if (!(this.M == null || this.S == null)) {
            unregisterReceiver(this.M);
        }
        this.q.removeMessages(2);
        a(false);
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        a(false);
        this.q.removeCallbacksAndMessages(null);
        if (this.I != null) {
            this.I.end();
        }
        unbindService(this.X);
        this.X = null;
        super.onDestroy();
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return false;
    }

    private void d() {
        this.L = getIntent();
        this.q = new d(this);
        this.x = new c();
        if (getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            this.a = BluetoothAdapter.getDefaultAdapter();
            this.y = new ArrayList();
            this.y.add(new ParcelUuid(UUID.fromString("0000aee7-0000-1000-8000-00805f9b34fb")));
            this.y.add(new ParcelUuid(UUID.fromString("0000fdab-0000-1000-8000-00805f9b34fb")));
            this.y.add(new ParcelUuid(UUID.fromString("0000fee7-0000-1000-8000-00805f9b34fb")));
            this.d = new a(this.q, this.y);
            return;
        }
        v.a((CharSequence) "Ble not supported!!!", false);
    }

    private void e() {
        int i = 8;
        findViewById(R.id.device_connect_control).setOnClickListener(this);
        this.K = (LinearLayout) findViewById(R.id.device_connect_tip_container);
        this.u = (TextView) findViewById(R.id.device_connect_title);
        this.v = (TextView) findViewById(R.id.device_connect_tip);
        this.w = (ImageView) findViewById(R.id.device_connect_circle);
        this.w.setImageResource(R.drawable.device_connect_backview);
        this.B = (ListView) findViewById(R.id.device_connect_list);
        this.C = (TextView) findViewById(R.id.device_connect_list_tip);
        this.G = (RelativeLayout) findViewById(R.id.device_connect_container);
        this.R = (ImageView) findViewById(R.id.device_connect_long_state);
        this.J = (TextView) findViewById(R.id.device_connect_skip);
        this.J.setVisibility(("com.ifengyu.intercom.FROM_SPLASH".equals(this.U) || "com.ifengyu.intercom.FROM_LOGIN".equals(this.U)) ? 0 : 8);
        this.J.setOnClickListener(this);
        this.aa = (ImageView) findViewById(R.id.device_connect_back);
        ImageView imageView = this.aa;
        if ("com.ifengyu.intercom.FROM_DEVICE".equals(this.U) || "com.ifengyu.intercom.FORM_MAIN".equals(this.U) || "com.ifengyu.intercom.RECONNECT_DEVICE".equals(this.U)) {
            i = 0;
        }
        imageView.setVisibility(i);
        this.aa.setOnClickListener(this);
        this.F = (TextView) findViewById(R.id.device_connect_control_text);
        this.H = (ImageView) findViewById(R.id.device_connect_progress);
        this.I = ObjectAnimator.ofFloat(this.H, "rotation", new float[]{0.0f, 359.0f});
        this.I.setDuration(3000);
        this.I.setInterpolator(new LinearInterpolator());
        this.I.setRepeatCount(-1);
        this.B.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                BluetoothDeviceBean bluetoothDeviceBean = (BluetoothDeviceBean) ConnectDeviceActivity.this.r.get(i);
                if (bluetoothDeviceBean != null) {
                    ConnectionConfiguration b = ConnectDeviceActivity.this.W.b();
                    if (b != null) {
                        com.ifengyu.intercom.node.a.d b2 = com.ifengyu.intercom.service.a.b();
                        if (b2 != null) {
                            b2.b(b.c(), true);
                        }
                    }
                    s.c("ConnectDeviceActivity", "clicked device:" + bluetoothDeviceBean.toString());
                    ConnectDeviceActivity.this.N = bluetoothDeviceBean;
                    ConnectDeviceActivity.this.O = ConnectDeviceActivity.this.N.getAddress();
                    ConnectDeviceActivity.this.P = ConnectDeviceActivity.this.N.getName();
                    ConnectDeviceActivity.this.q.sendMessageDelayed(Message.obtain(ConnectDeviceActivity.this.q, 5, 0, 0, ConnectDeviceActivity.this.N), 500);
                    ConnectDeviceActivity.this.t.a(i);
                    ConnectDeviceActivity.this.t.notifyDataSetChanged();
                    if (ConnectDeviceActivity.this.v != null) {
                        ConnectDeviceActivity.this.v.setText(R.string.connecting_device);
                    }
                }
            }
        });
        this.B.setOnScrollListener(new OnScrollListener() {
            public void onScrollStateChanged(AbsListView absListView, int i) {
                if (ConnectDeviceActivity.this.B.getAdapter().getCount() > 3 && i == 0) {
                    if (ConnectDeviceActivity.this.B.getLastVisiblePosition() == ConnectDeviceActivity.this.B.getAdapter().getCount() - 1) {
                        ConnectDeviceActivity.this.R.setVisibility(8);
                    } else {
                        ConnectDeviceActivity.this.R.setVisibility(0);
                    }
                }
            }

            public void onScroll(AbsListView absListView, int i, int i2, int i3) {
            }
        });
    }

    /* access modifiers changed from: private */
    public void f() {
        this.q.postDelayed(new Runnable() {
            public void run() {
                ConnectDeviceActivity.this.a((Activity) ConnectDeviceActivity.this);
                ConnectDeviceActivity.this.a(true);
            }
        }, 500);
        this.E = true;
        w();
    }

    private void q() {
        this.Q = ObjectAnimator.ofFloat(this.K, "translationY", new float[]{100.0f, 0.0f});
        this.Q.setDuration(500);
        this.Q.setInterpolator(new OvershootInterpolator());
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.device_connect_skip /*2131755190*/:
                a(false);
                a(MainActivity.class);
                finish();
                return;
            case R.id.device_connect_back /*2131755191*/:
                s();
                finish();
                return;
            case R.id.device_connect_control /*2131755200*/:
                a(false);
                if (this.I != null && this.I.isRunning()) {
                    this.I.cancel();
                }
                if (this.N != null) {
                    this.q.removeCallbacksAndMessages(null);
                    a(new ConnectionConfiguration(this.N.getName(), this.N.getAddress(), false));
                }
                a((int) R.string.connect_not_connected_device);
                if (this.t != null) {
                    this.N = null;
                    this.t.a(-1);
                    this.t.notifyDataSetChanged();
                    return;
                }
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void r() {
        if (com.ifengyu.intercom.b.c.b()) {
            try {
                if (!Build.BRAND.equalsIgnoreCase(Debug.FileRoot) && Secure.getInt(getContentResolver(), "location_mode") == 0) {
                    final com.ifengyu.intercom.ui.widget.dialog.d dVar = new com.ifengyu.intercom.ui.widget.dialog.d(this);
                    dVar.b((CharSequence) getString(R.string.ble_scan_need_open_location_service)).a(false).b(false).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dVar.d();
                        }
                    }).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int i) {
                            dVar.d();
                            Intent intent = new Intent();
                            intent.setAction("android.settings.LOCATION_SOURCE_SETTINGS");
                            intent.setFlags(268435456);
                            ConnectDeviceActivity.this.startActivity(intent);
                        }
                    }).b().c();
                }
            } catch (SettingNotFoundException e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    private void s() {
        if (this.N != null) {
            a(new ConnectionConfiguration(this.N.getName(), this.N.getAddress(), false));
        }
        String p = p();
        String o = o();
        if (p != null) {
            com.ifengyu.intercom.node.a.d b2 = com.ifengyu.intercom.service.a.b();
            if (b2 != null) {
                b2.b(new ConnectionConfiguration(o, p, true));
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(ConnectionConfiguration connectionConfiguration) {
        Intent intent = new Intent(this, BtleCentralService.class);
        intent.putExtra("connection_config", connectionConfiguration);
        intent.putExtra("connection_remove", true);
        startService(intent);
    }

    public void onBackPressed() {
        s();
        super.onBackPressed();
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    /* access modifiers changed from: private */
    public void a(BluetoothDeviceBean bluetoothDeviceBean) {
        s.b("ConnectDeviceActivity", "connect to device:" + bluetoothDeviceBean.toString());
        a(false);
        this.H.setVisibility(0);
        if (this.I != null) {
            this.I.start();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.H, "alpha", new float[]{0.0f, 1.0f});
        ofFloat.setDuration(500);
        ofFloat.start();
        com.ifengyu.intercom.node.a.d b2 = com.ifengyu.intercom.service.a.b();
        if (b2 != null) {
            b2.b(new ConnectionConfiguration(bluetoothDeviceBean.getName(), bluetoothDeviceBean.getAddress(), true, bluetoothDeviceBean.getDeviceType()));
        }
    }

    /* access modifiers changed from: private */
    public void a(boolean z2) {
        if (getPackageManager().hasSystemFeature("android.hardware.bluetooth_le") && this.A) {
            y();
            if (z2) {
                w();
                t();
                return;
            }
            u();
        }
    }

    private void t() {
        if (VERSION.SDK_INT >= 23) {
            if (z.c(this)) {
                if (Build.BRAND.equalsIgnoreCase(Debug.FileRoot) && !z.b(this)) {
                    v();
                    return;
                }
            } else {
                return;
            }
        }
        if (!this.c) {
            this.H.setVisibility(0);
            if (this.I != null) {
                this.I.start();
                s.b("ConnectDeviceActivity", "start anim");
            }
            if (!this.E) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.H, "alpha", new float[]{0.0f, 1.0f});
                ofFloat.setDuration(500);
                ofFloat.start();
            }
            try {
                s.b("ConnectDeviceActivity", "start scan v1");
                this.a.startLeScan(this.d);
                this.c = true;
                this.q.sendEmptyMessageDelayed(2, IPC.LogoutAsyncTimeout);
            } catch (Exception e) {
                s.d("ConnectDeviceActivity", "error while start Scan, " + e.getMessage());
            }
        }
    }

    private void u() {
        if (this.c) {
            try {
                this.a.stopLeScan(this.d);
                this.c = false;
            } catch (Exception e) {
                s.d("ConnectDeviceActivity", "error while stop Scan, " + e.getMessage());
            }
        }
    }

    private void v() {
        new Builder(this, 16974394).setTitle(R.string.connect_need_start_location_title).setMessage(R.string.connect_need_start_location_content).setNegativeButton(R.string.common_cancel, null).setPositiveButton(R.string.common_select, null).create().show();
    }

    private void w() {
        if (!this.s.isEmpty()) {
            this.s.clear();
        }
        if (!this.r.isEmpty()) {
            this.r.clear();
        }
    }

    /* access modifiers changed from: private */
    public void a(Activity activity) {
        try {
            final BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null) {
                return;
            }
            if (!defaultAdapter.isEnabled()) {
                new com.ifengyu.intercom.ui.widget.dialog.d(activity).a((int) R.string.connect_give_up, (DialogInterface.OnClickListener) null).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        defaultAdapter.enable();
                    }
                }).c((int) R.string.connect_open_ble).b().c();
            } else {
                this.A = true;
            }
        } catch (Exception e) {
            s.e("ConnectDeviceActivity", "error " + e.getMessage());
        }
    }

    public void c() {
        if (this.t == null) {
            this.t = new com.ifengyu.intercom.ui.adapter.a(this, this.r);
            this.B.setAdapter(this.t);
        } else {
            this.t.notifyDataSetChanged();
        }
        if (this.t.getCount() > 3) {
            this.R.setVisibility(0);
        } else {
            this.R.setVisibility(8);
        }
        if (this.E) {
            this.E = false;
            this.F.setText(R.string.connect_not_found);
            this.u.setText(R.string.connect_found_mitalki);
            this.v.setText(R.string.connect_please_choice_mitalki);
            this.B.setVisibility(0);
            this.C.setVisibility(0);
            ObjectAnimator.ofFloat(this.C, "translationY", new float[]{500.0f, 0.0f}).setDuration(300).start();
            ObjectAnimator.ofFloat(this.B, "translationY", new float[]{500.0f, 0.0f}).setDuration(500).start();
            this.D = this.G.animate();
            this.D.translationY(-150.0f).scaleX(0.67f).scaleY(0.67f).setDuration(500).start();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.H, "alpha", new float[]{1.0f, 0.9f});
            ofFloat.setDuration(3000);
            ofFloat.addListener(new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    if (ConnectDeviceActivity.this.I != null) {
                        ConnectDeviceActivity.this.I.cancel();
                    }
                    ConnectDeviceActivity.this.H.setVisibility(8);
                }
            });
            ofFloat.start();
            if (this.Q != null && !this.Q.isRunning()) {
                this.Q.start();
            }
        }
    }

    /* access modifiers changed from: private */
    public void x() {
        if (this.r.size() > 0) {
            this.q.removeMessages(2);
            a(false);
            return;
        }
        a(false);
        if (this.I != null && this.I.isRunning()) {
            this.I.cancel();
        }
        a((int) R.string.connect_dialog_not_found_device_title);
    }

    private void y() {
        this.z = 0;
    }

    /* access modifiers changed from: private */
    public void a(int i) {
        String[] b2 = ad.b((int) R.array.dialog_connect_note);
        if (this.V != null && this.V.isShowing()) {
            this.V.dismiss();
        }
        this.V = new q(this);
        try {
            this.V.b(i).a(b2, new com.ifengyu.intercom.ui.widget.dialog.q.b() {
                public void a(DialogInterface dialogInterface, int i) {
                    switch (i) {
                        case 0:
                            ConnectDeviceActivity.this.a((Activity) ConnectDeviceActivity.this);
                            ConnectDeviceActivity.this.r();
                            ConnectDeviceActivity.this.E = true;
                            ConnectDeviceActivity.this.N = null;
                            ConnectDeviceActivity.this.u.setText(R.string.connect_device_search_intercom);
                            ConnectDeviceActivity.this.v.setText(R.string.connect_makesure_device_start);
                            ConnectDeviceActivity.this.a(true);
                            return;
                        case 1:
                            ConnectDeviceActivity.this.a(false);
                            Intent intent = new Intent(ConnectDeviceActivity.this, WebViewActivity.class);
                            intent.setAction("com.ifengyu.intercom.action.CONNECT_HELP");
                            ConnectDeviceActivity.this.startActivity(intent);
                            return;
                        case 2:
                            ConnectDeviceActivity.this.a(false);
                            ConnectDeviceActivity.this.a(MainActivity.class);
                            ConnectDeviceActivity.this.finish();
                            return;
                        default:
                            return;
                    }
                }
            }).show();
        } catch (Exception e) {
            ThrowableExtension.printStackTrace(e);
        }
        a(false);
    }

    /* access modifiers changed from: private */
    public void z() {
        ad.a((Runnable) new Runnable() {
            public void run() {
                if (ConnectDeviceActivity.this.v != null) {
                    ConnectDeviceActivity.this.v.setText(R.string.connect_need_confirm_on_device);
                    ConnectDeviceActivity.this.u.setText(R.string.connect_confirm);
                    if (ConnectDeviceActivity.this.Q != null && !ConnectDeviceActivity.this.Q.isRunning()) {
                        ConnectDeviceActivity.this.Q.start();
                    }
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void A() {
        ad.a((Runnable) new Runnable() {
            public void run() {
                ConnectDeviceActivity.this.aa.setVisibility(8);
                ConnectDeviceActivity.this.B.setVisibility(8);
                ConnectDeviceActivity.this.C.setVisibility(8);
                ConnectDeviceActivity.this.R.setVisibility(8);
                if (ConnectDeviceActivity.this.w != null) {
                    ConnectDeviceActivity.this.w.setImageResource(R.drawable.device_connect_success);
                }
                if (ConnectDeviceActivity.this.D != null) {
                    ConnectDeviceActivity.this.D.translationY(0.0f).scaleX(1.0f).scaleY(1.0f).setDuration(500).start();
                    ConnectDeviceActivity.this.D.setListener(new AnimatorListenerAdapter() {
                        public void onAnimationEnd(Animator animator) {
                            super.onAnimationEnd(animator);
                            switch (w.ad()) {
                                case 1:
                                    f.a().b();
                                    return;
                                case 4:
                                    ab.a();
                                    return;
                                case 5:
                                    aa.a();
                                    return;
                                default:
                                    return;
                            }
                        }
                    });
                }
                if (ConnectDeviceActivity.this.H != null) {
                    ConnectDeviceActivity.this.I.cancel();
                    ConnectDeviceActivity.this.H.setVisibility(8);
                }
                if (ConnectDeviceActivity.this.u != null) {
                    ConnectDeviceActivity.this.u.setText(R.string.connect_success);
                }
                if (ConnectDeviceActivity.this.v != null) {
                    ConnectDeviceActivity.this.v.setText(R.string.connect_user_welcome);
                }
                if (ConnectDeviceActivity.this.Q != null && !ConnectDeviceActivity.this.Q.isRunning()) {
                    ConnectDeviceActivity.this.Q.start();
                }
            }
        });
    }

    public void a(final ParamUpdate paramUpdate) {
        s.b("ConnectDeviceActivity", "onReceiveDolphinParamData");
        if (paramUpdate.getResult() == STATECODE.SUCCESS) {
            if (paramUpdate.hasDevNameGBK()) {
                this.P = w.ae();
                b(this.P, this.O);
                com.ifengyu.intercom.node.a.d a2 = com.ifengyu.intercom.node.a.d.a();
                ConnectionConfiguration c2 = a2.c(this.O);
                c2.b(this.P);
                c2.a(true);
                a2.c(c2);
            }
            ad.a((Runnable) new Runnable() {
                public void run() {
                    if (paramUpdate.hasActivateChannel()) {
                        s.b("ConnectDeviceActivity", "activateChannel:" + paramUpdate.getActivateChannel());
                        ((MiTalkiApp) ConnectDeviceActivity.this.getApplication()).a = paramUpdate.getActivateChannel() != 0;
                    }
                    ConnectDeviceActivity.this.B();
                }
            });
        }
    }

    public void a(final SEAL_DeviceParam sEAL_DeviceParam) {
        s.b("ConnectDeviceActivity", "onReceiveSealParamData");
        if (sEAL_DeviceParam.getResult() == SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK) {
            if (sEAL_DeviceParam.hasDeviceName()) {
                this.P = w.ae();
                b(this.P, this.O);
                com.ifengyu.intercom.node.a.d a2 = com.ifengyu.intercom.node.a.d.a();
                ConnectionConfiguration c2 = a2.c(this.O);
                c2.b(this.P);
                c2.a(true);
                a2.c(c2);
            }
            ad.a((Runnable) new Runnable() {
                public void run() {
                    if (sEAL_DeviceParam.hasActivate()) {
                        ((MiTalkiApp) ConnectDeviceActivity.this.getApplication()).a = sEAL_DeviceParam.getActivate() != 0;
                    }
                    ConnectDeviceActivity.this.B();
                }
            });
        }
    }

    public void a(final SHARK_DeviceParam sHARK_DeviceParam) {
        s.b("ConnectDeviceActivity", "onReceiveSharkParamData");
        if (sHARK_DeviceParam.getResult() == SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK) {
            if (sHARK_DeviceParam.hasDeviceName()) {
                this.P = w.ae();
                b(this.P, this.O);
                com.ifengyu.intercom.node.a.d a2 = com.ifengyu.intercom.node.a.d.a();
                ConnectionConfiguration c2 = a2.c(this.O);
                c2.b(this.P);
                c2.a(true);
                a2.c(c2);
            }
            ad.a((Runnable) new Runnable() {
                public void run() {
                    if (sHARK_DeviceParam.hasActivate()) {
                        ((MiTalkiApp) ConnectDeviceActivity.this.getApplication()).a = sHARK_DeviceParam.getActivate() != 0;
                    }
                    ConnectDeviceActivity.this.B();
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void B() {
        this.q.removeCallbacks(this.Z);
        com.ifengyu.intercom.node.a.d a2 = com.ifengyu.intercom.node.a.d.a();
        if (a2 == null) {
            com.ifengyu.intercom.node.a.d.a(getApplicationContext());
            a2 = com.ifengyu.intercom.node.a.d.a();
        }
        ConnectionConfiguration a3 = a2.d.a(this.O);
        s.c("ConnectDeviceActivity", "isActivateDevice:" + this.T.a);
        if (!this.T.a) {
            a3.b(true);
            a2.d.a(a3);
            startActivities(new Intent[]{new Intent(this, MainActivity.class), new Intent(this, ActivateDeviceActivity.class)});
        } else {
            a(MainActivity.class);
        }
        finish();
    }
}
