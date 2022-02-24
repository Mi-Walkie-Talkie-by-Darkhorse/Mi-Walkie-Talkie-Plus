package com.ifengyu.intercom.ui.activity;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.text.SpannableString;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.lite.event.a;
import com.ifengyu.intercom.lite.event.b;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.lite.utils.j;
import com.ifengyu.intercom.lite.widget.EmptyView;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.adapter.WrapContentLinearLayoutManager;
import com.ifengyu.intercom.ui.adapter.n;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.view.RecyclerViewEmptySupport;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class SelectDeviceActivity extends BaseActivity implements View.OnClickListener {
    private h0 A;
    private com.qmuiteam.qmui.widget.dialog.b B;
    @BindView(R.id.title_bar_left)
    ImageView leftBackIv;
    @BindView(R.id.title_bar_cancel)
    TextView leftCancelBtn;
    @BindView(R.id.bottom_transparent_layout)
    View mFabLayout;
    @BindView(R.id.emptyView)
    EmptyView mTvEmptyView;
    @BindView(R.id.title_bar_title)
    TextView pagerTitle;
    private n q;
    private ArrayList<ConnectionConfiguration> r;
    @BindView(R.id.title_bar_confirm)
    TextView rightManageBtn;
    @BindView(R.id.title_bar_right_iv)
    ImageView rightManagerIv;
    @BindView(R.id.rv_select_device)
    RecyclerViewEmptySupport rvSelectDevice;
    private g s;
    private BtleCentralService.a t;
    private Handler u;
    @BindView(R.id.map_bottom_unbind_device_layout)
    RelativeLayout unbindDeviceBtn;
    private ConnectionConfiguration v;
    private boolean w;
    private ArrayList<Boolean> x;
    private com.qmuiteam.qmui.widget.dialog.b z;
    private boolean y = false;
    private n.d C = new e();
    private ServiceConnection D = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements DialogInterface.OnKeyListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i != 4 || 1 != keyEvent.getAction() || !SelectDeviceActivity.this.o().isShowing() || SelectDeviceActivity.this.A.d().f() != 1) {
                return false;
            }
            z.e("SelectDeviceActivity", "dialog back pressed, cancel connection");
            SelectDeviceActivity.this.A.b();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements d.c {
        b() {
        }

        @Override // com.ifengyu.intercom.lite.dialog.list.d.c
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str) {
            if (i != 0) {
                if (i == 1) {
                    Intent intent = new Intent(SelectDeviceActivity.this, WebViewActivity.class);
                    intent.setAction("com.ifengyu.intercom.action.CONNECT_HELP");
                    SelectDeviceActivity.this.startActivity(intent);
                }
            } else if (SelectDeviceActivity.this.w()) {
                if (SelectDeviceActivity.this.v != null) {
                    SelectDeviceActivity.this.v();
                    if (SelectDeviceActivity.this.v.c() == 36611) {
                        SelectDeviceActivity.this.A.d(BluetoothAdapter.getDefaultAdapter().getRemoteDevice(SelectDeviceActivity.this.v.a()));
                    } else {
                        SelectDeviceActivity.this.v();
                        SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
                        selectDeviceActivity.b(selectDeviceActivity.v);
                        SelectDeviceActivity.this.u.sendMessageDelayed(Message.obtain(SelectDeviceActivity.this.u, 3, 0, 0, SelectDeviceActivity.this.v), 10000L);
                    }
                }
            } else {
                return;
            }
            bVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements QMUIDialogAction.b {
        c() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
            bVar.dismiss();
            SelectDeviceActivity.this.x();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d extends com.qmuiteam.qmui.span.d {
        d(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserProtocolActivity.a(SelectDeviceActivity.this, d0.g());
        }
    }

    /* loaded from: classes2.dex */
    class f implements ServiceConnection {
        f() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            SelectDeviceActivity.this.t = (BtleCentralService.a) iBinder;
            SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
            selectDeviceActivity.d(selectDeviceActivity.t.a());
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes2.dex */
    private class g implements com.ifengyu.intercom.node.h {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SelectDeviceActivity.this.p();
                if (SelectDeviceActivity.this.t != null) {
                    SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
                    selectDeviceActivity.d(selectDeviceActivity.t.a());
                }
                if (SelectDeviceActivity.this.v != null) {
                    SelectDeviceActivity selectDeviceActivity2 = SelectDeviceActivity.this;
                    selectDeviceActivity2.b(selectDeviceActivity2.v.d(), SelectDeviceActivity.this.v.a());
                }
                if (SelectDeviceActivity.this.w) {
                    if (d0.g() == 1) {
                        com.ifengyu.intercom.node.e.d().a(Integer.parseInt(d0.N()), d0.P());
                    }
                    SelectDeviceActivity.this.w = false;
                    if (d0.a(d0.g())) {
                        SelectDeviceActivity.this.a(MainActivity.class);
                    } else {
                        SelectDeviceActivity.this.E();
                    }
                }
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SelectDeviceActivity.this.w();
                if (SelectDeviceActivity.this.t != null) {
                    SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
                    selectDeviceActivity.d(selectDeviceActivity.t.a());
                }
            }
        }

        private g() {
        }

        @Override // com.ifengyu.intercom.node.h
        public void a(String str) {
            z.d("SelectDeviceActivity", "onPeerVersionMismathed: address=" + str);
        }

        @Override // com.ifengyu.intercom.node.h
        public void b(String str) {
        }

        @Override // com.ifengyu.intercom.node.h
        public void c(String str) {
            z.d("SelectDeviceActivity", "onPeerConnectDenied: address=" + str);
        }

        @Override // com.ifengyu.intercom.node.h
        public void d(String str) {
            z.d("SelectDeviceActivity", "onPeerConnected: nodeId=" + str);
            SelectDeviceActivity.this.u.removeMessages(3);
            k0.a(new a());
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
            z.d("SelectDeviceActivity", "onPeerConfirmRequest: address=" + str);
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            z.d("SelectDeviceActivity", "onPeerDisConnected: nodeId=" + str);
            if (!SelectDeviceActivity.this.y) {
                c0.a((CharSequence) SelectDeviceActivity.this.getResources().getString(R.string.main_ble_have_unconnect), false);
            } else {
                SelectDeviceActivity.this.y = false;
            }
            k0.a(new b());
        }

        /* synthetic */ g(SelectDeviceActivity selectDeviceActivity, a aVar) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    static class h extends com.ifengyu.intercom.ui.baseui.b<SelectDeviceActivity> {
        /* synthetic */ h(SelectDeviceActivity selectDeviceActivity, a aVar) {
            this(selectDeviceActivity);
        }

        private h(SelectDeviceActivity selectDeviceActivity) {
            super(selectDeviceActivity);
        }

        public void a(Message message, SelectDeviceActivity selectDeviceActivity) {
            if (message.what == 3) {
                ConnectionConfiguration connectionConfiguration = (ConnectionConfiguration) message.obj;
                if (connectionConfiguration != null) {
                    selectDeviceActivity.c(connectionConfiguration.a());
                }
                selectDeviceActivity.p();
                int i = message.arg1;
                if (i == 0) {
                    selectDeviceActivity.f((int) R.string.connect_failed_makesure_device_open);
                } else if (i == 1) {
                    selectDeviceActivity.f((int) R.string.connect_time_out);
                }
            }
        }
    }

    private void A() {
        this.rvSelectDevice.setLayoutManager(new WrapContentLinearLayoutManager(this));
        BtleCentralService.a aVar = this.t;
        ConnectionConfiguration a2 = aVar != null ? aVar.a() : null;
        ArrayList<ConnectionConfiguration> arrayList = new ArrayList<>();
        this.r = arrayList;
        n nVar = new n(this, arrayList, a2);
        this.q = nVar;
        this.rvSelectDevice.setAdapter(nVar);
        this.rvSelectDevice.setEmptyView(this.mTvEmptyView);
        this.rvSelectDevice.setItemAnimator(new androidx.recyclerview.widget.c());
        this.q.setOnItemClickListener(this.C);
        D();
    }

    private void B() {
        this.A = (h0) x.a(this).a(h0.class);
        j.a().a(this, com.ifengyu.intercom.lite.event.a.class, new Consumer() { // from class: com.ifengyu.intercom.ui.activity.y
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SelectDeviceActivity.this.a((a) obj);
            }
        });
        j.a().a(this, com.ifengyu.intercom.lite.event.b.class, new Consumer() { // from class: com.ifengyu.intercom.ui.activity.p
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SelectDeviceActivity.this.a((b) obj);
            }
        });
    }

    private void C() {
        this.pagerTitle.setText(getString(R.string.muli_device_list));
        this.leftBackIv.setOnClickListener(this);
        this.rightManagerIv.setOnClickListener(this);
        this.leftCancelBtn.setOnClickListener(this);
        this.rightManageBtn.setOnClickListener(this);
        this.unbindDeviceBtn.setOnClickListener(this);
        this.mFabLayout.setOnClickListener(this);
        this.leftCancelBtn.setTextColor(androidx.core.content.b.a(this, (int) R.color.lite_colorAccent));
    }

    private void D() {
        Observable.just(getApplicationContext()).flatMap(u.f6245a).map(new Function() { // from class: com.ifengyu.intercom.ui.activity.r
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                ConnectionConfiguration a2;
                a2 = SelectDeviceActivity.this.a((DeviceModel) obj);
                return a2;
            }
        }).toList().subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new BiConsumer() { // from class: com.ifengyu.intercom.ui.activity.v
            @Override // io.reactivex.functions.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SelectDeviceActivity.this.a((List) obj, (Throwable) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        if (this.B == null) {
            com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(this);
            eVar.a(false);
            com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
            eVar2.b(false);
            com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
            eVar3.c(R.string.dialog_privacy_policy_title);
            com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
            eVar4.a(y());
            eVar4.a(0, R.string.common_cancel, 2, new c());
            com.ifengyu.intercom.lite.c.b.e eVar5 = eVar4;
            eVar5.a(0, R.string.agree_and_continue, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.activity.t
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
                    SelectDeviceActivity.this.a(bVar, i);
                }
            });
            this.B = eVar5.a(R.style.DialogTheme2);
        }
        if (!this.B.isShowing()) {
            this.B.show();
        }
    }

    private void F() {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(this);
        eVar.d(R.string.setting_confirm_un_bind);
        eVar.a(0, R.string.common_cancel, 2, q.f6241a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.unbind, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.activity.s
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
                SelectDeviceActivity.this.b(bVar, i);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean w() {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter == null || defaultAdapter.isEnabled()) {
                return true;
            }
            com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(this);
            fVar.b(R.string.common_select, (DialogInterface.OnClickListener) null);
            fVar.b(R.string.connect_open_ble);
            fVar.a();
            fVar.d();
            return false;
        } catch (Exception e2) {
            z.b("SelectDeviceActivity", "error " + e2.getMessage());
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        com.ifengyu.intercom.node.q.d a2;
        this.A.b();
        ConnectionConfiguration a3 = this.t.a();
        if (a3 != null && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
            a2.b(a3.a(), true);
        }
    }

    private SpannableString y() {
        String string = getString(R.string.lite_user_protocol_prefix);
        String str = string + getString(R.string.lite_user_protocol);
        SpannableString spannableString = new SpannableString(str);
        d dVar = new d(k0.a((int) R.color.lite_colorAccent), k0.a((int) R.color.lite_colorAccent50), 0, 0);
        dVar.b(true);
        spannableString.setSpan(dVar, string.length(), str.length(), 17);
        return spannableString;
    }

    private void z() {
        com.qmuiteam.qmui.widget.dialog.b bVar = this.z;
        if (bVar != null && bVar.isShowing()) {
            this.z.dismiss();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = 0;
        switch (view.getId()) {
            case R.id.bottom_transparent_layout /* 2131296395 */:
                this.y = true;
                Intent intent = new Intent(this, ConnectDeviceActivity.class);
                intent.setAction("com.ifengyu.intercom.FROM_DEVICE");
                startActivity(intent);
                return;
            case R.id.map_bottom_unbind_device_layout /* 2131296852 */:
                Iterator<Boolean> it = this.x.iterator();
                int i2 = 0;
                while (it.hasNext()) {
                    if (it.next().booleanValue()) {
                        i2++;
                    }
                }
                if (i2 == 0) {
                    c0.a((CharSequence) getString(R.string.please_check_device), false);
                    return;
                } else {
                    F();
                    return;
                }
            case R.id.title_bar_cancel /* 2131297303 */:
                this.leftCancelBtn.setVisibility(8);
                this.rightManageBtn.setVisibility(8);
                this.leftBackIv.setVisibility(0);
                this.rightManagerIv.setVisibility(0);
                this.mFabLayout.setVisibility(0);
                this.unbindDeviceBtn.setVisibility(8);
                this.q.a(false);
                this.q.notifyDataSetChanged();
                return;
            case R.id.title_bar_confirm /* 2131297304 */:
                if (this.rightManageBtn.getText().equals(getString(R.string.select_all))) {
                    this.rightManageBtn.setText(getString(R.string.select_not_all));
                    this.x.clear();
                    while (i < this.r.size()) {
                        this.x.add(true);
                        i++;
                    }
                    this.q.notifyDataSetChanged();
                    return;
                } else if (this.rightManageBtn.getText().equals(getString(R.string.select_not_all))) {
                    this.rightManageBtn.setText(getString(R.string.select_all));
                    this.x.clear();
                    while (i < this.r.size()) {
                        this.x.add(false);
                        i++;
                    }
                    this.q.notifyDataSetChanged();
                    return;
                } else {
                    return;
                }
            case R.id.title_bar_left /* 2131297305 */:
                finish();
                return;
            case R.id.title_bar_right_iv /* 2131297307 */:
                this.leftBackIv.setVisibility(8);
                this.mFabLayout.setVisibility(8);
                this.rightManagerIv.setVisibility(8);
                this.rightManageBtn.setVisibility(0);
                this.rightManageBtn.setText(getString(R.string.select_all));
                this.leftCancelBtn.setVisibility(0);
                this.unbindDeviceBtn.setVisibility(0);
                ArrayList<Boolean> arrayList = this.x;
                if (arrayList == null) {
                    this.x = new ArrayList<>();
                } else {
                    arrayList.clear();
                }
                while (i < this.r.size()) {
                    this.x.add(false);
                    i++;
                }
                this.q.a(this.x);
                this.q.a(true);
                this.q.notifyDataSetChanged();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_select_device);
        ButterKnife.bind(this);
        this.u = new h(this, null);
        C();
        A();
        this.s = new g(this, null);
        bindService(new Intent(this, BtleCentralService.class), this.D, 1);
        B();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.u.removeMessages(3);
        unbindService(this.D);
        this.D = null;
        j.a().b(this);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        com.ifengyu.intercom.node.j.b().a(this.s);
        if (this.r.size() == 0) {
            this.rightManagerIv.setVisibility(8);
        } else {
            if (this.rightManageBtn.getVisibility() != 0) {
                this.rightManagerIv.setVisibility(0);
            }
            this.q.notifyDataSetChanged();
        }
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        com.ifengyu.intercom.node.j.b().b(this.s);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    public void v() {
        super.v();
        o().setOnKeyListener(new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(int i) {
        com.qmuiteam.qmui.widget.dialog.b bVar = this.z;
        if (bVar != null && bVar.isShowing()) {
            this.z.dismiss();
        }
        String[] d2 = k0.d(R.array.dialog_connect_note);
        com.ifengyu.intercom.lite.dialog.list.d dVar = new com.ifengyu.intercom.lite.dialog.list.d(this, false);
        for (int i2 = 0; i2 < d2.length - 1; i2++) {
            dVar.b(d2[i2]);
        }
        dVar.c(true);
        dVar.c(i);
        com.ifengyu.intercom.lite.dialog.list.d dVar2 = dVar;
        dVar2.a(new b());
        com.qmuiteam.qmui.widget.dialog.b a2 = dVar2.a(R.style.DialogTheme3);
        this.z = a2;
        a2.show();
    }

    public /* synthetic */ void e(int i) {
        p();
        d(R.string.unbind_success);
        this.r.remove(i);
        this.q.notifyItemRemoved(i);
        if (this.r.size() == 0) {
            this.rightManagerIv.setVisibility(8);
            this.rightManageBtn.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@NonNull String str) {
        com.ifengyu.intercom.node.q.d a2 = com.ifengyu.intercom.service.a.a();
        if (a2 != null) {
            a2.b(str, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(ConnectionConfiguration connectionConfiguration) {
        n nVar = this.q;
        if (nVar != null) {
            nVar.a(connectionConfiguration);
            this.q.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final ConnectionConfiguration connectionConfiguration) {
        this.v = connectionConfiguration;
        ConnectionConfiguration a2 = this.t.a();
        if (a2 != null && a2.f()) {
            c(a2.a());
        }
        com.ifengyu.intercom.lite.e.f a3 = com.ifengyu.intercom.lite.e.f.a(getApplicationContext());
        if (a3.i()) {
            BluetoothDevice e2 = a3.e();
            if (e2 == null || !e2.getAddress().equals(connectionConfiguration.a())) {
                this.A.b();
            } else {
                a(MainActivity.class);
                return;
            }
        }
        v();
        this.u.postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.x
            @Override // java.lang.Runnable
            public final void run() {
                SelectDeviceActivity.this.a(connectionConfiguration);
            }
        }, 500L);
    }

    public /* synthetic */ void b(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        this.y = true;
        v();
        for (int size = this.x.size() - 1; size >= 0; size--) {
            if (this.x.get(size).booleanValue()) {
                ConnectionConfiguration connectionConfiguration = this.r.get(size);
                ConnectionConfiguration a2 = this.t.a();
                if (a2 != null && a2.a().equals(connectionConfiguration.a())) {
                    c(connectionConfiguration.a());
                    d0.b();
                }
                com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
                if (c2 != null) {
                    c2.b(connectionConfiguration.a());
                }
                this.r.remove(size);
                BluetoothDevice e2 = com.ifengyu.intercom.lite.e.f.a(getApplicationContext()).e();
                if (e2 != null && e2.getAddress().equals(connectionConfiguration.a())) {
                    this.A.b();
                }
                com.ifengyu.intercom.network.d.e.a().execute(new j0(this, connectionConfiguration));
            }
        }
        p();
        d(R.string.unbind_success);
        this.q.a(false);
        this.q.notifyDataSetChanged();
        this.leftCancelBtn.setVisibility(8);
        this.leftBackIv.setVisibility(0);
        this.rightManagerIv.setVisibility(0);
        this.rightManageBtn.setVisibility(8);
        this.mFabLayout.setVisibility(0);
        this.unbindDeviceBtn.setVisibility(8);
        if (this.r.size() == 0) {
            this.rightManagerIv.setVisibility(8);
        }
    }

    public /* synthetic */ void a(com.ifengyu.intercom.lite.event.a aVar) throws Exception {
        int a2 = aVar.a();
        if (a2 != 3) {
            p();
        }
        if (a2 == 2) {
            f(R.string.connect_failed_device_reject);
        } else if (a2 == 4) {
            f(R.string.connect_failed_low_power);
        } else if (a2 == 6) {
            f(R.string.connect_time_out);
        } else if (a2 == 7) {
            f(R.string.connect_fail);
        }
    }

    /* loaded from: classes2.dex */
    class e implements n.d {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
                selectDeviceActivity.b(selectDeviceActivity.v);
                SelectDeviceActivity.this.u.sendMessageDelayed(Message.obtain(SelectDeviceActivity.this.u, 3, 0, 0, SelectDeviceActivity.this.v), 10000L);
            }
        }

        e() {
        }

        @Override // com.ifengyu.intercom.ui.adapter.n.d
        public void a(View view, int i, ConnectionConfiguration connectionConfiguration) {
            if (SelectDeviceActivity.this.w()) {
                if (connectionConfiguration.c() == 36611) {
                    SelectDeviceActivity.this.c(connectionConfiguration);
                    return;
                }
                SelectDeviceActivity.this.w = true;
                ConnectionConfiguration a2 = SelectDeviceActivity.this.t.a();
                if (a2 == null || !a2.a().equals(connectionConfiguration.a()) || !a2.f()) {
                    SelectDeviceActivity.this.A.b();
                    SelectDeviceActivity.this.y = true;
                    SelectDeviceActivity.this.v = connectionConfiguration;
                    SelectDeviceActivity.this.d(connectionConfiguration);
                    SelectDeviceActivity.this.v();
                    if (a2 != null) {
                        SelectDeviceActivity.this.c(a2.a());
                    }
                    SelectDeviceActivity.this.u.postDelayed(new a(), 1000L);
                    return;
                }
                SelectDeviceActivity.this.a(MainActivity.class);
            }
        }

        @Override // com.ifengyu.intercom.ui.adapter.n.d
        public void b() {
            SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
            selectDeviceActivity.rightManageBtn.setText(selectDeviceActivity.getString(R.string.select_all));
        }

        @Override // com.ifengyu.intercom.ui.adapter.n.d
        public void a(View view, int i, ConnectionConfiguration connectionConfiguration, boolean z) {
            SelectDeviceActivity.this.a(i, connectionConfiguration, z);
        }

        @Override // com.ifengyu.intercom.ui.adapter.n.d
        public void a() {
            SelectDeviceActivity selectDeviceActivity = SelectDeviceActivity.this;
            selectDeviceActivity.rightManageBtn.setText(selectDeviceActivity.getString(R.string.select_not_all));
        }
    }

    public /* synthetic */ void a(com.ifengyu.intercom.lite.event.b bVar) throws Exception {
        this.q.notifyDataSetChanged();
        if (bVar.a() == com.ifengyu.intercom.lite.event.b.f5421c) {
            p();
            z();
            if (d0.a(d0.g())) {
                finish();
            } else {
                E();
            }
        }
    }

    public /* synthetic */ void a(List list, Throwable th) throws Exception {
        this.q.a().addAll(list);
        this.q.notifyDataSetChanged();
        if (this.q.a().size() == 0) {
            this.rightManagerIv.setVisibility(8);
        } else {
            this.rightManagerIv.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConnectionConfiguration a(DeviceModel deviceModel) {
        ConnectionConfiguration connectionConfiguration = new ConnectionConfiguration(deviceModel.getName(), deviceModel.getAddress(), true);
        connectionConfiguration.a(deviceModel.getDeviceColor());
        connectionConfiguration.b(deviceModel.getDeviceType());
        connectionConfiguration.c(deviceModel.getDeviceId());
        connectionConfiguration.b(true);
        connectionConfiguration.a(deviceModel.isConnected());
        connectionConfiguration.b(deviceModel.getName());
        connectionConfiguration.a(deviceModel.getAddress());
        return connectionConfiguration;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(ConnectionConfiguration connectionConfiguration) {
        com.ifengyu.intercom.node.q.d a2 = com.ifengyu.intercom.service.a.a();
        if (a2 != null) {
            int c2 = connectionConfiguration.c();
            if (c2 == 1) {
                a2.c(new ConnectionConfiguration(connectionConfiguration.d(), connectionConfiguration.a(), true));
            } else if (c2 == 4 || c2 == 5) {
                a2.c(new ConnectionConfiguration(connectionConfiguration.d(), connectionConfiguration.a(), true, connectionConfiguration.e(), connectionConfiguration.c(), 0));
            }
        }
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i) {
        bVar.dismiss();
        l0.a(com.ifengyu.intercom.f.a.a(d0.g()));
        d0.a(d0.g(), true);
        a(MainActivity.class);
    }

    public /* synthetic */ void a(ConnectionConfiguration connectionConfiguration) {
        this.A.d(BluetoothAdapter.getDefaultAdapter().getRemoteDevice(connectionConfiguration.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final int i, final ConnectionConfiguration connectionConfiguration, boolean z) {
        com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(this);
        eVar.d(R.string.setting_confirm_un_bind_current_device);
        eVar.a(0, R.string.common_cancel, 2, w.f6247a);
        com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
        eVar2.a(0, R.string.unbind, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.activity.z
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
            public final void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
                SelectDeviceActivity.this.a(connectionConfiguration, i, bVar, i2);
            }
        });
        eVar2.a(R.style.DialogTheme2).show();
    }

    public /* synthetic */ void a(ConnectionConfiguration connectionConfiguration, final int i, com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        bVar.dismiss();
        this.y = true;
        v();
        ConnectionConfiguration a2 = this.t.a();
        if (a2 != null && a2.a().equals(connectionConfiguration.a())) {
            c(connectionConfiguration.a());
            d0.b();
        }
        com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
        if (c2 != null) {
            c2.b(connectionConfiguration.a());
        }
        BluetoothDevice e2 = com.ifengyu.intercom.lite.e.f.a(getApplicationContext()).e();
        if (e2 != null && e2.getAddress().equals(connectionConfiguration.a())) {
            this.A.b();
            d0.b();
        }
        com.ifengyu.intercom.network.d.e.a().execute(new k0(this, connectionConfiguration));
        k0.a(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.a0
            @Override // java.lang.Runnable
            public final void run() {
                SelectDeviceActivity.this.e(i);
            }
        }, 1000L);
    }
}
