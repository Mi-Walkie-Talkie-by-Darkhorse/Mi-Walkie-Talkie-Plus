package com.ifengyu.intercom.ui.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.le.BluetoothLeScanner;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.text.Html;
import android.text.SpannableString;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.lifecycle.x;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BluetoothDeviceBean;
import com.ifengyu.intercom.bean.PrivacyInfoBean;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.e0;
import com.ifengyu.intercom.i.g0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.l0;
import com.ifengyu.intercom.i.y;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.lite.dialog.list.d;
import com.ifengyu.intercom.lite.event.a;
import com.ifengyu.intercom.lite.h.h0;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.btle.BtleCentralService;
import com.ifengyu.intercom.node.e;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.intercom.ui.MainActivity;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.library.base.BaseApp;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;
import com.umeng.analytics.pro.ai;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import okhttp3.Call;
import pub.devrel.easypermissions.EasyPermissions;

/* loaded from: classes2.dex */
public class ConnectDeviceActivity extends BaseActivity implements View.OnClickListener, e.b, EasyPermissions.PermissionCallbacks {
    private ImageView A;
    private com.ifengyu.intercom.node.h B;
    private ListView D;
    private TextView E;
    private ViewPropertyAnimator F;
    private TextView H;
    private RelativeLayout I;
    private ImageView J;
    private ObjectAnimator K;
    private LinearLayout L;
    private Intent M;
    private t N;
    private BluetoothDeviceBean O;
    private String P;
    private String Q;
    private ObjectAnimator R;
    private ImageView S;
    private IntentFilter T;
    private MiTalkiApp U;
    private String V;
    private BtleCentralService.a W;
    private com.qmuiteam.qmui.widget.dialog.b b0;
    private h0 c0;
    private com.qmuiteam.qmui.widget.dialog.b d0;
    private Button e0;
    private QMUIAlphaImageButton f0;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    private BluetoothAdapter q;
    private BluetoothLeScanner r;
    private s t;
    private v u;
    private com.ifengyu.intercom.ui.adapter.a x;
    private TextView y;
    private TextView z;
    private boolean s = false;
    private List<BluetoothDeviceBean> v = new ArrayList();
    private Set<String> w = new HashSet();
    private boolean C = false;
    private boolean G = true;
    private ServiceConnection X = new j();
    private Runnable Y = new k();
    private Runnable Z = new Runnable() { // from class: com.ifengyu.intercom.ui.activity.c
        @Override // java.lang.Runnable
        public final void run() {
            ConnectDeviceActivity.this.w();
        }
    };
    private Comparator<BluetoothDeviceBean> g0 = new f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements d.c {
        a() {
        }

        @Override // com.ifengyu.intercom.lite.dialog.list.d.c
        public void a(com.qmuiteam.qmui.widget.dialog.b bVar, View view, int i, String str) {
            if (i == 0) {
                ConnectDeviceActivity.this.B();
                ConnectDeviceActivity connectDeviceActivity = ConnectDeviceActivity.this;
                connectDeviceActivity.a((Activity) connectDeviceActivity);
                ConnectDeviceActivity.this.G = true;
                ConnectDeviceActivity.this.O = null;
                ConnectDeviceActivity.this.y.setText(R.string.connect_device_search_intercom);
                ConnectDeviceActivity.this.z.setText(R.string.connect_makesure_device_start);
                ConnectDeviceActivity.this.b(true);
            } else if (i == 1) {
                ConnectDeviceActivity.this.b(false);
                Intent intent = new Intent(ConnectDeviceActivity.this, WebViewActivity.class);
                intent.setAction("com.ifengyu.intercom.action.CONNECT_HELP");
                ConnectDeviceActivity.this.startActivity(intent);
            } else if (i == 2) {
                ConnectDeviceActivity.this.b(false);
                ConnectDeviceActivity.this.a(MainActivity.class);
                ConnectDeviceActivity.this.finish();
            }
            bVar.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b extends com.ifengyu.intercom.g.d.h {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f6027b;

        b(String str) {
            this.f6027b = str;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            exc.printStackTrace();
        }

        public void a(PrivacyInfoBean privacyInfoBean, int i) {
            d0.a(this.f6027b, Integer.parseInt(privacyInfoBean.getVersion()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c extends com.qmuiteam.qmui.span.d {
        c(int i, int i2, int i3, int i4) {
            super(i, i2, i3, i4);
        }

        @Override // com.qmuiteam.qmui.span.d
        public void a(View view) {
            UserProtocolActivity.a(ConnectDeviceActivity.this, d0.g());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (ConnectDeviceActivity.this.z != null) {
                ConnectDeviceActivity.this.z.setText(R.string.connect_need_confirm_on_device);
                ConnectDeviceActivity.this.y.setText(R.string.connect_confirm);
                if (ConnectDeviceActivity.this.R != null && !ConnectDeviceActivity.this.R.isRunning()) {
                    ConnectDeviceActivity.this.R.start();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConnectDeviceActivity.this.f0.setVisibility(8);
            ConnectDeviceActivity.this.D.setVisibility(8);
            ConnectDeviceActivity.this.E.setVisibility(8);
            ConnectDeviceActivity.this.S.setVisibility(8);
            if (ConnectDeviceActivity.this.A != null) {
                ConnectDeviceActivity.this.A.setImageResource(R.drawable.connect_success);
            }
            if (ConnectDeviceActivity.this.J != null) {
                ConnectDeviceActivity.this.K.cancel();
                ConnectDeviceActivity.this.J.setVisibility(8);
            }
            if (ConnectDeviceActivity.this.y != null) {
                ConnectDeviceActivity.this.y.setText(R.string.connect_success);
            }
            if (ConnectDeviceActivity.this.z != null) {
                ConnectDeviceActivity.this.z.setText(R.string.connect_user_welcome);
            }
            if (ConnectDeviceActivity.this.R != null && !ConnectDeviceActivity.this.R.isRunning()) {
                ConnectDeviceActivity.this.R.start();
            }
            int g = d0.g();
            if (g == 1) {
                com.ifengyu.intercom.node.e.d().c();
            } else if (g == 4) {
                com.ifengyu.intercom.i.h0.d();
            } else if (g == 5) {
                g0.h();
            }
        }
    }

    /* loaded from: classes2.dex */
    class f implements Comparator<BluetoothDeviceBean> {
        f() {
        }

        /* renamed from: a */
        public int compare(BluetoothDeviceBean bluetoothDeviceBean, BluetoothDeviceBean bluetoothDeviceBean2) {
            int compareTo = Integer.valueOf(bluetoothDeviceBean2.getRssi()).compareTo(Integer.valueOf(bluetoothDeviceBean.getRssi()));
            return compareTo == 0 ? bluetoothDeviceBean2.getAddress().compareTo(bluetoothDeviceBean.getAddress()) : compareTo;
        }
    }

    /* loaded from: classes2.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ MitalkProtos.ParamUpdate f6032a;

        g(MitalkProtos.ParamUpdate paramUpdate) {
            this.f6032a = paramUpdate;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6032a.hasActivateChannel()) {
                z.a("ConnectDeviceActivity", "activateChannel:" + this.f6032a.getActivateChannel());
                ((MiTalkiApp) ConnectDeviceActivity.this.getApplication()).h = this.f6032a.getActivateChannel() != 0;
            }
            ConnectDeviceActivity.this.D();
        }
    }

    /* loaded from: classes2.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f6034a;

        h(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f6034a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6034a.hasActivate()) {
                ((MiTalkiApp) ConnectDeviceActivity.this.getApplication()).h = this.f6034a.getActivate() != 0;
            }
            ConnectDeviceActivity.this.D();
        }
    }

    /* loaded from: classes2.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ SharkProtos.SHARK_DeviceParam f6036a;

        i(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
            this.f6036a = sHARK_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f6036a.hasActivate()) {
                ((MiTalkiApp) ConnectDeviceActivity.this.getApplication()).h = this.f6036a.getActivate() != 0;
            }
            ConnectDeviceActivity.this.D();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements ServiceConnection {
        j() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ConnectDeviceActivity.this.W = (BtleCentralService.a) iBinder;
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    /* loaded from: classes2.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!com.ifengyu.intercom.node.j.b().a() && ConnectDeviceActivity.this.z.getText().equals(ConnectDeviceActivity.this.getString(R.string.connecting_device))) {
                ConnectDeviceActivity.this.z.setText(R.string.connect_please_choice_mitalki);
                ConnectDeviceActivity.this.e((int) R.string.connect_time_out);
                if (ConnectDeviceActivity.this.x != null) {
                    ConnectDeviceActivity.this.O = null;
                    ConnectDeviceActivity.this.x.a(-1);
                    ConnectDeviceActivity.this.x.notifyDataSetChanged();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements Runnable {
        l() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConnectDeviceActivity.this.a(new ConnectionConfiguration(ConnectDeviceActivity.this.Q, ConnectDeviceActivity.this.P, false, d0.g()));
            ConnectDeviceActivity.this.F();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements View.OnClickListener {
        m() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConnectDeviceActivity.this.A();
            ConnectDeviceActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class n implements View.OnClickListener {
        n() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ConnectDeviceActivity.this.b(false);
            ConnectDeviceActivity.this.a(MainActivity.class);
            ConnectDeviceActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o implements AdapterView.OnItemClickListener {

        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BluetoothDeviceBean f6044a;

            a(BluetoothDeviceBean bluetoothDeviceBean) {
                this.f6044a = bluetoothDeviceBean;
            }

            @Override // java.lang.Runnable
            public void run() {
                ConnectDeviceActivity.this.c(this.f6044a.getDevice().getAddress());
            }
        }

        o() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            BluetoothDeviceBean bluetoothDeviceBean = (BluetoothDeviceBean) ConnectDeviceActivity.this.v.get(i);
            if (bluetoothDeviceBean != null) {
                ConnectDeviceActivity.this.b(false);
                ConnectDeviceActivity.this.B();
                if (bluetoothDeviceBean.getDeviceType() == 36611) {
                    ConnectDeviceActivity.this.u.postDelayed(new a(bluetoothDeviceBean), 500L);
                } else {
                    ConnectDeviceActivity.this.b(bluetoothDeviceBean);
                }
                ConnectDeviceActivity.this.x.a(i);
                ConnectDeviceActivity.this.x.notifyDataSetChanged();
                if (ConnectDeviceActivity.this.z != null) {
                    ConnectDeviceActivity.this.z.setText(R.string.connecting_device);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p implements AbsListView.OnScrollListener {
        p() {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (ConnectDeviceActivity.this.D.getAdapter().getCount() > 3 && i == 0) {
                if (ConnectDeviceActivity.this.D.getLastVisiblePosition() == ConnectDeviceActivity.this.D.getAdapter().getCount() - 1) {
                    ConnectDeviceActivity.this.S.setVisibility(8);
                } else {
                    ConnectDeviceActivity.this.S.setVisibility(0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class q implements Runnable {
        q() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ConnectDeviceActivity connectDeviceActivity = ConnectDeviceActivity.this;
            connectDeviceActivity.a((Activity) connectDeviceActivity);
            ConnectDeviceActivity.this.b(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r extends AnimatorListenerAdapter {
        r() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (ConnectDeviceActivity.this.K != null) {
                ConnectDeviceActivity.this.K.cancel();
            }
            ConnectDeviceActivity.this.J.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class s implements BluetoothAdapter.LeScanCallback {

        /* renamed from: a  reason: collision with root package name */
        private v f6049a;

        /* synthetic */ s(v vVar, j jVar) {
            this(vVar);
        }

        @Override // android.bluetooth.BluetoothAdapter.LeScanCallback
        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            String address = bluetoothDevice.getAddress();
            int c2 = c0.c(i);
            com.ifengyu.blelib.f.c a2 = com.ifengyu.blelib.f.c.a(bArr);
            if (y.b(a2)) {
                String a3 = a2.a();
                z.a("ConnectDeviceActivity", "ScanRecord: " + a2.toString());
                int a4 = y.a(a2);
                z.c("ConnectDeviceActivity", "discover device-->name: " + a3 + ", address: " + address + ", deviceType: " + a4);
                v vVar = this.f6049a;
                vVar.sendMessage(Message.obtain(vVar, 1, c2, 0, new BluetoothDeviceBean(address, a3, a4, bluetoothDevice)));
            }
        }

        private s(v vVar) {
            this.f6049a = vVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class t extends BroadcastReceiver {
        t() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                z.c("ConnectDeviceActivity", "onReceive: action = " + action);
                if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(action)) {
                    int intExtra = intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0);
                    if (intExtra == 10) {
                        ConnectDeviceActivity.this.u.sendMessage(Message.obtain(ConnectDeviceActivity.this.u, 4, 0, 0, null));
                    } else if (intExtra == 12) {
                        ConnectDeviceActivity.this.u.sendMessage(Message.obtain(ConnectDeviceActivity.this.u, 3, 0, 0, null));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class u implements com.ifengyu.intercom.node.h {

        /* loaded from: classes2.dex */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ConnectDeviceActivity.this.O != null) {
                    ConnectDeviceActivity.this.u.removeMessages(5);
                    ConnectDeviceActivity.this.u.sendMessage(Message.obtain(ConnectDeviceActivity.this.u, 6, 0, 0, ConnectDeviceActivity.this.O));
                }
                ConnectDeviceActivity.this.z.setText(R.string.connect_please_choice_mitalki);
                ConnectDeviceActivity.this.e((int) R.string.connect_failed_device_reject);
                if (ConnectDeviceActivity.this.x != null) {
                    ConnectDeviceActivity.this.O = null;
                    ConnectDeviceActivity.this.x.a(-1);
                    ConnectDeviceActivity.this.x.notifyDataSetChanged();
                }
            }
        }

        /* loaded from: classes2.dex */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (ConnectDeviceActivity.this.O != null) {
                    ConnectDeviceActivity.this.u.removeMessages(5);
                    ConnectDeviceActivity.this.u.sendMessage(Message.obtain(ConnectDeviceActivity.this.u, 6, 0, 0, ConnectDeviceActivity.this.O));
                }
                ConnectDeviceActivity.this.e((int) R.string.connect_failed_low_power);
                if (ConnectDeviceActivity.this.x != null) {
                    ConnectDeviceActivity.this.O = null;
                    ConnectDeviceActivity.this.x.a(-1);
                    ConnectDeviceActivity.this.x.notifyDataSetChanged();
                }
            }
        }

        u() {
        }

        @Override // com.ifengyu.intercom.node.h
        public void a(String str) {
            z.d("ConnectDeviceActivity", "onPeerVersionMismathed: address=" + str);
        }

        @Override // com.ifengyu.intercom.node.h
        public void b(String str) {
            z.d("ConnectDeviceActivity", "onPeerLowpower: address=" + str);
            k0.a(new b());
        }

        @Override // com.ifengyu.intercom.node.h
        public void c(String str) {
            z.d("ConnectDeviceActivity", "onPeerConnectDenied: address=" + str);
            k0.a(new a());
        }

        @Override // com.ifengyu.intercom.node.h
        public void d(String str) {
            z.d("ConnectDeviceActivity", "onPeerConnected: nodeId=" + str);
            ConnectDeviceActivity.this.u.removeCallbacksAndMessages(null);
            BaseApp.a().removeCallbacks(ConnectDeviceActivity.this.Y);
            if (d0.g() == 1) {
                com.ifengyu.intercom.node.e.d().a(Integer.parseInt(d0.N()), d0.P());
            }
            ConnectDeviceActivity.this.J();
        }

        @Override // com.ifengyu.intercom.node.h
        public void e(String str) {
            ConnectDeviceActivity.this.K();
        }

        @Override // com.ifengyu.intercom.node.h
        public void f(String str) {
            z.d("ConnectDeviceActivity", "onPeerDisConnected: nodeId=" + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class v extends com.ifengyu.intercom.ui.baseui.b<ConnectDeviceActivity> {
        public v(ConnectDeviceActivity connectDeviceActivity) {
            super(connectDeviceActivity);
        }

        public void a(Message message, ConnectDeviceActivity connectDeviceActivity) {
            if (connectDeviceActivity == null) {
                z.b("ConnectDeviceActivity", "scanBleActivity == null");
                return;
            }
            switch (message.what) {
                case 1:
                    int i = message.arg1;
                    BluetoothDeviceBean bluetoothDeviceBean = (BluetoothDeviceBean) message.obj;
                    if (connectDeviceActivity.v.contains(bluetoothDeviceBean)) {
                        BluetoothDeviceBean bluetoothDeviceBean2 = (BluetoothDeviceBean) connectDeviceActivity.v.get(connectDeviceActivity.v.indexOf(bluetoothDeviceBean));
                        bluetoothDeviceBean2.getList().add(Integer.valueOf(i));
                        if (bluetoothDeviceBean2.getList().size() == 101) {
                            Collections.sort(bluetoothDeviceBean2.getList());
                            bluetoothDeviceBean2.setRssi(bluetoothDeviceBean2.getList().get(50).intValue());
                            bluetoothDeviceBean2.getList().clear();
                            Collections.sort(connectDeviceActivity.v, connectDeviceActivity.g0);
                            connectDeviceActivity.x();
                            return;
                        }
                        return;
                    }
                    z.a("ConnectDeviceActivity", "Scan the new device:" + bluetoothDeviceBean.getAddress());
                    ArrayList<Integer> arrayList = new ArrayList<>();
                    arrayList.add(Integer.valueOf(i));
                    bluetoothDeviceBean.setList(arrayList);
                    bluetoothDeviceBean.setRssi(i);
                    connectDeviceActivity.v.add(bluetoothDeviceBean);
                    Collections.sort(connectDeviceActivity.v, connectDeviceActivity.g0);
                    connectDeviceActivity.x();
                    return;
                case 2:
                    connectDeviceActivity.P();
                    return;
                case 3:
                    connectDeviceActivity.C = true;
                    if (c0.f(21) && !Build.MODEL.equals("DUK-AL20")) {
                        connectDeviceActivity.r = connectDeviceActivity.q.getBluetoothLeScanner();
                    }
                    connectDeviceActivity.b(true);
                    return;
                case 4:
                    connectDeviceActivity.b(false);
                    connectDeviceActivity.C = false;
                    return;
                case 5:
                    connectDeviceActivity.b(false);
                    Object obj = message.obj;
                    if (obj != null && (obj instanceof BluetoothDeviceBean)) {
                        connectDeviceActivity.a((BluetoothDeviceBean) obj);
                    }
                    BaseApp.a().postDelayed(connectDeviceActivity.Y, 10000L);
                    return;
                case 6:
                    Object obj2 = message.obj;
                    if (obj2 != null && (obj2 instanceof BluetoothDeviceBean) && connectDeviceActivity.O != null) {
                        connectDeviceActivity.a(new ConnectionConfiguration(connectDeviceActivity.O.getName(), connectDeviceActivity.O.getAddress(), false));
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        com.ifengyu.intercom.node.q.d a2;
        BluetoothDeviceBean bluetoothDeviceBean = this.O;
        if (!(bluetoothDeviceBean == null || bluetoothDeviceBean.getDeviceType() == 36611)) {
            a(new ConnectionConfiguration(this.O.getName(), this.O.getAddress(), false));
        }
        String l2 = l();
        String m2 = m();
        if (l2 != null && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
            a2.c(new ConnectionConfiguration(m2, l2, true));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        com.ifengyu.intercom.node.q.d a2;
        this.c0.b();
        ConnectionConfiguration a3 = this.W.a();
        if (a3 != null && (a2 = com.ifengyu.intercom.service.a.a()) != null) {
            a2.b(a3.a(), true);
        }
    }

    private SpannableString C() {
        String string = getString(R.string.lite_user_protocol_prefix);
        String str = string + getString(R.string.lite_user_protocol);
        SpannableString spannableString = new SpannableString(str);
        c cVar = new c(androidx.core.content.b.a(this, (int) R.color.lite_colorAccent), androidx.core.content.b.a(this, (int) R.color.lite_colorAccent50), 0, 0);
        cVar.b(true);
        spannableString.setSpan(cVar, string.length(), str.length(), 17);
        return spannableString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void D() {
        this.u.removeCallbacks(this.Z);
        com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
        if (c2 == null) {
            com.ifengyu.intercom.node.q.d.a(getApplicationContext());
            c2 = com.ifengyu.intercom.node.q.d.c();
        }
        ConnectionConfiguration a2 = c2.d.a(this.P);
        z.c("ConnectDeviceActivity", "isActivateDevice:" + this.U.h);
        if (!this.U.h) {
            a2.b(true);
            c2.d.a(a2);
        }
        Q();
    }

    private void E() {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.L, "translationY", 100.0f, 0.0f);
        this.R = ofFloat;
        ofFloat.setDuration(500L);
        this.R.setInterpolator(new OvershootInterpolator());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        this.u.postDelayed(new q(), 500L);
        this.G = true;
        z();
    }

    private void G() {
        QMUIAlphaImageButton a2 = this.mTopBar.a();
        this.f0 = a2;
        a2.setOnClickListener(new m());
        Button c2 = this.mTopBar.c(R.string.skip, com.qmuiteam.qmui.util.l.a());
        this.e0 = c2;
        c2.setTextColor(androidx.appcompat.a.a.a.b(this, R.color.topbar_right_btn_color_state_list));
        this.e0.setOnClickListener(new n());
    }

    private void H() {
        findViewById(R.id.device_connect_control).setOnClickListener(this);
        this.L = (LinearLayout) findViewById(R.id.device_connect_tip_container);
        this.y = (TextView) findViewById(R.id.device_connect_title);
        this.z = (TextView) findViewById(R.id.device_connect_tip);
        ImageView imageView = (ImageView) findViewById(R.id.device_connect_circle);
        this.A = imageView;
        imageView.setImageResource(R.drawable.connect_backview);
        this.D = (ListView) findViewById(R.id.device_connect_list);
        this.E = (TextView) findViewById(R.id.device_connect_list_tip);
        this.I = (RelativeLayout) findViewById(R.id.device_connect_container);
        this.S = (ImageView) findViewById(R.id.device_connect_long_state);
        int i2 = 8;
        this.e0.setVisibility(("com.ifengyu.intercom.FROM_SPLASH".equals(this.V) || "com.ifengyu.intercom.FROM_LOGIN".equals(this.V)) ? 0 : 8);
        QMUIAlphaImageButton qMUIAlphaImageButton = this.f0;
        if ("com.ifengyu.intercom.FROM_DEVICE".equals(this.V) || "com.ifengyu.intercom.FORM_MAIN".equals(this.V) || "com.ifengyu.intercom.RECONNECT_DEVICE".equals(this.V)) {
            i2 = 0;
        }
        qMUIAlphaImageButton.setVisibility(i2);
        this.H = (TextView) findViewById(R.id.device_connect_control_text);
        ImageView imageView2 = (ImageView) findViewById(R.id.device_connect_progress);
        this.J = imageView2;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(imageView2, "rotation", 0.0f, 359.0f);
        this.K = ofFloat;
        ofFloat.setDuration(3000L);
        this.K.setInterpolator(new LinearInterpolator());
        this.K.setRepeatCount(-1);
        this.D.setOnItemClickListener(new o());
        this.D.setOnScrollListener(new p());
    }

    private void I() {
        this.c0 = (h0) x.a(this).a(h0.class);
        com.ifengyu.intercom.lite.utils.j.a().a(this, com.ifengyu.intercom.lite.event.a.class, new Consumer() { // from class: com.ifengyu.intercom.ui.activity.f
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ConnectDeviceActivity.this.a((a) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        k0.a(new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K() {
        k0.a(new d());
    }

    private void L() {
        if (!isFinishing()) {
            new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.pls_open_location_service_at_setting).setPositiveButton(R.string.go_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.g
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ConnectDeviceActivity.this.c(dialogInterface, i2);
                }
            }).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).create().show();
        }
    }

    private void M() {
        if ("com.ifengyu.intercom.RECONNECT_DEVICE".equals(this.V)) {
            a((Activity) this);
            ObjectAnimator objectAnimator = this.K;
            if (objectAnimator != null && !objectAnimator.isRunning()) {
                this.K.start();
            }
            this.P = this.M.getStringExtra("device_address");
            this.Q = this.M.getStringExtra(ai.J);
            int intExtra = this.M.getIntExtra(ai.ai, 0);
            BluetoothDeviceBean bluetoothDeviceBean = new BluetoothDeviceBean();
            this.O = bluetoothDeviceBean;
            bluetoothDeviceBean.setAddress(this.P);
            this.O.setName(this.Q);
            this.O.setDeviceType(intExtra);
            if (intExtra == 36611) {
                c(this.P);
                return;
            }
            a(this.O);
            this.u.postDelayed(new l(), 20000L);
            return;
        }
        F();
    }

    private void N() {
        com.ifengyu.intercom.node.e.d().a(this);
        com.ifengyu.intercom.node.j.b().a(this.B);
        this.N = new t();
        IntentFilter intentFilter = new IntentFilter();
        this.T = intentFilter;
        intentFilter.addAction("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        this.T.addAction("android.bluetooth.device.action.FOUND");
        this.T.addAction("android.bluetooth.adapter.action.SCAN_MODE_CHANGED");
        this.T.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        registerReceiver(this.N, this.T);
        M();
    }

    private void O() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void P() {
        if (this.v.size() > 0) {
            this.u.removeMessages(2);
            b(false);
            return;
        }
        b(false);
        ObjectAnimator objectAnimator = this.K;
        if (objectAnimator != null && objectAnimator.isRunning()) {
            this.K.cancel();
        }
        e(R.string.connect_dialog_not_found_device_title);
    }

    private void Q() {
        if (!isFinishing()) {
            final int g2 = d0.g();
            final String a2 = com.ifengyu.intercom.f.a.a(g2);
            if (d0.a(g2)) {
                this.u.postDelayed(this.Z, 2000L);
                return;
            }
            d(a2);
            if (this.d0 == null) {
                com.ifengyu.intercom.lite.c.b.e eVar = new com.ifengyu.intercom.lite.c.b.e(this);
                eVar.a(false);
                com.ifengyu.intercom.lite.c.b.e eVar2 = eVar;
                eVar2.b(false);
                com.ifengyu.intercom.lite.c.b.e eVar3 = eVar2;
                eVar3.c(R.string.dialog_privacy_policy_title);
                com.ifengyu.intercom.lite.c.b.e eVar4 = eVar3;
                eVar4.a(C());
                eVar4.a(0, R.string.common_cancel, 2, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.activity.d
                    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                    public final void a(b bVar, int i2) {
                        ConnectDeviceActivity.this.a(bVar, i2);
                    }
                });
                com.ifengyu.intercom.lite.c.b.e eVar5 = eVar4;
                eVar5.a(0, R.string.agree_and_continue, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.ui.activity.e
                    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                    public final void a(b bVar, int i2) {
                        ConnectDeviceActivity.this.a(a2, g2, bVar, i2);
                    }
                });
                this.d0 = eVar5.a(R.style.DialogTheme2);
            }
            if (!this.d0.isShowing()) {
                this.d0.show();
            }
        }
    }

    private void R() {
        if (com.ifengyu.intercom.i.i.b()) {
            if (!EasyPermissions.hasPermissions(this, "android.permission.ACCESS_FINE_LOCATION")) {
                y();
                return;
            } else if (!e0.a(this)) {
                L();
                return;
            }
        }
        if (!this.s) {
            this.J.setVisibility(0);
            ObjectAnimator objectAnimator = this.K;
            if (objectAnimator != null) {
                objectAnimator.start();
                z.a("ConnectDeviceActivity", "start anim");
            }
            if (!this.G) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.J, "alpha", 0.0f, 1.0f);
                ofFloat.setDuration(500L);
                ofFloat.start();
            }
            try {
                z.a("ConnectDeviceActivity", "start scan v1");
                this.q.startLeScan(this.t);
                this.s = true;
                this.u.sendEmptyMessageDelayed(2, 15000L);
            } catch (Exception e2) {
                z.e("ConnectDeviceActivity", "error while start Scan, " + e2.getMessage());
            }
        }
    }

    private void S() {
        if (this.s) {
            try {
                this.q.stopLeScan(this.t);
                this.s = false;
            } catch (Exception e2) {
                z.e("ConnectDeviceActivity", "error while stop Scan, " + e2.getMessage());
            }
        }
    }

    private void init() {
        this.M = getIntent();
        this.u = new v(this);
        this.B = new u();
        if (getPackageManager().hasSystemFeature("android.hardware.bluetooth_le")) {
            this.q = BluetoothAdapter.getDefaultAdapter();
            this.t = new s(this.u, null);
            return;
        }
        c0.a((CharSequence) "Ble not supported!!!", false);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        A();
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.device_connect_control) {
            b(false);
            ObjectAnimator objectAnimator = this.K;
            if (objectAnimator != null && objectAnimator.isRunning()) {
                this.K.cancel();
            }
            if (this.O != null) {
                this.u.removeCallbacksAndMessages(null);
                a(new ConnectionConfiguration(this.O.getName(), this.O.getAddress(), false));
            }
            e(R.string.connect_not_connected_device);
            com.ifengyu.intercom.ui.adapter.a aVar = this.x;
            if (aVar != null) {
                this.O = null;
                aVar.a(-1);
                this.x.notifyDataSetChanged();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_connect_device);
        ButterKnife.bind(this);
        this.V = getIntent().getAction();
        this.P = d0.p();
        init();
        G();
        H();
        E();
        this.U = (MiTalkiApp) getApplication();
        bindService(new Intent(this, BtleCentralService.class), this.X, 1);
        I();
        N();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        com.ifengyu.intercom.node.e.d().a();
        if (this.B != null) {
            com.ifengyu.intercom.node.j.b().b(this.B);
        }
        ObjectAnimator objectAnimator = this.K;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        t tVar = this.N;
        if (!(tVar == null || this.T == null)) {
            unregisterReceiver(tVar);
        }
        b(false);
        this.u.removeCallbacksAndMessages(null);
        ObjectAnimator objectAnimator2 = this.K;
        if (objectAnimator2 != null) {
            objectAnimator2.end();
        }
        unbindService(this.X);
        this.X = null;
        com.qmuiteam.qmui.widget.dialog.b bVar = this.b0;
        if (bVar != null && bVar.isShowing()) {
            this.b0.dismiss();
        }
        com.ifengyu.intercom.lite.utils.j.a().b(this);
        super.onDestroy();
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsDenied(int i2, List<String> list) {
        l0.a(list);
        if (!isFinishing()) {
            new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.after_refuse_location_permission).setPositiveButton(R.string.go_setting, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.b
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i3) {
                    ConnectDeviceActivity.this.b(dialogInterface, i3);
                }
            }).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).create().show();
        }
    }

    @Override // pub.devrel.easypermissions.EasyPermissions.PermissionCallbacks
    public void onPermissionsGranted(int i2, List<String> list) {
        l0.b(list);
        R();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i2, strArr, iArr);
        EasyPermissions.onRequestPermissionsResult(i2, strArr, iArr, this);
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected boolean u() {
        return false;
    }

    private void d(String str) {
        com.ifengyu.intercom.g.a.b(str, new b(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(int i2) {
        if (!isFinishing()) {
            com.qmuiteam.qmui.widget.dialog.b bVar = this.b0;
            if (bVar != null && bVar.isShowing()) {
                this.b0.dismiss();
            }
            String[] d2 = k0.d(R.array.dialog_connect_note);
            com.ifengyu.intercom.lite.dialog.list.d dVar = new com.ifengyu.intercom.lite.dialog.list.d(this, false);
            for (int i3 = 0; i3 < d2.length - 1; i3++) {
                dVar.b(d2[i3]);
            }
            dVar.c(true);
            dVar.c(i2);
            com.ifengyu.intercom.lite.dialog.list.d dVar2 = dVar;
            dVar2.a(new a());
            com.qmuiteam.qmui.widget.dialog.b a2 = dVar2.a(R.style.DialogTheme3);
            this.b0 = a2;
            try {
                a2.show();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            b(false);
        }
    }

    private void y() {
        if (!isFinishing()) {
            new AlertDialog.Builder(this).setCancelable(false).setMessage(R.string.before_apply_location_permission).setPositiveButton(R.string.go_apply, new DialogInterface.OnClickListener() { // from class: com.ifengyu.intercom.ui.activity.h
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    ConnectDeviceActivity.this.a(dialogInterface, i2);
                }
            }).setNegativeButton(R.string.common_cancel, (DialogInterface.OnClickListener) null).create().show();
        }
    }

    private void z() {
        if (!this.w.isEmpty()) {
            this.w.clear();
        }
        if (!this.v.isEmpty()) {
            this.v.clear();
        }
    }

    public /* synthetic */ void w() {
        a(MainActivity.class);
        finish();
    }

    public void x() {
        com.ifengyu.intercom.ui.adapter.a aVar = this.x;
        if (aVar == null) {
            com.ifengyu.intercom.ui.adapter.a aVar2 = new com.ifengyu.intercom.ui.adapter.a(this, this.v);
            this.x = aVar2;
            this.D.setAdapter((ListAdapter) aVar2);
        } else {
            aVar.notifyDataSetChanged();
        }
        if (this.x.getCount() > 3) {
            this.S.setVisibility(0);
        } else {
            this.S.setVisibility(8);
        }
        if (this.G) {
            this.G = false;
            this.H.setText(R.string.connect_not_found);
            this.y.setText(R.string.connect_found_mitalki);
            this.z.setText(R.string.connect_please_choice_mitalki);
            this.D.setVisibility(0);
            this.E.setVisibility(0);
            ObjectAnimator.ofFloat(this.E, "translationY", 500.0f, 0.0f).setDuration(300L).start();
            ObjectAnimator.ofFloat(this.D, "translationY", 500.0f, 0.0f).setDuration(500L).start();
            ViewPropertyAnimator animate = this.I.animate();
            this.F = animate;
            animate.translationY(-100.0f).scaleX(0.9f).scaleY(0.9f).setDuration(500L).start();
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.J, "alpha", 1.0f, 0.9f);
            ofFloat.setDuration(3000L);
            ofFloat.addListener(new r());
            ofFloat.start();
            ObjectAnimator objectAnimator = this.R;
            if (objectAnimator != null && !objectAnimator.isRunning()) {
                this.R.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(String str) {
        b(false);
        this.J.setVisibility(0);
        ObjectAnimator objectAnimator = this.K;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.J, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(500L);
        ofFloat.start();
        this.c0.d(BluetoothAdapter.getDefaultAdapter().getRemoteDevice(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(BluetoothDeviceBean bluetoothDeviceBean) {
        this.O = bluetoothDeviceBean;
        this.P = bluetoothDeviceBean.getAddress();
        this.Q = this.O.getName();
        v vVar = this.u;
        vVar.sendMessageDelayed(Message.obtain(vVar, 5, 0, 0, this.O), 500L);
    }

    public /* synthetic */ void b(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", com.ifengyu.library.a.m.e(), null));
        intent.setFlags(268435456);
        startActivity(intent);
    }

    public /* synthetic */ void a(com.ifengyu.intercom.lite.event.a aVar) throws Exception {
        a(Integer.valueOf(aVar.a()));
    }

    private void a(Integer num) {
        int intValue = num.intValue();
        if (intValue != 1) {
            if (intValue == 2) {
                this.z.setText(R.string.connect_please_choice_mitalki);
                e(R.string.connect_failed_device_reject);
            } else if (intValue == 3) {
                this.z.setText(Html.fromHtml(k0.c(R.string.lite_connect_confirm_text)));
                return;
            } else if (intValue == 4) {
                this.z.setText(R.string.connect_please_choice_mitalki);
                e(R.string.connect_failed_low_power);
            } else if (intValue == 6) {
                this.z.setText(R.string.connect_please_choice_mitalki);
                e(R.string.connect_time_out);
            } else if (intValue == 7) {
                this.z.setText(R.string.connect_please_choice_mitalki);
                e(R.string.connect_fail);
            }
            com.ifengyu.intercom.ui.adapter.a aVar = this.x;
            if (aVar != null) {
                this.O = null;
                aVar.a(-1);
                this.x.notifyDataSetChanged();
                return;
            }
            return;
        }
        J();
        Q();
    }

    public /* synthetic */ void c(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
        intent.setFlags(268435456);
        startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (getPackageManager().hasSystemFeature("android.hardware.bluetooth_le") && this.C) {
            O();
            if (z) {
                z();
                R();
                return;
            }
            S();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ConnectionConfiguration connectionConfiguration) {
        Intent intent = new Intent(this, BtleCentralService.class);
        intent.putExtra("connection_config", connectionConfiguration);
        intent.putExtra("connection_remove", true);
        startService(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(BluetoothDeviceBean bluetoothDeviceBean) {
        z.a("ConnectDeviceActivity", "connect to device:" + bluetoothDeviceBean.toString());
        b(false);
        this.J.setVisibility(0);
        ObjectAnimator objectAnimator = this.K;
        if (objectAnimator != null) {
            objectAnimator.start();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this.J, "alpha", 0.0f, 1.0f);
        ofFloat.setDuration(500L);
        ofFloat.start();
        com.ifengyu.intercom.node.q.d a2 = com.ifengyu.intercom.service.a.a();
        if (a2 != null) {
            a2.c(new ConnectionConfiguration(bluetoothDeviceBean.getName(), bluetoothDeviceBean.getAddress(), true, bluetoothDeviceBean.getDeviceType()));
        }
    }

    public /* synthetic */ void a(DialogInterface dialogInterface, int i2) {
        dialogInterface.dismiss();
        if (com.ifengyu.intercom.i.i.b()) {
            requestPermissions(new String[]{"android.permission.ACCESS_FINE_LOCATION"}, 102);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Activity activity) {
        if (!isFinishing()) {
            try {
                BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
                if (defaultAdapter != null) {
                    if (!defaultAdapter.isEnabled()) {
                        com.ifengyu.intercom.ui.widget.dialog.f fVar = new com.ifengyu.intercom.ui.widget.dialog.f(activity);
                        fVar.b(R.string.common_select, (DialogInterface.OnClickListener) null);
                        fVar.b(R.string.connect_open_ble);
                        fVar.a();
                        fVar.d();
                    } else {
                        this.C = true;
                    }
                }
            } catch (Exception e2) {
                z.b("ConnectDeviceActivity", "error " + e2.getMessage());
            }
        }
    }

    public /* synthetic */ void a(com.qmuiteam.qmui.widget.dialog.b bVar, int i2) {
        bVar.dismiss();
        B();
        this.Z.run();
    }

    public /* synthetic */ void a(String str, int i2, com.qmuiteam.qmui.widget.dialog.b bVar, int i3) {
        bVar.dismiss();
        l0.a(str);
        d0.a(i2, true);
        if (!com.ifengyu.intercom.f.a.b(i2) || this.U.h) {
            this.Z.run();
        } else {
            startActivities(new Intent[]{new Intent(this, MainActivity.class), new Intent(this, ActivateDeviceActivity.class)});
        }
    }

    @Override // com.ifengyu.intercom.node.e.b
    public void a(MitalkProtos.ParamUpdate paramUpdate) {
        z.a("ConnectDeviceActivity", "onReceiveDolphinParamData");
        if (paramUpdate.getResult() == MitalkProtos.STATECODE.SUCCESS) {
            if (paramUpdate.hasDevNameGBK()) {
                String q2 = d0.q();
                this.Q = q2;
                b(q2, this.P);
                com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
                ConnectionConfiguration a2 = c2.a(this.P);
                a2.b(this.Q);
                a2.a(true);
                c2.b(a2);
            }
            k0.a(new g(paramUpdate));
        }
    }

    @Override // com.ifengyu.intercom.node.e.b
    public void a(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        z.a("ConnectDeviceActivity", "onReceiveSealParamData");
        if (sEAL_DeviceParam.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_QUERY_OK) {
            if (sEAL_DeviceParam.hasDeviceName()) {
                String q2 = d0.q();
                this.Q = q2;
                b(q2, this.P);
                com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
                ConnectionConfiguration a2 = c2.a(this.P);
                a2.b(this.Q);
                a2.a(true);
                c2.b(a2);
            }
            k0.a(new h(sEAL_DeviceParam));
        }
    }

    @Override // com.ifengyu.intercom.node.e.b
    public void a(SharkProtos.SHARK_DeviceParam sHARK_DeviceParam) {
        z.a("ConnectDeviceActivity", "onReceiveSharkParamData");
        if (sHARK_DeviceParam.getResult() == SharkProtos.SHARK_DeviceParam.SHARK_DEV_UERR.SHARK_PARAM_QUERY_OK) {
            if (sHARK_DeviceParam.hasDeviceName()) {
                String q2 = d0.q();
                this.Q = q2;
                b(q2, this.P);
                com.ifengyu.intercom.node.q.d c2 = com.ifengyu.intercom.node.q.d.c();
                ConnectionConfiguration a2 = c2.a(this.P);
                a2.b(this.Q);
                a2.a(true);
                c2.b(a2);
            }
            k0.a(new i(sHARK_DeviceParam));
        }
    }
}
