package com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment;

import android.content.Context;
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
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkChannelSettingActivity;
import com.ifengyu.intercom.device.oldDevice.sealshark.shark.activity.SharkPresetChCssEditActivity;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p189l.p190a.p196c.ChNumberConstants;
import com.ifengyu.intercom.p189l.p190a.p197d.BleChannelUtils;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.protos.SharkProtos;
import com.ifengyu.library.utils.UIUtils;
import com.squareup.otto.Subscribe;
import java.util.ArrayList;
import java.util.List;
import p048b.p078f.p079a.p080a.CommonAdapter;
import p048b.p078f.p079a.p080a.p081c.ViewHolder;

/* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b */
/* loaded from: classes2.dex */
public class SharkPresetFragment extends SharkChannelBaseFragment {

    /* renamed from: r */
    private static final String f13560r = SharkPresetFragment.class.getSimpleName();

    /* renamed from: s */
    private static final int[] f13561s = UIUtils.m8610h(R.array.seal_public_all_channel);

    /* renamed from: t */
    private static final int[] f13562t = ChNumberConstants.f14117a;

    /* renamed from: k */
    private List<SealSharkChannelModel> f13563k = new ArrayList();

    /* renamed from: l */
    private List<SealSharkChannelModel> f13564l = new ArrayList();

    /* renamed from: m */
    private SharkChannelSettingActivity f13565m;

    /* renamed from: n */
    private SealSharkChannelModel f13566n;

    /* renamed from: o */
    private CommonAdapter<SealSharkChannelModel> f13567o;

    /* renamed from: p */
    private CommonAdapter<SealSharkChannelModel> f13568p;

    /* renamed from: q */
    private int f13569q;

    /* compiled from: SharkPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b$a */
    /* loaded from: classes2.dex */
    class C3816a extends CommonAdapter<SealSharkChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b$a$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3817a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13571a;

            View$OnClickListenerC3817a(SealSharkChannelModel sealSharkChannelModel) {
                this.f13571a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = SharkPresetFragment.this.f13569q;
                if (i == 3 || i == 4) {
                    MethodsUtils.m11302H(SharkPresetFragment.this.getString(R.string.scan_mode_can_not_setting), false);
                } else if (i != 5 && i != 6) {
                    SharkPresetFragment.this.f13566n = this.f13571a;
                    SharkPresetFragment.this.m12610Z1(this.f13571a);
                } else {
                    MethodsUtils.m11302H(SharkPresetFragment.this.getString(R.string.team_mode_can_not_setting), false);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b$a$b */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC3818b implements View.OnLongClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13573a;

            View$OnLongClickListenerC3818b(SealSharkChannelModel sealSharkChannelModel) {
                this.f13573a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(SharkPresetFragment.this.getActivity(), SharkPresetChCssEditActivity.class);
                intent.putExtra("device_mac_address", SharkPresetFragment.this.f13547i);
                intent.putExtra("seal_action_edit_css_channel_info", this.f13573a);
                SharkPresetFragment.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        C3816a(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: n */
        public void mo12588m(ViewHolder viewHolder, SealSharkChannelModel sealSharkChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_channel);
            textView.setTypeface(AppConstants.f13909c);
            textView.setText(String.valueOf(i + 1));
            if (SharkPresetFragment.this.f13565m != null) {
                SealSharkChannelModel m12698J = SharkPresetFragment.this.f13565m.m12698J();
                if (m12698J != null && m12698J.equals(sealSharkChannelModel)) {
                    textView.setSelected(true);
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setSelected(false);
                    textView.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3817a(sealSharkChannelModel));
            viewHolder.itemView.setOnLongClickListener(new View$OnLongClickListenerC3818b(sealSharkChannelModel));
        }
    }

    /* compiled from: SharkPresetFragment.java */
    /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b$b */
    /* loaded from: classes2.dex */
    class C3819b extends CommonAdapter<SealSharkChannelModel> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b$b$a */
        /* loaded from: classes2.dex */
        public class View$OnClickListenerC3820a implements View.OnClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13576a;

            View$OnClickListenerC3820a(SealSharkChannelModel sealSharkChannelModel) {
                this.f13576a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                int i = SharkPresetFragment.this.f13569q;
                if (i == 3 || i == 4) {
                    MethodsUtils.m11302H(SharkPresetFragment.this.getString(R.string.scan_mode_can_not_setting), false);
                } else if (i != 5 && i != 6) {
                    SharkPresetFragment.this.f13566n = this.f13576a;
                    SharkPresetFragment.this.m12610Z1(this.f13576a);
                } else {
                    MethodsUtils.m11302H(SharkPresetFragment.this.getString(R.string.team_mode_can_not_setting), false);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: SharkPresetFragment.java */
        /* renamed from: com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.b$b$b */
        /* loaded from: classes2.dex */
        public class View$OnLongClickListenerC3821b implements View.OnLongClickListener {

            /* renamed from: a */
            final /* synthetic */ SealSharkChannelModel f13578a;

            View$OnLongClickListenerC3821b(SealSharkChannelModel sealSharkChannelModel) {
                this.f13578a = sealSharkChannelModel;
            }

            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                Intent intent = new Intent(SharkPresetFragment.this.getActivity(), SharkPresetChCssEditActivity.class);
                intent.putExtra("device_mac_address", SharkPresetFragment.this.f13547i);
                intent.putExtra("seal_action_edit_css_channel_info", this.f13578a);
                SharkPresetFragment.this.startActivityForResult(intent, 101);
                return true;
            }
        }

        C3819b(Context context, int i, List list) {
            super(context, i, list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p048b.p078f.p079a.p080a.CommonAdapter
        /* renamed from: n */
        public void mo12588m(ViewHolder viewHolder, SealSharkChannelModel sealSharkChannelModel, int i) {
            TextView textView = (TextView) viewHolder.getView(R.id.tv_channel);
            textView.setTypeface(AppConstants.f13909c);
            textView.setText(String.valueOf(i + 1));
            if (SharkPresetFragment.this.f13565m != null) {
                SealSharkChannelModel m12698J = SharkPresetFragment.this.f13565m.m12698J();
                if (m12698J != null && m12698J.equals(sealSharkChannelModel)) {
                    textView.setSelected(true);
                    textView.setTextColor(UIUtils.m8614d(R.color.select_color));
                } else {
                    textView.setSelected(false);
                    textView.setTextColor(UIUtils.m8614d(R.color.black));
                }
            }
            viewHolder.itemView.setOnClickListener(new View$OnClickListenerC3820a(sealSharkChannelModel));
            viewHolder.itemView.setOnLongClickListener(new View$OnLongClickListenerC3821b(sealSharkChannelModel));
        }
    }

    /* renamed from: n2 */
    public static SharkPresetFragment m12591n2(boolean z, String str) {
        SharkPresetFragment sharkPresetFragment = new SharkPresetFragment();
        Bundle bundle = new Bundle();
        bundle.putBoolean("shark_arg_is_major_channel", z);
        bundle.putString("device_mac_address", str);
        sharkPresetFragment.setArguments(bundle);
        return sharkPresetFragment;
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: P1 */
    protected void mo12598P1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        C4161y.m11049f(f13560r, "onModifyChannelSuccess");
        if (sHARK_ChannelInfoOperate.hasCh()) {
            SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelInfoOperate.getCh());
            if (this.f13566n.equals(m11814g)) {
                this.f13566n = m11814g;
                this.f13565m.m12693O(m11814g);
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: R1 */
    protected void mo12597R1(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        m12627E1();
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: T1 */
    protected void mo12596T1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.f13569q = number;
            if (number == 0 && sHARK_ChannelStateOperate.hasStateMode() && sHARK_ChannelStateOperate.getStateMode() == 1) {
                if (this.f13544f) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh1());
                        this.f13566n = m11814g;
                        this.f13565m.m12693O(m11814g);
                        CommonAdapter<SealSharkChannelModel> commonAdapter = this.f13568p;
                        if (commonAdapter != null) {
                            commonAdapter.notifyDataSetChanged();
                        }
                        CommonAdapter<SealSharkChannelModel> commonAdapter2 = this.f13567o;
                        if (commonAdapter2 != null) {
                            commonAdapter2.notifyDataSetChanged();
                        }
                        if (this.f13566n.getType() != 1 || this.f13548j.m12071A0()) {
                            return;
                        }
                        MethodsUtils.m11302H(getString(R.string.device_not_activate_and_just_can_translate), false);
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    SealSharkChannelModel m11814g2 = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh2());
                    this.f13566n = m11814g2;
                    this.f13565m.m12693O(m11814g2);
                    CommonAdapter<SealSharkChannelModel> commonAdapter3 = this.f13568p;
                    if (commonAdapter3 != null) {
                        commonAdapter3.notifyDataSetChanged();
                    }
                    CommonAdapter<SealSharkChannelModel> commonAdapter4 = this.f13567o;
                    if (commonAdapter4 != null) {
                        commonAdapter4.notifyDataSetChanged();
                    }
                    if (this.f13566n.getType() != 1 || this.f13548j.m12071A0()) {
                        return;
                    }
                    MethodsUtils.m11302H(getString(R.string.device_not_activate_and_just_can_translate), false);
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment
    /* renamed from: U1 */
    protected void mo12595U1(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        C4161y.m11049f(f13560r, "onStateUpdateSuccess");
        if (sHARK_ChannelStateOperate.hasDeviceMode()) {
            int number = sHARK_ChannelStateOperate.getDeviceMode().getNumber();
            this.f13569q = number;
            if ((number == 0 || number == 2 || number == 1) && sHARK_ChannelStateOperate.hasStateMode()) {
                sHARK_ChannelStateOperate.getStateMode();
                if (this.f13544f) {
                    if (sHARK_ChannelStateOperate.hasCh1()) {
                        SealSharkChannelModel m11814g = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh1());
                        this.f13566n = m11814g;
                        this.f13565m.m12693O(m11814g);
                        CommonAdapter<SealSharkChannelModel> commonAdapter = this.f13568p;
                        if (commonAdapter != null) {
                            commonAdapter.notifyDataSetChanged();
                        }
                        CommonAdapter<SealSharkChannelModel> commonAdapter2 = this.f13567o;
                        if (commonAdapter2 != null) {
                            commonAdapter2.notifyDataSetChanged();
                        }
                        if (this.f13566n.getType() != 1 || this.f13548j.m12071A0()) {
                            return;
                        }
                        MethodsUtils.m11302H(getString(R.string.device_not_activate_and_just_can_translate), false);
                    }
                } else if (sHARK_ChannelStateOperate.hasCh2()) {
                    SealSharkChannelModel m11814g2 = BleChannelUtils.m11814g(sHARK_ChannelStateOperate.getCh2());
                    this.f13566n = m11814g2;
                    this.f13565m.m12693O(m11814g2);
                    CommonAdapter<SealSharkChannelModel> commonAdapter3 = this.f13568p;
                    if (commonAdapter3 != null) {
                        commonAdapter3.notifyDataSetChanged();
                    }
                    CommonAdapter<SealSharkChannelModel> commonAdapter4 = this.f13567o;
                    if (commonAdapter4 != null) {
                        commonAdapter4.notifyDataSetChanged();
                    }
                    if (this.f13566n.getType() != 1 || this.f13548j.m12071A0()) {
                        return;
                    }
                    MethodsUtils.m11302H(getString(R.string.device_not_activate_and_just_can_translate), false);
                }
            }
        }
    }

    /* renamed from: o2 */
    public void m12590o2(SealSharkChannelModel sealSharkChannelModel) {
        Intent intent = new Intent(getActivity(), SharkPresetChCssEditActivity.class);
        intent.putExtra("device_mac_address", this.f13547i);
        intent.putExtra("seal_action_edit_css_channel_info", sealSharkChannelModel);
        startActivityForResult(intent, 101);
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, androidx.fragment.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        SharkChannelSettingActivity sharkChannelSettingActivity = (SharkChannelSettingActivity) getActivity();
        this.f13565m = sharkChannelSettingActivity;
        this.f13566n = sharkChannelSettingActivity.m12698J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        String str = f13560r;
        C4161y.m11054a(str, "onActivityResult:" + i);
        if (i == 101) {
            if (i2 != 1001) {
                this.f13565m.m12690S(false);
                this.f13565m.m12691R(false);
            } else if (intent == null) {
                C4161y.m11054a(str, "result data is null...");
            } else {
                SealSharkChannelModel sealSharkChannelModel = (SealSharkChannelModel) intent.getParcelableExtra("cssCodeModifiedPresetChannel");
                if (sealSharkChannelModel != null) {
                    C4161y.m11054a(str, "cssCodeModifiedPresetChannel:" + sealSharkChannelModel.toString());
                    m12612X1(sealSharkChannelModel);
                }
            }
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, com.ifengyu.intercom.p216ui.base.old.BaseFragment1, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        int i = 0;
        while (true) {
            int[] iArr = f13561s;
            if (i >= iArr.length) {
                break;
            }
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
            this.f13563k.add(sealSharkChannelModel);
        }
        int i2 = 0;
        while (true) {
            int[] iArr2 = f13562t;
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
            this.f13564l.add(sealSharkChannelModel2);
        }
    }

    @Override // com.ifengyu.intercom.device.oldDevice.sealshark.shark.fragment.SharkChannelBaseFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(R.layout.fragment_shark_preset, viewGroup, false);
        RecyclerView recyclerView = (RecyclerView) inflate.findViewById(R.id.rv_public);
        RecyclerView recyclerView2 = (RecyclerView) inflate.findViewById(R.id.rv_remote);
        recyclerView.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView.setFocusable(false);
        C3816a c3816a = new C3816a(getActivity(), R.layout.layout_preset_item, this.f13563k);
        this.f13567o = c3816a;
        recyclerView.setAdapter(c3816a);
        recyclerView2.setLayoutManager(new GridLayoutManager(getActivity(), 5));
        recyclerView2.setFocusable(false);
        C3819b c3819b = new C3819b(getActivity(), R.layout.layout_preset_item, this.f13564l);
        this.f13568p = c3819b;
        recyclerView2.setAdapter(c3819b);
        return inflate;
    }

    @Subscribe
    public void receiveChannelInfoOperateResp(SharkProtos.SHARK_ChannelInfoOperate sHARK_ChannelInfoOperate) {
        C4161y.m11054a(f13560r, "receiveChannelInfoOperateResp");
        if (this.f13565m.m12695M()) {
            return;
        }
        if (this.f13565m.m12697K() == 1 || this.f13565m.m12694N()) {
            m12622J1(sHARK_ChannelInfoOperate);
        }
    }

    @Subscribe
    public void receiveChannelStateOperateResp(SharkProtos.SHARK_ChannelStateOperate sHARK_ChannelStateOperate) {
        C4161y.m11054a(f13560r, "receiveChannelStateOperateResp");
        if (this.f13565m.m12695M()) {
            return;
        }
        if (this.f13565m.m12697K() == 1 || this.f13565m.m12694N()) {
            this.f13565m.m12690S(false);
            m12621K1(sHARK_ChannelStateOperate);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: x1 */
    public void mo10266x1() {
        super.mo10266x1();
        C4161y.m11054a(f13560r, "onFragmentFirstVisible");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.old.BaseFragment1
    /* renamed from: y1 */
    public void mo10265y1(boolean z) {
        super.mo10265y1(z);
        String str = f13560r;
        C4161y.m11054a(str, "onFragmentVisibleChange:" + z);
        if (z) {
            CommonAdapter<SealSharkChannelModel> commonAdapter = this.f13568p;
            if (commonAdapter != null) {
                commonAdapter.notifyDataSetChanged();
            }
            CommonAdapter<SealSharkChannelModel> commonAdapter2 = this.f13567o;
            if (commonAdapter2 != null) {
                commonAdapter2.notifyDataSetChanged();
            }
        }
    }
}
