package com.ifengyu.intercom.device.oldDevice.dolphin.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinCHSettingActivity;
import com.ifengyu.intercom.device.oldDevice.dolphin.activity.DolphinRelayEditActivity;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.device.oldDevice.p177w.p178a.DolphinRelayAdapter;
import com.ifengyu.intercom.event.StateUpdateEvent;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.ListDialog;
import com.ifengyu.intercom.p216ui.widget.view.RecyclerViewEmptySupport;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;
import p048b.p078f.p079a.p080a.p083e.HeaderAndFooterWrapper;

/* loaded from: classes2.dex */
public class DolphinRelayFragment extends DolphinChannelBaseFragment implements DolphinRelayAdapter.InterfaceC3837c {

    /* renamed from: t */
    private static final String f12927t = DolphinRelayFragment.class.getSimpleName();

    /* renamed from: m */
    private DolphinCHSettingActivity f12929m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_relay)
    RecyclerViewEmptySupport mRvRelay;
    @BindView(R.id.tv_empty_view)
    TextView mTvEmptyView;

    /* renamed from: n */
    private DolphinRelayAdapter f12930n;

    /* renamed from: o */
    private int f12931o;

    /* renamed from: p */
    private DolphinChannelModel f12932p;

    /* renamed from: s */
    private HeaderAndFooterWrapper f12935s;

    /* renamed from: l */
    private List<DolphinChannelModel> f12928l = new ArrayList();

    /* renamed from: q */
    private int f12933q = -1;

    /* renamed from: r */
    private List<DolphinChannelModel> f12934r = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinRelayFragment$a */
    /* loaded from: classes2.dex */
    public class RunnableC3580a implements Runnable {
        RunnableC3580a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
            dolphinRelayFragment.f12951j = true;
            dolphinRelayFragment.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinRelayFragment$b */
    /* loaded from: classes2.dex */
    public class RunnableC3581b implements Runnable {
        RunnableC3581b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
            dolphinRelayFragment.f12951j = true;
            dolphinRelayFragment.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinRelayFragment$c */
    /* loaded from: classes2.dex */
    public class C3582c implements ListDialog.InterfaceC4927c {

        /* renamed from: a */
        final /* synthetic */ DolphinChannelModel f12938a;

        C3582c(DolphinChannelModel dolphinChannelModel) {
            this.f12938a = dolphinChannelModel;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                DolphinRelayFragment.this.m13222l2(this.f12938a);
            } else if (i != 1) {
            } else {
                Intent intent = new Intent(DolphinRelayFragment.this.getActivity(), DolphinRelayEditActivity.class);
                intent.setAction("com.ifengyu.action.RELAY_MODIFY_CHANNEL");
                intent.putExtra("relayInfo", this.f12938a);
                DolphinRelayFragment.this.startActivityForResult(intent, 1);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinRelayFragment$d */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3583d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12940a;

        /* renamed from: b */
        final /* synthetic */ DolphinChannelModel f12941b;

        DialogInterface$OnClickListenerC3583d(CommonDialog commonDialog, DolphinChannelModel dolphinChannelModel) {
            this.f12940a = commonDialog;
            this.f12941b = dolphinChannelModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f12940a.m9031f();
            DolphinRelayFragment.this.f12932p = this.f12941b;
            DolphinRelayFragment dolphinRelayFragment = DolphinRelayFragment.this;
            dolphinRelayFragment.m13204Q1(dolphinRelayFragment.f12932p);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinRelayFragment$e */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3584e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12943a;

        DialogInterface$OnClickListenerC3584e(DolphinRelayFragment dolphinRelayFragment, CommonDialog commonDialog) {
            this.f12943a = commonDialog;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f12943a.m9031f();
        }
    }

    /* renamed from: k2 */
    public static DolphinRelayFragment m13223k2(String str, boolean z, int i) {
        DolphinRelayFragment dolphinRelayFragment = new DolphinRelayFragment();
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i);
        dolphinRelayFragment.setArguments(bundle);
        return dolphinRelayFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l2 */
    public void m13222l2(DolphinChannelModel dolphinChannelModel) {
        CommonDialog commonDialog = new CommonDialog(getActivity());
        commonDialog.m9018s(R.string.common_delete);
        commonDialog.m9025l(UIUtils.m8602p(R.string.dialog_are_you_sure_delete_the_selected_relay_channel, MethodsUtils.m11290j(dolphinChannelModel.getFreq()), MethodsUtils.m11290j(dolphinChannelModel.getFreq2())));
        commonDialog.m9024m(R.string.common_cancel, new DialogInterface$OnClickListenerC3584e(this, commonDialog));
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3583d(commonDialog, dolphinChannelModel));
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: J1 */
    protected void mo13211J1(StateUpdateEvent stateUpdateEvent) {
        int i = this.f12933q;
        if (i != -1) {
            this.f12928l.remove(i);
            this.f12935s.notifyItemRemoved(this.f12933q);
            this.f12952k.m12310t0(this.f12932p);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: K1 */
    protected void mo13210K1(StateUpdateEvent stateUpdateEvent) {
        if (stateUpdateEvent.isHasCh1()) {
            if (stateUpdateEvent.getCh1().getType() != MitalkProtos.CHTYPE.RELAY) {
                return;
            }
            DolphinChannelModel dolphinChannelModel = null;
            int i = MiTalkClientUtil.f14440a;
            if (i == 1) {
                if (stateUpdateEvent.isHasCh1() && stateUpdateEvent.isHasCh2()) {
                    dolphinChannelModel = BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2());
                }
            } else if (i == 2) {
                dolphinChannelModel = BleChannelUtils.m11819b(stateUpdateEvent.getCh1());
            }
            if (dolphinChannelModel == null) {
                return;
            }
            int indexOf = this.f12928l.indexOf(dolphinChannelModel);
            if (indexOf != -1) {
                DolphinChannelModel dolphinChannelModel2 = this.f12928l.get(indexOf);
                dolphinChannelModel2.setFreq(dolphinChannelModel.getFreq());
                dolphinChannelModel2.setName(dolphinChannelModel.getName());
                dolphinChannelModel2.setFreq2(dolphinChannelModel.getFreq2());
                dolphinChannelModel2.setTone(dolphinChannelModel.getTone());
                dolphinChannelModel2.setTone2(dolphinChannelModel.getTone2());
                this.f12935s.notifyItemChanged(indexOf);
                DolphinChannelModel m13309I = this.f12929m.m13309I();
                if (this.f12932p == null || !m13309I.equals(dolphinChannelModel2)) {
                    return;
                }
                this.f12929m.m13305M(dolphinChannelModel2);
                this.f12929m.m13306L(dolphinChannelModel2);
                return;
            }
            this.f12928l.add(dolphinChannelModel);
            this.f12935s.notifyItemInserted(this.f12928l.size() - 1);
            return;
        }
        DolphinChannelModel dolphinChannelModel3 = this.f12932p;
        if (dolphinChannelModel3 != null) {
            this.f12928l.add(dolphinChannelModel3);
            this.f12935s.notifyItemInserted(this.f12928l.size() - 1);
            this.f12952k.m12339Y0(this.f12932p);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: L1 */
    protected void mo13209L1(StateUpdateEvent stateUpdateEvent) {
        int indexOf;
        DolphinChannelModel dolphinChannelModel = this.f12932p;
        if (dolphinChannelModel == null || (indexOf = this.f12928l.indexOf(dolphinChannelModel)) == -1) {
            return;
        }
        DolphinChannelModel dolphinChannelModel2 = this.f12928l.get(indexOf);
        dolphinChannelModel2.setName(this.f12932p.getName());
        dolphinChannelModel2.setFreq(this.f12932p.getFreq());
        dolphinChannelModel2.setFreq2(this.f12932p.getFreq2());
        dolphinChannelModel2.setTone(this.f12932p.getTone());
        dolphinChannelModel2.setTone2(this.f12932p.getTone2());
        DolphinChannelModel m13309I = this.f12929m.m13309I();
        if (m13309I != null && m13309I.equals(this.f12932p)) {
            this.f12929m.m13306L(this.f12932p);
        }
        this.f12935s.notifyItemChanged(indexOf);
        this.f12952k.m12339Y0(this.f12932p);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: M1 */
    protected void mo13208M1(StateUpdateEvent stateUpdateEvent) {
        if (this.f12931o >= 20) {
            this.f12952k.m12366A1(false);
            this.mProgressBar.setVisibility(8);
            this.mRvRelay.setEmptyView(this.mTvEmptyView);
            this.f12928l.clear();
            this.f12928l.addAll(this.f12934r);
            HeaderAndFooterWrapper headerAndFooterWrapper = this.f12935s;
            if (headerAndFooterWrapper != null) {
                headerAndFooterWrapper.notifyDataSetChanged();
            }
            m13218C1();
            this.f12951j = true;
            return;
        }
        int i = this.f12931o;
        this.f12931o = i + 1;
        m13201T1(new DolphinChannelModel(i, 8, "", 0));
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: N1 */
    protected void mo13207N1(StateUpdateEvent stateUpdateEvent) {
        if (!stateUpdateEvent.isHasCh1() || stateUpdateEvent.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
            if (stateUpdateEvent.isHasCh1() && stateUpdateEvent.isHasCh2()) {
                this.f12934r.add(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
            } else if (stateUpdateEvent.isHasCh1()) {
                this.f12934r.add(BleChannelUtils.m11819b(stateUpdateEvent.getCh1()));
            }
            if (this.f12931o >= 20) {
                this.f12952k.m12366A1(false);
                this.mProgressBar.setVisibility(8);
                this.mRvRelay.setEmptyView(this.mTvEmptyView);
                this.f12928l.clear();
                this.f12928l.addAll(this.f12934r);
                HeaderAndFooterWrapper headerAndFooterWrapper = this.f12935s;
                if (headerAndFooterWrapper != null) {
                    headerAndFooterWrapper.notifyDataSetChanged();
                }
                m13218C1();
                this.f12951j = true;
                return;
            }
            int i = this.f12931o;
            this.f12931o = i + 1;
            m13201T1(new DolphinChannelModel(i, 8, "", 0));
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: O1 */
    protected void mo13206O1(StateUpdateEvent stateUpdateEvent) {
        if (this.f12948g) {
            if (stateUpdateEvent.isHasCh1()) {
                if (MiTalkClientUtil.f14440a == 1 && stateUpdateEvent.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
                    this.f12929m.m13306L(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
                    return;
                }
                this.f12929m.m13306L(BleChannelUtils.m11819b(stateUpdateEvent.getCh1()));
            }
        } else if (stateUpdateEvent.isHasCh2()) {
            if (MiTalkClientUtil.f14440a == 1 && stateUpdateEvent.getCh2().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.f12929m.m13306L(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
                return;
            }
            this.f12929m.m13306L(BleChannelUtils.m11819b(stateUpdateEvent.getCh2()));
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: P1 */
    protected void mo13205P1(StateUpdateEvent stateUpdateEvent) {
        DolphinChannelModel dolphinChannelModel = this.f12932p;
        if (dolphinChannelModel != null) {
            this.f12929m.m13305M(dolphinChannelModel);
            this.f12929m.m13306L(this.f12932p);
            this.f12930n.m12478q(this.f12932p);
            HeaderAndFooterWrapper headerAndFooterWrapper = this.f12935s;
            if (headerAndFooterWrapper != null) {
                headerAndFooterWrapper.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.p177w.p178a.DolphinRelayAdapter.InterfaceC3837c
    /* renamed from: T0 */
    public void mo12477T0(View view, int i, DolphinChannelModel dolphinChannelModel) {
        this.f12933q = i;
        this.f12932p = dolphinChannelModel;
        m13221m2(dolphinChannelModel);
    }

    /* renamed from: i2 */
    public void m13225i2() {
        if (!BleCoreClient.m12373n().m12372o(this.f12947f)) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.device_not_connected), false);
        } else if (this.f12951j) {
            if (this.f12949h < 16973824) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_firmware_low_please_upgrade_first), false);
            } else if (!this.f12952k.m12361D0()) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.f12928l.size() >= 20) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), DolphinRelayEditActivity.class);
                intent.setAction("com.ifengyu.action.RELAY_INSERT_CHANNEL");
                intent.putExtra("channelNum", MethodsUtils.m11283q(this.f12928l));
                startActivityForResult(intent, 0);
            }
        }
    }

    /* renamed from: j2 */
    public void m13224j2() {
        if (!this.f12952k.m12361D0()) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
        } else if (this.f12949h < 16973824) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_firmware_low_please_upgrade_first), false);
        } else {
            this.f12928l.clear();
            this.f12928l.addAll(this.f12952k.m12300y0());
            if (!this.f12952k.m12358F0()) {
                this.mRvRelay.setEmptyView(this.mTvEmptyView);
            }
            DolphinCHSettingActivity dolphinCHSettingActivity = this.f12929m;
            if (dolphinCHSettingActivity != null) {
                this.f12930n.m12478q(dolphinCHSettingActivity.m13309I());
            }
            this.f12935s.notifyDataSetChanged();
            if (this.f12952k.m12358F0()) {
                this.mProgressBar.setVisibility(0);
                this.f12931o = 0;
                this.f12934r.clear();
                int i = this.f12931o;
                this.f12931o = i + 1;
                m13201T1(new DolphinChannelModel(i, 8, "", 0));
                this.f12951j = false;
                UIUtils.m8599s(new RunnableC3580a(), 10000L);
            } else if (this.f12949h < 16973825) {
                this.mProgressBar.setVisibility(0);
                this.f12931o = 0;
                this.f12934r.clear();
                int i2 = this.f12931o;
                this.f12931o = i2 + 1;
                m13201T1(new DolphinChannelModel(i2, 8, "", 0));
                this.f12951j = false;
                UIUtils.m8599s(new RunnableC3581b(), 10000L);
            }
        }
    }

    /* renamed from: m2 */
    public void m13221m2(DolphinChannelModel dolphinChannelModel) {
        String[] strArr = {UIUtils.m8603o(R.string.common_delete), UIUtils.m8603o(R.string.edit), UIUtils.m8603o(R.string.common_cancel)};
        ListDialog listDialog = new ListDialog(getActivity());
        listDialog.m8935m(UIUtils.m8602p(R.string.dialog_title_delete_relay, MethodsUtils.m11290j(dolphinChannelModel.getFreq()), MethodsUtils.m11290j(dolphinChannelModel.getFreq2())));
        listDialog.m8937k(true);
        listDialog.m8934n(strArr, new C3582c(dolphinChannelModel));
        listDialog.show();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        DolphinCHSettingActivity dolphinCHSettingActivity = (DolphinCHSettingActivity) getActivity();
        this.f12929m = dolphinCHSettingActivity;
        this.f12930n.m12478q(dolphinCHSettingActivity.m13309I());
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = f12927t;
        C4161y.m11054a(str, "onActivityResult:" + i);
        if (i == 0) {
            if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else if (i2 == 0) {
                DolphinChannelModel dolphinChannelModel = (DolphinChannelModel) intent.getParcelableExtra("relayInfo");
                C4161y.m11054a(str, dolphinChannelModel.toString());
                if (dolphinChannelModel != null) {
                    C4161y.m11054a(str, "send relay insert....");
                    dolphinChannelModel.setNo(MethodsUtils.m11283q(this.f12928l));
                    dolphinChannelModel.setType(8);
                    this.f12932p = dolphinChannelModel;
                    m13203R1(dolphinChannelModel);
                }
            }
        } else if (i == 1) {
            if (i2 != 1) {
                if (i2 == 2) {
                    DolphinChannelModel dolphinChannelModel2 = (DolphinChannelModel) intent.getParcelableExtra("relayInfo");
                    this.f12932p = dolphinChannelModel2;
                    m13204Q1(dolphinChannelModel2);
                }
            } else if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else {
                DolphinChannelModel dolphinChannelModel3 = (DolphinChannelModel) intent.getParcelableExtra("relayInfo");
                if (dolphinChannelModel3 != null) {
                    C4161y.m11054a(str, "send relay modify....");
                    this.f12932p = dolphinChannelModel3;
                    m13202S1(dolphinChannelModel3);
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.getBoolean("section_number", true);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_relay, viewGroup, false);
        ButterKnife.bind(this, inflate);
        this.mRvRelay.setLayoutManager(new LinearLayoutManager(UIUtils.m8613e()));
        DolphinRelayAdapter dolphinRelayAdapter = new DolphinRelayAdapter(getActivity(), this.f12928l);
        this.f12930n = dolphinRelayAdapter;
        dolphinRelayAdapter.setOnItemClickListener(this);
        this.f12935s = new HeaderAndFooterWrapper(this.f12930n);
        View view = new View(UIUtils.m8613e());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MethodsUtils.m11292h(90.0f)));
        view.setBackgroundColor(UIUtils.m8614d(R.color.white));
        this.f12935s.m20976g(view);
        this.mRvRelay.setFootOrHeaderNum(1);
        this.mRvRelay.setAdapter(this.f12935s);
        return inflate;
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        DolphinCHSettingActivity dolphinCHSettingActivity = this.f12929m;
        if (dolphinCHSettingActivity == null || dolphinCHSettingActivity.m13308J() == 2) {
            C4161y.m11054a(f12927t, "relay fragment receiveChannelResponse");
            m13213H1(stateUpdateEvent);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.p177w.p178a.DolphinRelayAdapter.InterfaceC3837c
    /* renamed from: v0 */
    public void mo12476v0(View view, int i, DolphinChannelModel dolphinChannelModel) {
        if (MiTalkClientUtil.f14440a < 2) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_firmware_low_and_not_suppot_relay), false);
            return;
        }
        this.f12932p = dolphinChannelModel;
        m13199V1(dolphinChannelModel);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f12927t, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f12927t;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            m13224j2();
            return;
        }
        UIUtils.m8597u();
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar == null || !progressBar.isShown()) {
            return;
        }
        this.mProgressBar.setVisibility(8);
    }
}
