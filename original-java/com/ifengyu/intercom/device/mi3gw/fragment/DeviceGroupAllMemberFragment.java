package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.entity.DeviceGroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.device.mi3gw.p162a.DeviceGroupDetailMemberAdapter;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.http.entity.TempMember;
import com.ifengyu.talk.p235e.TempMemberComparator;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes2.dex */
public class DeviceGroupAllMemberFragment extends BaseFragment implements OnDeviceDataShareListener {

    /* renamed from: A */
    private long f12539A;

    /* renamed from: B */
    private TempGroup f12540B;

    /* renamed from: C */
    private final ArrayList<DeviceGroupDetailAdapterMultipleEntity> f12541C = new ArrayList<>();
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvList;

    /* renamed from: z */
    private DeviceGroupDetailMemberAdapter f12542z;

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: g3 */
    private void m13671g3() {
        this.f12542z.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.k
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceGroupAllMemberFragment.this.m13668j3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: h3 */
    private void m13670h3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupAllMemberFragment.this.m13666l3(view);
            }
        });
        this.f12542z = new DeviceGroupDetailMemberAdapter(this, this.f12541C);
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.rvList.setAdapter(this.f12542z);
        m13671g3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3 */
    public /* synthetic */ void m13668j3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        int type = this.f12541C.get(i).getType();
        if (type == 1002) {
            m8041v2(DeviceGroupAddMemberFragment.m13419O3(this.f12539A));
        } else if (type != 1003) {
        } else {
            m8041v2(DeviceGroupRemoveMemberFragment.m13563P3(this.f12539A));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k3 */
    public /* synthetic */ void m13666l3(View view) {
        mo8048o2();
    }

    /* renamed from: m3 */
    public static DeviceGroupAllMemberFragment m13665m3(long j) {
        DeviceGroupAllMemberFragment deviceGroupAllMemberFragment = new DeviceGroupAllMemberFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("key_group_gid", j);
        deviceGroupAllMemberFragment.setArguments(bundle);
        return deviceGroupAllMemberFragment;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: D0 */
    public void mo13429D0(long j) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f12539A = bundle.getLong("key_group_gid");
            TempGroup m13752i = DeviceDataShare.m13732s().m13752i();
            if (m13752i == null || m13752i.getGid() != this.f12539A || m13752i.getUserList() == null) {
                return;
            }
            this.f12540B = m13752i;
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: E */
    public void mo13428E(long j, String str) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        if (this.f12540B == null) {
            return;
        }
        this.f12541C.clear();
        ArrayList<TempMember> userList = this.f12540B.getUserList();
        Collections.sort(userList, new TempMemberComparator(this.f12540B.getOwner()));
        boolean m8517n = SlTalkClient.m8517n(this.f12540B, DeviceDataShare.m13732s().m13740o());
        int size = userList.size();
        for (int i = 0; i < size; i++) {
            this.f12541C.add(new DeviceGroupDetailAdapterMultipleEntity(1001, userList.get(i)));
        }
        this.f12541C.add(new DeviceGroupDetailAdapterMultipleEntity(1002));
        if (m8517n) {
            this.f12541C.add(new DeviceGroupDetailAdapterMultipleEntity(1003));
        }
        this.f12542z.notifyDataSetChanged();
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.group_member_count, Integer.valueOf(size)));
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
        mo9102E2();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: L */
    public void mo13424L(NetDeviceModel netDeviceModel) {
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
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        DeviceDataShare.m13732s().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_all_member, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13670h3();
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
