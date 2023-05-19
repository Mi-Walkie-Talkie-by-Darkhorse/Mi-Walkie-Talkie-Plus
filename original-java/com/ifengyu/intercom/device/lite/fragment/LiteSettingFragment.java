package com.ifengyu.intercom.device.lite.fragment;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.content.Intent;
import android.os.Bundle;
import android.text.InputFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.lite.dto.UpgradeInfoDTO;
import com.ifengyu.intercom.device.lite.event.LiteEvent;
import com.ifengyu.intercom.device.lite.models.LiteDeviceParamLiveData;
import com.ifengyu.intercom.device.lite.p160d.LiteUpgradeManager;
import com.ifengyu.intercom.device.lite.p160d.LiteUpgradeViewModel;
import com.ifengyu.intercom.device.lite.p161e.LiteViewModel;
import com.ifengyu.intercom.device.lite.utils.ByteLengthFilter;
import com.ifengyu.intercom.device.lite.utils.CharacterFilter;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.models.ChannelModel;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.qmuiteam.qmui.alpha.QMUIAlphaButton;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.functions.Consumer;

/* loaded from: classes2.dex */
public class LiteSettingFragment extends BaseFragment {
    @BindView(R.id.btn_unbind)
    QMUIAlphaButton mBtnUnbind;
    @BindView(R.id.content_board)
    RelativeLayout mContentBoard;
    @BindView(R.id.empty_board)
    LinearLayout mEmptyBoard;
    @BindView(R.id.item_config)
    ItemView mItemConfig;
    @BindView(R.id.item_deploy)
    ItemView mItemDeploy;
    @BindView(R.id.item_id)
    ItemView mItemId;
    @BindView(R.id.item_more)
    ItemView mItemMore;
    @BindView(R.id.item_name)
    ItemView mItemName;
    @BindView(R.id.item_update)
    ItemView mItemUpdate;
    @BindView(R.id.item_voice)
    ItemView mItemVoice;
    @BindView(R.id.top_bar)
    QMUITopBarLayout mTopBar;
    @BindView(R.id.tv_channel_name)
    TextView mTvChannelName;
    @BindView(R.id.tv_receive_freq)
    TextView mTvReceiveFreq;
    @BindView(R.id.tv_send_freq)
    TextView mTvSendFreq;

    /* renamed from: z */
    private LiteViewModel f12292z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$a */
    /* loaded from: classes2.dex */
    public class C3238a implements Consumer<LiteEvent> {
        C3238a() {
        }

        @Override // io.reactivex.functions.Consumer
        /* renamed from: a */
        public void accept(LiteEvent liteEvent) throws Exception {
            if (liteEvent == LiteEvent.UPGRADE_SUCCESS) {
                LiteSettingFragment.this.mItemUpdate.setImageDrawable(LiteSettingFragment.this.getResources().getDrawable(R.mipmap.set_icon_update_normal));
            } else if (liteEvent == LiteEvent.HAVE_NEW_UPDATE) {
                LiteSettingFragment.this.mItemUpdate.setImageDrawable(LiteSettingFragment.this.getResources().getDrawable(R.mipmap.set_icon_update));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$b */
    /* loaded from: classes2.dex */
    public class C3239b implements QMUIDialogAction.InterfaceC5249b {
        C3239b() {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            qMUIDialog.dismiss();
            LiteSettingFragment.this.m13914R3();
            LiteSettingFragment.this.mo8048o2();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$c */
    /* loaded from: classes2.dex */
    public class C3240c implements QMUIDialogAction.InterfaceC5249b {
        C3240c(LiteSettingFragment liteSettingFragment) {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            qMUIDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$d */
    /* loaded from: classes2.dex */
    public class C3241d extends ErrorConsumer {
        C3241d(LiteSettingFragment liteSettingFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$e */
    /* loaded from: classes2.dex */
    public class C3242e extends ErrorConsumer {
        C3242e(LiteSettingFragment liteSettingFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$f */
    /* loaded from: classes2.dex */
    public class C3243f implements QMUIDialogAction.InterfaceC5249b {

        /* renamed from: a */
        final /* synthetic */ EditTextDialogBuilder f12295a;

        C3243f(EditTextDialogBuilder editTextDialogBuilder) {
            this.f12295a = editTextDialogBuilder;
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            String trim = this.f12295a.m7262G().getText().toString().trim();
            if (trim.length() > 0) {
                qMUIDialog.dismiss();
                LiteSettingFragment.this.f12292z.m14056O(trim.toString());
                LiteSettingFragment.this.m10308b3();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.lite.fragment.LiteSettingFragment$g */
    /* loaded from: classes2.dex */
    public class C3244g implements QMUIDialogAction.InterfaceC5249b {
        C3244g(LiteSettingFragment liteSettingFragment) {
        }

        @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
        /* renamed from: a */
        public void mo7305a(QMUIDialog qMUIDialog, int i) {
            qMUIDialog.dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m13929C3(DeviceModel deviceModel) {
        if (deviceModel != null) {
            this.mItemName.setValueText(deviceModel.getName());
            this.mItemId.setValueText(deviceModel.getDeviceId());
            m13906m3(deviceModel);
            m13908k3(deviceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m13927E3(UpgradeInfoDTO upgradeInfoDTO) {
        if (upgradeInfoDTO.m14090h()) {
            this.mItemUpdate.setImageDrawable(getResources().getDrawable(R.mipmap.set_icon_update));
            return;
        }
        this.mItemUpdate.setImageDrawable(getResources().getDrawable(R.mipmap.set_icon_update_normal));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m13925G3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12385b();
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m13923I3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11157b("lite", String.valueOf(this.f12292z.m14034q().getDeviceId()));
        m13905n3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ void m13921K3(int i, QMUIDialog qMUIDialog, int i2) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11157b("lite", String.valueOf(this.f12292z.m14034q().getDeviceId()));
        this.f12292z.m14053R(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ void m13919M3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12385b();
        mo8048o2();
    }

    /* renamed from: N3 */
    private void m13918N3() {
        EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        String charSequence = this.mItemName.getValueText().toString();
        editTextDialogBuilder.m7282x(R.string.common_intercom_name);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_name);
        editTextDialogBuilder2.m7261H(charSequence);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, new C3244g(this));
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new C3243f(editTextDialogBuilder));
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new CharacterFilter(), new ByteLengthFilter(15)});
        m7262G.setSelection(charSequence.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: O3 */
    private void m13917O3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.dialog_privacy_policy_title);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11146m("lite"));
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.u0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                LiteSettingFragment.this.m13925G3(qMUIDialog, i);
            }
        });
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.r0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                LiteSettingFragment.this.m13923I3(qMUIDialog, i);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: P3 */
    private void m13916P3(final int i) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.user_protocol_updated);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11145n("lite"));
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.l0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                LiteSettingFragment.this.m13919M3(qMUIDialog, i2);
            }
        });
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.lite.fragment.o0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                LiteSettingFragment.this.m13921K3(i, qMUIDialog, i2);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: Q3 */
    private void m13915Q3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.setting_confirm_un_bind_current_device);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, new C3240c(this));
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new C3239b());
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: R3 */
    public void m13914R3() {
        BluetoothDevice m335p = this.f12292z.m14039l().m335p();
        if (m335p != null) {
            BleCoreClient.m12373n().m12384c(m335p.getAddress());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S3 */
    public void m13913S3(ChannelModel channelModel) {
        if (channelModel == null) {
            return;
        }
        if (channelModel.isEmpty()) {
            this.mTvChannelName.setText(UIUtils.m8602p(R.string.lite_channel_name_placeholder, channelModel.getLiteDisplaySeq()));
            this.mEmptyBoard.setVisibility(0);
            this.mContentBoard.setVisibility(8);
            return;
        }
        this.mTvChannelName.setText(UIUtils.m8602p(R.string.lite_channel_name_placeholder, channelModel.getLiteDisplaySeq()));
        this.mEmptyBoard.setVisibility(8);
        this.mContentBoard.setVisibility(0);
        this.mTvReceiveFreq.setText(channelModel.getDisplayReceiveFreq());
        this.mTvSendFreq.setText(channelModel.getDisplaySendFreq());
        UIUtils.m8595w(AppConstants.f13909c, this.mTvReceiveFreq, this.mTvSendFreq);
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: k3 */
    private void m13908k3(DeviceModel deviceModel) {
        int agreedProtocolVersion = deviceModel.getAgreedProtocolVersion();
        if (agreedProtocolVersion == 0) {
            m13917O3();
        } else {
            m13907l3(agreedProtocolVersion);
        }
    }

    /* renamed from: l3 */
    private void m13907l3(final int i) {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("lite").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.lite.fragment.n0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteSettingFragment.this.m13900s3(i, (PrivacyInfoEntity) obj);
            }
        }, new C3242e(this));
    }

    /* renamed from: m3 */
    private void m13906m3(DeviceModel deviceModel) {
        if (deviceModel != null) {
            int versionSoft = deviceModel.getVersionSoft();
            int versionHw = deviceModel.getVersionHw();
            if (versionSoft > 0) {
                LiteUpgradeManager.m14144d().m14146b(versionSoft, versionHw);
            }
        }
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: n3 */
    private void m13905n3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("lite").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.lite.fragment.s0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                LiteSettingFragment.this.m13898u3((PrivacyInfoEntity) obj);
            }
        }, new C3241d(this));
    }

    /* renamed from: p3 */
    private void m13903p3() {
        LiteViewModel liteViewModel = (LiteViewModel) ViewModelProviders.m22684b(getActivity()).m22691a(LiteViewModel.class);
        this.f12292z = liteViewModel;
        liteViewModel.m14036o().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.k0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.m13913S3((ChannelModel) obj);
            }
        });
        this.f12292z.m14034q().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.q0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.m13894y3((LiteDeviceParamLiveData) obj);
            }
        });
        this.f12292z.m14033r().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.p0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.m13931A3((String) obj);
            }
        });
        this.f12292z.m14035p().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.m0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.m13929C3((DeviceModel) obj);
            }
        });
        this.f12292z.m14061J();
        this.f12292z.m14060K();
        LiteUpgradeViewModel liteUpgradeViewModel = (LiteUpgradeViewModel) ViewModelProviders.m22685a(this).m22691a(LiteUpgradeViewModel.class);
        liteUpgradeViewModel.m14116j().observe(this, new Observer() { // from class: com.ifengyu.intercom.device.lite.fragment.t0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                LiteSettingFragment.this.m13927E3((UpgradeInfoDTO) obj);
            }
        });
        liteUpgradeViewModel.m14119g();
        RxBus.m11806d().m11808b(this, LiteEvent.class, new C3238a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m13900s3(int i, PrivacyInfoEntity privacyInfoEntity) throws Exception {
        int parseInt = Integer.parseInt(privacyInfoEntity.getVersion());
        if (parseInt > i) {
            m13916P3(parseInt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m13898u3(PrivacyInfoEntity privacyInfoEntity) throws Exception {
        this.f12292z.m14053R(Integer.parseInt(privacyInfoEntity.getVersion()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v3 */
    public /* synthetic */ void m13896w3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x3 */
    public /* synthetic */ void m13894y3(LiteDeviceParamLiveData liteDeviceParamLiveData) {
        m10329C2();
        this.mItemName.setValueText(liteDeviceParamLiveData.getName());
        this.mItemId.setValueText(String.valueOf(liteDeviceParamLiveData.getDeviceId()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z3 */
    public /* synthetic */ void m13931A3(String str) {
        if (str != null) {
            m10313W2();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f12292z.m14036o().setValue((ChannelModel) arguments.getParcelable("channel"));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: d2 */
    public void mo8057d2() {
        startActivity(new Intent(getContext(), MainActivity.class));
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_lite_setting, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13904o3();
        m13903p3();
        return inflate;
    }

    /* renamed from: o3 */
    public void m13904o3() {
        this.mTopBar.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.lite.fragment.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LiteSettingFragment.this.m13896w3(view);
            }
        });
        this.mTopBar.m7338p(R.string.setting);
    }

    @OnClick({R.id.item_config, R.id.item_name, R.id.item_id, R.id.item_voice, R.id.item_deploy, R.id.item_more, R.id.item_update, R.id.btn_unbind, R.id.ll_channel_board, R.id.item_about})
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btn_unbind /* 2131296441 */:
                m13915Q3();
                return;
            case R.id.item_about /* 2131296828 */:
                UserProtocolActivity.m10423P(getActivity(), String.valueOf(this.f12292z.m14034q().getDeviceId()));
                return;
            case R.id.item_config /* 2131296833 */:
                m8041v2(LiteConfigFileListFragment.m13849f4());
                return;
            case R.id.item_deploy /* 2131296834 */:
                m8041v2(BatchConfigurationFragment.m14006w3());
                return;
            case R.id.item_more /* 2131296844 */:
                m8041v2(LiteSettingMoreFragment.m13877u3());
                return;
            case R.id.item_name /* 2131296845 */:
                m13918N3();
                return;
            case R.id.item_update /* 2131296865 */:
                m8041v2(FirmwareUpgradeFragment.m13981x3(null));
                return;
            case R.id.item_voice /* 2131296866 */:
                m8041v2(LiteSettingVoiceFragment.m13861s3());
                return;
            case R.id.ll_channel_board /* 2131296924 */:
                m8041v2(LiteChannelFragment.m13959E3(this.f12292z.m14036o().getValue()));
                return;
            default:
                return;
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        RxBus.m11806d().m11803g(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f12292z.m14062I();
    }
}
