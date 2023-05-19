package com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment;

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
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a.SealCustomAdapter;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelEditActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelSettingActivity;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.ListDialog;
import com.ifengyu.intercom.p216ui.widget.view.RecyclerViewEmptySupport;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.library.utils.UIUtils;
import com.p264uc.crashsdk.export.CrashStatKey;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;
import p048b.p078f.p079a.p080a.p083e.HeaderAndFooterWrapper;

/* loaded from: classes2.dex */
public class SealCustomFragment extends SealChannelBaseFragment implements SealCustomAdapter.InterfaceC3636d {

    /* renamed from: q */
    private static final String f13369q = SealCustomFragment.class.getSimpleName();

    /* renamed from: k */
    private SealChannelSettingActivity f13371k;

    /* renamed from: l */
    private SealCustomAdapter f13372l;

    /* renamed from: m */
    private SealSharkChannelModel f13373m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_seal)
    RecyclerViewEmptySupport mRecycleView;
    @BindView(R.id.tv_empty_view)
    TextView mTvEmptyView;

    /* renamed from: p */
    private HeaderAndFooterWrapper f13376p;

    /* renamed from: j */
    private List<SealSharkChannelModel> f13370j = new ArrayList();

    /* renamed from: n */
    private int f13374n = -1;

    /* renamed from: o */
    private List<SealSharkChannelModel> f13375o = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealCustomFragment$a */
    /* loaded from: classes2.dex */
    public class RunnableC3735a implements Runnable {
        RunnableC3735a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealCustomFragment sealCustomFragment = SealCustomFragment.this;
            sealCustomFragment.f13387g = true;
            sealCustomFragment.m12771F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealCustomFragment$b */
    /* loaded from: classes2.dex */
    public class C3736b implements ListDialog.InterfaceC4927c {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13378a;

        C3736b(SealSharkChannelModel sealSharkChannelModel) {
            this.f13378a = sealSharkChannelModel;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SealCustomFragment.this.m12779q2(this.f13378a);
            } else if (i != 1) {
            } else {
                Intent intent = new Intent(SealCustomFragment.this.getActivity(), SealChannelEditActivity.class);
                intent.setAction("seal_action_modify_channel");
                intent.putExtra("seal_action_modify_channel_info", this.f13378a);
                SealCustomFragment.this.startActivityForResult(intent, 202);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealCustomFragment$c */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3737c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f13380a;

        /* renamed from: b */
        final /* synthetic */ SealSharkChannelModel f13381b;

        DialogInterface$OnClickListenerC3737c(CommonDialog commonDialog, SealSharkChannelModel sealSharkChannelModel) {
            this.f13380a = commonDialog;
            this.f13381b = sealSharkChannelModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f13380a.m9031f();
            SealCustomFragment.this.f13373m = this.f13381b;
            SealCustomFragment sealCustomFragment = SealCustomFragment.this;
            sealCustomFragment.m12759V1(sealCustomFragment.f13373m);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealCustomFragment$d */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3738d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f13383a;

        DialogInterface$OnClickListenerC3738d(SealCustomFragment sealCustomFragment, CommonDialog commonDialog) {
            this.f13383a = commonDialog;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f13383a.m9031f();
        }
    }

    /* renamed from: p2 */
    public static SealCustomFragment m12780p2(String str) {
        SealCustomFragment sealCustomFragment = new SealCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        sealCustomFragment.setArguments(bundle);
        return sealCustomFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q2 */
    public void m12779q2(SealSharkChannelModel sealSharkChannelModel) {
        CommonDialog commonDialog = new CommonDialog(getActivity());
        commonDialog.m9018s(R.string.common_delete);
        commonDialog.m9025l(UIUtils.m8602p(R.string.dialog_are_you_sure_delete_the_selected_channel, MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()), MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())));
        commonDialog.m9024m(R.string.common_cancel, new DialogInterface$OnClickListenerC3738d(this, commonDialog));
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3737c(commonDialog, sealSharkChannelModel));
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: N1 */
    protected void mo12763N1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        int i = this.f13374n;
        if (i != -1) {
            this.f13370j.remove(i);
            this.f13376p.notifyItemRemoved(this.f13374n);
            this.f13389i.m12091q0(this.f13373m);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: O1 */
    protected void mo12762O1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelInfoOperate.getCh());
        int indexOf = this.f13370j.indexOf(m11815f);
        if (indexOf != -1) {
            this.f13370j.remove(indexOf);
            this.f13370j.add(indexOf, m11815f);
            this.f13376p.notifyItemChanged(indexOf);
            SealSharkChannelModel m12861J = this.f13371k.m12861J();
            if (m12861J == null || !m12861J.equals(m11815f)) {
                return;
            }
            this.f13371k.m12855P(m11815f);
            this.f13371k.m12856O(m11815f);
            return;
        }
        this.f13370j.add(m11815f);
        this.f13376p.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: P1 */
    protected void mo12743P1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelInfoOperate.getCh());
            int indexOf = this.f13370j.indexOf(m11815f);
            if (indexOf != -1) {
                this.f13370j.remove(indexOf);
                this.f13370j.add(indexOf, m11815f);
                SealSharkChannelModel m12861J = this.f13371k.m12861J();
                if (m12861J != null && m12861J.equals(m11815f)) {
                    this.f13373m = m11815f;
                    this.f13371k.m12856O(m11815f);
                }
                this.f13376p.notifyItemChanged(indexOf);
                return;
            }
            this.f13370j.add(m11815f);
            this.f13376p.notifyDataSetChanged();
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: Q1 */
    protected void mo12761Q1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        if (sEAL_ChannelInfoOperate.hasCh()) {
            this.f13375o.add(BleChannelUtils.m11815f(sEAL_ChannelInfoOperate.getCh()));
        }
        this.f13389i.m12108e1();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: R1 */
    protected void mo12742R1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        this.f13389i.m12134G1(false);
        this.mRecycleView.setEmptyView(this.mTvEmptyView);
        this.f13370j.clear();
        this.f13370j.addAll(this.f13375o);
        HeaderAndFooterWrapper headerAndFooterWrapper = this.f13376p;
        if (headerAndFooterWrapper != null) {
            headerAndFooterWrapper.notifyDataSetChanged();
        }
        m12772E1();
        this.f13387g = true;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: S1 */
    protected void mo12760S1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: T1 */
    protected void mo12741T1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelStateOperate.getCh1());
            this.f13373m = m11815f;
            this.f13371k.m12856O(m11815f);
            this.f13372l.m13019u(this.f13373m);
            HeaderAndFooterWrapper headerAndFooterWrapper = this.f13376p;
            if (headerAndFooterWrapper != null) {
                headerAndFooterWrapper.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: U1 */
    protected void mo12740U1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        C4161y.m11049f(f13369q, "onStateUpdateSuccess");
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelStateOperate.getCh1());
            this.f13373m = m11815f;
            this.f13371k.m12856O(m11815f);
            this.f13372l.m13019u(this.f13373m);
            HeaderAndFooterWrapper headerAndFooterWrapper = this.f13376p;
            if (headerAndFooterWrapper != null) {
                headerAndFooterWrapper.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a.SealCustomAdapter.InterfaceC3636d
    /* renamed from: m */
    public void mo12785m(View view, int i, SealSharkChannelModel sealSharkChannelModel) {
        this.f13374n = i;
        this.f13373m = sealSharkChannelModel;
        m12778r2(sealSharkChannelModel);
    }

    /* renamed from: n2 */
    public void m12783n2() {
        if (!BleCoreClient.m12373n().m12372o(this.f13388h)) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.device_not_connected), false);
        } else if (this.f13387g) {
            if (!this.f13389i.m12143C0()) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.f13370j.size() >= 20) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), SealChannelEditActivity.class);
                intent.setAction("seal_action_insert_channel");
                intent.putExtra("seal_action_insert_channel_index", MethodsUtils.m11282r(this.f13370j));
                startActivityForResult(intent, CrashStatKey.LOG_UPLOAD_ENCRYPT_COUNT);
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p167a.p168a.SealCustomAdapter.InterfaceC3636d
    /* renamed from: o */
    public void mo12782o(View view, int i, SealSharkChannelModel sealSharkChannelModel) {
        this.f13373m = sealSharkChannelModel;
        m12755Z1(sealSharkChannelModel);
    }

    /* renamed from: o2 */
    public void m12781o2() {
        if (!this.f13389i.m12143C0()) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        this.f13370j.clear();
        this.f13370j.addAll(this.f13389i.m12087s0());
        if (!this.f13389i.m12141D0()) {
            this.mRecycleView.setEmptyView(this.mTvEmptyView);
        }
        SealChannelSettingActivity sealChannelSettingActivity = this.f13371k;
        if (sealChannelSettingActivity != null) {
            this.f13372l.m13019u(sealChannelSettingActivity.m12861J());
        }
        this.f13376p.notifyDataSetChanged();
        if (this.f13389i.m12141D0()) {
            m12748g2(false, false, getString(R.string.custom_ch_syncing), R.drawable.load_spinner);
            this.f13375o.clear();
            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
            sealSharkChannelModel.setType(2);
            m12756Y1(sealSharkChannelModel);
            this.f13387g = false;
            UIUtils.m8599s(new RunnableC3735a(), 10000L);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SealChannelSettingActivity sealChannelSettingActivity = (SealChannelSettingActivity) getActivity();
        this.f13371k = sealChannelSettingActivity;
        SealSharkChannelModel m12861J = sealChannelSettingActivity.m12861J();
        this.f13373m = m12861J;
        this.f13372l.m13019u(m12861J);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        SealSharkChannelModel sealSharkChannelModel;
        String str = f13369q;
        C4161y.m11054a(str, "onActivityResult:" + i + "--resultCode:" + i2);
        if (i == 201) {
            if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else if (i2 != 2001 || (sealSharkChannelModel = (SealSharkChannelModel) intent.getParcelableExtra("customChannel")) == null) {
            } else {
                C4161y.m11054a(str, "customChannel:" + sealSharkChannelModel.toString());
                this.f13373m = sealSharkChannelModel;
                m12758W1(sealSharkChannelModel);
            }
        } else if (i == 202) {
            if (i2 != 2002) {
                if (i2 == 2003) {
                    SealSharkChannelModel sealSharkChannelModel2 = (SealSharkChannelModel) intent.getParcelableExtra("customChannel");
                    this.f13373m = sealSharkChannelModel2;
                    m12759V1(sealSharkChannelModel2);
                    return;
                }
                this.f13371k.m12853S(false);
                this.f13371k.m12854R(false);
            } else if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else {
                SealSharkChannelModel sealSharkChannelModel3 = (SealSharkChannelModel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannelModel3 != null) {
                    C4161y.m11054a(str, "customChannel:" + sealSharkChannelModel3.toString());
                    this.f13373m = sealSharkChannelModel3;
                    m12757X1(sealSharkChannelModel3);
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_seal_custom, viewGroup, false);
        ButterKnife.bind(this, inflate);
        SealCustomAdapter sealCustomAdapter = new SealCustomAdapter(getActivity(), this.f13370j);
        this.f13372l = sealCustomAdapter;
        sealCustomAdapter.setOnItemClickListener(this);
        this.f13376p = new HeaderAndFooterWrapper(this.f13372l);
        View view = new View(UIUtils.m8613e());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
        view.setBackgroundColor(UIUtils.m8614d(R.color.space_bg));
        this.f13376p.m20976g(view);
        this.mRecycleView.setFootOrHeaderNum(1);
        this.mRecycleView.setAdapter(this.f13376p);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(UIUtils.m8613e()));
        return inflate;
    }

    /* renamed from: r2 */
    public void m12778r2(SealSharkChannelModel sealSharkChannelModel) {
        String[] strArr = {UIUtils.m8603o(R.string.common_delete), UIUtils.m8603o(R.string.edit), UIUtils.m8603o(R.string.common_cancel)};
        ListDialog listDialog = new ListDialog(getActivity());
        listDialog.m8935m(UIUtils.m8602p(R.string.channel_custom_2s, MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()), MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())));
        listDialog.m8937k(true);
        listDialog.m8934n(strArr, new C3736b(sealSharkChannelModel));
        listDialog.show();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        C4161y.m11054a(f13369q, "receiveChannelInfoOperateResp");
        if (this.f13371k.m12857N()) {
            return;
        }
        if (this.f13371k.m12860K() == 0 || this.f13371k.m12858M()) {
            m12767J1(sEAL_ChannelInfoOperate);
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        C4161y.m11054a(f13369q, "receiveChannelStateOperateResp");
        if (this.f13371k.m12857N()) {
            return;
        }
        if (this.f13371k.m12860K() == 0 || this.f13371k.m12858M()) {
            this.f13371k.m12854R(false);
            m12766K1(sEAL_ChannelStateOperate);
        }
    }

    /* renamed from: s2 */
    public void m12777s2(SealSharkChannelModel sealSharkChannelModel) {
        Intent intent = new Intent(getActivity(), SealChannelEditActivity.class);
        intent.setAction("seal_action_modify_channel");
        intent.putExtra("seal_action_modify_channel_info", sealSharkChannelModel);
        startActivityForResult(intent, 202);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f13369q, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f13369q;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            m12781o2();
            return;
        }
        m12771F1();
        UIUtils.m8597u();
    }
}
