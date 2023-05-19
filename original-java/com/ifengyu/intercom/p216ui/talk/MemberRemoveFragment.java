package com.ifengyu.intercom.p216ui.talk;

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
import com.ifengyu.intercom.p216ui.base.BaseFragmentActivity;
import com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment;
import com.ifengyu.intercom.p216ui.talk.p225b3.MemberInGroupSelectAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.MemberRemovePresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.MemberRemoveView;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.model.Group;

@SuppressLint({"NonConstantResourceId"})
/* renamed from: com.ifengyu.intercom.ui.talk.MemberRemoveFragment */
/* loaded from: classes2.dex */
public class MemberRemoveFragment extends BaseSearchMvpFragment<MemberRemoveView, MemberRemovePresenter> implements MemberRemoveView {

    /* renamed from: C */
    private MemberInGroupSelectAdapter f15553C;

    /* renamed from: D */
    private MemberInGroupSelectAdapter f15554D;

    /* renamed from: E */
    private Group f15555E;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvContactList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;

    /* renamed from: B3 */
    private void m9510B3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.select_group_member);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.l1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberRemoveFragment.this.m9504H3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.remove, R.id.member_remove_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.o1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberRemoveFragment.this.m9502J3(view);
            }
        });
        this.f15553C = new MemberInGroupSelectAdapter(this, R.layout.item_member_select_list, ((MemberRemovePresenter) this.f15074B).m9265w());
        this.rvContactList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvContactList.setAdapter(this.f15553C);
        m9498z3();
        m10297o3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9508D3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ((MemberRemovePresenter) this.f15074B).m9268R(((MemberRemovePresenter) this.f15074B).m9264y().get(i));
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9506F3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ((MemberRemovePresenter) this.f15074B).m9268R(((MemberRemovePresenter) this.f15074B).m9265w().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9504H3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m9502J3(View view) {
        if (((MemberRemovePresenter) this.f15074B).m9276A().size() == 0) {
            UIUtils.m8593y(R.string.group_select_member_empty);
            return;
        }
        m10308b3();
        ((MemberRemovePresenter) this.f15074B).m9267U();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m9500L3() {
        m8047p2(TalkFragment.class);
    }

    /* renamed from: M3 */
    public static MemberRemoveFragment m9499M3(Group group) {
        MemberRemoveFragment memberRemoveFragment = new MemberRemoveFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        memberRemoveFragment.setArguments(bundle);
        return memberRemoveFragment;
    }

    /* renamed from: z3 */
    private void m9498z3() {
        this.f15553C.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.m1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MemberRemoveFragment.this.m9506F3(baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment
    /* renamed from: A3 */
    public MemberRemovePresenter mo9088y3() {
        return new MemberRemovePresenter(getContext(), this.f15555E);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15555E = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((MemberRemovePresenter) this.f15074B).m9274I();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberRemoveView
    /* renamed from: W */
    public void mo9194W() {
        m10304f3(UIUtils.m8603o(R.string.remove_member_success), new BaseFragmentActivity.InterfaceC4444b() { // from class: com.ifengyu.intercom.ui.talk.n1
            @Override // com.ifengyu.intercom.p216ui.base.BaseFragmentActivity.InterfaceC4444b
            /* renamed from: a */
            public final void mo9105a() {
                MemberRemoveFragment.this.m9500L3();
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberRemoveView
    /* renamed from: a */
    public void mo9193a(boolean z, String str) {
        if (!z) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_group_member_s, str));
        }
        this.f15554D.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberRemoveView
    /* renamed from: d */
    public void mo9192d() {
        this.f15553C.notifyDataSetChanged();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        if (this.f15555E == null) {
            return null;
        }
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_member_in_group_select, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9510B3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        MemberInGroupSelectAdapter memberInGroupSelectAdapter = new MemberInGroupSelectAdapter(this, R.layout.item_member_select_list, ((MemberRemovePresenter) this.f15074B).m9264y());
        this.f15554D = memberInGroupSelectAdapter;
        memberInGroupSelectAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.k1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MemberRemoveFragment.this.m9508D3(baseQuickAdapter, view, i);
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
        return this.f15554D;
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

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberRemoveView
    /* renamed from: u1 */
    public void mo9191u1() {
        m10312X2(R.string.remove_member_fail);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(String str) {
        ((MemberRemovePresenter) this.f15074B).m9275B(str);
    }
}
