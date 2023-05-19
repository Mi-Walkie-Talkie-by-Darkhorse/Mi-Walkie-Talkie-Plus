package com.ifengyu.intercom.device.oldDevice.dolphin.fragment;

import android.content.Context;
import android.content.DialogInterface;
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
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.device.oldDevice.p177w.p178a.DolphinCustomAdapter;
import com.ifengyu.intercom.event.StateUpdateEvent;
import com.ifengyu.intercom.p185i.BleCoreClient;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470;
import com.ifengyu.intercom.p216ui.widget.dialog.RenameDialog;
import com.ifengyu.intercom.p216ui.widget.view.RecyclerViewEmptySupport;
import com.ifengyu.intercom.protos.MitalkProtos;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;
import p048b.p078f.p079a.p080a.p083e.HeaderAndFooterWrapper;

/* loaded from: classes2.dex */
public class DolphinCustomFragment extends DolphinChannelBaseFragment {

    /* renamed from: s */
    private static final String f12870s = DolphinCustomFragment.class.getSimpleName();

    /* renamed from: m */
    private DolphinCHSettingActivity f12872m;
    @BindView(R.id.progressBar)
    ProgressBar mProgressBar;
    @BindView(R.id.rv_relay)
    RecyclerViewEmptySupport mRvCustom;
    @BindView(R.id.tv_empty_view)
    TextView mTvEmptyView;

    /* renamed from: n */
    private DolphinChannelModel f12873n;

    /* renamed from: r */
    private HeaderAndFooterWrapper f12877r;

    /* renamed from: l */
    private List<DolphinChannelModel> f12871l = new ArrayList();

    /* renamed from: o */
    private int f12874o = -1;

    /* renamed from: p */
    private int f12875p = 0;

    /* renamed from: q */
    private List<DolphinChannelModel> f12876q = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$a */
    /* loaded from: classes2.dex */
    public class C3558a implements RenameDialog.InterfaceC4930a {

        /* renamed from: a */
        final /* synthetic */ DolphinChannelModel f12878a;

        C3558a(DolphinChannelModel dolphinChannelModel) {
            this.f12878a = dolphinChannelModel;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.RenameDialog.InterfaceC4930a
        /* renamed from: a */
        public void mo8923a(String str) {
            DolphinCustomFragment.this.f12873n = new DolphinChannelModel(this.f12878a.getNo(), this.f12878a.getType(), str, this.f12878a.getFreq());
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.m13202S1(dolphinCustomFragment.f12873n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$b */
    /* loaded from: classes2.dex */
    public class C3559b implements InsertChannelDialog400To470.InterfaceC4924k {

        /* renamed from: a */
        final /* synthetic */ DolphinChannelModel f12880a;

        C3559b(DolphinChannelModel dolphinChannelModel) {
            this.f12880a = dolphinChannelModel;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470.InterfaceC4924k
        /* renamed from: a */
        public void mo8942a(String str) {
            if (this.f12880a != null) {
                DolphinCustomFragment.this.f12873n = new DolphinChannelModel(this.f12880a.getNo(), this.f12880a.getType(), this.f12880a.getName(), MethodsUtils.m11291i(str));
                DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
                dolphinCustomFragment.m13202S1(dolphinCustomFragment.f12873n);
            }
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog400To470.InterfaceC4924k
        /* renamed from: b */
        public void mo8941b(String str) {
            int m11283q = MethodsUtils.m11283q(DolphinCustomFragment.this.f12871l);
            DolphinCustomFragment.this.f12873n = new DolphinChannelModel(m11283q, 2, UIUtils.m8602p(R.string.channel_custom_d, Integer.valueOf(m11283q + 1)), MethodsUtils.m11291i(str));
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.m13203R1(dolphinCustomFragment.f12873n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$c */
    /* loaded from: classes2.dex */
    public class C3560c implements InsertChannelDialog.InterfaceC4913k {

        /* renamed from: a */
        final /* synthetic */ DolphinChannelModel f12882a;

        C3560c(DolphinChannelModel dolphinChannelModel) {
            this.f12882a = dolphinChannelModel;
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog.InterfaceC4913k
        /* renamed from: a */
        public void mo8959a(String str) {
            if (this.f12882a != null) {
                DolphinCustomFragment.this.f12873n = new DolphinChannelModel(this.f12882a.getNo(), this.f12882a.getType(), this.f12882a.getName(), MethodsUtils.m11291i(str));
                DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
                dolphinCustomFragment.m13202S1(dolphinCustomFragment.f12873n);
            }
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.InsertChannelDialog.InterfaceC4913k
        /* renamed from: b */
        public void mo8958b(String str) {
            int m11283q = MethodsUtils.m11283q(DolphinCustomFragment.this.f12871l);
            DolphinCustomFragment.this.f12873n = new DolphinChannelModel(m11283q, 2, UIUtils.m8602p(R.string.channel_custom_d, Integer.valueOf(m11283q + 1)), MethodsUtils.m11291i(str));
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.m13203R1(dolphinCustomFragment.f12873n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$d */
    /* loaded from: classes2.dex */
    public class RunnableC3561d implements Runnable {
        RunnableC3561d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.f12951j = true;
            dolphinCustomFragment.mProgressBar.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$e */
    /* loaded from: classes2.dex */
    public class RunnableC3562e implements Runnable {
        RunnableC3562e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.f12951j = true;
            dolphinCustomFragment.mProgressBar.setVisibility(8);
        }
    }

    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$f */
    /* loaded from: classes2.dex */
    class C3563f extends DolphinCustomAdapter<DolphinChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$f$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3564a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ DolphinChannelModel f12887a;

            View$OnClickListenerC3564a(DolphinChannelModel dolphinChannelModel) {
                this.f12887a = dolphinChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                DolphinCustomFragment.this.f12873n = this.f12887a;
                DolphinCustomFragment.this.m13199V1(this.f12887a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$f$b */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC3565b implements View.OnLongClickListener {

            /* renamed from: a */
            final /* synthetic */ ViewHolder f12889a;

            /* renamed from: b */
            final /* synthetic */ DolphinChannelModel f12890b;

            View$OnLongClickListenerC3565b(ViewHolder viewHolder, DolphinChannelModel dolphinChannelModel) {
                this.f12889a = viewHolder;
                this.f12890b = dolphinChannelModel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                DolphinCustomFragment.this.f12874o = this.f12889a.getLayoutPosition();
                DolphinCustomFragment.this.m13240s2(this.f12890b);
                return true;
            }
        }

        C3563f(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: r */
        public void mo12588m(ViewHolder viewHolder, DolphinChannelModel dolphinChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_custom_name);
            TextView textView2 = (TextView) viewHolder.getView(R.id.tv_custom_freq);
            if (DolphinCustomFragment.this.f12872m != null) {
                if (dolphinChannelModel.equals(DolphinCustomFragment.this.f12872m.m13309I())) {
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                    textView2.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setTextColor(UIUtils.m8614d(R.color.black80));
                    textView2.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            textView.setText(dolphinChannelModel.getName());
            textView2.setText(MethodsUtils.m11290j(dolphinChannelModel.getFreq()));
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3564a(dolphinChannelModel));
            viewHolder.itemView.setOnLongClickListener(new View$OnLongClickListenerC3565b(viewHolder, dolphinChannelModel));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$g */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3566g implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12892a;

        /* renamed from: b */
        final /* synthetic */ DolphinChannelModel f12893b;

        View$OnClickListenerC3566g(CommonDialog commonDialog, DolphinChannelModel dolphinChannelModel) {
            this.f12892a = commonDialog;
            this.f12893b = dolphinChannelModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12892a.m9031f();
            DolphinCustomFragment.this.m13242q2(this.f12893b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$h */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3567h implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12895a;

        /* renamed from: b */
        final /* synthetic */ DolphinChannelModel f12896b;

        View$OnClickListenerC3567h(CommonDialog commonDialog, DolphinChannelModel dolphinChannelModel) {
            this.f12895a = commonDialog;
            this.f12896b = dolphinChannelModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12895a.m9031f();
            DolphinCustomFragment.this.m13239t2(this.f12896b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$i */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3568i implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12898a;

        /* renamed from: b */
        final /* synthetic */ DolphinChannelModel f12899b;

        View$OnClickListenerC3568i(CommonDialog commonDialog, DolphinChannelModel dolphinChannelModel) {
            this.f12898a = commonDialog;
            this.f12899b = dolphinChannelModel;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12898a.m9031f();
            DolphinCustomFragment.this.m13241r2(this.f12899b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$j */
    /* loaded from: classes2.dex */
    public class View$OnClickListenerC3569j implements View.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12901a;

        View$OnClickListenerC3569j(DolphinCustomFragment dolphinCustomFragment, CommonDialog commonDialog) {
            this.f12901a = commonDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f12901a.m9031f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$k */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3570k implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12902a;

        /* renamed from: b */
        final /* synthetic */ DolphinChannelModel f12903b;

        DialogInterface$OnClickListenerC3570k(CommonDialog commonDialog, DolphinChannelModel dolphinChannelModel) {
            this.f12902a = commonDialog;
            this.f12903b = dolphinChannelModel;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f12902a.m9031f();
            DolphinCustomFragment.this.f12873n = this.f12903b;
            DolphinCustomFragment dolphinCustomFragment = DolphinCustomFragment.this;
            dolphinCustomFragment.m13204Q1(dolphinCustomFragment.f12873n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinCustomFragment$l */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3571l implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f12905a;

        DialogInterface$OnClickListenerC3571l(DolphinCustomFragment dolphinCustomFragment, CommonDialog commonDialog) {
            this.f12905a = commonDialog;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f12905a.m9031f();
        }
    }

    /* renamed from: p2 */
    public static DolphinCustomFragment m13243p2(String str, boolean z, int i) {
        DolphinCustomFragment dolphinCustomFragment = new DolphinCustomFragment();
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        bundle.putBoolean("is_first_channel", z);
        bundle.putInt("version_mcu", i);
        dolphinCustomFragment.setArguments(bundle);
        return dolphinCustomFragment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q2 */
    public void m13242q2(DolphinChannelModel dolphinChannelModel) {
        CommonDialog commonDialog = new CommonDialog(getActivity());
        commonDialog.m9018s(R.string.common_delete);
        commonDialog.m9025l(UIUtils.m8602p(R.string.dialog_are_you_sure_delete_the_selected_custom_channel, MethodsUtils.m11290j(dolphinChannelModel.getFreq())));
        commonDialog.m9024m(R.string.common_cancel, new DialogInterface$OnClickListenerC3571l(this, commonDialog));
        commonDialog.m9020q(R.string.common_select, new DialogInterface$OnClickListenerC3570k(commonDialog, dolphinChannelModel));
        commonDialog.m9032e();
        commonDialog.m9016u();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r2 */
    public void m13241r2(DolphinChannelModel dolphinChannelModel) {
        InsertChannelDialog insertChannelDialog;
        InsertChannelDialog400To470 insertChannelDialog400To470;
        DolphinCHSettingActivity dolphinCHSettingActivity = (DolphinCHSettingActivity) getActivity();
        if (dolphinCHSettingActivity == null) {
            return;
        }
        if (MethodsUtils.m11297c()) {
            if (dolphinChannelModel != null) {
                insertChannelDialog400To470 = new InsertChannelDialog400To470(dolphinCHSettingActivity, MethodsUtils.m11290j(dolphinChannelModel.getFreq()), 0);
            } else {
                insertChannelDialog400To470 = new InsertChannelDialog400To470(dolphinCHSettingActivity, null, 0);
            }
            insertChannelDialog400To470.m8943v(new C3559b(dolphinChannelModel));
            insertChannelDialog400To470.show();
            return;
        }
        if (dolphinChannelModel != null) {
            insertChannelDialog = new InsertChannelDialog(dolphinCHSettingActivity, MethodsUtils.m11290j(dolphinChannelModel.getFreq()), 0);
        } else {
            insertChannelDialog = new InsertChannelDialog(dolphinCHSettingActivity, null, 0);
        }
        insertChannelDialog.m8960v(new C3560c(dolphinChannelModel));
        insertChannelDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s2 */
    public void m13240s2(DolphinChannelModel dolphinChannelModel) {
        CommonDialog commonDialog = new CommonDialog(getActivity());
        commonDialog.m9027j(R.layout.dialog_custom_channel_option);
        commonDialog.m9028i(true);
        commonDialog.m9032e();
        View m9030g = commonDialog.m9030g();
        ((TextView) m9030g.findViewById(R.id.afstv_channel_custom_item_option_dialog_title)).setText(UIUtils.m8602p(R.string.channel_custom_s, MethodsUtils.m11290j(dolphinChannelModel.getFreq())));
        ((TextView) m9030g.findViewById(R.id.afstv_channel_custom_item_option_dialog_delete)).setOnClickListener(new View$OnClickListenerC3566g(commonDialog, dolphinChannelModel));
        ((TextView) m9030g.findViewById(R.id.afstv_channel_custom_item_option_dialog_rename)).setOnClickListener(new View$OnClickListenerC3567h(commonDialog, dolphinChannelModel));
        ((TextView) m9030g.findViewById(R.id.afstv_channel_custom_item_option_dialog_modify)).setOnClickListener(new View$OnClickListenerC3568i(commonDialog, dolphinChannelModel));
        ((TextView) m9030g.findViewById(R.id.afstv_channel_custom_item_option_dialog_cancel)).setOnClickListener(new View$OnClickListenerC3569j(this, commonDialog));
        commonDialog.m9016u();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: F1 */
    public void mo13215F1(MitalkProtos.CHOPTION choption) {
        super.mo13215F1(choption);
        this.f12952k.m12297z1(false);
        this.mProgressBar.setVisibility(8);
        this.mRvCustom.setEmptyView(this.mTvEmptyView);
        HeaderAndFooterWrapper headerAndFooterWrapper = this.f12877r;
        if (headerAndFooterWrapper != null) {
            headerAndFooterWrapper.notifyDataSetChanged();
        }
        this.f12951j = true;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: J1 */
    protected void mo13211J1(StateUpdateEvent stateUpdateEvent) {
        C4161y.m11054a(f12870s, "onDeleteChannelSuccess");
        int i = this.f12874o;
        if (i != -1) {
            this.f12871l.remove(i);
            this.f12877r.notifyItemRemoved(this.f12874o);
            this.f12952k.m12310t0(this.f12873n);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: K1 */
    protected void mo13210K1(StateUpdateEvent stateUpdateEvent) {
        C4161y.m11054a(f12870s, "onInsertChannelSuccess");
        if (stateUpdateEvent.isHasCh1()) {
            if (stateUpdateEvent.getCh1().getType() != MitalkProtos.CHTYPE.USERDEFINE) {
                return;
            }
            DolphinChannelModel m11819b = BleChannelUtils.m11819b(stateUpdateEvent.getCh1());
            int indexOf = this.f12871l.indexOf(m11819b);
            if (indexOf != -1) {
                DolphinChannelModel dolphinChannelModel = this.f12871l.get(indexOf);
                dolphinChannelModel.setFreq(m11819b.getFreq());
                dolphinChannelModel.setName(m11819b.getName());
                this.f12877r.notifyItemChanged(indexOf);
                DolphinChannelModel m13309I = this.f12872m.m13309I();
                if (this.f12873n == null || !m13309I.equals(dolphinChannelModel)) {
                    return;
                }
                this.f12872m.m13305M(dolphinChannelModel);
                this.f12872m.m13306L(dolphinChannelModel);
                return;
            }
            this.f12871l.add(m11819b);
            this.f12877r.notifyItemInserted(this.f12871l.size() - 1);
            return;
        }
        DolphinChannelModel dolphinChannelModel2 = this.f12873n;
        if (dolphinChannelModel2 != null) {
            this.f12871l.add(dolphinChannelModel2);
            this.f12877r.notifyItemInserted(this.f12871l.size() - 1);
            this.f12952k.m12339Y0(this.f12873n);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: L1 */
    protected void mo13209L1(StateUpdateEvent stateUpdateEvent) {
        int indexOf;
        C4161y.m11054a(f12870s, "onModifyChannelSuccess");
        DolphinChannelModel dolphinChannelModel = this.f12873n;
        if (dolphinChannelModel == null || (indexOf = this.f12871l.indexOf(dolphinChannelModel)) == -1) {
            return;
        }
        DolphinChannelModel dolphinChannelModel2 = this.f12871l.get(indexOf);
        dolphinChannelModel2.setName(this.f12873n.getName());
        dolphinChannelModel2.setFreq(this.f12873n.getFreq());
        DolphinChannelModel m13309I = this.f12872m.m13309I();
        if (m13309I != null && m13309I.equals(this.f12873n)) {
            this.f12872m.m13306L(this.f12873n);
        }
        this.f12877r.notifyItemChanged(indexOf);
        this.f12952k.m12339Y0(this.f12873n);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: N1 */
    protected void mo13207N1(StateUpdateEvent stateUpdateEvent) {
        C4161y.m11054a(f12870s, "onQueryChannelSuccess");
        if (stateUpdateEvent.isHasCh1()) {
            if (stateUpdateEvent.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
                return;
            }
            this.f12876q.add(BleChannelUtils.m11819b(stateUpdateEvent.getCh1()));
        }
        if (stateUpdateEvent.isHasCh2()) {
            if (stateUpdateEvent.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
                return;
            }
            this.f12876q.add(BleChannelUtils.m11819b(stateUpdateEvent.getCh2()));
        }
        if (this.f12875p >= 20) {
            this.f12952k.m12297z1(false);
            this.mProgressBar.setVisibility(8);
            this.mRvCustom.setEmptyView(this.mTvEmptyView);
            this.f12871l.clear();
            this.f12871l.addAll(this.f12876q);
            HeaderAndFooterWrapper headerAndFooterWrapper = this.f12877r;
            if (headerAndFooterWrapper != null) {
                headerAndFooterWrapper.notifyDataSetChanged();
            }
            m13218C1();
            this.f12951j = true;
            return;
        }
        int i = this.f12875p;
        this.f12875p = i + 1;
        DolphinChannelModel dolphinChannelModel = new DolphinChannelModel(i, 2, "", 0);
        int i2 = this.f12875p;
        this.f12875p = i2 + 1;
        m13200U1(dolphinChannelModel, new DolphinChannelModel(i2, 2, "", 0));
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: O1 */
    protected void mo13206O1(StateUpdateEvent stateUpdateEvent) {
        if (this.f12948g) {
            if (stateUpdateEvent.isHasCh1()) {
                if (MiTalkClientUtil.f14440a == 1 && stateUpdateEvent.getCh1().getType() == MitalkProtos.CHTYPE.RELAY) {
                    this.f12872m.m13306L(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
                    return;
                }
                this.f12872m.m13306L(BleChannelUtils.m11819b(stateUpdateEvent.getCh1()));
            }
        } else if (stateUpdateEvent.isHasCh2()) {
            if (MiTalkClientUtil.f14440a == 1 && stateUpdateEvent.getCh2().getType() == MitalkProtos.CHTYPE.RELAY) {
                this.f12872m.m13306L(BleChannelUtils.m11818c(stateUpdateEvent.getCh1(), stateUpdateEvent.getCh2()));
                return;
            }
            this.f12872m.m13306L(BleChannelUtils.m11819b(stateUpdateEvent.getCh2()));
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment
    /* renamed from: P1 */
    protected void mo13205P1(StateUpdateEvent stateUpdateEvent) {
        DolphinChannelModel dolphinChannelModel = this.f12873n;
        if (dolphinChannelModel != null) {
            this.f12872m.m13305M(dolphinChannelModel);
            this.f12872m.m13306L(this.f12873n);
            HeaderAndFooterWrapper headerAndFooterWrapper = this.f12877r;
            if (headerAndFooterWrapper != null) {
                headerAndFooterWrapper.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: n2 */
    public void m13245n2() {
        if (!BleCoreClient.m12373n().m12372o(this.f12947f)) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.device_not_connected), false);
        } else if (this.f12951j) {
            if (!this.f12952k.m12361D0()) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            } else if (this.f12871l.size() >= 20) {
                MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_the_num_of_custom_channels_has_reached_the_limit), false);
            } else {
                m13241r2(null);
            }
        }
    }

    /* renamed from: o2 */
    public void m13244o2() {
        if (!this.f12952k.m12361D0()) {
            MethodsUtils.m11302H(UIUtils.m8603o(R.string.toast_activate_this_freq_befor_using), false);
            return;
        }
        this.f12871l.clear();
        this.f12871l.addAll(this.f12952k.m12304w0());
        if (!this.f12952k.m12359E0()) {
            this.mRvCustom.setEmptyView(this.mTvEmptyView);
        }
        this.f12877r.notifyDataSetChanged();
        if (this.f12952k.m12359E0()) {
            this.mProgressBar.setVisibility(0);
            this.f12875p = 0;
            this.f12876q.clear();
            int i = this.f12875p;
            this.f12875p = i + 1;
            DolphinChannelModel dolphinChannelModel = new DolphinChannelModel(i, 2, "", 0);
            int i2 = this.f12875p;
            this.f12875p = i2 + 1;
            m13200U1(dolphinChannelModel, new DolphinChannelModel(i2, 2, "", 0));
            this.f12951j = false;
            UIUtils.m8599s(new RunnableC3561d(), 8000L);
        } else if (this.f12949h < 16973825) {
            this.mProgressBar.setVisibility(0);
            this.f12875p = 0;
            this.f12876q.clear();
            int i3 = this.f12875p;
            this.f12875p = i3 + 1;
            DolphinChannelModel dolphinChannelModel2 = new DolphinChannelModel(i3, 2, "", 0);
            int i4 = this.f12875p;
            this.f12875p = i4 + 1;
            m13200U1(dolphinChannelModel2, new DolphinChannelModel(i4, 2, "", 0));
            this.f12951j = false;
            UIUtils.m8599s(new RunnableC3562e(), 8000L);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        this.f12872m = (DolphinCHSettingActivity) getActivity();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.dolphin.fragment.DolphinChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_custom, viewGroup, false);
        ButterKnife.bind(this, inflate);
        this.mRvCustom.setLayoutManager(new LinearLayoutManager(getContext()));
        this.f12877r = new HeaderAndFooterWrapper(new C3563f(getContext(), R.layout.layout_custom_channel_item, this.f12871l));
        View view = new View(UIUtils.m8613e());
        view.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) MethodsUtils.m11292h(90.0f)));
        view.setBackgroundColor(UIUtils.m8614d(R.color.white));
        this.f12877r.m20976g(view);
        this.mRvCustom.setFootOrHeaderNum(1);
        this.mRvCustom.setAdapter(this.f12877r);
        return inflate;
    }

    @Subscribe
    public void receiveChannelResponse(StateUpdateEvent stateUpdateEvent) {
        DolphinCHSettingActivity dolphinCHSettingActivity = this.f12872m;
        if (dolphinCHSettingActivity == null || dolphinCHSettingActivity.m13308J() == 1) {
            C4161y.m11054a(f12870s, "custom fragment receiveChannelResponse");
            m13213H1(stateUpdateEvent);
        }
    }

    /* renamed from: t2 */
    public void m13239t2(DolphinChannelModel dolphinChannelModel) {
        RenameDialog renameDialog = new RenameDialog(getActivity(), dolphinChannelModel.getName());
        renameDialog.m8924h(new C3558a(dolphinChannelModel));
        renameDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f12870s, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f12870s;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            m13244o2();
            return;
        }
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar == null || !progressBar.isShown()) {
            return;
        }
        this.mProgressBar.setVisibility(8);
    }
}
