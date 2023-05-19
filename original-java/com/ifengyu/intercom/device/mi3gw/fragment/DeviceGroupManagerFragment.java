package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.chad.library.adapter.base.p115l.OnItemDragListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p162a.DeviceGroupManagerAdapter;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.http.entity.TempGroup;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import java.util.ArrayList;
import java.util.Iterator;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class DeviceGroupManagerFragment extends BaseFragment implements OnDeviceDataShareListener {

    /* renamed from: A */
    private boolean f12563A;

    /* renamed from: B */
    private final ArrayList<ItemSelectAdapterEntity<TempGroup>> f12564B = new ArrayList<>();

    /* renamed from: C */
    private final ArrayList<ItemSelectAdapterEntity<TempGroup>> f12565C = new ArrayList<>();
    @BindView(R.id.btn_exit_group)
    QMUIRoundButton btnExitGroup;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvContactList;
    @BindView(R.id.tv_select_all)
    TextView tvSelectAll;

    /* renamed from: z */
    private DeviceGroupManagerAdapter f12566z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.device.mi3gw.fragment.DeviceGroupManagerFragment$a */
    /* loaded from: classes2.dex */
    public class C3395a implements OnItemDragListener {

        /* renamed from: a */
        int f12567a = 0;

        C3395a() {
        }

        @Override // com.chad.library.adapter.base.p115l.OnItemDragListener
        /* renamed from: a */
        public void mo13604a(RecyclerView.AbstractC0849y abstractC0849y, int i) {
            abstractC0849y.itemView.setBackground(UIUtils.m8611g(R.drawable.bg_material_ripple_white));
            if (DeviceGroupManagerFragment.this.f12563A || this.f12567a == i) {
                return;
            }
            DeviceGroupManagerFragment.this.f12563A = true;
        }

        @Override // com.chad.library.adapter.base.p115l.OnItemDragListener
        /* renamed from: b */
        public void mo13603b(RecyclerView.AbstractC0849y abstractC0849y, int i, RecyclerView.AbstractC0849y abstractC0849y2, int i2) {
        }

        @Override // com.chad.library.adapter.base.p115l.OnItemDragListener
        /* renamed from: c */
        public void mo13602c(RecyclerView.AbstractC0849y abstractC0849y, int i) {
            abstractC0849y.itemView.setBackgroundColor(UIUtils.m8614d(R.color.bg_pressed_white_material));
            this.f12567a = i;
        }
    }

    /* renamed from: A3 */
    private void m13627A3() {
        m10308b3();
        long[] jArr = new long[this.f12565C.size()];
        for (int i = 0; i < this.f12565C.size(); i++) {
            jArr[i] = this.f12565C.get(i).getData().getGid();
        }
        DeviceDataShare.m13732s().m13758f(jArr);
    }

    /* renamed from: B3 */
    private void m13626B3() {
        this.btnExitGroup.setEnabled(this.f12565C.size() > 0);
        this.tvSelectAll.setText(this.f12565C.size() == this.f12564B.size() ? R.string.select_not_all : R.string.select_all);
    }

    /* renamed from: C3 */
    private void m13625C3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getActivity());
        messageDialogBuilder.m7282x(R.string.device_exit_group);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7247F(UIUtils.m8603o(R.string.device_is_sure_exit_group_content));
        messageDialogBuilder2.m7300b(0, R.string.common_cancel, 2, C3421c0.f12636a);
        MessageDialogBuilder messageDialogBuilder3 = messageDialogBuilder2;
        messageDialogBuilder3.m7300b(0, R.string.common_sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.a0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceGroupManagerFragment.this.m13607x3(qMUIDialog, i);
            }
        });
        messageDialogBuilder3.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: i3 */
    private void m13622i3() {
        this.btnExitGroup.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.d0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupManagerFragment.this.m13618m3(view);
            }
        });
        this.tvSelectAll.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupManagerFragment.this.m13616o3(view);
            }
        });
        this.f12566z.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.w
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceGroupManagerFragment.this.m13614q3(baseQuickAdapter, view, i);
            }
        });
        this.f12566z.m17067G().setOnItemDragListener(new C3395a());
    }

    /* renamed from: j3 */
    private void m13621j3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.device_group_manager);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupManagerFragment.this.m13612s3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.completed, R.id.member_remove_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupManagerFragment.this.m13610u3(view);
            }
        });
        this.btnExitGroup.setChangeAlphaWhenPress(true);
        this.btnExitGroup.setChangeAlphaWhenDisable(true);
        DeviceGroupManagerAdapter deviceGroupManagerAdapter = new DeviceGroupManagerAdapter(R.layout.item_device_group_manager_list, this.f12564B);
        this.f12566z = deviceGroupManagerAdapter;
        deviceGroupManagerAdapter.m17067G().m16966s(true);
        this.rvContactList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvContactList.setAdapter(this.f12566z);
        m13622i3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l3 */
    public /* synthetic */ void m13618m3(View view) {
        if (this.f12565C.size() == 0) {
            UIUtils.m8593y(R.string.device_select_group_pls);
        } else {
            m13625C3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n3 */
    public /* synthetic */ void m13616o3(View view) {
        this.f12565C.clear();
        Iterator<ItemSelectAdapterEntity<TempGroup>> it2 = this.f12564B.iterator();
        while (it2.hasNext()) {
            ItemSelectAdapterEntity<TempGroup> next = it2.next();
            if (next.isEnable()) {
                if (this.tvSelectAll.getText().equals(UIUtils.m8603o(R.string.select_all))) {
                    next.setCheck(true);
                    this.f12565C.add(next);
                } else {
                    next.setCheck(false);
                }
            }
        }
        this.f12566z.notifyDataSetChanged();
        m13626B3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public /* synthetic */ void m13614q3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ItemSelectAdapterEntity<TempGroup> itemSelectAdapterEntity = this.f12564B.get(i);
        if (itemSelectAdapterEntity.isEnable()) {
            itemSelectAdapterEntity.setCheck(!itemSelectAdapterEntity.isCheck());
            this.f12566z.notifyDataSetChanged();
            if (itemSelectAdapterEntity.isCheck()) {
                this.f12565C.add(itemSelectAdapterEntity);
            } else {
                this.f12565C.remove(itemSelectAdapterEntity);
            }
            m13626B3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r3 */
    public /* synthetic */ void m13612s3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t3 */
    public /* synthetic */ void m13610u3(View view) {
        m13605z3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w3 */
    public /* synthetic */ void m13607x3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m13627A3();
    }

    /* renamed from: y3 */
    public static DeviceGroupManagerFragment m13606y3() {
        return new DeviceGroupManagerFragment();
    }

    /* renamed from: z3 */
    private void m13605z3() {
        if (!this.f12563A) {
            mo8048o2();
            return;
        }
        m10308b3();
        long[] jArr = new long[this.f12564B.size()];
        for (int i = 0; i < this.f12564B.size(); i++) {
            jArr[i] = this.f12564B.get(i).getData().getGid();
        }
        DeviceDataShare.m13732s().m13799G0(jArr);
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
        this.f12564B.clear();
        this.f12565C.clear();
        Iterator<TempGroup> it2 = DeviceDataShare.m13732s().m13744m().iterator();
        while (it2.hasNext()) {
            this.f12564B.add(new ItemSelectAdapterEntity<>(4, it2.next()));
        }
        this.f12566z.notifyDataSetChanged();
        m13626B3();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: F */
    public void mo13427F(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: G0 */
    public void mo13426G0() {
        m10304f3(UIUtils.m8603o(R.string.set_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.b0
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                DeviceGroupManagerFragment.this.mo8048o2();
            }
        });
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
        mo9102E2();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: O0 */
    public void mo13420O0() {
        m10311Y2(UIUtils.m8603o(R.string.set_failed));
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
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_device_group_manager, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13621j3();
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
        m10305e3(UIUtils.m8603o(R.string.delete_success));
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
        m10312X2(R.string.delete_failed);
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
