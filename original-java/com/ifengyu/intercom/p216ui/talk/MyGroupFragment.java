package com.ifengyu.intercom.p216ui.talk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment;
import com.ifengyu.intercom.p216ui.talk.p225b3.MyGroupAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.MyGroupPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.MyGroupView;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;

/* renamed from: com.ifengyu.intercom.ui.talk.MyGroupFragment */
/* loaded from: classes2.dex */
public class MyGroupFragment extends BaseSearchMvpFragment<MyGroupView, MyGroupPresenter> implements MyGroupView {

    /* renamed from: C */
    private MyGroupAdapter f15557C;

    /* renamed from: D */
    private MyGroupAdapter f15558D;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvMyGroupList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;

    /* renamed from: A3 */
    private void m9497A3() {
        this.f15557C.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.p1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MyGroupFragment.this.m9491G3(baseQuickAdapter, view, i);
            }
        });
    }

    /* renamed from: C3 */
    private void m9495C3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.my_groups);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.q1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MyGroupFragment.this.m9489I3(view);
            }
        });
        MyGroupAdapter myGroupAdapter = new MyGroupAdapter(this, R.layout.item_my_groups_list, ((MyGroupPresenter) this.f15074B).m9255w());
        this.f15557C = myGroupAdapter;
        myGroupAdapter.m17034i0(m9487z3());
        this.rvMyGroupList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvMyGroupList.setAdapter(this.f15557C);
        m9497A3();
        m10297o3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D3 */
    public /* synthetic */ void m9493E3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m10298h3();
        TalkActivity.m9412N(getContext(), this.f15558D.m17070D().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m9491G3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        TalkActivity.m9412N(getContext(), this.f15557C.m17070D().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m9489I3(View view) {
        mo8048o2();
    }

    /* renamed from: J3 */
    public static MyGroupFragment m9488J3() {
        return new MyGroupFragment();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment
    /* renamed from: B3 */
    public MyGroupPresenter mo9088y3() {
        return new MyGroupPresenter(getContext());
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((MyGroupPresenter) this.f15074B).m9262B();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MyGroupView
    /* renamed from: a */
    public void mo9190a(boolean z, String str) {
        if (!z) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_group_s, str));
        }
        this.f15558D.notifyDataSetChanged();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_my_group, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9495C3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        MyGroupAdapter myGroupAdapter = new MyGroupAdapter(this, R.layout.item_my_groups_list, ((MyGroupPresenter) this.f15074B).m9254y());
        this.f15558D = myGroupAdapter;
        myGroupAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.r1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MyGroupFragment.this.m9493E3(baseQuickAdapter, view, i);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: j3 */
    protected View mo9452j3() {
        return this.rvMyGroupList;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: k3 */
    protected BaseQuickAdapter mo9451k3() {
        return this.f15558D;
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
        ((MyGroupPresenter) this.f15074B).m9263A(str);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MyGroupView
    /* renamed from: y */
    public void mo9189y() {
        this.f15557C.notifyDataSetChanged();
    }

    /* renamed from: z3 */
    public View m9487z3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout, (ViewGroup) this.rvMyGroupList.getParent(), false);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.drawable.address_icon_group_none);
        ((TextView) inflate.findViewById(R.id.empty_word)).setText(R.string.not_have_add_to_any_group);
        return inflate;
    }
}
