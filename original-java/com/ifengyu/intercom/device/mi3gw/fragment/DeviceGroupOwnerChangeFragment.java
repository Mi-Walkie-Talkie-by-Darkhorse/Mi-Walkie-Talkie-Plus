package com.ifengyu.intercom.device.mi3gw.fragment;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.device.mi3gw.p162a.MemberInDeviceGroupSelectAdapter;
import com.ifengyu.intercom.device.mi3gw.p165c.DeviceDataShare;
import com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener;
import com.ifengyu.intercom.models.NetDeviceModel;
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.base.BaseSearchFragment;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.http.entity.TempMember;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import p048b.p049a.p050a.p051a.Pinyin;

@SuppressLint({"NonConstantResourceId"})
/* loaded from: classes2.dex */
public class DeviceGroupOwnerChangeFragment extends BaseSearchFragment implements OnDeviceDataShareListener {

    /* renamed from: C */
    private ItemSelectAdapterEntity<TempMember> f12571C;

    /* renamed from: E */
    private MemberInDeviceGroupSelectAdapter f12573E;

    /* renamed from: F */
    private MemberInDeviceGroupSelectAdapter f12574F;

    /* renamed from: G */
    private long f12575G;

    /* renamed from: H */
    private TempGroup f12576H;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvContactList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;

    /* renamed from: B */
    private final ArrayList<ItemSelectAdapterEntity<TempMember>> f12570B = new ArrayList<>();

    /* renamed from: D */
    private final ArrayList<ItemSelectAdapterEntity<TempMember>> f12572D = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B3 */
    public /* synthetic */ void m13599C3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m13582T3(this.f12572D.get(i));
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m13597E3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m13582T3(this.f12570B.get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m13595G3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m13593I3(View view) {
        if (this.f12571C == null) {
            UIUtils.m8593y(R.string.group_select_member_empty);
        } else {
            m13581U3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ Boolean m13591K3(String str, String str2) throws Exception {
        this.f12572D.clear();
        Iterator<ItemSelectAdapterEntity<TempMember>> it2 = this.f12570B.iterator();
        while (it2.hasNext()) {
            ItemSelectAdapterEntity<TempMember> next = it2.next();
            TempMember data = next.getData();
            String nickname = TextUtils.isEmpty(data.getNicknameIn()) ? data.getNickname() : data.getNicknameIn();
            if (data.getAccount().contains(str) || nickname.toUpperCase().contains(str) || Pinyin.m21194e(nickname, "").toUpperCase().contains(str)) {
                this.f12572D.add(next);
            }
        }
        return Boolean.valueOf(this.f12572D.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ void m13589M3(String str, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_group_member_s, str));
        }
        this.f12574F.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N3 */
    public /* synthetic */ void m13587O3(Throwable th) throws Exception {
        C4971k.m8656d(this.f15047y, "handleSearchKey", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Q3 */
    public /* synthetic */ void m13584R3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10308b3();
        DeviceDataShare.m13732s().m13756g(this.f12575G, this.f12571C.getData().getAccount());
    }

    /* renamed from: S3 */
    public static DeviceGroupOwnerChangeFragment m13583S3(long j) {
        DeviceGroupOwnerChangeFragment deviceGroupOwnerChangeFragment = new DeviceGroupOwnerChangeFragment();
        Bundle bundle = new Bundle();
        bundle.putLong("key_group_gid", j);
        deviceGroupOwnerChangeFragment.setArguments(bundle);
        return deviceGroupOwnerChangeFragment;
    }

    /* renamed from: T3 */
    private void m13582T3(ItemSelectAdapterEntity<TempMember> itemSelectAdapterEntity) {
        if (itemSelectAdapterEntity.isEnable()) {
            ItemSelectAdapterEntity<TempMember> itemSelectAdapterEntity2 = this.f12571C;
            if (itemSelectAdapterEntity2 != null && !itemSelectAdapterEntity2.equals(itemSelectAdapterEntity)) {
                this.f12571C.setCheck(false);
            }
            itemSelectAdapterEntity.setCheck(true);
            this.f12571C = itemSelectAdapterEntity;
            this.f12573E.notifyDataSetChanged();
        }
    }

    /* renamed from: U3 */
    private void m13581U3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7247F(UIUtils.m8602p(R.string.is_sure_change_owner_to_s, this.f12571C.getData().getNickname()));
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C3445i0.f12662a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.h0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                DeviceGroupOwnerChangeFragment.this.m13584R3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    /* renamed from: y3 */
    private void m13580y3() {
        this.f12573E.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.j0
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceGroupOwnerChangeFragment.this.m13597E3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: z3 */
    private void m13579z3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.select_group_owner);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupOwnerChangeFragment.this.m13595G3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.common_sure, R.id.member_manager_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DeviceGroupOwnerChangeFragment.this.m13593I3(view);
            }
        });
        this.f12573E = new MemberInDeviceGroupSelectAdapter(this, R.layout.item_member_select_list, this.f12570B);
        this.rvContactList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvContactList.setAdapter(this.f12573E);
        m13580y3();
        m10297o3();
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: D0 */
    public void mo13429D0(long j) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f12575G = bundle.getLong("key_group_gid");
            TempGroup m13752i = DeviceDataShare.m13732s().m13752i();
            if (m13752i == null || m13752i.getGid() != this.f12575G || m13752i.getUserList() == null) {
                return;
            }
            this.f12576H = m13752i;
        }
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: E */
    public void mo13428E(long j, String str) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        if (this.f12576H == null) {
            return;
        }
        this.f12570B.clear();
        this.f12571C = null;
        Iterator<TempMember> it2 = this.f12576H.getUserList().iterator();
        while (it2.hasNext()) {
            TempMember next = it2.next();
            if (!next.getAccount().equals(this.f12576H.getOwner())) {
                this.f12570B.add(new ItemSelectAdapterEntity<>(3, next));
            }
        }
        this.f12573E.notifyDataSetChanged();
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
        m10304f3(UIUtils.m8603o(R.string.change_group_owner_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.f0
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                DeviceGroupOwnerChangeFragment.this.mo8048o2();
            }
        });
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: S */
    public void mo13416S() {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: X0 */
    public void mo13415X0(long j) {
        m10312X2(R.string.change_group_owner_fail);
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
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_member_in_group_select, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m13579z3();
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

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        MemberInDeviceGroupSelectAdapter memberInDeviceGroupSelectAdapter = new MemberInDeviceGroupSelectAdapter(this, R.layout.item_member_select_list, this.f12572D);
        this.f12574F = memberInDeviceGroupSelectAdapter;
        memberInDeviceGroupSelectAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.k0
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                DeviceGroupOwnerChangeFragment.this.m13599C3(baseQuickAdapter, view, i);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: j3 */
    protected View mo9452j3() {
        return this.rvContactList;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k0 */
    public void mo13409k0(long... jArr) {
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: k1 */
    public void mo13408k1() {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: k3 */
    protected BaseQuickAdapter mo9451k3() {
        return this.f12574F;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: l0 */
    public void mo13407l0(long j) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: l3 */
    protected FixedEditText mo9450l3() {
        return this.etSearch;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: m3 */
    protected RecyclerView mo9449m3() {
        return this.rvSearchList;
    }

    @Override // com.ifengyu.intercom.device.mi3gw.p165c.OnDeviceDataShareListener
    /* renamed from: o0 */
    public void mo13406o0() {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
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

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.m0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return DeviceGroupOwnerChangeFragment.this.m13591K3(str, (String) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.e0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceGroupOwnerChangeFragment.this.m13589M3(str, (Boolean) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.device.mi3gw.fragment.n0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceGroupOwnerChangeFragment.this.m13587O3((Throwable) obj);
            }
        });
    }
}
