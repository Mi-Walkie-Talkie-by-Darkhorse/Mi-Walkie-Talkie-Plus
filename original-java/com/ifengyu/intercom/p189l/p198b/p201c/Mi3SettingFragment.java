package com.ifengyu.intercom.p189l.p198b.p201c;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.view.View;
import android.widget.EditText;
import androidx.databinding.DataBindingUtil;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.common.event.DeviceParamEvent;
import com.ifengyu.intercom.device.common.model.OperationResult;
import com.ifengyu.intercom.device.mi3.models.Mi3ChannelState;
import com.ifengyu.intercom.device.mi3.models.Mi3DeviceParamLiveData;
import com.ifengyu.intercom.dialog.list.BottomSheetListAdapter;
import com.ifengyu.intercom.dialog.list.ItemListBuilder;
import com.ifengyu.intercom.http.entity.PrivacyInfoEntity;
import com.ifengyu.intercom.http.entity.VersionInfo;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p188k.FragmentMi3SettingBinding;
import com.ifengyu.intercom.p189l.p190a.p191a.CustomChannelCache;
import com.ifengyu.intercom.p189l.p190a.p191a.RemoteChannelCache;
import com.ifengyu.intercom.p189l.p190a.p197d.RxBus;
import com.ifengyu.intercom.p189l.p198b.p200b.Mi3AddListenChDialogFragment;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3UpgradeViewModel;
import com.ifengyu.intercom.p189l.p198b.p204e.Mi3ViewModel;
import com.ifengyu.intercom.p205m.p207b.EditTextDialogBuilder;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.CharInputFilter;
import com.ifengyu.intercom.p214p.UserPrivacyReportUtil;
import com.ifengyu.intercom.p216ui.MainActivity;
import com.ifengyu.intercom.p216ui.activity.UserProtocolActivity;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.protos.BleProtos;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.functions.Consumer;

/* renamed from: com.ifengyu.intercom.l.b.c.u1 */
/* loaded from: classes2.dex */
public class Mi3SettingFragment extends BaseFragment implements View.OnClickListener {

    /* renamed from: A */
    private Mi3ViewModel f14205A;

    /* renamed from: B */
    private String f14206B;

    /* renamed from: C */
    private int f14207C;

    /* renamed from: D */
    private Mi3UpgradeViewModel f14208D;

    /* renamed from: z */
    private FragmentMi3SettingBinding f14209z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3SettingFragment.java */
    /* renamed from: com.ifengyu.intercom.l.b.c.u1$a */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC4047a implements View.OnClickListener {
        View$OnClickListenerC4047a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Mi3SettingFragment mi3SettingFragment = Mi3SettingFragment.this;
            mi3SettingFragment.m8041v2(Mi3SetMoreFragment.m11712x3(mi3SettingFragment.f14206B));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3SettingFragment.java */
    /* renamed from: com.ifengyu.intercom.l.b.c.u1$b */
    /* loaded from: classes2.dex */
    public class C4048b extends ErrorConsumer {
        C4048b(Mi3SettingFragment mi3SettingFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: Mi3SettingFragment.java */
    /* renamed from: com.ifengyu.intercom.l.b.c.u1$c */
    /* loaded from: classes2.dex */
    public class C4049c extends ErrorConsumer {
        C4049c(Mi3SettingFragment mi3SettingFragment) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m11709B3(VersionInfo versionInfo) {
        if (versionInfo != null) {
            this.f14209z.f14015S.m8575c(versionInfo.isHasNewVersion());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m11707D3(Integer num) {
        if (num.intValue() == 6) {
            this.f14209z.f14015S.m8575c(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m11705F3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12385b();
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m11703H3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11157b("mi3", String.valueOf(this.f14205A.m11461w().getDeviceId()));
        m11676k3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m11701J3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12385b();
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m11699L3(int i, QMUIDialog qMUIDialog, int i2) {
        qMUIDialog.dismiss();
        UserPrivacyReportUtil.m11157b("mi3", String.valueOf(this.f14205A.m11461w().getDeviceId()));
        this.f14205A.m11475m0(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M3 */
    public /* synthetic */ void m11697N3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10308b3();
        this.f14205A.m11469p0(BleProtos.VoxType.valueOf(this.f14207C));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: O3 */
    public /* synthetic */ void m11695P3(QMUIDialog qMUIDialog, View view, int i, String str, BottomSheetListAdapter bottomSheetListAdapter) {
        bottomSheetListAdapter.m12448j(i);
        this.f14207C = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S3 */
    public /* synthetic */ void m11691T3(EditTextDialogBuilder editTextDialogBuilder, String str, QMUIDialog qMUIDialog, int i) {
        String trim = editTextDialogBuilder.m7262G().getText().toString().trim();
        if (TextUtils.isEmpty(trim)) {
            UIUtils.m8593y(R.string.please_input_intercom_name);
        } else if (trim.getBytes().length > 16) {
            UIUtils.m8593y(R.string.name_set_too_lang);
        } else if (trim.equals(str)) {
            qMUIDialog.dismiss();
        } else {
            qMUIDialog.dismiss();
            m10308b3();
            this.f14205A.m11479k0(trim);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: V3 */
    public /* synthetic */ void m11688W3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        BleCoreClient.m12373n().m12384c(this.f14206B);
        mo8048o2();
    }

    /* renamed from: X3 */
    private void m11687X3() {
        new Mi3AddListenChDialogFragment(103).show(getChildFragmentManager(), "Mi3AddListenChDialogFragment");
    }

    /* renamed from: Y3 */
    private void m11686Y3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.dialog_privacy_policy_title);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11146m("mi3"));
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.d0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3SettingFragment.this.m11705F3(qMUIDialog, i);
            }
        });
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.c0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3SettingFragment.this.m11703H3(qMUIDialog, i);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: Z3 */
    private void m11685Z3(final int i) {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7286t(false);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7285u(false);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7282x(R.string.user_protocol_updated);
        MessageDialogBuilder messageDialogBuilder4 = messageDialogBuilder3;
        messageDialogBuilder4.m7247F(UserPrivacyReportUtil.m11145n("mi3"));
        messageDialogBuilder4.m7300b(0, R.string.common_cancel, 2, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.q0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                Mi3SettingFragment.this.m11701J3(qMUIDialog, i2);
            }
        });
        MessageDialogBuilder messageDialogBuilder5 = messageDialogBuilder4;
        messageDialogBuilder5.m7300b(0, R.string.agree_and_continue, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.f0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                Mi3SettingFragment.this.m11699L3(i, qMUIDialog, i2);
            }
        });
        messageDialogBuilder5.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: a4 */
    private void m11684a4() {
        BleProtos.VoxType vox = this.f14205A.m11461w().getVox();
        if (vox == null) {
            return;
        }
        this.f14207C = vox.getNumber();
        ItemListBuilder itemListBuilder = new ItemListBuilder(getContext(), true);
        String[] strArr = {getString(R.string.common_off), getString(R.string.free_call_level_low), getString(R.string.free_call_level_middle), getString(R.string.free_call_level_high)};
        for (int i = 0; i < 4; i++) {
            itemListBuilder.m12445F(strArr[i]);
        }
        itemListBuilder.m7282x(R.string.button_free_call_text);
        ItemListBuilder itemListBuilder2 = itemListBuilder;
        itemListBuilder2.m12443H(this.f14207C);
        itemListBuilder2.m12440K(new ItemListBuilder.InterfaceC3847c() { // from class: com.ifengyu.intercom.l.b.c.e0
            @Override // com.ifengyu.intercom.dialog.list.ItemListBuilder.InterfaceC3847c
            /* renamed from: a */
            public final void mo9161a(QMUIDialog qMUIDialog, View view, int i2, String str, BottomSheetListAdapter bottomSheetListAdapter) {
                Mi3SettingFragment.this.m11695P3(qMUIDialog, view, i2, str, bottomSheetListAdapter);
            }
        });
        itemListBuilder2.m7300b(0, R.string.common_cancel, 2, C4019i0.f14161a);
        ItemListBuilder itemListBuilder3 = itemListBuilder2;
        itemListBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.y
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i2) {
                Mi3SettingFragment.this.m11697N3(qMUIDialog, i2);
            }
        });
        itemListBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b4 */
    public void m11683b4(OperationResult operationResult) {
        if (operationResult == null) {
            return;
        }
        int status = operationResult.getStatus();
        String action = operationResult.getAction();
        action.hashCode();
        char c = 65535;
        switch (action.hashCode()) {
            case -1715638589:
                if (action.equals(OperationResult.ACTION_UPDATE_DEVICE_VOX)) {
                    c = 0;
                    break;
                }
                break;
            case -1645440761:
                if (action.equals(OperationResult.ACTION_UPDATE_DEVICE_NAME)) {
                    c = 1;
                    break;
                }
                break;
            case 100060332:
                if (action.equals(OperationResult.ACTION_SYNC_CUSTOM_CHANNEL_END)) {
                    c = 2;
                    break;
                }
                break;
            case 1785569793:
                if (action.equals(OperationResult.ACTION_SYNC_REMOTE_CHANNEL_END)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                break;
            case 1:
                RxBus.m11806d().m11805e(new DeviceParamEvent());
                break;
            case 2:
            case 3:
                m10329C2();
                return;
            default:
                return;
        }
        if (status == 1) {
            m10305e3(UIUtils.m8603o(R.string.set_success));
        } else if (status == 2) {
            m10311Y2(UIUtils.m8603o(R.string.set_failed));
        } else if (status == 3) {
            m10311Y2(UIUtils.m8603o(R.string.operate_timeout));
        }
    }

    /* renamed from: c4 */
    private void m11682c4() {
        DeviceModel value = this.f14205A.m11462v().getValue();
        if (value == null) {
            return;
        }
        final EditTextDialogBuilder editTextDialogBuilder = new EditTextDialogBuilder(getContext());
        final String name = value.getName();
        editTextDialogBuilder.m7282x(R.string.common_intercom_name);
        EditTextDialogBuilder editTextDialogBuilder2 = editTextDialogBuilder;
        editTextDialogBuilder2.m7259J(R.string.please_input_intercom_name);
        editTextDialogBuilder2.m7261H(name);
        editTextDialogBuilder2.m7260I(1);
        editTextDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3995a0.f14134a);
        EditTextDialogBuilder editTextDialogBuilder3 = editTextDialogBuilder2;
        editTextDialogBuilder3.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.j0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3SettingFragment.this.m11691T3(editTextDialogBuilder, name, qMUIDialog, i);
            }
        });
        EditTextDialogBuilder editTextDialogBuilder4 = editTextDialogBuilder3;
        editTextDialogBuilder4.m7284v(1.0f);
        QMUIDialog m7296f = editTextDialogBuilder4.m7296f(R.style.DialogTheme1);
        EditText m7262G = editTextDialogBuilder.m7262G();
        m7262G.setFilters(new InputFilter[]{new CharInputFilter(16, 3)});
        m7262G.setSelection(name.length());
        m7296f.show();
        C4968d.m8691d(m7262G);
    }

    /* renamed from: d4 */
    private void m11681d4() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7248E(R.string.setting_confirm_un_bind_current_device);
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4030n0.f14178a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_ok, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.l.b.c.x
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                Mi3SettingFragment.this.m11688W3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: h3 */
    private void m11679h3(DeviceModel deviceModel) {
        int agreedProtocolVersion = deviceModel.getAgreedProtocolVersion();
        if (agreedProtocolVersion == 0) {
            m11686Y3();
        } else {
            m11677j3(agreedProtocolVersion);
        }
    }

    /* renamed from: i3 */
    private void m11678i3(DeviceModel deviceModel) {
        if (deviceModel != null) {
            int versionSoft = deviceModel.getVersionSoft();
            int versionHw = deviceModel.getVersionHw();
            if (versionSoft > 0) {
                this.f14208D.m11544h(versionSoft, versionHw);
            }
        }
    }

    /* renamed from: j3 */
    private void m11677j3(final int i) {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("mi3").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.l.b.c.b0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3SettingFragment.this.m11672o3(i, (PrivacyInfoEntity) obj);
            }
        }, new C4049c(this));
    }

    @SuppressLint({"AutoDispose", "CheckResult"})
    /* renamed from: k3 */
    private void m11676k3() {
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11396K("mi3").compose(Transformer.m8717a()).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.l.b.c.p0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                Mi3SettingFragment.this.m11669r3((PrivacyInfoEntity) obj);
            }
        }, new C4048b(this));
    }

    @SuppressLint({"FragmentLiveDataObserve"})
    /* renamed from: m3 */
    private void m11674m3() {
        Mi3ViewModel mi3ViewModel = (Mi3ViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3ViewModel.class);
        this.f14205A = mi3ViewModel;
        mi3ViewModel.m11483i0(this.f14206B);
        this.f14205A.m11462v().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.o0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SettingFragment.this.m11665v3((DeviceModel) obj);
            }
        });
        this.f14205A.m11461w().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.h0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SettingFragment.this.m11663x3((Mi3DeviceParamLiveData) obj);
            }
        });
        this.f14205A.m11464t().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.z
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SettingFragment.this.m11661z3((Mi3ChannelState) obj);
            }
        });
        this.f14205A.m11459y().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.l0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SettingFragment.this.m11683b4((OperationResult) obj);
            }
        });
        Mi3UpgradeViewModel mi3UpgradeViewModel = (Mi3UpgradeViewModel) new ViewModelProvider(requireActivity()).m22691a(Mi3UpgradeViewModel.class);
        this.f14208D = mi3UpgradeViewModel;
        mi3UpgradeViewModel.m11552C(this.f14206B);
        this.f14208D.m11539m().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.k0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SettingFragment.this.m11709B3((VersionInfo) obj);
            }
        });
        this.f14208D.m11540l().observe(this, new Observer() { // from class: com.ifengyu.intercom.l.b.c.m0
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                Mi3SettingFragment.this.m11707D3((Integer) obj);
            }
        });
        this.f14205A.m11504V();
        this.f14205A.m11503W();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m11672o3(int i, PrivacyInfoEntity privacyInfoEntity) throws Exception {
        int parseInt = Integer.parseInt(privacyInfoEntity.getVersion());
        if (parseInt > i) {
            m11685Z3(parseInt);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m11669r3(PrivacyInfoEntity privacyInfoEntity) throws Exception {
        this.f14205A.m11475m0(Integer.parseInt(privacyInfoEntity.getVersion()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m11667t3(View view) {
        mo8057d2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m11665v3(DeviceModel deviceModel) {
        if (deviceModel != null) {
            this.f14209z.f14016T.m7337q(deviceModel.getName());
            m11678i3(deviceModel);
            m11679h3(deviceModel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m11663x3(Mi3DeviceParamLiveData mi3DeviceParamLiveData) {
        m10329C2();
        this.f14208D.m11544h(mi3DeviceParamLiveData.getVerSoft(), mi3DeviceParamLiveData.getVerHw());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: y3 */
    public /* synthetic */ void m11661z3(Mi3ChannelState mi3ChannelState) {
        if (RemoteChannelCache.m11943d() && CustomChannelCache.m11951d()) {
            return;
        }
        m10307c3(true, UIUtils.m8603o(R.string.custom_ch_syncing));
        this.f14205A.m11508R();
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f14206B = bundle.getString("device_mac_address");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    public void mo9102E2() {
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
        FragmentMi3SettingBinding fragmentMi3SettingBinding = (FragmentMi3SettingBinding) DataBindingUtil.m22966e(getLayoutInflater(), R.layout.fragment_mi3_setting, null, false);
        this.f14209z = fragmentMi3SettingBinding;
        fragmentMi3SettingBinding.m23011A(getActivity());
        m11674m3();
        this.f14209z.mo11963F(this.f14205A);
        this.f14209z.setClickListener(this);
        m11675l3();
        return this.f14209z.mo23006a();
    }

    /* renamed from: l3 */
    public void m11675l3() {
        this.f14209z.f14016T.m7344h().setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.l.b.c.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Mi3SettingFragment.this.m11667t3(view);
            }
        });
        this.f14209z.f14016T.m7338p(R.string.device_xiaomi3_name);
        this.f14209z.f14016T.m7340n(R.drawable.group_icon_details_black, QMUIViewHelper.m7473b()).setOnClickListener(new View$OnClickListenerC4047a());
        Typeface typeface = AppConstants.f13909c;
        FragmentMi3SettingBinding fragmentMi3SettingBinding = this.f14209z;
        UIUtils.m8595w(typeface, fragmentMi3SettingBinding.f13997A, fragmentMi3SettingBinding.f13999C, fragmentMi3SettingBinding.f14004H, fragmentMi3SettingBinding.f14006J);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.ch1Layout) {
            this.f14205A.m11485h0(1);
            m8041v2(Mi3ChanelEditAndChangeStateFragment.m11774I3(1));
        } else if (id == R.id.ch2Layout) {
            this.f14205A.m11485h0(2);
            m8041v2(Mi3ChanelEditAndChangeStateFragment.m11774I3(2));
        } else if (id == R.id.btnAddListenCh) {
            m11687X3();
        } else if (id == R.id.itemAllChannel) {
            m8041v2(Mi3AllChanelFragment.m11782m3());
        } else if (id == R.id.itemDeviceName) {
            m11682c4();
        } else if (id == R.id.itemShareLocation) {
            m8041v2(Mi3ShareLocationFragment.m11652I3());
        } else if (id == R.id.itemConfigFile) {
            m8041v2(Mi3ConfigFileListFragment.m11750f4());
        } else if (id == R.id.itemFreePttKey) {
            m11684a4();
        } else if (id == R.id.itemUpdate) {
            m8041v2(Mi3UpgradeFragment.m11608u3());
        } else if (id != R.id.itemAbout) {
            if (id == R.id.itemUnbind) {
                m11681d4();
            }
        } else {
            DeviceModel value = this.f14205A.m11462v().getValue();
            if (value != null) {
                UserProtocolActivity.m10422R(getActivity(), String.valueOf(value.getDeviceId()));
            }
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.f14205A.m11497b0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.f14205A.m11505U();
    }
}
