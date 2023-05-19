package com.ifengyu.intercom.device.mi3gw.fragment;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.DeviceGroupSelectAdapter;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class AddMyGroupToDeviceFragment extends BaseFragment implements OnDeviceDataShareListener {

    /* renamed from: A */
    private final ArrayList<ItemSelectAdapterEntity<Group>> f12514A = new ArrayList<>();

    /* renamed from: B */
    private final ArrayList<ItemSelectAdapterEntity<Group>> f12515B = new ArrayList<>();
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvMyGroupList;

    /* renamed from: z */
    private DeviceGroupSelectAdapter f12516z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.AddMyGroupToDeviceFragment$a */
    /* loaded from: classes2.dex */
    public class RunnableC3380a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ TextView f12517a;

        RunnableC3380a(TextView textView) {
            this.f12517a = textView;
        }

        @Override // java.lang.Runnable
        public void run() {
            AddMyGroupToDeviceFragment.this.f12516z.m17034i0(AddMyGroupToDeviceFragment.this.m13713i3(this.f12517a.getBottom()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.AddMyGroupToDeviceFragment$b */
    /* loaded from: classes2.dex */
    public class RunnableC3381b implements Runnable {

        /* renamed from: a */
        final /* synthetic */ LinearLayout f12519a;

        /* renamed from: b */
        final /* synthetic */ int f12520b;

        RunnableC3381b(LinearLayout linearLayout, int i) {
            this.f12519a = linearLayout;
            this.f12520b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f12519a.setPadding(0, ((AddMyGroupToDeviceFragment.this.rvMyGroupList.getMeasuredHeight() - this.f12520b) / 2) - (this.f12519a.getMeasuredHeight() / 2), 0, 0);
        }
    }

    /* renamed from: h3 */
    private void m13714h3() {
        m10308b3();
        long[] jArr = new long[this.f12515B.size()];
        for (int i = 0; i < this.f12515B.size(); i++) {
            jArr[i] = this.f12515B.get(i).getData().getGid();
        }
        DeviceDataShare.m13732s().m13760e(jArr);
    }

    /* renamed from: k3 */
    private void m13711k3() {
        this.f12516z.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.d
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                AddMyGroupToDeviceFragment.this.m13704r3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: l3 */
    private void m13710l3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.device_add_new_group);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddMyGroupToDeviceFragment.this.m13702t3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.completed, R.id.device_add_my_group_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddMyGroupToDeviceFragment.this.m13700v3(view);
            }
        });
        DeviceGroupSelectAdapter deviceGroupSelectAdapter = new DeviceGroupSelectAdapter(this, R.layout.item_group_select_list, this.f12514A);
        this.f12516z = deviceGroupSelectAdapter;
        deviceGroupSelectAdapter.m17029l(m13712j3());
        this.f12516z.m17030k0(true);
        this.rvMyGroupList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvMyGroupList.setAdapter(this.f12516z);
        m13711k3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m13708n3(View view) {
        m8041v2(DeviceCreateGroupFragment.m13430O3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m13706p3(View view) {
        m10316T2("android.permission.CAMERA");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m13704r3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ItemSelectAdapterEntity<Group> itemSelectAdapterEntity = this.f12516z.m17070D().get(i);
        if (itemSelectAdapterEntity.isEnable()) {
            itemSelectAdapterEntity.setCheck(!itemSelectAdapterEntity.isCheck());
            this.f12516z.notifyDataSetChanged();
            if (itemSelectAdapterEntity.isCheck()) {
                this.f12515B.add(itemSelectAdapterEntity);
            } else {
                this.f12515B.remove(itemSelectAdapterEntity);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ void m13702t3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m13700v3(View view) {
        if (this.f12515B.size() == 0) {
            UIUtils.m8593y(R.string.device_select_group_pls);
        } else {
            m13714h3();
        }
    }

    /* renamed from: w3 */
    public static AddMyGroupToDeviceFragment m13699w3() {
        return new AddMyGroupToDeviceFragment();
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
        GroupList m8428d = SlTalkClient.m8513r().m8525f().m8428d();
        this.f12514A.clear();
        Iterator<Group> it2 = m8428d.iterator();
        while (it2.hasNext()) {
            Group next = it2.next();
            if (next.getType() == Group.GROUP_NORMAL) {
                ItemSelectAdapterEntity<Group> itemSelectAdapterEntity = new ItemSelectAdapterEntity<>(4, next);
                if (DeviceDataShare.m13732s().m13746l(next.getGid()) != null) {
                    itemSelectAdapterEntity.setEnable(false);
                }
                this.f12514A.add(itemSelectAdapterEntity);
            }
        }
        this.f12516z.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: F */
    public void mo13427F(long... jArr) {
        m10329C2();
        mo8048o2();
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

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: O2 */
    protected void mo9611O2() {
        m8041v2(AddGroupForDeviceQrScanFragment.m13432X3());
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
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_add_my_group_to_device, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13710l3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: h1 */
    public void mo13411h1(long... jArr) {
        m10312X2(R.string.device_add_group_fail);
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: i0 */
    public void mo13410i0(long j) {
    }

    /* renamed from: i3 */
    public View m13713i3(int i) {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout_1, (ViewGroup) this.rvMyGroupList.getParent(), false);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.list_empty_container);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.drawable.address_icon_group_none);
        ((TextView) inflate.findViewById(R.id.empty_word)).setText(R.string.not_have_add_to_any_group);
        linearLayout.post(new RunnableC3381b(linearLayout, i));
        return inflate;
    }

    /* renamed from: j3 */
    public View m13712j3() {
        View inflate = getLayoutInflater().inflate(R.layout.header_add_my_group_to_device_list, (ViewGroup) this.rvMyGroupList.getParent(), false);
        inflate.findViewById(R.id.ll_new_group).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddMyGroupToDeviceFragment.this.m13708n3(view);
            }
        });
        inflate.findViewById(R.id.ll_scan_qr).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AddMyGroupToDeviceFragment.this.m13706p3(view);
            }
        });
        TextView textView = (TextView) inflate.findViewById(R.id.tv_my_group);
        textView.post(new RunnableC3380a(textView));
        return inflate;
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
