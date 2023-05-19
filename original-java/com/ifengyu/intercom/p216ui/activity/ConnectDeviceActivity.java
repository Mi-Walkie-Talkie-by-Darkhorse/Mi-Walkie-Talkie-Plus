package com.ifengyu.intercom.p216ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Message;
import android.text.Html;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.blelib.p154e.ScanRecord;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BluetoothDeviceBean;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.lite.LiteSettingHolderActivity;
import com.ifengyu.intercom.device.mi3.activity.Mi3SettingHolderActivity;
import com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity;
import com.ifengyu.intercom.device.oldDevice.p176v.ConnectionConfiguration;
import com.ifengyu.intercom.device.oldDevice.p176v.OldBleDeviceDbManager;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.event.MiBus;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.IntercomUtil;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.base.old.BaseActivity1;
import com.ifengyu.intercom.p216ui.base.old.BaseHandler;
import com.ifengyu.intercom.p216ui.p217b.BleDeviceAdapter;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.utils.C4972m;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.squareup.otto.Subscribe;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import p048b.p076e.p077a.RxPermissions;

/* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity */
/* loaded from: classes2.dex */
public class ConnectDeviceActivity extends BaseActivity1 implements View.OnClickListener {

    /* renamed from: A */
    private ImageView f14739A;

    /* renamed from: B */
    private ObjectAnimator f14740B;

    /* renamed from: C */
    private ObjectAnimator f14741C;

    /* renamed from: D */
    private LinearLayout f14742D;

    /* renamed from: E */
    private C4346d f14743E;

    /* renamed from: F */
    private BluetoothDeviceBean f14744F;

    /* renamed from: G */
    private ImageView f14745G;

    /* renamed from: H */
    private QMUIDialog f14746H;

    /* renamed from: I */
    private QMUIAlphaImageButton f14747I;

    /* renamed from: J */
    private int f14748J;

    /* renamed from: j */
    private BluetoothAdapter f14750j;

    /* renamed from: l */
    private C4345c f14752l;

    /* renamed from: m */
    private HandlerC4347e f14753m;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;

    /* renamed from: p */
    private BleDeviceAdapter f14756p;

    /* renamed from: q */
    private TextView f14757q;

    /* renamed from: r */
    private TextView f14758r;

    /* renamed from: s */
    private ImageView f14759s;

    /* renamed from: u */
    private ListView f14761u;

    /* renamed from: v */
    private TextView f14762v;

    /* renamed from: w */
    private ViewPropertyAnimator f14763w;

    /* renamed from: y */
    private TextView f14765y;

    /* renamed from: z */
    private RelativeLayout f14766z;

    /* renamed from: k */
    private boolean f14751k = false;

    /* renamed from: n */
    private final List<BluetoothDeviceBean> f14754n = new ArrayList();

    /* renamed from: o */
    private final Set<String> f14755o = new HashSet();

    /* renamed from: t */
    private boolean f14760t = false;

    /* renamed from: x */
    private boolean f14764x = true;

    /* renamed from: K */
    private final Comparator<BluetoothDeviceBean> f14749K = C4389f.f14923a;

    /* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity$a */
    /* loaded from: classes2.dex */
    public class C4343a implements AbsListView.OnScrollListener {
        C4343a() {
            ConnectDeviceActivity.this = r1;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (ConnectDeviceActivity.this.f14761u.getAdapter().getCount() <= 3 || i != 0) {
                return;
            }
            if (ConnectDeviceActivity.this.f14761u.getLastVisiblePosition() == ConnectDeviceActivity.this.f14761u.getAdapter().getCount() - 1) {
                ConnectDeviceActivity.this.f14745G.setVisibility(8);
            } else {
                ConnectDeviceActivity.this.f14745G.setVisibility(0);
            }
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity$b */
    /* loaded from: classes2.dex */
    public class C4344b extends AnimatorListenerAdapter {
        C4344b() {
            ConnectDeviceActivity.this = r1;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (ConnectDeviceActivity.this.f14740B != null) {
                ConnectDeviceActivity.this.f14740B.cancel();
            }
            ConnectDeviceActivity.this.f14739A.setVisibility(8);
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity$c */
    /* loaded from: classes2.dex */
    public static class C4345c implements BluetoothAdapter.LeScanCallback {

        /* renamed from: a */
        private HandlerC4347e f14769a;

        /* renamed from: b */
        private int f14770b;

        /* synthetic */ C4345c(HandlerC4347e handlerC4347e, int i, C4343a c4343a) {
            this(handlerC4347e, i);
        }

        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            int m11057a;
            String address = bluetoothDevice.getAddress();
            ScanRecord m14324e = ScanRecord.m14324e(bArr, "UTF-8");
            if (IntercomUtil.m11056b(m14324e) && (m11057a = IntercomUtil.m11057a(m14324e)) == this.f14770b) {
                String m14327b = m14324e.m14327b() != null ? m14324e.m14327b() : bluetoothDevice.getName();
                C4161y.m11054a("ConnectDeviceActivity", "ScanRecord: " + m14324e);
                C4161y.m11049f("ConnectDeviceActivity", "discover device-->name: " + bluetoothDevice.getName() + ", address: " + address + ", deviceType: " + m11057a);
                HandlerC4347e handlerC4347e = this.f14769a;
                handlerC4347e.sendMessage(Message.obtain(handlerC4347e, 1, MethodsUtils.m11288l(i), 0, new BluetoothDeviceBean(address, m14327b, m11057a, bluetoothDevice)));
            }
        }

        private C4345c(HandlerC4347e handlerC4347e, int i) {
            this.f14769a = handlerC4347e;
            this.f14770b = i;
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity$d */
    /* loaded from: classes2.dex */
    public class C4346d extends BroadcastReceiver {
        private C4346d() {
            ConnectDeviceActivity.this = r1;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            String action = intent.getAction();
            C4161y.m11049f("ConnectDeviceActivity", "onReceive: action = " + action);
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0);
                if (intExtra == 10) {
                    ConnectDeviceActivity.this.f14753m.sendMessage(Message.obtain(ConnectDeviceActivity.this.f14753m, 4, 0, 0, null));
                } else if (intExtra != 12) {
                } else {
                    ConnectDeviceActivity.this.f14753m.sendMessage(Message.obtain(ConnectDeviceActivity.this.f14753m, 3, 0, 0, null));
                }
            }
        }

        /* synthetic */ C4346d(ConnectDeviceActivity connectDeviceActivity, C4343a c4343a) {
            this();
        }
    }

    /* renamed from: com.ifengyu.intercom.ui.activity.ConnectDeviceActivity$e */
    /* loaded from: classes2.dex */
    public static class HandlerC4347e extends BaseHandler<ConnectDeviceActivity> {
        public HandlerC4347e(ConnectDeviceActivity connectDeviceActivity) {
            super(connectDeviceActivity);
        }

        @Override // com.ifengyu.intercom.p216ui.base.old.BaseHandler
        /* renamed from: b */
        public void mo10264a(Message message, ConnectDeviceActivity connectDeviceActivity) {
            if (connectDeviceActivity == null) {
                C4161y.m11052c("ConnectDeviceActivity", "scanBleActivity == null");
                return;
            }
            int i = message.what;
            if (i != 1) {
                if (i == 2) {
                    connectDeviceActivity.m10604L0();
                    return;
                } else if (i == 3) {
                    connectDeviceActivity.f14760t = true;
                    connectDeviceActivity.m10606K0(true);
                    return;
                } else if (i != 4) {
                    return;
                } else {
                    connectDeviceActivity.m10606K0(false);
                    connectDeviceActivity.f14760t = false;
                    return;
                }
            }
            int i2 = message.arg1;
            BluetoothDeviceBean bluetoothDeviceBean = (BluetoothDeviceBean) message.obj;
            if (connectDeviceActivity.f14754n.contains(bluetoothDeviceBean)) {
                BluetoothDeviceBean bluetoothDeviceBean2 = (BluetoothDeviceBean) connectDeviceActivity.f14754n.get(connectDeviceActivity.f14754n.indexOf(bluetoothDeviceBean));
                bluetoothDeviceBean2.getList().add(Integer.valueOf(i2));
                if (bluetoothDeviceBean2.getList().size() == 101) {
                    Collections.sort(bluetoothDeviceBean2.getList());
                    bluetoothDeviceBean2.setRssi(bluetoothDeviceBean2.getList().get(50).intValue());
                    bluetoothDeviceBean2.getList().clear();
                    Collections.sort(connectDeviceActivity.f14754n, connectDeviceActivity.f14749K);
                    connectDeviceActivity.m10588U0();
                    return;
                }
                return;
            }
            C4161y.m11054a("ConnectDeviceActivity", "Scan the new device:" + bluetoothDeviceBean.getAddress());
            ArrayList<Integer> arrayList = new ArrayList<>();
            arrayList.add(Integer.valueOf(i2));
            bluetoothDeviceBean.setList(arrayList);
            bluetoothDeviceBean.setRssi(i2);
            connectDeviceActivity.f14754n.add(bluetoothDeviceBean);
            Collections.sort(connectDeviceActivity.f14754n, connectDeviceActivity.f14749K);
            connectDeviceActivity.m10588U0();
        }
    }

    /* renamed from: C0 */
    public /* synthetic */ void m10619D0(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return;
                }
                finish();
                return;
            }
            Intent intent = new Intent(this, WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.CONNECT_HELP");
            startActivity(intent);
            return;
        }
        m10598P(this);
        this.f14764x = true;
        this.f14744F = null;
        this.f14757q.setText(R.string.connect_device_search_intercom);
        if (14 == this.f14748J) {
            this.f14758r.setText(R.string.connect_makesure_device_start_mi3);
        } else {
            this.f14758r.setText(R.string.connect_makesure_device_start);
        }
        m10606K0(true);
    }

    /* renamed from: E0 */
    private void m10618E0(BluetoothDeviceBean bluetoothDeviceBean) {
        this.f14739A.setVisibility(0);
        ObjectAnimator objectAnimator = this.f14740B;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f14739A, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f);
        ofFloat.setDuration(500L);
        ofFloat.start();
        BleCoreClient.m12373n().m12386a(bluetoothDeviceBean.getAddress(), bluetoothDeviceBean.getDeviceType());
    }

    /* renamed from: F0 */
    private void m10616F0() {
        int m11191q = MiTalkClientUtil.m11191q();
        if (m11191q == 1) {
            BleCoreClient.m12373n().m12378i(this.f14744F.getAddress()).m12317p1();
        } else if (m11191q == 9 || m11191q == 14) {
            m10591T();
        } else if (m11191q == 4) {
            BleCoreClient.m12373n().m12374m(this.f14744F.getAddress()).m12035k1();
        } else if (m11191q != 5) {
        } else {
            BleCoreClient.m12373n().m12375l(this.f14744F.getAddress()).m12088r1();
        }
    }

    /* renamed from: G0 */
    private void m10614G0() {
        UIUtils.m8598t(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.m
            @Override // java.lang.Runnable
            public final void run() {
                ConnectDeviceActivity.this.m10565r0();
            }
        });
    }

    /* renamed from: H0 */
    private void m10612H0() {
        this.f14743E = new C4346d(this, null);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        intentFilter.addAction("android.bluetooth.device.action.FOUND");
        intentFilter.addAction("android.bluetooth.adapter.action.SCAN_MODE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        registerReceiver(this.f14743E, intentFilter);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: I0 */
    private void m10610I0() {
        new RxPermissions(this).m21013l("android.permission.ACCESS_FINE_LOCATION").subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.activity.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConnectDeviceActivity.this.m10563u0((Boolean) obj);
            }
        });
    }

    /* renamed from: J0 */
    private void m10608J0() {
        OldBleDeviceDbManager m12497b = OldBleDeviceDbManager.m12497b();
        ConnectionConfiguration m12498a = m12497b.m12498a(this.f14744F.getAddress());
        if (m12498a != null) {
            m12498a.m12499h(this.f14744F.getName());
            m12497b.m12496c(m12498a);
        }
    }

    /* renamed from: K0 */
    public void m10606K0(boolean z) {
        if (getPackageManager().hasSystemFeature("android.hardware.bluetooth_le") && this.f14760t) {
            if (z) {
                m10595R();
                m10592S0();
                return;
            }
            m10590T0();
        }
    }

    /* renamed from: L0 */
    public void m10604L0() {
        if (this.f14754n.size() > 0) {
            this.f14753m.removeMessages(2);
            m10606K0(false);
            return;
        }
        m10606K0(false);
        ObjectAnimator objectAnimator = this.f14740B;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f14740B.cancel();
        }
        m10596Q0(R.string.connect_dialog_not_found_device_title);
    }

    /* renamed from: M0 */
    private void m10602M0() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_location_permission).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.o
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ConnectDeviceActivity.this.m10561w0(dialogInterface, i);
            }
        }).create().show();
    }

    /* renamed from: O0 */
    private void m10599O0() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.after_refuse_location_permission).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_to_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ConnectDeviceActivity.this.m10559y0(dialogInterface, i);
            }
        }).create().show();
    }

    /* renamed from: P */
    private void m10598P(Activity activity) {
        try {
            BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
            if (defaultAdapter != null) {
                if (!defaultAdapter.isEnabled()) {
                    MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(activity);
                    messageDialogBuilder.m7248E(R.string.connect_open_ble);
                    messageDialogBuilder.m7300b(0, R.string.common_select, 0, C4405n.f14939a);
                    messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
                } else {
                    this.f14760t = true;
                }
            }
        } catch (Exception e) {
            C4161y.m11052c("ConnectDeviceActivity", "error " + e.getMessage());
        }
    }

    /* renamed from: P0 */
    private void m10597P0() {
        new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.pls_open_location_service_at_setting_when_scan).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).setPositiveButton(R.string.go_to_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.j
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ConnectDeviceActivity.this.m10621B0(dialogInterface, i);
            }
        }).create().show();
    }

    /* renamed from: Q0 */
    private void m10596Q0(int i) {
        if (isFinishing()) {
            return;
        }
        m10606K0(false);
        QMUIDialog qMUIDialog = this.f14746H;
        if (qMUIDialog != null && qMUIDialog.isShowing()) {
            this.f14746H.dismiss();
        }
        String[] m8601q = UIUtils.m8601q(R.array.dialog_connect_note);
        ItemListBuilder itemListBuilder = new ItemListBuilder(this, false);
        for (int i2 = 0; i2 < m8601q.length - 1; i2++) {
            itemListBuilder.m12445F(m8601q[i2]);
        }
        itemListBuilder.m12442I(true);
        itemListBuilder.m7282x(i);
        ItemListBuilder itemListBuilder2 = itemListBuilder;
        itemListBuilder2.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.activity.e
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog2, View view, int i3, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                ConnectDeviceActivity.this.m10619D0(qMUIDialog2, view, i3, str, bottomSheetListAdapter);
            }
        });
        QMUIDialog m7296f = itemListBuilder2.m7296f(R.style.DialogTheme2);
        this.f14746H = m7296f;
        m7296f.show();
    }

    /* renamed from: R */
    private void m10595R() {
        if (!this.f14755o.isEmpty()) {
            this.f14755o.clear();
        }
        if (this.f14754n.isEmpty()) {
            return;
        }
        this.f14754n.clear();
    }

    /* renamed from: R0 */
    public static void m10594R0(Context context, int i) {
        Intent intent = new Intent(context, ConnectDeviceActivity.class);
        intent.putExtra("key_connect_device_type", i);
        context.startActivity(intent);
    }

    /* renamed from: S */
    private void m10593S() {
        BleCoreClient.m12373n().m12385b();
    }

    /* renamed from: S0 */
    private void m10592S0() {
        if (!C4972m.m8639c()) {
            m10597P0();
        } else if (!C4972m.m8640b("android.permission.ACCESS_FINE_LOCATION")) {
            m10602M0();
        } else if (this.f14751k) {
        } else {
            this.f14739A.setVisibility(0);
            ObjectAnimator objectAnimator = this.f14740B;
            if (objectAnimator != null) {
                objectAnimator.start();
                C4161y.m11054a("ConnectDeviceActivity", "start anim");
            }
            if (!this.f14764x) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f14739A, "alpha", BitmapDescriptorFactory.HUE_RED, 1.0f);
                ofFloat.setDuration(500L);
                ofFloat.start();
            }
            try {
                C4161y.m11054a("ConnectDeviceActivity", "start scan v1");
                this.f14750j.startLeScan(this.f14752l);
                this.f14751k = true;
                this.f14753m.sendEmptyMessageDelayed(2, 15000L);
            } catch (Exception e) {
                C4161y.m11042m("ConnectDeviceActivity", "error while start Scan, " + e.getMessage());
            }
        }
    }

    /* renamed from: T */
    public void m10591T() {
        this.f14753m.postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.p
            @Override // java.lang.Runnable
            public final void run() {
                ConnectDeviceActivity.this.m10580c0();
            }
        }, 1000L);
    }

    /* renamed from: T0 */
    private void m10590T0() {
        if (this.f14751k) {
            try {
                this.f14750j.stopLeScan(this.f14752l);
                this.f14751k = false;
            } catch (Exception e) {
                C4161y.m11042m("ConnectDeviceActivity", "error while stop Scan, " + e.getMessage());
            }
        }
    }

    /* renamed from: U */
    private void m10589U(Integer num) {
        int intValue = num.intValue();
        if (intValue != 1) {
            if (intValue == 2) {
                this.f14758r.setText(R.string.connect_please_choice_mitalki);
                m10596Q0(R.string.connect_failed_device_reject);
            } else if (intValue == 3) {
                BluetoothDeviceBean bluetoothDeviceBean = this.f14744F;
                if (bluetoothDeviceBean != null && bluetoothDeviceBean.getDeviceType() == 9) {
                    this.f14758r.setText(Html.fromHtml(UIUtils.m8603o(R.string.lite_connect_confirm_text)));
                    return;
                }
                this.f14757q.setText(R.string.connect_confirm);
                this.f14758r.setText(R.string.connect_need_confirm_on_device);
                return;
            } else if (intValue == 4) {
                this.f14758r.setText(R.string.connect_please_choice_mitalki);
                m10596Q0(R.string.connect_failed_low_power);
            } else if (intValue == 6) {
                this.f14758r.setText(R.string.connect_please_choice_mitalki);
                m10596Q0(R.string.connect_time_out);
            } else if (intValue == 7) {
                this.f14758r.setText(R.string.connect_please_choice_mitalki);
                m10596Q0(R.string.connect_fail);
            }
            BleDeviceAdapter bleDeviceAdapter = this.f14756p;
            if (bleDeviceAdapter != null) {
                this.f14744F = null;
                bleDeviceAdapter.m10400b(-1);
                this.f14756p.notifyDataSetChanged();
                return;
            }
            return;
        }
        m10614G0();
    }

    /* renamed from: V */
    private void m10587V() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f14739A, "rotation", BitmapDescriptorFactory.HUE_RED, 359.0f);
        this.f14740B = ofFloat;
        ofFloat.setDuration(3000L);
        this.f14740B.setInterpolator(new LinearInterpolator());
        this.f14740B.setRepeatCount(-1);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.f14742D, "translationY", 100.0f, BitmapDescriptorFactory.HUE_RED);
        this.f14741C = ofFloat2;
        ofFloat2.setDuration(500L);
        this.f14741C.setInterpolator(new OvershootInterpolator());
    }

    /* renamed from: W */
    private void m10586W() {
        this.f14753m.postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.k
            @Override // java.lang.Runnable
            public final void run() {
                ConnectDeviceActivity.this.m10578e0();
            }
        }, 500L);
        this.f14764x = true;
        m10595R();
    }

    /* renamed from: X */
    private void m10585X() {
        RxBus.m11806d().m11808b(this, ConnectEvent.class, new Consumer() { // from class: com.ifengyu.intercom.ui.activity.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConnectDeviceActivity.this.m10576g0((ConnectEvent) obj);
            }
        });
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.ui.activity.b
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConnectDeviceActivity.this.m10574i0((ConnectStateEvent) obj);
            }
        });
    }

    /* renamed from: Y */
    private void m10584Y() {
        QMUIAlphaImageButton m7344h = this.mTopBar.m7344h();
        this.f14747I = m7344h;
        m7344h.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConnectDeviceActivity.this.m10572k0(view);
            }
        });
        findViewById(R.id.device_connect_control).setOnClickListener(this);
        this.f14742D = (LinearLayout) findViewById(R.id.device_connect_tip_container);
        this.f14757q = (TextView) findViewById(R.id.device_connect_title);
        this.f14758r = (TextView) findViewById(R.id.device_connect_tip);
        ImageView imageView = (ImageView) findViewById(R.id.device_connect_circle);
        this.f14759s = imageView;
        imageView.setImageResource(R.drawable.connect_backview);
        this.f14761u = (ListView) findViewById(R.id.device_connect_list);
        this.f14762v = (TextView) findViewById(R.id.device_connect_list_tip);
        this.f14766z = (RelativeLayout) findViewById(R.id.device_connect_container);
        this.f14745G = (ImageView) findViewById(R.id.device_connect_long_state);
        this.f14747I.setVisibility(0);
        this.f14765y = (TextView) findViewById(R.id.device_connect_control_text);
        this.f14739A = (ImageView) findViewById(R.id.device_connect_progress);
        if (14 == this.f14748J) {
            this.f14758r.setText(R.string.connect_makesure_device_start_mi3);
        }
        this.f14761u.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.ifengyu.intercom.ui.activity.l
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                ConnectDeviceActivity.this.m10568o0(adapterView, view, i, j);
            }
        });
        this.f14761u.setOnScrollListener(new C4343a());
    }

    /* renamed from: b0 */
    public /* synthetic */ void m10580c0() {
        EventBus.m174c().m164m(new SimpleEvent(10));
        int m11191q = MiTalkClientUtil.m11191q();
        if (m11191q == 9) {
            LiteSettingHolderActivity.start(this);
        } else if (m11191q == 14) {
            BluetoothDeviceBean bluetoothDeviceBean = this.f14744F;
            if (bluetoothDeviceBean != null && bluetoothDeviceBean.getAddress() != null) {
                Mi3SettingHolderActivity.m13825U(this, this.f14744F.getAddress());
            }
        } else {
            BluetoothDeviceBean bluetoothDeviceBean2 = this.f14744F;
            if (bluetoothDeviceBean2 != null && bluetoothDeviceBean2.getAddress() != null) {
                Intent intent = new Intent(this, BleDeviceMapActivity.class);
                intent.putExtra("device_mac_address", this.f14744F.getAddress());
                startActivity(intent);
            }
        }
        finish();
    }

    /* renamed from: d0 */
    public /* synthetic */ void m10578e0() {
        m10598P(this);
        m10606K0(true);
    }

    /* renamed from: f0 */
    public /* synthetic */ void m10576g0(ConnectEvent connectEvent) throws Exception {
        m10589U(Integer.valueOf(connectEvent.getConnectStatus()));
    }

    /* renamed from: h0 */
    public /* synthetic */ void m10574i0(ConnectStateEvent connectStateEvent) throws Exception {
        if (connectStateEvent.getState() == ConnectStateEvent.STATE_CONNECTED) {
            m10616F0();
        }
    }

    private void init() {
        this.f14753m = new HandlerC4347e(this);
        if (getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            this.f14750j = BluetoothAdapter.getDefaultAdapter();
            int intExtra = getIntent().getIntExtra("key_connect_device_type", 1);
            this.f14748J = intExtra;
            this.f14752l = new C4345c(this.f14753m, intExtra, null);
        }
    }

    /* renamed from: j0 */
    public /* synthetic */ void m10572k0(View view) {
        onBackPressed();
    }

    /* renamed from: l0 */
    public /* synthetic */ void m10570m0(BluetoothDeviceBean bluetoothDeviceBean) {
        this.f14744F = bluetoothDeviceBean;
        m10618E0(bluetoothDeviceBean);
    }

    /* renamed from: n0 */
    public /* synthetic */ void m10568o0(AdapterView adapterView, View view, int i, long j) {
        final BluetoothDeviceBean bluetoothDeviceBean = this.f14754n.get(i);
        if (bluetoothDeviceBean != null) {
            m10606K0(false);
            m10593S();
            this.f14756p.m10400b(i);
            this.f14756p.notifyDataSetChanged();
            TextView textView = this.f14758r;
            if (textView != null) {
                textView.setText(R.string.connecting_device);
            }
            this.f14753m.postDelayed(new Runnable() { // from class: com.ifengyu.intercom.ui.activity.a
                @Override // java.lang.Runnable
                public final void run() {
                    ConnectDeviceActivity.this.m10570m0(bluetoothDeviceBean);
                }
            }, 500L);
        }
    }

    /* renamed from: q0 */
    public /* synthetic */ void m10565r0() {
        this.f14747I.setVisibility(8);
        this.f14761u.setVisibility(8);
        this.f14762v.setVisibility(8);
        this.f14745G.setVisibility(8);
        ImageView imageView = this.f14759s;
        if (imageView != null) {
            imageView.setImageResource(R.drawable.connect_success);
        }
        if (this.f14739A != null) {
            this.f14740B.cancel();
            this.f14739A.setVisibility(8);
        }
        TextView textView = this.f14757q;
        if (textView != null) {
            textView.setText(R.string.connect_success);
        }
        TextView textView2 = this.f14758r;
        if (textView2 != null) {
            textView2.setText(R.string.connect_user_welcome);
        }
        ObjectAnimator objectAnimator = this.f14741C;
        if (objectAnimator == null || objectAnimator.isRunning()) {
            return;
        }
        this.f14741C.start();
    }

    /* renamed from: t0 */
    public /* synthetic */ void m10563u0(Boolean bool) throws Exception {
        if (bool.booleanValue()) {
            UserPrivacyReportUtil.m11142q("location");
            m10592S0();
            return;
        }
        UserPrivacyReportUtil.m11150i("location");
        m10599O0();
    }

    /* renamed from: v0 */
    public /* synthetic */ void m10561w0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        m10610I0();
    }

    /* renamed from: x0 */
    public /* synthetic */ void m10559y0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        startActivity(C4972m.m8641a());
    }

    /* renamed from: z0 */
    public /* synthetic */ void m10621B0(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.setFlags(268435456);
        startActivity(intent);
    }

    /* renamed from: U0 */
    public void m10588U0() {
        BleDeviceAdapter bleDeviceAdapter = this.f14756p;
        if (bleDeviceAdapter == null) {
            BleDeviceAdapter bleDeviceAdapter2 = new BleDeviceAdapter(this, this.f14754n);
            this.f14756p = bleDeviceAdapter2;
            this.f14761u.setAdapter((ListAdapter) bleDeviceAdapter2);
        } else {
            bleDeviceAdapter.notifyDataSetChanged();
        }
        if (this.f14756p.getCount() > 3) {
            this.f14745G.setVisibility(0);
        } else {
            this.f14745G.setVisibility(8);
        }
        if (this.f14764x) {
            this.f14764x = false;
            this.f14765y.setText(R.string.connect_not_found);
            this.f14757q.setText(R.string.connect_found_mitalki);
            this.f14758r.setText(R.string.connect_please_choice_mitalki);
            this.f14761u.setVisibility(0);
            this.f14762v.setVisibility(0);
            ObjectAnimator.ofFloat(this.f14762v, "translationY", 500.0f, BitmapDescriptorFactory.HUE_RED).setDuration(300L).start();
            ObjectAnimator.ofFloat(this.f14761u, "translationY", 500.0f, BitmapDescriptorFactory.HUE_RED).setDuration(500L).start();
            ViewPropertyAnimator animate = this.f14766z.animate();
            this.f14763w = animate;
            animate.translationY(-100.0f).scaleX(0.9f).scaleY(0.9f).setDuration(500L).start();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.f14739A, "alpha", 1.0f, 0.9f);
            ofFloat.setDuration(3000L);
            ofFloat.addListener(new C4344b());
            ofFloat.start();
            ObjectAnimator objectAnimator = this.f14741C;
            if (objectAnimator == null || objectAnimator.isRunning()) {
                return;
            }
            this.f14741C.start();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.device_connect_control) {
            return;
        }
        m10606K0(false);
        ObjectAnimator objectAnimator = this.f14740B;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.f14740B.cancel();
        }
        if (this.f14744F != null) {
            this.f14753m.removeCallbacksAndMessages(null);
        }
        m10596Q0(R.string.connect_not_connected_device);
        BleDeviceAdapter bleDeviceAdapter = this.f14756p;
        if (bleDeviceAdapter != null) {
            this.f14744F = null;
            bleDeviceAdapter.m10400b(-1);
            this.f14756p.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_connect_device);
        ButterKnife.bind(this);
        init();
        m10584Y();
        m10587V();
        m10585X();
        m10612H0();
        m10586W();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        ObjectAnimator objectAnimator = this.f14740B;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        C4346d c4346d = this.f14743E;
        if (c4346d != null) {
            unregisterReceiver(c4346d);
        }
        m10606K0(false);
        this.f14753m.removeCallbacksAndMessages(null);
        ObjectAnimator objectAnimator2 = this.f14740B;
        if (objectAnimator2 != null) {
            objectAnimator2.end();
        }
        QMUIDialog qMUIDialog = this.f14746H;
        if (qMUIDialog != null && qMUIDialog.isShowing()) {
            this.f14746H.dismiss();
        }
        RxBus.m11806d().m11803g(this);
        super.onDestroy();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        MiBus.getInstance().m6409l(this);
    }

    @Subscribe
    public void onReceiveDolphinParamResponse(MitalkProtos.ParamUpdate paramUpdate) {
        C4161y.m11054a("ConnectDeviceActivity", "onReceiveDolphinParamData");
        if (paramUpdate.getResult() == MitalkProtos.STATECODE.SUCCESS) {
            if (paramUpdate.hasDevNameGBK()) {
                this.f14744F.setName(MiTalkClientUtil.m11193p());
                m10608J0();
            }
            if (paramUpdate.hasActivateChannel() && paramUpdate.hasDevNameGBK() && paramUpdate.hasVersionHW()) {
                runOnUiThread(new RunnableC4385d(this));
            }
        }
    }

    @Subscribe
    public void onReceiveSealParamData(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        C4161y.m11054a("ConnectDeviceActivity", "onReceiveSealParamData");
        if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK) {
            if (sEAL_DeviceParam.hasDeviceName()) {
                this.f14744F.setName(MiTalkClientUtil.m11193p());
                m10608J0();
            }
            if (sEAL_DeviceParam.hasActivate() && sEAL_DeviceParam.hasDeviceName() && sEAL_DeviceParam.hasVerHw()) {
                runOnUiThread(new RunnableC4385d(this));
            }
        }
    }

    @Subscribe
    public void onReceiveSharkParamData(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        C4161y.m11054a("ConnectDeviceActivity", "onReceiveSharkParamData");
        if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK) {
            if (sHARK_DeviceParam.hasDeviceName()) {
                this.f14744F.setName(MiTalkClientUtil.m11193p());
                m10608J0();
            }
            if (sHARK_DeviceParam.hasActivate() && sHARK_DeviceParam.hasDeviceName() && sHARK_DeviceParam.hasVerHw()) {
                runOnUiThread(new RunnableC4385d(this));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        MiBus.getInstance().m6411j(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.old.BaseActivity1
    /* renamed from: z */
    protected boolean mo10271z() {
        return false;
    }
}
