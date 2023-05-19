package com.ifengyu.intercom.p216ui.fragment.tab;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.chad.library.adapter.base.p115l.OnItemLongClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.ConnectEvent;
import com.ifengyu.intercom.device.common.event.ConnectStateEvent;
import com.ifengyu.intercom.device.common.event.DeviceParamEvent;
import com.ifengyu.intercom.device.lite.LiteSettingHolderActivity;
import com.ifengyu.intercom.device.mi3.activity.Mi3SettingHolderActivity;
import com.ifengyu.intercom.device.mi3gw.Mi3GWDetailActivity;
import com.ifengyu.intercom.device.oldDevice.BleDeviceMapActivity;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p187j.DeviceConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.activity.WebViewActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.fragment.AddDeviceFragment;
import com.ifengyu.intercom.p216ui.fragment.tab.entity.DeviceTitleSelectPopEntity;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.DeviceTitleSelectPopAdapter;
import com.ifengyu.intercom.p216ui.fragment.tab.p221j0.DevicesAdapter;
import com.ifengyu.intercom.p216ui.fragment.tab.p223k0.DevicesPresenter;
import com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.BluetoothUtils;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.alpha.QMUIAlphaImageButton;
import com.qmuiteam.qmui.p242c.QMUISkinManager;
import com.qmuiteam.qmui.util.QMUIDisplayHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.popup.QMUIPopup;
import com.qmuiteam.qmui.widget.popup.QMUIPopups;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

@SuppressLint({"NonConstantResourceId"})
/* renamed from: com.ifengyu.intercom.ui.fragment.tab.DeviceFragment */
/* loaded from: classes2.dex */
public class DeviceFragment extends BaseTabFragment<DevicesView, DevicesPresenter> implements DevicesView {

    /* renamed from: P */
    private static final String f15262P = DeviceFragment.class.getSimpleName();

    /* renamed from: Q */
    private static final String[] f15263Q = {UIUtils.m8603o(R.string.all_device), UIUtils.m8603o(R.string.device_xiaomi3_name), UIUtils.m8603o(R.string.device_xiaomi3_4g_name), UIUtils.m8603o(R.string.device_lite_name), UIUtils.m8603o(R.string.device_shark_name), UIUtils.m8603o(R.string.device_seal_name), UIUtils.m8603o(R.string.device_dolphin_name)};

    /* renamed from: R */
    public static DeviceFragment f15264R;

    /* renamed from: B */
    private DevicesAdapter f15265B;

    /* renamed from: C */
    private BluetoothListenerReceiver f15266C;

    /* renamed from: D */
    private View f15267D;

    /* renamed from: F */
    private DeviceTitleSelectPopAdapter f15269F;

    /* renamed from: G */
    private TextView f15270G;

    /* renamed from: I */
    private boolean f15272I;

    /* renamed from: J */
    private QMUIDialog f15273J;

    /* renamed from: K */
    private Disposable f15274K;

    /* renamed from: L */
    private QMUIPopup f15275L;

    /* renamed from: M */
    private View f15276M;

    /* renamed from: N */
    private QMUIAlphaImageButton f15277N;

    /* renamed from: O */
    private QMUIAlphaImageButton f15278O;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView recyclerView;
    @BindView(R.id.swipeLayout)
    SwipeRefreshLayout refreshLayout;
    @BindView(R.id.top_get_net_device_failed_tv)
    TextView topGetNetDeviceFailedTv;

    /* renamed from: E */
    private final ArrayList<DeviceTitleSelectPopEntity> f15268E = new ArrayList<>();

    /* renamed from: H */
    private int f15271H = 0;

    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.DeviceFragment$BluetoothListenerReceiver */
    /* loaded from: classes2.dex */
    public static final class BluetoothListenerReceiver extends BroadcastReceiver {

        /* renamed from: a */
        WeakReference<DeviceFragment> f15279a;

        public BluetoothListenerReceiver(DeviceFragment deviceFragment) {
            this.f15279a = new WeakReference<>(deviceFragment);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(intent.getAction())) {
                switch (intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0)) {
                    case 11:
                        C4971k.m8654f(DeviceFragment.f15262P, "onReceive--ble opening");
                        return;
                    case 12:
                        C4971k.m8654f(DeviceFragment.f15262P, "onReceive--ble opened");
                        DeviceFragment deviceFragment = this.f15279a.get();
                        if (deviceFragment != null) {
                            deviceFragment.m10329C2();
                            return;
                        }
                        return;
                    case 13:
                        C4971k.m8654f(DeviceFragment.f15262P, "onReceive--ble closing");
                        return;
                    default:
                        return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.fragment.tab.DeviceFragment$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4561a implements View.OnClickListener {
        View$OnClickListenerC4561a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            DeviceFragment.this.mTopbar.m7337q("");
            DeviceFragment.this.f15265B.m9907H0();
            DeviceFragment.this.f15277N.setVisibility(8);
            DeviceFragment.this.f15276M.setVisibility(0);
            DeviceFragment.this.f15278O.setVisibility(0);
            DeviceFragment.this.refreshLayout.setEnabled(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m10004C3(DeviceModel deviceModel, QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        ((DevicesPresenter) this.f15048z).m9898E0(deviceModel);
        if (((DevicesPresenter) this.f15048z).m9899B().size() <= 1) {
            m9971l3(this.f15265B.m9907H0());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m10001E3(View view) {
        m8041v2(AddDeviceFragment.m10181j3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m9999G3(ConnectEvent connectEvent) throws Exception {
        if (isResumed()) {
            int connectStatus = connectEvent.getConnectStatus();
            if (connectStatus == 1) {
                if (m10328F2()) {
                    m10306d3(R.string.connect_success);
                }
            } else if (connectStatus == 2) {
                if (m10328F2()) {
                    m10329C2();
                    m9973f4(R.string.connect_failed_device_reject);
                }
            } else if (connectStatus == 4) {
                if (m10328F2()) {
                    m10329C2();
                    m9973f4(R.string.connect_failed_low_power);
                }
            } else if (connectStatus != 6) {
                if (connectStatus == 7 && m10328F2()) {
                    m10329C2();
                    m9973f4(R.string.connect_fail);
                }
            } else if (m10328F2()) {
                m10329C2();
                m9973f4(R.string.connect_time_out);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m9997I3(ConnectStateEvent connectStateEvent) throws Exception {
        if (connectStateEvent.getState() == ConnectStateEvent.STATE_CONNECTED) {
            m9961v3();
        }
        m9974e4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ void m9995K3(DeviceParamEvent deviceParamEvent) throws Exception {
        m9978a4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ void m9993M3(View view) {
        m9972g4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N3 */
    public /* synthetic */ void m9991O3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        DeviceModel deviceModel = this.f15265B.m17070D().get(i);
        if (deviceModel != null) {
            if (DeviceConstants.m11980c(deviceModel.getDeviceType()) && !BluetoothUtils.m8695d()) {
                m9965r3();
            } else if (this.f15265B.m9908G0()) {
            } else {
                ((DevicesPresenter) this.f15048z).m9895J(deviceModel);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P3 */
    public /* synthetic */ boolean m9989Q3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9971l3(this.f15265B.m9907H0());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S3 */
    public /* synthetic */ void m9986T3(Disposable disposable) throws Exception {
        this.f15274K = disposable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U3 */
    public /* synthetic */ void m9983V3(Long l) throws Exception {
        m9978a4();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W3 */
    public /* synthetic */ void m9981X3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        qMUIDialog.dismiss();
        if (i == 0) {
            if (BluetoothUtils.m8695d()) {
                return;
            }
            m9965r3();
        } else if (i != 1) {
        } else {
            Intent intent = new Intent(getContext(), WebViewActivity.class);
            intent.setAction("com.ifengyu.intercom.action.CONNECT_HELP");
            startActivity(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Y3 */
    public /* synthetic */ void m9979Z3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        DeviceTitleSelectPopEntity deviceTitleSelectPopEntity = this.f15268E.get(i);
        int i2 = 0;
        while (i2 < this.f15268E.size()) {
            this.f15268E.get(i2).setSelected(i2 == i);
            switch (i) {
                case 0:
                    this.f15271H = 0;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9871x0(13);
                    ((DevicesPresenter) this.f15048z).m9869y0(14);
                    ((DevicesPresenter) this.f15048z).m9869y0(9);
                    ((DevicesPresenter) this.f15048z).m9869y0(4);
                    ((DevicesPresenter) this.f15048z).m9869y0(5);
                    ((DevicesPresenter) this.f15048z).m9869y0(1);
                    break;
                case 1:
                    this.f15271H = 14;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9869y0(14);
                    break;
                case 2:
                    this.f15271H = 13;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9871x0(13);
                    break;
                case 3:
                    this.f15271H = 9;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9869y0(9);
                    break;
                case 4:
                    this.f15271H = 4;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9869y0(4);
                    break;
                case 5:
                    this.f15271H = 5;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9869y0(5);
                    break;
                case 6:
                    this.f15271H = 1;
                    ((DevicesPresenter) this.f15048z).m9899B().clear();
                    ((DevicesPresenter) this.f15048z).m9869y0(1);
                    break;
            }
            i2++;
        }
        QMUIPopup qMUIPopup = this.f15275L;
        if (qMUIPopup != null) {
            qMUIPopup.m7187c();
        }
        this.f15270G.setText(deviceTitleSelectPopEntity.getType());
        this.f15269F.notifyDataSetChanged();
    }

    /* renamed from: a4 */
    private void m9978a4() {
        int i = this.f15271H;
        if (i == 0) {
            ((DevicesPresenter) this.f15048z).m9871x0(13);
            ((DevicesPresenter) this.f15048z).m9869y0(14);
            ((DevicesPresenter) this.f15048z).m9869y0(9);
            ((DevicesPresenter) this.f15048z).m9869y0(4);
            ((DevicesPresenter) this.f15048z).m9869y0(5);
            ((DevicesPresenter) this.f15048z).m9869y0(1);
        } else if (i == 1) {
            ((DevicesPresenter) this.f15048z).m9869y0(1);
        } else if (i == 9) {
            ((DevicesPresenter) this.f15048z).m9869y0(9);
        } else if (i == 4) {
            ((DevicesPresenter) this.f15048z).m9869y0(4);
        } else if (i == 5) {
            ((DevicesPresenter) this.f15048z).m9869y0(5);
        } else if (i == 13) {
            ((DevicesPresenter) this.f15048z).m9871x0(13);
        } else if (i != 14) {
        } else {
            ((DevicesPresenter) this.f15048z).m9869y0(14);
        }
    }

    /* renamed from: b4 */
    private IntentFilter m9977b4() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        return intentFilter;
    }

    /* renamed from: c4 */
    public static BaseFragment m9976c4() {
        return new DeviceFragment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e4 */
    public void m9974e4() {
        Disposable disposable = this.f15274K;
        if (disposable != null) {
            disposable.dispose();
            this.f15274K = null;
        }
        ((ObservableSubscribeProxy) Observable.interval(0L, 90L, TimeUnit.SECONDS).compose(Transformer.m8717a()).doOnSubscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.e
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceFragment.this.m9986T3((Disposable) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceFragment.this.m9983V3((Long) obj);
            }
        }, C4580g0.f15304a);
    }

    /* renamed from: f4 */
    private void m9973f4(int i) {
        m9961v3();
        String[] strArr = {UIUtils.m8603o(R.string.ble_retry), UIUtils.m8603o(R.string.ble_look_help), UIUtils.m8603o(R.string.common_cancel)};
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext(), false);
        for (int i2 = 0; i2 < 3; i2++) {
            itemListBuilder.m12445F(strArr[i2]);
        }
        itemListBuilder.m12442I(true);
        itemListBuilder.m7282x(i);
        ItemListBuilder itemListBuilder2 = itemListBuilder;
        itemListBuilder2.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.ui.fragment.tab.d
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i3, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                DeviceFragment.this.m9981X3(qMUIDialog, view, i3, str, bottomSheetListAdapter);
            }
        });
        QMUIDialog m7296f = itemListBuilder2.m7296f(R.style.DialogTheme2);
        this.f15273J = m7296f;
        m7296f.show();
    }

    /* renamed from: g4 */
    private void m9972g4() {
        QMUIPopup qMUIPopup = this.f15275L;
        if (qMUIPopup != null) {
            qMUIPopup.m7177V(this.mTopbar);
            return;
        }
        int i = 0;
        while (true) {
            String[] strArr = f15263Q;
            boolean z = true;
            if (i < strArr.length) {
                ArrayList<DeviceTitleSelectPopEntity> arrayList = this.f15268E;
                String str = strArr[i];
                if (i != 0) {
                    z = false;
                }
                arrayList.add(new DeviceTitleSelectPopEntity(str, z));
                i++;
            } else {
                View inflate = View.inflate(UIUtils.m8613e(), R.layout.pop_device_title_select, null);
                RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rc_view);
                recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
                DeviceTitleSelectPopAdapter deviceTitleSelectPopAdapter = new DeviceTitleSelectPopAdapter(R.layout.item_tab_device_type_pop_list, this.f15268E);
                this.f15269F = deviceTitleSelectPopAdapter;
                recyclerView.setAdapter(deviceTitleSelectPopAdapter);
                this.f15269F.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.o
                    @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
                    /* renamed from: a */
                    public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                        DeviceFragment.this.m9979Z3(baseQuickAdapter, view, i2);
                    }
                });
                QMUIPopup m7175b = QMUIPopups.m7175b(getContext(), -1);
                m7175b.m7223P(UIUtils.m8616b(20.0f));
                QMUIPopup qMUIPopup2 = m7175b;
                qMUIPopup2.m7226M(1);
                QMUIPopup qMUIPopup3 = qMUIPopup2;
                qMUIPopup3.m7218U(inflate);
                QMUIPopup qMUIPopup4 = qMUIPopup3;
                qMUIPopup4.m7233F(false);
                QMUIPopup qMUIPopup5 = qMUIPopup4;
                qMUIPopup5.m7229J(QMUIDisplayHelper.m7555a(getContext(), 12));
                QMUIPopup qMUIPopup6 = qMUIPopup5;
                qMUIPopup6.m7188b(0.6f);
                QMUIPopup qMUIPopup7 = qMUIPopup6;
                qMUIPopup7.m7234E(3);
                QMUIPopup qMUIPopup8 = qMUIPopup7;
                qMUIPopup8.m7179k(QMUISkinManager.m7933g(getContext()));
                this.f15275L = qMUIPopup8.m7177V(this.mTopbar);
                return;
            }
        }
    }

    /* renamed from: l3 */
    private void m9971l3(boolean z) {
        if (z) {
            this.f15276M.setVisibility(8);
            this.f15278O.setVisibility(8);
            if (this.f15277N == null) {
                this.f15277N = this.mTopbar.m7343k(R.drawable.hoome_icon_close, QMUIViewHelper.m7473b());
            }
            this.f15277N.setVisibility(0);
            this.f15277N.setOnClickListener(new View$OnClickListenerC4561a());
            this.mTopbar.m7337q(getString(R.string.management_device));
            this.refreshLayout.setEnabled(false);
            return;
        }
        this.mTopbar.m7337q("");
        this.f15277N.setVisibility(8);
        this.f15276M.setVisibility(0);
        this.f15278O.setVisibility(0);
        this.refreshLayout.setEnabled(true);
    }

    /* renamed from: v3 */
    private void m9961v3() {
        QMUIDialog qMUIDialog = this.f15273J;
        if (qMUIDialog == null || !qMUIDialog.isShowing()) {
            return;
        }
        this.f15273J.dismiss();
    }

    /* renamed from: w3 */
    private void m9960w3() {
        RxBus.m11806d().m11808b(this, ConnectEvent.class, new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.n
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceFragment.this.m9999G3((ConnectEvent) obj);
            }
        });
        RxBus.m11806d().m11808b(this, ConnectStateEvent.class, new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.i
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceFragment.this.m9997I3((ConnectStateEvent) obj);
            }
        });
        RxBus.m11806d().m11808b(this, DeviceParamEvent.class, new Consumer() { // from class: com.ifengyu.intercom.ui.fragment.tab.l
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceFragment.this.m9995K3((DeviceParamEvent) obj);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((DevicesPresenter) this.f15048z).m9900A0();
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: P0 */
    public void mo9860P0() {
        m9974e4();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseView
    /* renamed from: V */
    public void mo9984V() {
        m10308b3();
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: c0 */
    public void mo9859c0(int i) {
        this.refreshLayout.setRefreshing(false);
        if (DeviceConstants.m11979d(i) && !this.f15272I && this.f15271H == 13) {
            this.f15272I = true;
            this.topGetNetDeviceFailedTv.setVisibility(0);
        }
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: c1 */
    public void mo9858c1(int i) {
        this.refreshLayout.setRefreshing(false);
        if (this.topGetNetDeviceFailedTv.getVisibility() == 0) {
            this.topGetNetDeviceFailedTv.setVisibility(8);
        }
    }

    /* renamed from: d4 */
    public boolean m9975d4() {
        if (this.f15265B.m9908G0()) {
            m9971l3(this.f15265B.m9907H0());
            return true;
        }
        return false;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_device, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        f15264R = this;
        m9958y3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: f1 */
    public void mo9857f1(DeviceModel deviceModel) {
        m10312X2(R.string.device_had_offline);
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: i1 */
    public void mo9856i1() {
        m10307c3(true, getString(R.string.ble_conning_device));
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: j1 */
    public DevicesAdapter mo9855j1() {
        return this.f15265B;
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: l1 */
    public void mo9854l1(DeviceModel deviceModel) {
        int deviceType = deviceModel.getDeviceType();
        if (deviceType != 1) {
            if (deviceType == 9) {
                LiteSettingHolderActivity.start(getContext());
                return;
            } else if (deviceType != 4 && deviceType != 5) {
                if (deviceType == 13) {
                    Mi3GWDetailActivity.m13824N(getContext(), deviceModel);
                    return;
                } else if (deviceType != 14) {
                    return;
                } else {
                    Mi3SettingHolderActivity.m13825U(getContext(), deviceModel.getAddress());
                    return;
                }
            }
        }
        Intent intent = new Intent(getContext(), BleDeviceMapActivity.class);
        intent.putExtra("device_mac_address", deviceModel.getAddress());
        startActivity(intent);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        getActivity().unregisterReceiver(this.f15266C);
        EventBus.m174c().m156u(this);
        RxBus.m11806d().m11803g(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(SimpleEvent simpleEvent) {
        switch (simpleEvent.getEvent()) {
            case 10:
            case 11:
            case 12:
                m9974e4();
                return;
            default:
                return;
        }
    }

    /* renamed from: r3 */
    public void m9965r3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7248E(R.string.connect_open_ble);
        messageDialogBuilder.m7300b(0, R.string.common_select, 0, C4611p.f15351a);
        messageDialogBuilder.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: s */
    public void mo9853s() {
        m10306d3(R.string.unbind_success);
        m9974e4();
    }

    /* renamed from: s3 */
    public void m9964s3(final DeviceModel deviceModel) {
        if (m9963t3()) {
            int i = R.string.setting_confirm_un_bind;
            if (DeviceConstants.m11979d(deviceModel.getDeviceType())) {
                i = R.string.device_unbind_prompt_from_share;
            }
            MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
            messageDialogBuilder.m7282x(R.string.device_unbind);
            MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
            messageDialogBuilder2.m7248E(i);
            messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C4579g.f15303a);
            MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
            messageDialogBuilder3.m7300b(0, R.string.common_confirm, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.fragment.tab.j
                @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
                /* renamed from: a */
                public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                    DeviceFragment.this.m10004C3(deviceModel, qMUIDialog, i2);
                }
            });
            messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
        }
    }

    /* renamed from: t3 */
    public boolean m9963t3() {
        return this.f15265B.m9908G0();
    }

    @Override // com.ifengyu.intercom.p216ui.fragment.tab.p224l0.DevicesView
    /* renamed from: u */
    public void mo9852u() {
        m10306d3(R.string.device_unbind_fail);
    }

    /* renamed from: u3 */
    public View m9962u3() {
        if (this.f15267D == null) {
            View inflate = getLayoutInflater().inflate(R.layout.empty_my_bind_devices_layout, (ViewGroup) this.recyclerView.getParent(), false);
            this.f15267D = inflate;
            QMUIRoundButton qMUIRoundButton = (QMUIRoundButton) inflate.findViewById(R.id.btn_add_device);
            qMUIRoundButton.setChangeAlphaWhenPress(true);
            qMUIRoundButton.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.h
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DeviceFragment.this.m10001E3(view);
                }
            });
        }
        return this.f15267D;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseMvpFragment
    /* renamed from: x3 */
    public DevicesPresenter mo9397g3() {
        return new DevicesPresenter(getContext());
    }

    /* renamed from: y3 */
    protected void m9958y3() {
        EventBus.m174c().m159r(this);
        m9960w3();
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.device_tab_top_view, (ViewGroup) null, false);
        this.f15276M = inflate;
        TextView textView = (TextView) inflate.findViewById(R.id.title);
        this.f15270G = textView;
        textView.setText(f15263Q[0]);
        this.f15276M.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceFragment.this.m9993M3(view);
            }
        });
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.setPadding(UIUtils.m8616b(-10.0f), 0, UIUtils.m8616b(10.0f), 0);
        this.mTopbar.m7341m(this.f15276M, R.id.device_tab_topbar_title, new RelativeLayout.LayoutParams(-2, -1));
        QMUIAlphaImageButton m7340n = this.mTopbar.m7340n(R.drawable.common_icon_add, QMUIViewHelper.m7473b());
        this.f15278O = m7340n;
        m7340n.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceFragment.this.m9913h3(view);
            }
        });
        DevicesAdapter devicesAdapter = new DevicesAdapter(((DevicesPresenter) this.f15048z).m9899B());
        this.f15265B = devicesAdapter;
        devicesAdapter.m17034i0(m9962u3());
        this.recyclerView.setLayoutManager(new LinearLayoutManager(getContext()));
        this.recyclerView.setAdapter(this.f15265B);
        this.refreshLayout.setProgressViewOffset(true, 0, 100);
        this.refreshLayout.setProgressViewEndTarget(true, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256);
        this.refreshLayout.setDistanceToTriggerSync(200);
        this.refreshLayout.setColorSchemeResources(R.color.colorAccent);
        this.refreshLayout.setOnRefreshListener(new SwipeRefreshLayout.InterfaceC0974j() { // from class: com.ifengyu.intercom.ui.fragment.tab.m
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.InterfaceC0974j
            /* renamed from: a */
            public final void mo9849a() {
                DeviceFragment.this.m9974e4();
            }
        });
        this.f15265B.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.b
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceFragment.this.m9991O3(baseQuickAdapter, view, i);
            }
        });
        this.f15265B.setOnItemLongClickListener(new OnItemLongClickListener() { // from class: com.ifengyu.intercom.ui.fragment.tab.f
            @Override // com.chad.library.adapter.base.p115l.OnItemLongClickListener
            /* renamed from: a */
            public final boolean mo9914a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                return DeviceFragment.this.m9989Q3(baseQuickAdapter, view, i);
            }
        });
        this.f15266C = new BluetoothListenerReceiver(this);
        getActivity().registerReceiver(this.f15266C, m9977b4());
    }
}
