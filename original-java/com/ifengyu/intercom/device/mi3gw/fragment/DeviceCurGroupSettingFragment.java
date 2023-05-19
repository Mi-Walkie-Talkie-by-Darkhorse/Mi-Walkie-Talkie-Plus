package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.library.widget.view.ItemView;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.layout.QMUILinearLayout;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import java.util.ArrayList;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class DeviceCurGroupSettingFragment extends BaseFragment implements OnDeviceDataShareListener {
    @BindView(R.id.curGroupItem)
    ItemView curGroupItem;
    @BindView(R.id.current_group_layout)
    QMUILinearLayout currentGroupLayout;
    @BindView(R.id.current_group_title)
    TextView currentGroupTitle;
    @BindView(R.id.doubleGroupMonitor)
    ItemView doubleGroupMonitor;
    @BindView(R.id.listenGroupItem)
    ItemView listenGroupItem;
    @BindView(R.id.listen_group_layout)
    QMUILinearLayout listenGroupLayout;
    @BindView(R.id.listen_group_title)
    TextView listenGroupTitle;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.top_setting_layout)
    QMUILinearLayout topSettingLayout;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSettingFragment$a */
    /* loaded from: classes2.dex */
    public class C3382a implements OnUpdateDeviceCurGroupListener {
        C3382a() {
        }

        @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener
        /* renamed from: a */
        public void mo13675a() {
            DeviceCurGroupSettingFragment.this.m10306d3(R.string.set_success);
        }

        @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener
        /* renamed from: b */
        public void mo13674b(int i) {
            DeviceCurGroupSettingFragment.this.m10312X2(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSettingFragment$b */
    /* loaded from: classes2.dex */
    public class C3383b implements OnUpdateDeviceCurGroupListener {
        C3383b() {
        }

        @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener
        /* renamed from: a */
        public void mo13675a() {
            DeviceCurGroupSettingFragment.this.m10306d3(R.string.set_success);
        }

        @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener
        /* renamed from: b */
        public void mo13674b(int i) {
            DeviceCurGroupSettingFragment.this.m10312X2(i);
        }
    }

    /* renamed from: k3 */
    private void m13694k3() {
        m10308b3();
        DeviceDataShare.m13732s().closeDoubleGroupListen(new C3382a());
    }

    /* renamed from: l3 */
    private void m13693l3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.device_group_switch_set);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceCurGroupSettingFragment.this.m13691n3(view);
            }
        });
        this.topSettingLayout.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.currentGroupLayout.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
        this.listenGroupLayout.setRadiusAndShadow(UIUtils.m8616b(16.0f), UIUtils.m8616b(5.0f), 0.15f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m13691n3(View view) {
        mo8048o2();
    }

    /* renamed from: o3 */
    private void m13690o3() {
        m10308b3();
        DeviceDataShare.m13732s().openDoubleGroupListen(new C3383b());
    }

    /* renamed from: p3 */
    private void m13689p3() {
        TempGroup m13750j = DeviceDataShare.m13732s().m13750j();
        ArrayList<TempGroup> m13738p = DeviceDataShare.m13732s().m13738p();
        this.doubleGroupMonitor.getSwitch().setChecked(m13738p.size() > 0);
        if (m13750j != null) {
            this.currentGroupTitle.setVisibility(0);
            this.currentGroupLayout.setVisibility(0);
            this.curGroupItem.setTitleText(SlTalkClient.m8527d(m13750j));
        } else {
            this.currentGroupTitle.setVisibility(8);
            this.currentGroupLayout.setVisibility(8);
            this.curGroupItem.setTitleText(null);
        }
        if (m13738p.size() > 0) {
            this.listenGroupTitle.setVisibility(0);
            this.listenGroupLayout.setVisibility(0);
            this.listenGroupItem.setTitleText(SlTalkClient.m8527d(m13738p.get(0)));
            return;
        }
        this.listenGroupTitle.setVisibility(8);
        this.listenGroupLayout.setVisibility(8);
        this.listenGroupItem.setTitleText(null);
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
        m13689p3();
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

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L */
    public void mo13424L(NetDeviceModel netDeviceModel) {
        mo9102E2();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L0 */
    public void mo13423L0() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: M0 */
    public void mo13422M0(ArrayList<TempGroup> arrayList) {
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

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: d0 */
    public void mo13412d0(TempGroup tempGroup, ArrayList<TempGroup> arrayList) {
        m13689p3();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        DeviceDataShare.m13732s().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_device_cur_group_settinig, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13693l3();
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
    }

    @OnClick({R.id.doubleGroupMonitor, R.id.curGroupItem, R.id.listenGroupItem})
    public void onViewClicked(View view) {
        int id = view.getId();
        if (id == R.id.curGroupItem) {
            m8041v2(DeviceCurGroupSwitchFragment.m13676s3(1, DeviceDataShare.m13732s().m13750j().getGid()));
        } else if (id != R.id.doubleGroupMonitor) {
            if (id != R.id.listenGroupItem) {
                return;
            }
            m8041v2(DeviceCurGroupSwitchFragment.m13676s3(2, DeviceDataShare.m13732s().m13738p().get(0).getGid()));
        } else if (this.doubleGroupMonitor.getSwitch().isChecked()) {
            m13694k3();
        } else {
            m13690o3();
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: p */
    public void mo13405p(long j, String str) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: r */
    public void mo13404r(long j) {
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
