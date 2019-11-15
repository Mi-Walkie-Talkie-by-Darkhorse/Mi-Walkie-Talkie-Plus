package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v7.widget.DefaultItemAnimator;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.a.d;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.f;
import com.ifengyu.intercom.node.k;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.adapter.WrapContentLinearLayoutManager;
import com.ifengyu.intercom.ui.adapter.m;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.ab;
import com.ifengyu.intercom.ui.widget.dialog.q;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.mi.milinkforgame.sdk.base.debug.FileTracerConfig;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

public class SelectDeviceActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public m a;
    /* access modifiers changed from: private */
    public ArrayList<ConnectionConfiguration> b;
    private a c;
    /* access modifiers changed from: private */
    public com.ifengyu.intercom.node.btle.BtleCentralService.a d;
    @BindView(2131755203)
    ImageView leftBackIv;
    @BindView(2131755837)
    TextView leftCancelBtn;
    @BindView(2131755212)
    View mFabLayout;
    @BindView(2131755370)
    TextView mTvEmptyView;
    @BindView(2131755588)
    TextView pagerTitle;
    private q q;
    /* access modifiers changed from: private */
    public Handler r;
    @BindView(2131755836)
    TextView rightManageBtn;
    @BindView(2131755838)
    ImageView rightManagerIv;
    @BindView(2131755369)
    RecyclerViewEmptySupport rvSelectDevice;
    /* access modifiers changed from: private */
    public ConnectionConfiguration s;
    /* access modifiers changed from: private */
    public boolean t;
    /* access modifiers changed from: private */
    public ArrayList<Boolean> u;
    @BindView(2131755371)
    RelativeLayout unbindDeviceBtn;
    /* access modifiers changed from: private */
    public boolean v = false;
    private com.ifengyu.intercom.ui.adapter.m.a w = new com.ifengyu.intercom.ui.adapter.m.a() {
        public void a(View view, int i, ConnectionConfiguration connectionConfiguration) {
            if (SelectDeviceActivity.this.e()) {
                SelectDeviceActivity.this.t = true;
                ConnectionConfiguration b = SelectDeviceActivity.this.d.b();
                if (b == null || !b.c().equals(connectionConfiguration.c()) || !b.a()) {
                    SelectDeviceActivity.this.v = true;
                    SelectDeviceActivity.this.a(false, false, SelectDeviceActivity.this.getString(R.string.connect_ing), (int) R.drawable.load_spinner);
                    if (b != null) {
                        SelectDeviceActivity.this.a(b.c());
                    }
                    SelectDeviceActivity.this.b(connectionConfiguration);
                    SelectDeviceActivity.this.s = connectionConfiguration;
                    SelectDeviceActivity.this.r.postDelayed(new Runnable() {
                        public void run() {
                            SelectDeviceActivity.this.a(SelectDeviceActivity.this.s);
                            SelectDeviceActivity.this.r.sendMessageDelayed(Message.obtain(SelectDeviceActivity.this.r, 3, 0, 0, SelectDeviceActivity.this.s), FileTracerConfig.DEF_FLUSH_INTERVAL);
                        }
                    }, 1000);
                    return;
                }
                SelectDeviceActivity.this.a(MainActivity.class);
            }
        }

        public void a(View view, int i, ConnectionConfiguration connectionConfiguration, boolean z) {
            SelectDeviceActivity.this.a(i, connectionConfiguration, z);
        }

        public void a() {
            SelectDeviceActivity.this.rightManageBtn.setText(SelectDeviceActivity.this.getString(R.string.select_not_all));
        }

        public void b() {
            SelectDeviceActivity.this.rightManageBtn.setText(SelectDeviceActivity.this.getString(R.string.select_all));
        }
    };
    private ServiceConnection x = new ServiceConnection() {
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            SelectDeviceActivity.this.d = (com.ifengyu.intercom.node.btle.BtleCentralService.a) iBinder;
            SelectDeviceActivity.this.b(SelectDeviceActivity.this.d.b());
        }

        public void onServiceDisconnected(ComponentName componentName) {
        }
    };

    private class a implements com.ifengyu.intercom.node.i.a {
        private a() {
        }

        public void a(String str) {
            s.a("SelectDeviceActivity", "onPeerConfirmRequest: address=" + str);
        }

        public void b(String str) {
            s.a("SelectDeviceActivity", "onPeerConnected: nodeId=" + str);
            SelectDeviceActivity.this.r.removeMessages(3);
            ad.a((Runnable) new Runnable() {
                public void run() {
                    SelectDeviceActivity.this.k();
                    if (SelectDeviceActivity.this.d != null) {
                        SelectDeviceActivity.this.b(SelectDeviceActivity.this.d.b());
                    }
                    if (SelectDeviceActivity.this.s != null) {
                        SelectDeviceActivity.this.b(SelectDeviceActivity.this.s.b(), SelectDeviceActivity.this.s.c());
                    }
                    if (SelectDeviceActivity.this.t) {
                        if (w.ad() == 1) {
                            f.a().a(Integer.parseInt(w.K()), w.M());
                        }
                        SelectDeviceActivity.this.t = false;
                        SelectDeviceActivity.this.a(MainActivity.class);
                    }
                }
            });
        }

        public void c(String str) {
            s.a("SelectDeviceActivity", "onPeerDisConnected: nodeId=" + str);
            if (!SelectDeviceActivity.this.v) {
                v.a((CharSequence) SelectDeviceActivity.this.getResources().getString(R.string.main_ble_have_unconnect), false);
            } else {
                SelectDeviceActivity.this.v = false;
            }
            ad.a((Runnable) new Runnable() {
                public void run() {
                    SelectDeviceActivity.this.e();
                    if (SelectDeviceActivity.this.d != null) {
                        SelectDeviceActivity.this.b(SelectDeviceActivity.this.d.b());
                    }
                }
            });
        }

        public void d(String str) {
            s.a("SelectDeviceActivity", "onPeerConnectDenied: address=" + str);
        }

        public void e(String str) {
            s.a("SelectDeviceActivity", "onPeerVersionMismathed: address=" + str);
        }

        public void f(String str) {
        }
    }

    static class b extends com.ifengyu.intercom.ui.baseui.a<SelectDeviceActivity> {
        private b(SelectDeviceActivity selectDeviceActivity) {
            super(selectDeviceActivity);
        }

        public void a(Message message, final SelectDeviceActivity selectDeviceActivity) {
            switch (message.what) {
                case 3:
                    ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) message.obj;
                    if (connectionConfiguration != null) {
                        selectDeviceActivity.a(connectionConfiguration.c());
                    }
                    if (message.arg1 == 0) {
                        selectDeviceActivity.k();
                        selectDeviceActivity.a((int) R.string.connect_failed_makesure_device_open, connectionConfiguration);
                        return;
                    } else if (message.arg1 == 1) {
                        selectDeviceActivity.d(R.drawable.mine_icon_lose);
                        selectDeviceActivity.e(R.string.connect_time_out);
                        selectDeviceActivity.r.postDelayed(new Runnable() {
                            public void run() {
                                selectDeviceActivity.k();
                            }
                        }, 1000);
                        return;
                    } else {
                        return;
                    }
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_select_device);
        ButterKnife.bind((Activity) this);
        this.r = new b();
        c();
        d();
        this.c = new a();
        bindService(new Intent(this, BtleCentralService.class), this.x, 1);
    }

    private void c() {
        this.pagerTitle.setText(getString(R.string.muli_device_list));
        this.leftBackIv.setOnClickListener(this);
        this.rightManagerIv.setOnClickListener(this);
        this.leftCancelBtn.setOnClickListener(this);
        this.rightManageBtn.setOnClickListener(this);
        this.unbindDeviceBtn.setOnClickListener(this);
        this.mFabLayout.setOnClickListener(this);
    }

    private void d() {
        d a2 = d.a();
        if (a2 == null) {
            d.a(getApplicationContext());
            a2 = d.a();
        }
        this.b = a2.d.a();
        Collections.reverse(this.b);
        this.rvSelectDevice.setLayoutManager(new WrapContentLinearLayoutManager(this));
        ConnectionConfiguration connectionConfiguration = null;
        if (this.d != null) {
            connectionConfiguration = this.d.b();
        }
        this.a = new m(this, this.b, connectionConfiguration);
        this.rvSelectDevice.setAdapter(this.a);
        this.rvSelectDevice.setEmptyView(this.mTvEmptyView);
        this.rvSelectDevice.setItemAnimator(new DefaultItemAnimator());
        this.a.setOnItemClickListener(this.w);
    }

    /* access modifiers changed from: protected */
    public void onStart() {
        super.onStart();
        k.a().a((com.ifengyu.intercom.node.i.a) this.c);
        if (this.b.size() == 0) {
            this.rightManagerIv.setVisibility(8);
        } else {
            this.rightManagerIv.setVisibility(0);
            this.a.notifyDataSetChanged();
        }
        e();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, "SelectDeviceActivity");
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    /* access modifiers changed from: protected */
    public void onStop() {
        super.onStop();
        k.a().b((com.ifengyu.intercom.node.i.a) this.c);
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        this.r.removeMessages(3);
        unbindService(this.x);
        this.x = null;
        super.onDestroy();
    }

    public void onClick(View view) {
        int i;
        switch (view.getId()) {
            case R.id.title_bar_left /*2131755203*/:
                finish();
                return;
            case R.id.bottom_transparent_layout /*2131755212*/:
                this.v = true;
                Intent intent = new Intent(this, ConnectDeviceActivity.class);
                intent.setAction("com.ifengyu.intercom.FROM_DEVICE");
                startActivity(intent);
                MiStatInterface.recordCountEvent("device_list_page", "scanNewDeviceBtnClick");
                return;
            case R.id.map_bottom_unbind_device_layout /*2131755371*/:
                Iterator it = this.u.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    if (((Boolean) it.next()).booleanValue()) {
                        i = i2 + 1;
                    } else {
                        i = i2;
                    }
                    i2 = i;
                }
                if (i2 == 0) {
                    v.a((CharSequence) getString(R.string.please_check_device), false);
                    return;
                } else {
                    new ab(this, false).a((com.ifengyu.intercom.ui.widget.dialog.ab.a) new com.ifengyu.intercom.ui.widget.dialog.ab.a() {
                        public void a() {
                            SelectDeviceActivity.this.v = true;
                            SelectDeviceActivity.this.a(false, false, SelectDeviceActivity.this.getString(R.string.unbind_ing), (int) R.drawable.load_spinner);
                            for (int size = SelectDeviceActivity.this.u.size() - 1; size >= 0; size--) {
                                if (((Boolean) SelectDeviceActivity.this.u.get(size)).booleanValue()) {
                                    ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) SelectDeviceActivity.this.b.get(size);
                                    ConnectionConfiguration b = SelectDeviceActivity.this.d.b();
                                    if (b != null && b.c().equals(connectionConfiguration.c())) {
                                        SelectDeviceActivity.this.a(connectionConfiguration.c());
                                        w.g();
                                    }
                                    d a2 = d.a();
                                    if (a2 != null) {
                                        a2.b(connectionConfiguration.c());
                                    }
                                    SelectDeviceActivity.this.b.remove(size);
                                }
                            }
                            ad.a((Runnable) new Runnable() {
                                public void run() {
                                    SelectDeviceActivity.this.b(SelectDeviceActivity.this.getString(R.string.unbind_success));
                                    SelectDeviceActivity.this.d(R.drawable.mine_icon_win);
                                    ad.a((Runnable) new Runnable() {
                                        public void run() {
                                            SelectDeviceActivity.this.k();
                                            SelectDeviceActivity.this.a.a(false);
                                            SelectDeviceActivity.this.a.notifyDataSetChanged();
                                            SelectDeviceActivity.this.leftCancelBtn.setVisibility(8);
                                            SelectDeviceActivity.this.leftBackIv.setVisibility(0);
                                            SelectDeviceActivity.this.rightManagerIv.setVisibility(0);
                                            SelectDeviceActivity.this.rightManageBtn.setVisibility(8);
                                            SelectDeviceActivity.this.mFabLayout.setVisibility(0);
                                            SelectDeviceActivity.this.unbindDeviceBtn.setVisibility(8);
                                            if (SelectDeviceActivity.this.b.size() == 0) {
                                                SelectDeviceActivity.this.rightManagerIv.setVisibility(8);
                                            }
                                        }
                                    }, 800);
                                }
                            }, 1000);
                        }
                    }).show();
                    return;
                }
            case R.id.title_bar_confirm /*2131755836*/:
                if (this.rightManageBtn.getText().equals(getString(R.string.select_all))) {
                    this.rightManageBtn.setText(getString(R.string.select_not_all));
                    this.u.clear();
                    for (int i3 = 0; i3 < this.b.size(); i3++) {
                        this.u.add(Boolean.valueOf(true));
                    }
                    this.a.notifyDataSetChanged();
                    return;
                } else if (this.rightManageBtn.getText().equals(getString(R.string.select_not_all))) {
                    this.rightManageBtn.setText(getString(R.string.select_all));
                    this.u.clear();
                    for (int i4 = 0; i4 < this.b.size(); i4++) {
                        this.u.add(Boolean.valueOf(false));
                    }
                    this.a.notifyDataSetChanged();
                    return;
                } else {
                    return;
                }
            case R.id.title_bar_cancel /*2131755837*/:
                this.leftCancelBtn.setVisibility(8);
                this.rightManageBtn.setVisibility(8);
                this.leftBackIv.setVisibility(0);
                this.rightManagerIv.setVisibility(0);
                this.mFabLayout.setVisibility(0);
                this.unbindDeviceBtn.setVisibility(8);
                this.a.a(false);
                this.a.notifyDataSetChanged();
                return;
            case R.id.title_bar_right_iv /*2131755838*/:
                this.leftBackIv.setVisibility(8);
                this.mFabLayout.setVisibility(8);
                this.rightManagerIv.setVisibility(8);
                this.rightManageBtn.setVisibility(0);
                this.rightManageBtn.setText(getString(R.string.select_all));
                this.leftCancelBtn.setVisibility(0);
                this.unbindDeviceBtn.setVisibility(0);
                if (this.u == null) {
                    this.u = new ArrayList<>();
                } else {
                    this.u.clear();
                }
                for (int i5 = 0; i5 < this.b.size(); i5++) {
                    this.u.add(Boolean.valueOf(false));
                }
                this.a.a(this.u);
                this.a.a(true);
                this.a.notifyDataSetChanged();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public void a(ConnectionConfiguration connectionConfiguration) {
        d b2 = com.ifengyu.intercom.service.a.b();
        if (b2 != null) {
            switch (connectionConfiguration.f()) {
                case 1:
                    b2.b(new ConnectionConfiguration(connectionConfiguration.b(), connectionConfiguration.c(), true));
                    return;
                case 4:
                case 5:
                    b2.b(new ConnectionConfiguration(connectionConfiguration.b(), connectionConfiguration.c(), true, connectionConfiguration.e(), connectionConfiguration.f(), 0));
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: private */
    public void a(@NonNull String str) {
        d b2 = com.ifengyu.intercom.service.a.b();
        if (b2 != null) {
            b2.b(str, true);
        }
    }

    /* access modifiers changed from: private */
    public void a(int i, final ConnectionConfiguration connectionConfiguration) {
        String[] strArr = {getString(R.string.common_retry), getString(R.string.connect_help), getString(R.string.common_cancel)};
        if (this.q != null && this.q.isShowing()) {
            this.q.dismiss();
        }
        this.q = new q(this);
        this.q.b(i).a(strArr, new com.ifengyu.intercom.ui.widget.dialog.q.b() {
            public void a(DialogInterface dialogInterface, int i) {
                switch (i) {
                    case 0:
                        if (SelectDeviceActivity.this.e() && connectionConfiguration != null) {
                            SelectDeviceActivity.this.a(false, false, SelectDeviceActivity.this.getString(R.string.connect_ing), (int) R.drawable.load_spinner);
                            SelectDeviceActivity.this.a(connectionConfiguration);
                            SelectDeviceActivity.this.s = connectionConfiguration;
                            SelectDeviceActivity.this.r.sendMessageDelayed(Message.obtain(SelectDeviceActivity.this.r, 3, 0, 0, connectionConfiguration), FileTracerConfig.DEF_FLUSH_INTERVAL);
                            return;
                        }
                        return;
                    case 1:
                        Intent intent = new Intent(SelectDeviceActivity.this, WebViewActivity.class);
                        intent.setAction("com.ifengyu.intercom.action.CONNECT_HELP");
                        SelectDeviceActivity.this.startActivity(intent);
                        return;
                    case 2:
                        String p = SelectDeviceActivity.this.p();
                        String o = SelectDeviceActivity.this.o();
                        if (!v.a(p, o)) {
                            ConnectionConfiguration connectionConfiguration = new ConnectionConfiguration(o, p, true);
                            SelectDeviceActivity.this.a(connectionConfiguration);
                            SelectDeviceActivity.this.s = connectionConfiguration;
                        }
                        SelectDeviceActivity.this.finish();
                        return;
                    default:
                        return;
                }
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void a(final int i, final ConnectionConfiguration connectionConfiguration, boolean z) {
        new ab(this, z).a((com.ifengyu.intercom.ui.widget.dialog.ab.a) new com.ifengyu.intercom.ui.widget.dialog.ab.a() {
            public void a() {
                SelectDeviceActivity.this.v = true;
                SelectDeviceActivity.this.a(false, false, SelectDeviceActivity.this.getString(R.string.unbind_ing), (int) R.drawable.load_spinner);
                ad.a((Runnable) new Runnable() {
                    public void run() {
                        SelectDeviceActivity.this.b(SelectDeviceActivity.this.getString(R.string.unbind_success));
                        SelectDeviceActivity.this.d(R.drawable.mine_icon_win);
                        ad.a((Runnable) new Runnable() {
                            public void run() {
                                SelectDeviceActivity.this.k();
                                SelectDeviceActivity.this.a.notifyItemRemoved(i);
                                ConnectionConfiguration b = SelectDeviceActivity.this.d.b();
                                if (b != null && b.c().equals(connectionConfiguration.c())) {
                                    SelectDeviceActivity.this.a(connectionConfiguration.c());
                                    w.g();
                                }
                                SelectDeviceActivity.this.b.remove(i);
                                if (SelectDeviceActivity.this.b.size() == 0) {
                                    SelectDeviceActivity.this.rightManagerIv.setVisibility(8);
                                    SelectDeviceActivity.this.rightManageBtn.setVisibility(8);
                                }
                                d a2 = d.a();
                                if (a2 != null) {
                                    a2.b(connectionConfiguration.c());
                                }
                            }
                        }, 800);
                    }
                }, 1000);
            }
        }).show();
    }

    /* access modifiers changed from: private */
    public void b(ConnectionConfiguration connectionConfiguration) {
        if (this.a != null) {
            this.a.a(connectionConfiguration);
            this.a.notifyDataSetChanged();
        }
    }

    /* access modifiers changed from: private */
    public boolean e() {
        try {
            final BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null && !defaultAdapter.isEnabled()) {
                new com.ifengyu.intercom.ui.widget.dialog.d(this).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.common_select, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        defaultAdapter.enable();
                    }
                }).c((int) R.string.connect_open_ble).b().c();
                return false;
            }
        } catch (Exception e) {
            s.e("SelectDeviceActivity", "error " + e.getMessage());
        }
        return true;
    }
}
