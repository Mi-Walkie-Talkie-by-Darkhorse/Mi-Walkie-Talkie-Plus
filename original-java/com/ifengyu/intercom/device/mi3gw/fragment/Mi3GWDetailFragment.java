package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p162a.DeviceDetailAdapter;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.OperatorMsgModel;
import com.ifengyu.talk.models.OperatorMsgUser;
import com.ifengyu.talk.p238h.OnExternalMsgListener;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.User;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import java.util.ArrayList;
import org.bouncycastle.crypto.tls.CipherSuite;

/* loaded from: classes2.dex */
public class Mi3GWDetailFragment extends BaseFragment implements OnDeviceDataShareListener, OnExternalMsgListener {

    /* renamed from: A */
    private LinearLayout f12619A;

    /* renamed from: B */
    private LinearLayout f12620B;

    /* renamed from: C */
    private TextView f12621C;

    /* renamed from: D */
    private TextView f12622D;

    /* renamed from: E */
    private TextView f12623E;

    /* renamed from: F */
    private DeviceDetailAdapter f12624F;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.swipeLayout)
    SwipeRefreshLayout refreshLayout;
    @BindView(R.id.rv_list)
    RecyclerView rvList;

    /* renamed from: z */
    private QMUILinearLayout f12625z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.Mi3GWDetailFragment$a */
    /* loaded from: classes2.dex */
    public class C3410a extends ErrorConsumer {
        C3410a(Mi3GWDetailFragment mi3GWDetailFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.Mi3GWDetailFragment$b */
    /* loaded from: classes2.dex */
    public class C3411b extends ErrorConsumer {
        C3411b(Mi3GWDetailFragment mi3GWDetailFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m13468D3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m8041v2(DeviceGroupDetailFragment.m13662C3(DeviceDataShare.m13732s().m13744m().get(i).getGid()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m13466F3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m13464H3(View view) {
        m8041v2(DeviceSettingFragment.m13504s3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m13462J3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        getActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m13460L3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11156c(DeviceDataShare.m13732s().m13740o());
        m13447m3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M3 */
    public /* synthetic */ void m13458N3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        getActivity().finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: O3 */
    public static /* synthetic */ void m13457O3(int i, QMUIDialog qMUIDialog, int i2) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11156c(DeviceDataShare.m13732s().m13740o());
        UserPrivacyReportUtil.m11135x(i, DeviceDataShare.m13732s().m13742n().getAddress());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P3 */
    public void m13456P3() {
        DeviceDataShare.m13732s().m13811A0();
        DeviceDataShare.m13732s().m13717z0();
    }

    /* renamed from: Q3 */
    private void m13455Q3() {
        if (getActivity() == null) {
            return;
        }
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.dialog_privacy_policy_title);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11146m("mipoc"));
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.h2
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3GWDetailFragment.this.m13462J3(qMUIDialog, i);
            }
        });
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.b2
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3GWDetailFragment.this.m13460L3(qMUIDialog, i);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: R3 */
    private void m13454R3(final int i) {
        if (getActivity() == null) {
            return;
        }
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.user_protocol_updated);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11145n("mipoc"));
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.a2
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                Mi3GWDetailFragment.this.m13458N3(qMUIDialog, i2);
            }
        });
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.l2
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                Mi3GWDetailFragment.m13457O3(i, qMUIDialog, i2);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: g3 */
    private String m13453g3(OperatorMsgUser[] operatorMsgUserArr) {
        User m8454g;
        StringBuilder sb = new StringBuilder();
        for (OperatorMsgUser operatorMsgUser : operatorMsgUserArr) {
            if (Integer.parseInt(operatorMsgUser.getErrCode()) == ETStatusCode.RequestResultCode.LIMIT_U_G.m6942a()) {
                String name = operatorMsgUser.getName();
                if (TextUtils.isEmpty(name) && (m8454g = SlTalkClient.m8513r().m8530a().m8454g(operatorMsgUser.getAcc())) != null) {
                    name = m8454g.getName();
                }
                if (TextUtils.isEmpty(name)) {
                    name = operatorMsgUser.getAcc();
                }
                if (!TextUtils.isEmpty(name)) {
                    sb.append(name);
                    sb.append("、");
                }
            }
        }
        String sb2 = sb.toString();
        if (TextUtils.isEmpty(sb2)) {
            return null;
        }
        return sb2.substring(0, sb2.length() - 1);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: h3 */
    private void m13452h3() {
        ((ObservableSubscribeProxy) Observable.just(DeviceDataShare.m13732s().m13742n().getDeviceId()).map(C3503z1.f12733a).compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.d2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3GWDetailFragment.this.m13441s3((DeviceModel) obj);
            }
        }, C3463m2.f12681a);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: i3 */
    private void m13451i3(final int i) {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("mipoc").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.x1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3GWDetailFragment.this.m13439u3(i, (PrivacyInfoEntity) obj);
            }
        }, new C3411b(this));
    }

    /* renamed from: j3 */
    private View m13450j3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_mi_3_gw_device_detail, (ViewGroup) this.rvList.getParent(), false);
        QMUIRoundButton qMUIRoundButton = (QMUIRoundButton) inflate.findViewById(R.id.btn_add_new_group);
        qMUIRoundButton.setChangeAlphaWhenPress(true);
        qMUIRoundButton.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.c2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWDetailFragment.this.m13437w3(view);
            }
        });
        return inflate;
    }

    /* renamed from: k3 */
    private View m13449k3() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.footer_mi_3_gw_device_detail, (ViewGroup) null);
        QMUILinearLayout qMUILinearLayout = (QMUILinearLayout) inflate.findViewById(R.id.add_new_group);
        qMUILinearLayout.setRadiusAndShadow(UIUtils.m8616b(16.0f), 1, UIUtils.m8616b(5.0f), 0.5f);
        qMUILinearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.j2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWDetailFragment.this.m13435y3(view);
            }
        });
        return inflate;
    }

    /* renamed from: l3 */
    private View m13448l3() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.header_mi_3_gw_device_detail, (ViewGroup) null);
        this.f12625z = (QMUILinearLayout) inflate.findViewById(R.id.top_group_info_layout);
        this.f12619A = (LinearLayout) inflate.findViewById(R.id.current_group_layout);
        this.f12620B = (LinearLayout) inflate.findViewById(R.id.listen_group_layout);
        this.f12621C = (TextView) inflate.findViewById(R.id.current_group_name);
        this.f12622D = (TextView) inflate.findViewById(R.id.listen_group_name);
        this.f12623E = (TextView) inflate.findViewById(R.id.all_group_count);
        this.f12625z.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        ((ImageView) inflate.findViewById(R.id.group_manager)).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.g2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWDetailFragment.this.m13471A3(view);
            }
        });
        return inflate;
    }

    /* renamed from: m3 */
    private void m13447m3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("mipoc").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(C3447i2.f12664a, new C3410a(this));
    }

    /* renamed from: n3 */
    private void m13446n3() {
        this.f12624F.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.f2
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                Mi3GWDetailFragment.this.m13468D3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: o3 */
    private void m13445o3() {
        if (DeviceDataShare.m13732s().m13742n() == null) {
            return;
        }
        this.mTopbar.setBottomDividerAlpha(0);
        if (DeviceDataShare.m13732s().m13736q() != null) {
            this.mTopbar.m7337q(DeviceDataShare.m13732s().m13736q().getNickname());
        } else {
            this.mTopbar.m7337q(DeviceDataShare.m13732s().m13742n().getName());
        }
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.k2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWDetailFragment.this.m13466F3(view);
            }
        });
        this.mTopbar.m7340n(R.drawable.device_icon_set, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.e2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3GWDetailFragment.this.m13464H3(view);
            }
        });
        DeviceDetailAdapter deviceDetailAdapter = new DeviceDetailAdapter(this, R.layout.item_device_detail_list, DeviceDataShare.m13732s().m13744m());
        this.f12624F = deviceDetailAdapter;
        deviceDetailAdapter.m17034i0(m13450j3());
        this.f12624F.m17029l(m13448l3());
        this.f12624F.m17035i(m13449k3());
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvList.setAdapter(this.f12624F);
        this.refreshLayout.setProgressViewOffset(true, 0, 100);
        this.refreshLayout.setProgressViewEndTarget(true, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256);
        this.refreshLayout.setDistanceToTriggerSync(200);
        this.refreshLayout.setColorSchemeResources(R.color.colorAccent);
        this.refreshLayout.setOnRefreshListener(new SwipeRefreshLayout.InterfaceC0974j() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.y1
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.InterfaceC0974j
            /* renamed from: a */
            public final void mo9849a() {
                Mi3GWDetailFragment.this.m13456P3();
            }
        });
        m13446n3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m13441s3(DeviceModel deviceModel) throws Exception {
        int agreedProtocolVersion = deviceModel.getAgreedProtocolVersion();
        if (agreedProtocolVersion == 0) {
            m13455Q3();
        } else {
            m13451i3(agreedProtocolVersion);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m13439u3(int i, PrivacyInfoEntity privacyInfoEntity) throws Exception {
        int parseInt = Integer.parseInt(privacyInfoEntity.getVersion());
        if (parseInt > i) {
            m13454R3(parseInt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m13437w3(View view) {
        m8041v2(AddMyGroupToDeviceFragment.m13699w3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public /* synthetic */ void m13435y3(View view) {
        m8041v2(AddMyGroupToDeviceFragment.m13699w3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z3 */
    public /* synthetic */ void m13471A3(View view) {
        m8041v2(DeviceGroupManagerFragment.m13606y3());
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: D0 */
    public void mo13429D0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: E */
    public void mo13428E(long j, String str) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        m13452h3();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: F */
    public void mo13427F(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: G0 */
    public void mo13426G0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: H */
    public void mo13425H(TempGroup tempGroup) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: K */
    public void mo8371K(OperatorMsgModel operatorMsgModel) {
        Group group;
        if (OperatorMsgModel.MODE_ONE_ADD_GROUPS.equals(operatorMsgModel.getOprName())) {
            if (operatorMsgModel.getAcc().equals(DeviceDataShare.m13732s().m13748k())) {
                if (operatorMsgModel.getFailList().length == 0) {
                    UIUtils.m8593y(R.string.device_add_group_success);
                    return;
                }
                StringBuilder sb = new StringBuilder();
                OperatorMsgUser[] failList = operatorMsgModel.getFailList();
                int length = failList.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    OperatorMsgUser operatorMsgUser = failList[i];
                    if (operatorMsgUser.getAcc().equals(DeviceDataShare.m13732s().m13748k())) {
                        int parseInt = Integer.parseInt(operatorMsgUser.getErrCode());
                        if (parseInt == ETStatusCode.RequestResultCode.LIMIT_U_G.m6942a()) {
                            UIUtils.m8593y(R.string.group_count_upper_limit);
                            break;
                        } else if (parseInt == ETStatusCode.RequestResultCode.LIMIT_G_U.m6942a() && (group = SlTalkClient.m8513r().m8525f().m8428d().getGroup(Long.parseLong(operatorMsgUser.getGid()))) != null) {
                            sb.append(SlTalkClient.m8526e(group));
                            sb.append("、");
                        }
                    }
                    i++;
                }
                String sb2 = sb.toString();
                if (TextUtils.isEmpty(sb2)) {
                    UIUtils.m8593y(R.string.device_add_group_fail);
                    return;
                } else {
                    UIUtils.m8592z(UIUtils.m8602p(R.string.some_group_member_count_upper_limit, sb2.substring(0, sb2.length() - 1)));
                    return;
                }
            }
            UIUtils.m8593y(R.string.device_add_group_fail);
        } else if (OperatorMsgModel.MODE_CREATE_GROUP_ACK.equals(operatorMsgModel.getOprName())) {
            int parseInt2 = Integer.parseInt(operatorMsgModel.getErrCode());
            if (parseInt2 != ETStatusCode.RequestResultCode.LIMIT.m6942a() && parseInt2 != ETStatusCode.RequestResultCode.LIMIT_U_G.m6942a()) {
                if (parseInt2 == ETStatusCode.RequestResultCode.SUCCESS.m6942a()) {
                    String m13453g3 = m13453g3(operatorMsgModel.getFailList());
                    if (TextUtils.isEmpty(m13453g3)) {
                        UIUtils.m8592z(UIUtils.m8603o(R.string.device_new_group_success));
                        return;
                    } else {
                        UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_group_count_upper_limit, m13453g3));
                        return;
                    }
                }
                String m13453g32 = m13453g3(operatorMsgModel.getFailList());
                if (TextUtils.isEmpty(m13453g32)) {
                    return;
                }
                UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_group_count_upper_limit, m13453g32));
                return;
            }
            UIUtils.m8593y(R.string.group_count_upper_limit);
        } else if (OperatorMsgModel.MODE_ENTER_GROUP.equals(operatorMsgModel.getOprName())) {
            int parseInt3 = Integer.parseInt(operatorMsgModel.getErrCode());
            if (parseInt3 != ETStatusCode.RequestResultCode.LIMIT.m6942a() && parseInt3 != ETStatusCode.RequestResultCode.LIMIT_G_U.m6942a()) {
                if (parseInt3 == ETStatusCode.RequestResultCode.SUCCESS.m6942a()) {
                    String m13453g33 = m13453g3(operatorMsgModel.getFailList());
                    if (TextUtils.isEmpty(m13453g33)) {
                        UIUtils.m8592z(UIUtils.m8603o(R.string.add_member_success));
                        return;
                    } else {
                        UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_group_count_upper_limit, m13453g33));
                        return;
                    }
                }
                String m13453g34 = m13453g3(operatorMsgModel.getFailList());
                if (TextUtils.isEmpty(m13453g34)) {
                    UIUtils.m8592z(UIUtils.m8602p(R.string.this_member_group_count_upper_limit, m13453g34));
                    return;
                } else {
                    UIUtils.m8592z(UIUtils.m8602p(R.string.group_member_group_count_upper_limit, m13453g34));
                    return;
                }
            }
            UIUtils.m8593y(R.string.group_member_count_upper_limit);
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L */
    public void mo13424L(NetDeviceModel netDeviceModel) {
        if (netDeviceModel != null) {
            this.mTopbar.m7337q(netDeviceModel.getNickname());
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L0 */
    public void mo13423L0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: M0 */
    public void mo13422M0(ArrayList<TempGroup> arrayList) {
        this.refreshLayout.setRefreshing(false);
        this.f12623E.setText(UIUtils.m8602p(R.string.device_all_group_s, Integer.valueOf(this.f12624F.m17070D().size())));
        this.f12624F.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: O0 */
    public void mo13420O0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: P */
    public void mo13418P(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: R0 */
    public void mo13417R0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: S */
    public void mo13416S() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: X0 */
    public void mo13415X0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: Y */
    public void mo13414Y(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: a1 */
    public void mo13413a1(long j) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: b */
    public void mo8370b() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: d0 */
    public void mo13412d0(TempGroup tempGroup, ArrayList<TempGroup> arrayList) {
        if (tempGroup == null && arrayList.size() == 0) {
            this.f12625z.setVisibility(8);
            return;
        }
        this.f12625z.setVisibility(0);
        if (tempGroup != null) {
            this.f12619A.setVisibility(0);
            this.f12621C.setText(SlTalkClient.m8527d(tempGroup));
        } else {
            this.f12619A.setVisibility(8);
            this.f12621C.setText((CharSequence) null);
        }
        if (arrayList.size() > 0) {
            this.f12620B.setVisibility(0);
            this.f12622D.setText(SlTalkClient.m8527d(arrayList.get(0)));
            return;
        }
        this.f12620B.setVisibility(8);
        this.f12622D.setText((CharSequence) null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        MainActivity.start(getContext());
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        DeviceDataShare.m13732s().addListener(this);
        SlTalkClient.m8513r().m8529b().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_mi3_gw_detail, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13445o3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: h1 */
    public void mo13411h1(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: i0 */
    public void mo13410i0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k0 */
    public void mo13409k0(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k1 */
    public void mo13408k1() {
        this.refreshLayout.setRefreshing(false);
        m10312X2(R.string.net_work_error_pls_retry);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: l0 */
    public void mo13407l0(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: o0 */
    public void mo13406o0() {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DeviceDataShare.m13732s().removeListener(this);
        SlTalkClient.m8513r().m8529b().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        m13456P3();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: p */
    public void mo13405p(long j, String str) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: r */
    public void mo13404r(long j) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: t */
    public void mo8369t(HistoryMsgModel historyMsgModel) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: t0 */
    public void mo13403t0(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: t1 */
    public void mo13402t1(long j) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: w0 */
    public void mo13401w0() {
    }
}
