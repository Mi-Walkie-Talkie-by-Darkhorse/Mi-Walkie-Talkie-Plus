package com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealChannelSettingActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.seal.activity.SealPresetChCssEditActivity;
import com.ifengyu.intercom.p189l.p190a.p196c.ChNumberConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.widget.dialog.CommonDialog;
import com.ifengyu.intercom.protos.SealProtos;
import com.ifengyu.library.base.BaseApp;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;
import p048b.p078f.p079a.p080a.CommonAdapter;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b */
/* loaded from: classes2.dex */
public class SealPresetFragment extends SealChannelBaseFragment {

    /* renamed from: r */
    private static final String f13401r = SealPresetFragment.class.getSimpleName();

    /* renamed from: s */
    private static final int[] f13402s = UIUtils.m8610h(R.array.seal_public_5_channel);

    /* renamed from: t */
    private static final int[] f13403t = UIUtils.m8610h(R.array.seal_public_all_channel);

    /* renamed from: u */
    private static final int[] f13404u = ChNumberConstants.f14117a;

    /* renamed from: j */
    private List<SealSharkChannelModel> f13405j = new ArrayList();

    /* renamed from: k */
    private List<SealSharkChannelModel> f13406k = new ArrayList();

    /* renamed from: l */
    private SealChannelSettingActivity f13407l;

    /* renamed from: m */
    private SealSharkChannelModel f13408m;

    /* renamed from: n */
    private CommonAdapter<SealSharkChannelModel> f13409n;

    /* renamed from: o */
    private CommonAdapter<SealSharkChannelModel> f13410o;

    /* renamed from: p */
    private TextView f13411p;

    /* renamed from: q */
    private boolean f13412q;

    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$a */
    /* loaded from: classes2.dex */
    class View$OnClickListenerC3745a implements View.OnClickListener {
        View$OnClickListenerC3745a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SealPresetFragment.this.m12727w2();
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$b */
    /* loaded from: classes2.dex */
    class C3746b extends CommonAdapter<SealSharkChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$b$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3747a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13415a;

            View$OnClickListenerC3747a(SealSharkChannelModel sealSharkChannelModel) {
                this.f13415a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SealPresetFragment.this.f13408m = this.f13415a;
                SealPresetFragment.this.m12755Z1(this.f13415a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$b$b */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC3748b implements View.OnLongClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13417a;

            View$OnLongClickListenerC3748b(SealSharkChannelModel sealSharkChannelModel) {
                this.f13417a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(SealPresetFragment.this.getActivity(), SealPresetChCssEditActivity.class);
                intent.putExtra("device_mac_address", SealPresetFragment.this.f13388h);
                intent.putExtra("seal_action_edit_css_channel_info", this.f13417a);
                SealPresetFragment.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        C3746b(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: n */
        public void mo12588m(ViewHolder viewHolder, SealSharkChannelModel sealSharkChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (SealPresetFragment.this.f13407l != null) {
                SealSharkChannelModel m12861J = SealPresetFragment.this.f13407l.m12861J();
                if (m12861J != null && m12861J.equals(sealSharkChannelModel)) {
                    textView.setSelected(true);
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setSelected(false);
                    textView.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3747a(sealSharkChannelModel));
            viewHolder.itemView.setOnLongClickListener(new View$OnLongClickListenerC3748b(sealSharkChannelModel));
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$c */
    /* loaded from: classes2.dex */
    class C3749c extends CommonAdapter<SealSharkChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$c$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3750a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13420a;

            View$OnClickListenerC3750a(SealSharkChannelModel sealSharkChannelModel) {
                this.f13420a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                SealPresetFragment.this.f13408m = this.f13420a;
                SealPresetFragment.this.m12755Z1(this.f13420a);
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$c$b */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC3751b implements View.OnLongClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13422a;

            View$OnLongClickListenerC3751b(SealSharkChannelModel sealSharkChannelModel) {
                this.f13422a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(SealPresetFragment.this.getActivity(), SealPresetChCssEditActivity.class);
                intent.putExtra("device_mac_address", SealPresetFragment.this.f13388h);
                intent.putExtra("seal_action_edit_css_channel_info", this.f13422a);
                SealPresetFragment.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        C3749c(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: n */
        public void mo12588m(ViewHolder viewHolder, SealSharkChannelModel sealSharkChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_channel);
            textView.setText(String.valueOf(i + 1));
            if (SealPresetFragment.this.f13407l != null) {
                SealSharkChannelModel m12861J = SealPresetFragment.this.f13407l.m12861J();
                if (m12861J != null && m12861J.equals(sealSharkChannelModel)) {
                    textView.setSelected(true);
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setSelected(false);
                    textView.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3750a(sealSharkChannelModel));
            viewHolder.itemView.setOnLongClickListener(new View$OnLongClickListenerC3751b(sealSharkChannelModel));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$d */
    /* loaded from: classes2.dex */
    public class RunnableC3752d implements Runnable {
        RunnableC3752d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealPresetFragment.this.m12771F1();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$e */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3753e implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f13425a;

        /* compiled from: SealPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$e$a */
        /* loaded from: classes2.dex */
        class RunnableC3754a implements Runnable {
            RunnableC3754a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                SealPresetFragment.this.m12771F1();
            }
        }

        DialogInterface$OnClickListenerC3753e(CommonDialog commonDialog) {
            this.f13425a = commonDialog;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f13425a.m9031f();
            SealPresetFragment.this.m12747h2();
            SealPresetFragment sealPresetFragment = SealPresetFragment.this;
            sealPresetFragment.f13408m = (SealSharkChannelModel) sealPresetFragment.f13405j.get(0);
            BaseApp.m8713a().postDelayed(new RunnableC3754a(), 5000L);
            SealPresetFragment sealPresetFragment2 = SealPresetFragment.this;
            sealPresetFragment2.f13389i.m12105h1(sealPresetFragment2.f13408m);
            SealPresetFragment.this.f13412q = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$f */
    /* loaded from: classes2.dex */
    public class DialogInterface$OnClickListenerC3755f implements DialogInterface.OnClickListener {

        /* renamed from: a */
        final /* synthetic */ CommonDialog f13428a;

        DialogInterface$OnClickListenerC3755f(SealPresetFragment sealPresetFragment, CommonDialog commonDialog) {
            this.f13428a = commonDialog;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            this.f13428a.m9031f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$g */
    /* loaded from: classes2.dex */
    public class RunnableC3756g implements Runnable {
        RunnableC3756g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealPresetFragment.this.m12771F1();
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$h */
    /* loaded from: classes2.dex */
    class RunnableC3757h implements Runnable {

        /* renamed from: a */
        final /* synthetic */ SealProtos.SEAL_DeviceParam f13430a;

        RunnableC3757h(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
            this.f13430a = sEAL_DeviceParam;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f13430a.getResult() == SealProtos.SEAL_DeviceParam.SEAL_DEV_UERR.SEAL_PARAM_UPDATE_OK) {
                if (SealPresetFragment.this.f13412q) {
                    SealPresetFragment.this.f13412q = false;
                    if (SealPresetFragment.this.f13408m != null) {
                        SealPresetFragment.this.f13407l.m12855P(SealPresetFragment.this.f13408m);
                        SealPresetFragment.this.f13407l.m12856O(SealPresetFragment.this.f13408m);
                        if (SealPresetFragment.this.f13410o != null) {
                            SealPresetFragment.this.f13410o.notifyDataSetChanged();
                        }
                        if (SealPresetFragment.this.f13409n != null) {
                            SealPresetFragment.this.f13409n.notifyDataSetChanged();
                        }
                    }
                }
                SealPresetFragment.this.m12771F1();
                if (this.f13430a.hasIsAllPublic()) {
                    boolean z = this.f13430a.getIsAllPublic() == SealProtos.SEAL_SWITCH.SEAL_ON;
                    int[] iArr = z ? SealPresetFragment.f13403t : SealPresetFragment.f13402s;
                    SealPresetFragment.this.f13411p.setText(SealPresetFragment.this.getString(z ? R.string.hide_other_15_channel : R.string.display_other_15_channel));
                    SealPresetFragment.this.f13405j.clear();
                    int i = 0;
                    while (i < iArr.length) {
                        SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
                        sealSharkChannelModel.setNo(i);
                        sealSharkChannelModel.setType(0);
                        sealSharkChannelModel.setRxFreq(iArr[i]);
                        sealSharkChannelModel.setTxFreq(iArr[i]);
                        i++;
                        sealSharkChannelModel.setName(UIUtils.m8602p(R.string.channel_public_d, Integer.valueOf(i)));
                        sealSharkChannelModel.setRxCss(0);
                        sealSharkChannelModel.setTxCss(0);
                        sealSharkChannelModel.setStChannel(true);
                        SealPresetFragment.this.f13405j.add(sealSharkChannelModel);
                    }
                    SealPresetFragment.this.f13409n.notifyDataSetChanged();
                    return;
                }
                return;
            }
            SealPresetFragment.this.m12752c2(R.string.set_failed);
        }
    }

    /* compiled from: SealPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.b$i */
    /* loaded from: classes2.dex */
    class RunnableC3758i implements Runnable {
        RunnableC3758i() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SealPresetFragment.this.m12752c2(R.string.set_failed);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w2 */
    public void m12727w2() {
        if (getString(R.string.display_other_15_channel).equals(this.f13411p.getText())) {
            m12748g2(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
            BaseApp.m8713a().postDelayed(new RunnableC3752d(), 5000L);
            this.f13389i.m12086s1(this.f13405j.size() == f13402s.length);
            return;
        }
        SealSharkChannelModel m12861J = this.f13407l.m12861J();
        this.f13408m = m12861J;
        if (m12861J != null && m12861J.getType() == 0 && this.f13408m.getNo() >= 5) {
            CommonDialog commonDialog = new CommonDialog(this.f13407l);
            commonDialog.m9025l(getString(R.string.will_check_public_1_if_hide_15));
            commonDialog.m9028i(false);
            commonDialog.m9029h(false);
            commonDialog.m9024m(R.string.common_cancel, new DialogInterface$OnClickListenerC3755f(this, commonDialog));
            commonDialog.m9020q(R.string.common_carry_on, new DialogInterface$OnClickListenerC3753e(commonDialog));
            commonDialog.m9032e();
            commonDialog.m9016u();
            return;
        }
        m12748g2(false, true, getString(R.string.please_wait), R.drawable.load_spinner);
        BaseApp.m8713a().postDelayed(new RunnableC3756g(), 5000L);
        this.f13389i.m12086s1(this.f13405j.size() == f13402s.length);
    }

    /* renamed from: x2 */
    public static SealPresetFragment m12726x2(String str) {
        SealPresetFragment sealPresetFragment = new SealPresetFragment();
        Bundle bundle = new Bundle();
        bundle.putString("device_mac_address", str);
        sealPresetFragment.setArguments(bundle);
        return sealPresetFragment;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: P1 */
    protected void mo12743P1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        C4161y.m11049f(f13401r, "onModifyChannelSuccess");
        if (sEAL_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelInfoOperate.getCh());
            if (this.f13408m.equals(m11815f)) {
                this.f13408m = m11815f;
                this.f13407l.m12856O(m11815f);
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: R1 */
    protected void mo12742R1(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        m12772E1();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: T1 */
    protected void mo12741T1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelStateOperate.getCh1());
            this.f13408m = m11815f;
            this.f13407l.m12856O(m11815f);
            CommonAdapter<SealSharkChannelModel> commonAdapter = this.f13410o;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            CommonAdapter<SealSharkChannelModel> commonAdapter2 = this.f13409n;
            if (commonAdapter2 != null) {
                commonAdapter2.notifyDataSetChanged();
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment
    /* renamed from: U1 */
    protected void mo12740U1(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        C4161y.m11049f(f13401r, "onStateUpdateSuccess");
        if (sEAL_ChannelStateOperate.hasDeviceMode() && sEAL_ChannelStateOperate.getDeviceMode() == SealProtos.SEAL_ChannelStateOperate.SEAL_MODE.SEAL_MODE_NORMAL && sEAL_ChannelStateOperate.hasStateMode() && sEAL_ChannelStateOperate.getStateMode() == 1 && sEAL_ChannelStateOperate.hasCh1()) {
            SealSharkChannelModel m11815f = BleChannelUtils.m11815f(sEAL_ChannelStateOperate.getCh1());
            this.f13408m = m11815f;
            this.f13407l.m12856O(m11815f);
            CommonAdapter<SealSharkChannelModel> commonAdapter = this.f13410o;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            CommonAdapter<SealSharkChannelModel> commonAdapter2 = this.f13409n;
            if (commonAdapter2 != null) {
                commonAdapter2.notifyDataSetChanged();
            }
            if (this.f13408m.getType() != 1 || this.f13389i.m12143C0()) {
                return;
            }
            MethodsUtils.m11302H(getString(R.string.device_not_activate_and_just_can_translate), false);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SealChannelSettingActivity sealChannelSettingActivity = (SealChannelSettingActivity) getActivity();
        this.f13407l = sealChannelSettingActivity;
        this.f13408m = sealChannelSettingActivity.m12861J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = f13401r;
        C4161y.m11054a(str, "onActivityResult:" + i + "--resultCode:" + i2);
        if (i == 101) {
            if (i2 != 1001) {
                this.f13407l.m12853S(false);
                this.f13407l.m12854R(false);
            } else if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else {
                SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) intent.getParcelableExtra("cssCodeModifiedPresetChannel");
                if (sealSharkChannelModel != null) {
                    C4161y.m11054a(str, "cssCodeModifiedPresetChannel:" + sealSharkChannelModel.toString());
                    m12757X1(sealSharkChannelModel);
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int[] iArr = MiTalkClientUtil.m11179w() ? f13403t : f13402s;
        int i = 0;
        while (i < iArr.length) {
            SealSharkChannelModel sealSharkChannelModel = new SealSharkChannelModel();
            sealSharkChannelModel.setNo(i);
            sealSharkChannelModel.setType(0);
            sealSharkChannelModel.setRxFreq(iArr[i]);
            sealSharkChannelModel.setTxFreq(iArr[i]);
            i++;
            sealSharkChannelModel.setName(UIUtils.m8602p(R.string.channel_public_d, Integer.valueOf(i)));
            sealSharkChannelModel.setRxCss(0);
            sealSharkChannelModel.setTxCss(0);
            sealSharkChannelModel.setStChannel(true);
            this.f13405j.add(sealSharkChannelModel);
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = f13404u;
            if (i2 >= iArr2.length) {
                return;
            }
            SealSharkChannelModel sealSharkChannelModel2 = new SealSharkChannelModel();
            sealSharkChannelModel2.setNo(i2);
            sealSharkChannelModel2.setType(1);
            sealSharkChannelModel2.setRxFreq(iArr2[i2]);
            sealSharkChannelModel2.setTxFreq(iArr2[i2]);
            i2++;
            sealSharkChannelModel2.setName(UIUtils.m8602p(R.string.channel_long_distance_d, Integer.valueOf(i2)));
            sealSharkChannelModel2.setRxCss(0);
            sealSharkChannelModel2.setTxCss(0);
            sealSharkChannelModel2.setStChannel(true);
            this.f13406k.add(sealSharkChannelModel2);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.seal.fragment.SealChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_seal_preset, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_public);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        TextView textView = (TextView) inflate.findViewById(R.id.display_all_20_public_channel);
        this.f13411p = textView;
        textView.setText(getString(MiTalkClientUtil.m11179w() ? R.string.hide_other_15_channel : R.string.display_other_15_channel));
        this.f13411p.setOnClickListener(new View$OnClickListenerC3745a());
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        C3746b c3746b = new C3746b(getActivity(), R.layout.layout_preset_item, this.f13405j);
        this.f13409n = c3746b;
        recyclerView.setAdapter(c3746b);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        C3749c c3749c = new C3749c(getActivity(), R.layout.layout_preset_item, this.f13406k);
        this.f13410o = c3749c;
        recyclerView2.setAdapter(c3749c);
        return inflate;
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SealProtos.SEAL_ChannelInfoOperate sEAL_ChannelInfoOperate) {
        C4161y.m11054a(f13401r, "receiveChannelInfoOperateResp");
        if (this.f13407l.m12858M()) {
            return;
        }
        if (this.f13407l.m12860K() == 1 || this.f13407l.m12857N()) {
            m12767J1(sEAL_ChannelInfoOperate);
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SealProtos.SEAL_ChannelStateOperate sEAL_ChannelStateOperate) {
        C4161y.m11054a(f13401r, "receiveChannelStateOperateResp");
        if (this.f13407l.m12858M()) {
            return;
        }
        if (this.f13407l.m12860K() == 1 || this.f13407l.m12857N()) {
            this.f13407l.m12853S(false);
            if (this.f13412q) {
                if (sEAL_ChannelStateOperate.getResult() == SealProtos.SEAL_ChannelStateOperate.SEAL_ST_UERR.SEAL_ST_OK && sEAL_ChannelStateOperate.getOption() == SealProtos.SEAL_ChannelStateOperate.SEAL_STOPTION.SEAL_ST_UPDATE) {
                    this.f13389i.m12086s1(this.f13405j.size() == f13402s.length);
                    return;
                }
                this.f13412q = false;
                getActivity().runOnUiThread(new RunnableC3758i());
                return;
            }
            m12766K1(sEAL_ChannelStateOperate);
        }
    }

    @Subscribe
    public void receiveParamResponse(SealProtos.SEAL_DeviceParam sEAL_DeviceParam) {
        C4161y.m11049f(f13401r, "receiveParamResponse");
        UIUtils.m8598t(new RunnableC3757h(sEAL_DeviceParam));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f13401r, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f13401r;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            CommonAdapter<SealSharkChannelModel> commonAdapter = this.f13410o;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            CommonAdapter<SealSharkChannelModel> commonAdapter2 = this.f13409n;
            if (commonAdapter2 != null) {
                commonAdapter2.notifyDataSetChanged();
            }
        }
    }

    /* renamed from: y2 */
    public void m12725y2(SealSharkChannelModel sealSharkChannelModel) {
        Intent intent = new Intent(getActivity(), SealPresetChCssEditActivity.class);
        intent.putExtra("device_mac_address", this.f13388h);
        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannelModel);
        startActivityForResult(intent, 101);
    }
}
