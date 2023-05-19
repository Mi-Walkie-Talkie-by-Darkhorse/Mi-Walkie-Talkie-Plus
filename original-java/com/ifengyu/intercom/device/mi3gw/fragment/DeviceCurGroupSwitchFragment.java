package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSwitchFragment;
import com.ifengyu.intercom.device.mi3gw.p162a.DeviceCurGroupSwitchAdapter;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import java.util.ArrayList;
import java.util.Iterator;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class DeviceCurGroupSwitchFragment extends BaseFragment {

    /* renamed from: A */
    private final ArrayList<ItemSelectAdapterEntity<TempGroup>> f12532A = new ArrayList<>();

    /* renamed from: B */
    private ItemSelectAdapterEntity<TempGroup> f12533B;

    /* renamed from: C */
    private long f12534C;

    /* renamed from: D */
    private long f12535D;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvGroupList;

    /* renamed from: z */
    private DeviceCurGroupSwitchAdapter f12536z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceCurGroupSwitchFragment$a */
    /* loaded from: classes2.dex */
    public class C3387a implements OnUpdateDeviceCurGroupListener {
        C3387a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m13672d() {
            DeviceCurGroupSwitchFragment.this.mo8048o2();
        }

        @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener
        /* renamed from: a */
        public void mo13675a() {
            DeviceCurGroupSwitchFragment.this.m10304f3(UIUtils.m8603o(R.string.set_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.g
                @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
                /* renamed from: a */
                public final void mo9105a() {
                    DeviceCurGroupSwitchFragment.C3387a.this.m13672d();
                }
            });
        }

        @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnUpdateDeviceCurGroupListener
        /* renamed from: b */
        public void mo13674b(int i) {
            DeviceCurGroupSwitchFragment.this.m10312X2(i);
        }
    }

    /* renamed from: j3 */
    private void m13685j3() {
        this.f12536z.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.i
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceCurGroupSwitchFragment.this.m13682m3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: k3 */
    private void m13684k3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(this.f12534C == 1 ? R.string.device_group_switch_current : R.string.device_group_switch_listen);
        this.mTopbar.m7343k(R.drawable.common_icon_canncel, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceCurGroupSwitchFragment.this.m13680o3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.completed, R.id.member_remove_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.j
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceCurGroupSwitchFragment.this.m13678q3(view);
            }
        });
        this.f12536z = new DeviceCurGroupSwitchAdapter(R.layout.item_device_cur_group_switch_list, this.f12532A);
        this.rvGroupList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvGroupList.setAdapter(this.f12536z);
        m13685j3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13682m3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ItemSelectAdapterEntity<TempGroup> itemSelectAdapterEntity = this.f12532A.get(i);
        if (itemSelectAdapterEntity.isEnable()) {
            Iterator<ItemSelectAdapterEntity<TempGroup>> it2 = this.f12532A.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                ItemSelectAdapterEntity<TempGroup> next = it2.next();
                if (next.isEnable() && next.isCheck()) {
                    next.setCheck(false);
                    break;
                }
            }
            itemSelectAdapterEntity.setCheck(true);
            this.f12536z.notifyDataSetChanged();
            this.f12533B = itemSelectAdapterEntity;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m13680o3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m13678q3(View view) {
        m13677r3();
    }

    /* renamed from: r3 */
    private void m13677r3() {
        ItemSelectAdapterEntity<TempGroup> itemSelectAdapterEntity = this.f12533B;
        if (itemSelectAdapterEntity != null && itemSelectAdapterEntity.getData().getGid() != this.f12535D) {
            m10308b3();
            if (this.f12534C == 1) {
                return;
            }
            ArrayList<Long> arrayList = new ArrayList<>();
            arrayList.add(Long.valueOf(this.f12533B.getData().getGid()));
            DeviceDataShare.m13732s().m13791K0(arrayList, new C3387a());
            return;
        }
        mo8048o2();
    }

    /* renamed from: s3 */
    public static DeviceCurGroupSwitchFragment m13676s3(int i, long j) {
        DeviceCurGroupSwitchFragment deviceCurGroupSwitchFragment = new DeviceCurGroupSwitchFragment();
        Bundle bundle = new Bundle();
        bundle.putInt("the_action_switch_what", i);
        bundle.putLong("the_gid_will_to_switch", j);
        deviceCurGroupSwitchFragment.setArguments(bundle);
        return deviceCurGroupSwitchFragment;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f12534C = bundle.getInt("the_action_switch_what");
            this.f12535D = bundle.getLong("the_gid_will_to_switch");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        TempGroup m13750j;
        this.f12532A.clear();
        Iterator<TempGroup> it2 = DeviceDataShare.m13732s().m13744m().iterator();
        while (it2.hasNext()) {
            TempGroup next = it2.next();
            ItemSelectAdapterEntity<TempGroup> itemSelectAdapterEntity = new ItemSelectAdapterEntity<>(4, next);
            if (next.getGid() == this.f12535D) {
                itemSelectAdapterEntity.setCheck(true);
                this.f12533B = itemSelectAdapterEntity;
            } else {
                long j = this.f12534C;
                if (j != 1 && j == 2 && (m13750j = DeviceDataShare.m13732s().m13750j()) != null && next.getGid() == m13750j.getGid()) {
                    itemSelectAdapterEntity.setEnable(false);
                }
            }
            this.f12532A.add(itemSelectAdapterEntity);
        }
        this.f12536z.notifyDataSetChanged();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_device_cur_group_switch, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13684k3();
        return inflate;
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
    }
}
