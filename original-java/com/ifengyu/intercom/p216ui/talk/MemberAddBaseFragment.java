package com.ifengyu.intercom.p216ui.talk;

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
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment;
import com.ifengyu.intercom.p216ui.talk.p225b3.ContactListMemberSelectAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.MemberAddPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.ifengyu.talk.p238h.OnResultListener;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.model.FailUser;
import com.shanlitech.p245et.model.Group;

@SuppressLint({"NonConstantResourceId"})
/* renamed from: com.ifengyu.intercom.ui.talk.MemberAddBaseFragment */
/* loaded from: classes2.dex */
public abstract class MemberAddBaseFragment extends BaseSearchMvpFragment<MemberAddView, MemberAddPresenter> implements MemberAddView {

    /* renamed from: C */
    private ContactListMemberSelectAdapter f15549C;

    /* renamed from: D */
    private ContactListMemberSelectAdapter f15550D;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.qib_right_index_bar)
    QuickIndexBar quickIndexBar;
    @BindView(R.id.rv_list)
    protected RecyclerView rvContactList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;
    @BindView(R.id.tv_center_index)
    TextView tvCenterIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.MemberAddBaseFragment$a */
    /* loaded from: classes2.dex */
    public class C4735a implements QuickIndexBar.InterfaceC4958a {
        C4735a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar.InterfaceC4958a
        /* renamed from: a */
        public void mo8763a(String str) {
            MemberAddBaseFragment.this.tvCenterIndex.setVisibility(0);
            MemberAddBaseFragment.this.tvCenterIndex.setText(str);
            if (!"↑".equals(str)) {
                Integer num = ((MemberAddPresenter) ((BaseSearchMvpFragment) MemberAddBaseFragment.this).f15074B).m9299J().get(str);
                if (num != null) {
                    MemberAddBaseFragment.this.rvContactList.scrollToPosition(num.intValue());
                    ((LinearLayoutManager) MemberAddBaseFragment.this.rvContactList.getLayoutManager()).scrollToPositionWithOffset(num.intValue() + 1, 0);
                    return;
                }
                return;
            }
            MemberAddBaseFragment.this.rvContactList.scrollToPosition(0);
            ((LinearLayoutManager) MemberAddBaseFragment.this.rvContactList.getLayoutManager()).scrollToPositionWithOffset(0, 0);
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar.InterfaceC4958a
        /* renamed from: b */
        public void mo8762b() {
            MemberAddBaseFragment.this.tvCenterIndex.setVisibility(8);
            MemberAddBaseFragment.this.tvCenterIndex.setText((CharSequence) null);
        }
    }

    /* renamed from: C3 */
    private void m9522C3() {
        this.f15549C.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.j1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MemberAddBaseFragment.this.m9517H3(baseQuickAdapter, view, i);
            }
        });
        this.quickIndexBar.setOnLetterUpdateListener(new C4735a());
    }

    /* renamed from: D3 */
    private void m9521D3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(mo9104A3());
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberAddBaseFragment.this.m9515J3(view);
            }
        });
        Button m7339o = this.mTopbar.m7339o(R.string.completed, R.id.member_add_right_btn_id);
        m7339o.setTextColor(UIUtils.m8614d(R.color.lite_colorAccent));
        m7339o.setTextSize(18.0f);
        m7339o.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MemberAddBaseFragment.this.m9513L3(view);
            }
        });
        this.f15549C = new ContactListMemberSelectAdapter(this, ((MemberAddPresenter) this.f15074B).m9302A());
        if (mo9103B3() != null) {
            this.f15549C.m17029l(mo9103B3());
        }
        this.f15549C.m17030k0(true);
        this.rvContactList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvContactList.setAdapter(this.f15549C);
        m9522C3();
        m10297o3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9519F3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ((MemberAddPresenter) this.f15074B).m9281r0(((MemberAddPresenter) this.f15074B).m9300I().get(i));
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9517H3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        ((MemberAddPresenter) this.f15074B).m9281r0(((MemberAddPresenter) this.f15074B).m9302A().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ void m9515J3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m9513L3(View view) {
        if (((MemberAddPresenter) this.f15074B).m9298M().size() == 0) {
            UIUtils.m8593y(R.string.group_select_member_empty);
        } else {
            mo9100M3();
        }
    }

    /* renamed from: A3 */
    protected abstract int mo9104A3();

    /* renamed from: B3 */
    public View mo9103B3() {
        return null;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: E0 */
    public void mo9116E0(FailUser[] failUserArr) {
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: M */
    public void mo9101M() {
    }

    /* renamed from: M3 */
    protected abstract void mo9100M3();

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: U0 */
    public void mo9108U0() {
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: a */
    public void mo9196a(boolean z, String str) {
        if (!z) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_contact_s, str));
        }
        this.f15550D.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: a0 */
    public void mo9107a0() {
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: b1 */
    public void mo9091b1() {
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: d */
    public void mo9195d() {
        this.f15549C.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: e1 */
    public void mo9090e1(Group group) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    public View mo8001e2() {
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_member_add, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9521D3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        ContactListMemberSelectAdapter contactListMemberSelectAdapter = new ContactListMemberSelectAdapter(this, ((MemberAddPresenter) this.f15074B).m9300I());
        this.f15550D = contactListMemberSelectAdapter;
        contactListMemberSelectAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.h1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                MemberAddBaseFragment.this.m9519F3(baseQuickAdapter, view, i);
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
        return this.f15550D;
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

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: n1 */
    public void mo9089n1(String[] strArr) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        SlTalkClient.m8513r().m8525f().removeListener((OnGroupListener) this.f15074B);
        SlTalkClient.m8513r().m8521j().removeListener((OnResultListener) this.f15074B);
        SlTalkClient.m8513r().m8530a().removeListener((OnAccountListener) this.f15074B);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        SlTalkClient.m8513r().m8525f().addListener((OnGroupListener) this.f15074B);
        SlTalkClient.m8513r().m8521j().addListener((OnResultListener) this.f15074B);
        SlTalkClient.m8513r().m8530a().addListener((OnAccountListener) this.f15074B);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.MemberAddView
    /* renamed from: p0 */
    public void mo9106p0(FailUser[] failUserArr) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(String str) {
        ((MemberAddPresenter) this.f15074B).m9295Q(str);
    }
}
