package com.ifengyu.intercom.p216ui.talk;

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
import com.ifengyu.intercom.p216ui.activity.UserInfoActivity;
import com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.GroupDetailAllMemberAdapter;
import com.ifengyu.intercom.p216ui.talk.p225b3.GroupDetailMemberAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.GroupAllMemberPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.GroupAllMemberView;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.model.Group;

/* renamed from: com.ifengyu.intercom.ui.talk.GroupAllMemberFragment */
/* loaded from: classes2.dex */
public class GroupAllMemberFragment extends BaseSearchMvpFragment<GroupAllMemberView, GroupAllMemberPresenter> implements GroupAllMemberView {

    /* renamed from: C */
    private GroupDetailMemberAdapter f15502C;

    /* renamed from: D */
    private GroupDetailAllMemberAdapter f15503D;

    /* renamed from: E */
    private Group f15504E;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;

    /* renamed from: B3 */
    private void m9629B3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.group_member_count, Integer.valueOf(this.f15504E.getAllMemberCount())));
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GroupAllMemberFragment.this.m9623H3(view);
            }
        });
        this.f15502C = new GroupDetailMemberAdapter(this, ((GroupAllMemberPresenter) this.f15074B).m9316w());
        this.rvList.setLayoutManager(new GridLayoutManager(getContext(), 5));
        this.rvList.setAdapter(this.f15502C);
        m9621z3();
        m10297o3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9627D3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity = this.f15503D.m17070D().get(i);
        if (groupDetailAdapterMultipleEntity.getType() == 1001) {
            UserInfoActivity.m10426N(getContext(), groupDetailAdapterMultipleEntity.getMember().getUser(), 3);
        }
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9625F3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity = ((GroupAllMemberPresenter) this.f15074B).m9316w().get(i);
        switch (groupDetailAdapterMultipleEntity.getType()) {
            case 1001:
                UserInfoActivity.m10426N(getContext(), groupDetailAdapterMultipleEntity.getMember().getUser(), 3);
                return;
            case 1002:
                m8041v2(GroupAddMemberFragment.m9109T3(this.f15504E));
                return;
            case 1003:
                m8041v2(MemberRemoveFragment.m9499M3(this.f15504E));
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9623H3(View view) {
        mo8048o2();
    }

    /* renamed from: I3 */
    public static GroupAllMemberFragment m9622I3(Group group) {
        GroupAllMemberFragment groupAllMemberFragment = new GroupAllMemberFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        groupAllMemberFragment.setArguments(bundle);
        return groupAllMemberFragment;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    /* renamed from: z3 */
    private void m9621z3() {
        this.f15502C.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.u
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                GroupAllMemberFragment.this.m9625F3(baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment
    /* renamed from: A3 */
    public GroupAllMemberPresenter mo9088y3() {
        return new GroupAllMemberPresenter(getContext(), this.f15504E);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15504E = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((GroupAllMemberPresenter) this.f15074B).m9318N();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupAllMemberView
    /* renamed from: X */
    public void mo9211X() {
        this.f15502C.notifyDataSetChanged();
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.group_member_count, Integer.valueOf(this.f15504E.getAllMemberCount())));
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupAllMemberView
    /* renamed from: a */
    public void mo9210a(boolean z, String str) {
        if (!z) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_group_member_s, str));
        }
        this.f15503D.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.GroupAllMemberView
    /* renamed from: c */
    public void mo9209c(Group group) {
        this.f15504E = group;
        this.mTopbar.m7337q(UIUtils.m8602p(R.string.group_member_count, Integer.valueOf(group.getAllMemberCount())));
        mo9102E2();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        if (this.f15504E == null) {
            return null;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_group_all_member, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9629B3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        GroupDetailAllMemberAdapter groupDetailAllMemberAdapter = new GroupDetailAllMemberAdapter(this, R.layout.item_contact_list, ((GroupAllMemberPresenter) this.f15074B).m9315y());
        this.f15503D = groupDetailAllMemberAdapter;
        groupDetailAllMemberAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.w
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                GroupAllMemberFragment.this.m9627D3(baseQuickAdapter, view, i);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: j3 */
    protected View mo9452j3() {
        return this.rvList;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: k3 */
    protected BaseQuickAdapter mo9451k3() {
        return this.f15503D;
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

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(String str) {
        ((GroupAllMemberPresenter) this.f15074B).m9323A(str);
    }
}
