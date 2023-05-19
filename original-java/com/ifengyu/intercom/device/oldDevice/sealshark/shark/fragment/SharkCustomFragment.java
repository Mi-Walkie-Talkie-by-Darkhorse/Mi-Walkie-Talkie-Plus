package com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.LinearLayoutManager;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p172a.SharkCustomAdapter;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelEditActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelSettingActivity;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.ListDialog;
import com.ifengyu.intercom.p216ui.widget.view.RecyclerViewEmptySupport;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.utils.UIUtils;
import com.p264uc.crashsdk.export.CrashStatKey;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;
import p048b.p078f.p079a.p080a.p083e.HeaderAndFooterWrapper;

/* loaded from: classes2.dex */
public class SharkCustomFragment extends SharkChannelBaseFragment implements SharkCustomAdapter.InterfaceC3653d {

    /* renamed from: s */
    private static final String f13526s = SharkCustomFragment.class.getSimpleName();

    /* renamed from: l */
    private SharkChannelSettingActivity f13528l;

    /* renamed from: m */
    private SharkCustomAdapter f13529m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_shark)
    RecyclerViewEmptySupport mRecycleView;
    @BindView(R.id.tv_empty_view)
    LinearLayout mTvEmptyView;

    /* renamed from: n */
    private SealSharkChannelModel f13530n;

    /* renamed from: q */
    private HeaderAndFooterWrapper f13533q;

    /* renamed from: r */
    private int f13534r;

    /* renamed from: k */
    private List<SealSharkChannelModel> f13527k = new ArrayList();

    /* renamed from: o */
    private int f13531o = -1;

    /* renamed from: p */
    private List<SealSharkChannelModel> f13532p = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkCustomFragment$a */
    /* loaded from: classes2.dex */
    public class RunnableC3806a implements Runnable {
        RunnableC3806a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SharkCustomFragment sharkCustomFragment = SharkCustomFragment.this;
            sharkCustomFragment.f13546h = true;
            sharkCustomFragment.m12626F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkCustomFragment$b */
    /* loaded from: classes2.dex */
    public class C3807b implements ListDialog.InterfaceC4927c {

        /* renamed from: a */
        final /* synthetic */ SealSharkChannelModel f13536a;

        C3807b(SealSharkChannelModel sealSharkChannelModel) {
            this.f13536a = sealSharkChannelModel;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.ListDialog.InterfaceC4927c
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                SharkCustomFragment.this.m12634q2(this.f13536a);
            } else if (i != 1) {
            } else {
                Intent intent = new Intent(SharkCustomFragment.this.getActivity(), SharkChannelEditActivity.class);
                intent.setAction("seal_action_modify_channel");
                intent.putExtra("seal_action_modify_channel_info", this.f13536a);
                SharkCustomFragment.this.startActivityForResult(intent, 202);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkCustomFragment$c */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3808c implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f13538a;

        /* renamed from: b */
        final /* synthetic */ SealSharkChannelModel f13539b;

        DialogInterface$OnClickListenerC3808c(CommonDialog commonDialog, SealSharkChannelModel sealSharkChannelModel) {
            this.f13538a = commonDialog;
            this.f13539b = sealSharkChannelModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f13538a.m9031f();
            SharkCustomFragment.this.f13530n = this.f13539b;
            SharkCustomFragment sharkCustomFragment = SharkCustomFragment.this;
            sharkCustomFragment.m12614V1(sharkCustomFragment.f13530n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkCustomFragment$d */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3809d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f13541a;

        DialogInterface$OnClickListenerC3809d(SharkCustomFragment sharkCustomFragment, CommonDialog commonDialog) {
            this.f13541a = commonDialog;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f13541a.m9031f();
        }
    }

    /* renamed from: p2 */
    public static SharkCustomFragment m12635p2(boolean z, String str) {
        SharkCustomFragment sharkCustomFragment = new SharkCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("shark_arg_is_major_channel", z);
        bundle.putString("device_mac_address", str);
        sharkCustomFragment.setArguments(bundle);
        return sharkCustomFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q2 */
    public void m12634q2(SealSharkChannelModel sealSharkChannelModel) {
        CommonDialog commonDialog = new CommonDialog(getActivity());
        commonDialog.m9018s(R.string.common_delete);
        commonDialog.m9025l(UIUtils.m8602p(R.string.dialog_are_you_sure_delete_the_selected_channel, MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()), MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())));
        commonDialog.m9024m(R.string.common_cancel, new DialogInterface$OnClickListenerC3809d(this, commonDialog));
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3808c(commonDialog, sealSharkChannelModel));
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: N1 */
    protected void mo12618N1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        int i = this.f13531o;
        if (i != -1) {
            this.f13527k.remove(i);
            this.f13533q.notifyItemRemoved(this.f13531o);
            this.f13548j.m12024q0(this.f13530n);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: O1 */
    protected void mo12617O1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelInfoOperate.getCh());
            int indexOf = this.f13527k.indexOf(m11814g);
            if (indexOf != -1) {
                this.f13527k.remove(indexOf);
                this.f13527k.add(indexOf, m11814g);
                SealSharkChannelModel m12698J = this.f13528l.m12698J();
                if (m12698J != null && m12698J.equals(m11814g)) {
                    this.f13530n = m11814g;
                    this.f13528l.m12693O(m11814g);
                }
                this.f13533q.notifyItemChanged(indexOf);
                return;
            }
            this.f13527k.add(m11814g);
            this.f13533q.notifyDataSetChanged();
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: P1 */
    protected void mo12598P1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelInfoOperate.getCh());
            int indexOf = this.f13527k.indexOf(m11814g);
            if (indexOf != -1) {
                this.f13527k.remove(indexOf);
                this.f13527k.add(indexOf, m11814g);
                SealSharkChannelModel m12698J = this.f13528l.m12698J();
                if (m12698J != null && m12698J.equals(m11814g)) {
                    this.f13530n = m11814g;
                    this.f13528l.m12693O(m11814g);
                }
                this.f13533q.notifyItemChanged(indexOf);
                return;
            }
            this.f13527k.add(m11814g);
            this.f13533q.notifyDataSetChanged();
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: Q1 */
    protected void mo12616Q1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        if (sHARK_ChannelInfoOperate.hasCh()) {
            this.f13532p.add(BleChannelUtils.m11814g(sHARK_ChannelInfoOperate.getCh()));
        }
        this.f13548j.m12044b1();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: R1 */
    protected void mo12597R1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        this.f13548j.m12017t1(false);
        this.mRecycleView.setEmptyView(this.mTvEmptyView);
        this.f13527k.clear();
        this.f13527k.addAll(this.f13532p);
        HeaderAndFooterWrapper headerAndFooterWrapper = this.f13533q;
        if (headerAndFooterWrapper != null) {
            headerAndFooterWrapper.notifyDataSetChanged();
        }
        m12627E1();
        this.f13546h = true;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: S1 */
    protected void mo12615S1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: T1 */
    protected void mo12596T1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.f13534r = number;
            if (number == 0 && sHARK_ChannelStateOperate.hasStateMode() && sHARK_ChannelStateOperate.getStateMode() == 1) {
                if (this.f13544f) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh1());
                        this.f13530n = m11814g;
                        this.f13528l.m12693O(m11814g);
                        this.f13529m.m12958s(this.f13530n);
                        HeaderAndFooterWrapper headerAndFooterWrapper = this.f13533q;
                        if (headerAndFooterWrapper != null) {
                            headerAndFooterWrapper.notifyDataSetChanged();
                        }
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    SealSharkChannelModel m11814g2 = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh2());
                    this.f13530n = m11814g2;
                    this.f13528l.m12693O(m11814g2);
                    this.f13529m.m12958s(this.f13530n);
                    HeaderAndFooterWrapper headerAndFooterWrapper2 = this.f13533q;
                    if (headerAndFooterWrapper2 != null) {
                        headerAndFooterWrapper2.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: U1 */
    protected void mo12595U1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        C4161y.m11049f(f13526s, "onStateUpdateSuccess");
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.f13534r = number;
            if ((number == 0 || number == 2 || number == 1) && sHARK_ChannelStateOperate.hasStateMode()) {
                sHARK_ChannelStateOperate.getStateMode();
                if (this.f13544f) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh1());
                        this.f13530n = m11814g;
                        this.f13528l.m12693O(m11814g);
                        this.f13529m.m12958s(this.f13530n);
                        HeaderAndFooterWrapper headerAndFooterWrapper = this.f13533q;
                        if (headerAndFooterWrapper != null) {
                            headerAndFooterWrapper.notifyDataSetChanged();
                        }
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    SealSharkChannelModel m11814g2 = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh2());
                    this.f13530n = m11814g2;
                    this.f13528l.m12693O(m11814g2);
                    this.f13529m.m12958s(this.f13530n);
                    HeaderAndFooterWrapper headerAndFooterWrapper2 = this.f13533q;
                    if (headerAndFooterWrapper2 != null) {
                        headerAndFooterWrapper2.notifyDataSetChanged();
                    }
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p172a.SharkCustomAdapter.InterfaceC3653d
    /* renamed from: m */
    public void mo12640m(View view, int i, SealSharkChannelModel sealSharkChannelModel) {
        this.f13531o = i;
        this.f13530n = sealSharkChannelModel;
        m12633r2(sealSharkChannelModel);
    }

    /* renamed from: n2 */
    public void m12638n2() {
        if (!this.f13548j.m329v()) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.device_not_connected), false);
        } else if (this.f13546h) {
            if (!this.f13548j.m12071A0()) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.f13527k.size() >= 20) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                Intent intent = new Intent(getActivity(), SharkChannelEditActivity.class);
                intent.setAction("seal_action_insert_channel");
                intent.putExtra("seal_action_insert_channel_index", MethodsUtils.m11282r(this.f13527k));
                startActivityForResult(intent, CrashStatKey.LOG_UPLOAD_ENCRYPT_COUNT);
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.p171b.p172a.SharkCustomAdapter.InterfaceC3653d
    /* renamed from: o */
    public void mo12637o(View view, int i, SealSharkChannelModel sealSharkChannelModel) {
        int i2 = this.f13534r;
        if (i2 == 3 || i2 == 4) {
            MethodsUtils.m11302H(getString(R.string.scan_mode_can_not_setting), false);
        } else if (i2 != 5 && i2 != 6) {
            this.f13530n = sealSharkChannelModel;
            m12610Z1(sealSharkChannelModel);
        } else {
            MethodsUtils.m11302H(getString(R.string.team_mode_can_not_setting), false);
        }
    }

    /* renamed from: o2 */
    public void m12636o2() {
        if (!this.f13548j.m12071A0()) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        this.f13527k.clear();
        this.f13527k.addAll(this.f13548j.m12020s0());
        if (!this.f13548j.m12070B0()) {
            this.mRecycleView.setEmptyView(this.mTvEmptyView);
        }
        SharkChannelSettingActivity sharkChannelSettingActivity = this.f13528l;
        if (sharkChannelSettingActivity != null) {
            this.f13529m.m12958s(sharkChannelSettingActivity.m12698J());
        }
        this.f13533q.notifyDataSetChanged();
        if (this.f13548j.m12070B0()) {
            m12603g2(false, false, getString(R.string.custom_ch_syncing), R.drawable.load_spinner);
            this.f13532p.clear();
            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
            sealSharkChannelModel.setType(2);
            m12611Y1(sealSharkChannelModel);
            this.f13546h = false;
            UIUtils.m8599s(new RunnableC3806a(), 10000L);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SharkChannelSettingActivity sharkChannelSettingActivity = (SharkChannelSettingActivity) getActivity();
        this.f13528l = sharkChannelSettingActivity;
        SealSharkChannelModel m12698J = sharkChannelSettingActivity.m12698J();
        this.f13530n = m12698J;
        this.f13529m.m12958s(m12698J);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        SealSharkChannelModel sealSharkChannelModel;
        String str = f13526s;
        C4161y.m11054a(str, "onActivityResult:" + i);
        if (i == 201) {
            if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else if (i2 != 2001 || (sealSharkChannelModel = (SealSharkChannelModel) intent.getParcelableExtra("customChannel")) == null) {
            } else {
                C4161y.m11054a(str, "customChannel:" + sealSharkChannelModel.toString());
                this.f13530n = sealSharkChannelModel;
                m12613W1(sealSharkChannelModel);
            }
        } else if (i == 202) {
            if (i2 != 2002) {
                if (i2 == 2003) {
                    SealSharkChannelModel sealSharkChannelModel2 = (SealSharkChannelModel) intent.getParcelableExtra("customChannel");
                    this.f13530n = sealSharkChannelModel2;
                    m12614V1(sealSharkChannelModel2);
                    return;
                }
                this.f13528l.m12690S(false);
                this.f13528l.m12691R(false);
            } else if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else {
                SealSharkChannelModel sealSharkChannelModel3 = (SealSharkChannelModel) intent.getParcelableExtra("customChannel");
                if (sealSharkChannelModel3 != null) {
                    C4161y.m11054a(str, "customChannel:" + sealSharkChannelModel3.toString());
                    this.f13530n = sealSharkChannelModel3;
                    m12612X1(sealSharkChannelModel3);
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shark_custom, viewGroup, false);
        ButterKnife.bind(this, inflate);
        SharkCustomAdapter sharkCustomAdapter = new SharkCustomAdapter(getActivity(), this.f13527k);
        this.f13529m = sharkCustomAdapter;
        sharkCustomAdapter.setOnItemClickListener(this);
        this.f13533q = new HeaderAndFooterWrapper(this.f13529m);
        View view = new View(UIUtils.m8613e());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, 1));
        view.setBackgroundColor(UIUtils.m8614d(R.color.space_bg));
        this.f13533q.m20976g(view);
        this.mRecycleView.setFootOrHeaderNum(1);
        this.mRecycleView.setAdapter(this.f13533q);
        this.mRecycleView.setLayoutManager(new LinearLayoutManager(UIUtils.m8613e()));
        return inflate;
    }

    /* renamed from: r2 */
    public void m12633r2(SealSharkChannelModel sealSharkChannelModel) {
        String[] strArr = {UIUtils.m8603o(R.string.common_delete), UIUtils.m8603o(R.string.edit), UIUtils.m8603o(R.string.common_cancel)};
        ListDialog listDialog = new ListDialog(getActivity());
        listDialog.m8935m(UIUtils.m8602p(R.string.channel_custom_2s, MethodsUtils.m11290j(sealSharkChannelModel.getRxFreq()), MethodsUtils.m11290j(sealSharkChannelModel.getTxFreq())));
        listDialog.m8937k(true);
        listDialog.m8934n(strArr, new C3807b(sealSharkChannelModel));
        listDialog.show();
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        C4161y.m11054a(f13526s, "receiveChannelInfoOperateResp");
        if (this.f13528l.m12694N()) {
            return;
        }
        if (this.f13528l.m12697K() == 0 || this.f13528l.m12695M()) {
            m12622J1(sHARK_ChannelInfoOperate);
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        C4161y.m11054a(f13526s, "receiveChannelStateOperateResp");
        if (this.f13528l.m12694N()) {
            return;
        }
        if (this.f13528l.m12697K() == 0 || this.f13528l.m12695M()) {
            this.f13528l.m12691R(false);
            m12621K1(sHARK_ChannelStateOperate);
        }
    }

    /* renamed from: s2 */
    public void m12632s2(SealSharkChannelModel sealSharkChannelModel) {
        Intent intent = new Intent(getActivity(), SharkChannelEditActivity.class);
        intent.setAction("seal_action_modify_channel");
        intent.putExtra("seal_action_modify_channel_info", sealSharkChannelModel);
        startActivityForResult(intent, 202);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f13526s, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f13526s;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            m12636o2();
            return;
        }
        m12626F1();
        UIUtils.m8597u();
    }
}
