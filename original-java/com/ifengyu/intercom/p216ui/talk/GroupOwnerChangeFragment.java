package com.ifengyu.intercom.p216ui.talk;

import android.annotation.SuppressLint;
import android.os.Bundle;
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
import com.ifengyu.intercom.p205m.p207b.MessageDialogBuilder;
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.base.BaseSearchFragment;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.MemberInGroupSelectAdapter;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnResultListener;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.dialog.QMUIDialog;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import p048b.p049a.p050a.p051a.Pinyin;

@SuppressLint({"NonConstantResourceId"})
/* renamed from: com.ifengyu.intercom.ui.talk.GroupOwnerChangeFragment */
/* loaded from: classes2.dex */
public class GroupOwnerChangeFragment extends BaseSearchFragment implements OnResultListener {

    /* renamed from: B */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15530B = new ArrayList<>();

    /* renamed from: C */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15531C = new ArrayList<>();

    /* renamed from: D */
    private ItemSelectAdapterEntity<Member> f15532D;

    /* renamed from: E */
    private MemberInGroupSelectAdapter f15533E;

    /* renamed from: F */
    private MemberInGroupSelectAdapter f15534F;

    /* renamed from: G */
    private Group f15535G;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvContactList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;

    /* renamed from: A3 */
    private void m9590A3() {
        this.f15533E.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.r0
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                GroupOwnerChangeFragment.this.m9584G3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: B3 */
    private void m9589B3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.select_group_owner);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupOwnerChangeFragment.this.m9582I3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.common_sure, R.id.member_manager_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupOwnerChangeFragment.this.m9580K3(view);
            }
        });
        this.f15533E = new MemberInGroupSelectAdapter(this, R.layout.item_member_select_list, this.f15530B);
        this.rvContactList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvContactList.setAdapter(this.f15533E);
        m9590A3();
        m10297o3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m9586E3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9569V3(this.f15531C.get(i));
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m9584G3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9569V3(this.f15530B.get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m9582I3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ void m9580K3(View view) {
        if (this.f15532D == null) {
            UIUtils.m8593y(R.string.group_select_member_empty);
        } else {
            m9568W3();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ Boolean m9578M3(String str, String str2) throws Exception {
        this.f15531C.clear();
        Iterator<ItemSelectAdapterEntity<Member>> it2 = this.f15530B.iterator();
        while (it2.hasNext()) {
            ItemSelectAdapterEntity<Member> next = it2.next();
            Member data = next.getData();
            if (data.getUser().getAccount().contains(str) || SlTalkClient.m8523h(data).toUpperCase().contains(str) || Pinyin.m21194e(SlTalkClient.m8523h(data), "").toUpperCase().contains(str)) {
                this.f15531C.add(next);
            }
        }
        return Boolean.valueOf(this.f15531C.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N3 */
    public /* synthetic */ void m9576O3(String str, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_group_member_s, str));
        }
        this.f15534F.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: P3 */
    public /* synthetic */ void m9574Q3(Throwable th) throws Exception {
        C4971k.m8656d(this.f15047y, "handleSearchKey", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: S3 */
    public /* synthetic */ void m9571T3(QMUIDialog qMUIDialog, int i) {
        qMUIDialog.dismiss();
        m10308b3();
        Group group = this.f15535G;
        if (group == null || !group.transferGroup(this.f15532D.getData())) {
            m9567y3();
        }
    }

    /* renamed from: U3 */
    public static GroupOwnerChangeFragment m9570U3(Group group) {
        GroupOwnerChangeFragment groupOwnerChangeFragment = new GroupOwnerChangeFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        groupOwnerChangeFragment.setArguments(bundle);
        return groupOwnerChangeFragment;
    }

    /* renamed from: V3 */
    private void m9569V3(ItemSelectAdapterEntity<Member> itemSelectAdapterEntity) {
        if (itemSelectAdapterEntity.isEnable()) {
            ItemSelectAdapterEntity<Member> itemSelectAdapterEntity2 = this.f15532D;
            if (itemSelectAdapterEntity2 != null && !itemSelectAdapterEntity2.equals(itemSelectAdapterEntity)) {
                this.f15532D.setCheck(false);
            }
            itemSelectAdapterEntity.setCheck(true);
            this.f15532D = itemSelectAdapterEntity;
            this.f15533E.notifyDataSetChanged();
        }
    }

    /* renamed from: W3 */
    private void m9568W3() {
        MessageDialogBuilder messageDialogBuilder = new MessageDialogBuilder(getContext());
        messageDialogBuilder.m7247F(UIUtils.m8602p(R.string.is_sure_change_owner_to_s, this.f15532D.getData().getUser().getName()));
        messageDialogBuilder.m7300b(0, R.string.common_cancel, 2, C4815k0.f15750a);
        MessageDialogBuilder messageDialogBuilder2 = messageDialogBuilder;
        messageDialogBuilder2.m7300b(0, R.string.common_sure, 0, new QMUIDialogAction.InterfaceC5249b() { // from class: com.ifengyu.intercom.ui.talk.p0
            @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.InterfaceC5249b
            /* renamed from: a */
            public final void mo7305a(QMUIDialog qMUIDialog, int i) {
                GroupOwnerChangeFragment.this.m9571T3(qMUIDialog, i);
            }
        });
        messageDialogBuilder2.m7296f(R.style.DialogTheme1).show();
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
        if (resultEvent.getType() == ResultEvent.TYPE.GROUP_OWNER && resultEvent.getGid() == this.f15535G.getGid()) {
            if (resultEvent.success()) {
                m9566z3();
            } else {
                m9567y3();
            }
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15535G = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        this.f15530B.clear();
        this.f15532D = null;
        Iterator<Member> it2 = this.f15535G.getMemberList().getAllMembers().iterator();
        while (it2.hasNext()) {
            Member next = it2.next();
            if (next.getUid() != this.f15535G.getCreator()) {
                this.f15530B.add(new ItemSelectAdapterEntity<>(3, next));
            }
        }
        this.f15533E.notifyDataSetChanged();
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_TransferGroupAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m9566z3();
            } else {
                m9567y3();
            }
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8521j().addListener(this);
        if (this.f15535G == null) {
            return null;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_member_in_group_select, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9589B3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        MemberInGroupSelectAdapter memberInGroupSelectAdapter = new MemberInGroupSelectAdapter(this, R.layout.item_member_select_list, this.f15531C);
        this.f15534F = memberInGroupSelectAdapter;
        memberInGroupSelectAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.j0
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                GroupOwnerChangeFragment.this.m9586E3(baseQuickAdapter, view, i);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: j3 */
    protected View mo9452j3() {
        return this.rvContactList;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: k3 */
    protected BaseQuickAdapter mo9451k3() {
        return this.f15534F;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: l3 */
    protected FixedEditText mo9450l3() {
        return this.etSearch;
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: m3 */
    protected RecyclerView mo9449m3() {
        return this.rvSearchList;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SlTalkClient.m8513r().m8521j().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.o0
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return GroupOwnerChangeFragment.this.m9578M3(str, (String) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.q0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupOwnerChangeFragment.this.m9576O3(str, (Boolean) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.ui.talk.m0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupOwnerChangeFragment.this.m9574Q3((Throwable) obj);
            }
        });
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }

    /* renamed from: y3 */
    public void m9567y3() {
        m10312X2(R.string.change_group_owner_fail);
    }

    /* renamed from: z3 */
    public void m9566z3() {
        m10304f3(UIUtils.m8603o(R.string.change_group_owner_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.talk.n0
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                GroupOwnerChangeFragment.this.mo8048o2();
            }
        });
    }
}
