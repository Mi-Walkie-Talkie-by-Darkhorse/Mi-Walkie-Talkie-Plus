package com.ifengyu.intercom.p216ui.talk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.models.DeviceModel;
import com.ifengyu.intercom.p216ui.activity.UserInfoActivity;
import com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment;
import com.ifengyu.intercom.p216ui.talk.entity.ItemAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.ContactAdapter;
import com.ifengyu.intercom.p216ui.talk.p227c3.ContactPresenter;
import com.ifengyu.intercom.p216ui.talk.p228d3.ContactView;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.model.User;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.intercom.ui.talk.ContactFragment */
/* loaded from: classes2.dex */
public class ContactFragment extends BaseSearchMvpFragment<ContactView, ContactPresenter> implements ContactView {

    /* renamed from: C */
    private ContactAdapter f15492C;

    /* renamed from: D */
    private ContactAdapter f15493D;

    /* renamed from: E */
    private View f15494E;

    /* renamed from: F */
    private TextView f15495F;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.qib_right_index_bar)
    QuickIndexBar quickIndexBar;
    @BindView(R.id.rv_list)
    RecyclerView rvContactList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;
    @BindView(R.id.tv_center_index)
    TextView tvCenterIndex;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.ContactFragment$a */
    /* loaded from: classes2.dex */
    public class C4721a implements QuickIndexBar.InterfaceC4958a {
        C4721a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar.InterfaceC4958a
        /* renamed from: a */
        public void mo8763a(String str) {
            ContactFragment.this.tvCenterIndex.setVisibility(0);
            ContactFragment.this.tvCenterIndex.setText(str);
            if (!"↑".equals(str)) {
                Integer num = ((ContactPresenter) ((BaseSearchMvpFragment) ContactFragment.this).f15074B).m9343I().get(str);
                if (num != null) {
                    ContactFragment.this.rvContactList.scrollToPosition(num.intValue());
                    ((LinearLayoutManager) ContactFragment.this.rvContactList.getLayoutManager()).scrollToPositionWithOffset(num.intValue() + 1, 0);
                    return;
                }
                return;
            }
            ContactFragment.this.rvContactList.scrollToPosition(0);
            ((LinearLayoutManager) ContactFragment.this.rvContactList.getLayoutManager()).scrollToPositionWithOffset(0, 0);
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.QuickIndexBar.InterfaceC4958a
        /* renamed from: b */
        public void mo8762b() {
            ContactFragment.this.tvCenterIndex.setVisibility(8);
            ContactFragment.this.tvCenterIndex.setText((CharSequence) null);
        }
    }

    /* renamed from: C3 */
    private void m9653C3() {
        this.f15492C.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.a
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactFragment.this.m9643M3(baseQuickAdapter, view, i);
            }
        });
        this.quickIndexBar.setOnLetterUpdateListener(new C4721a());
    }

    /* renamed from: E3 */
    private void m9651E3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.contact_book);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactFragment.this.m9641O3(view);
            }
        });
        ContactAdapter contactAdapter = new ContactAdapter(this, ((ContactPresenter) this.f15074B).m9325w());
        this.f15492C = contactAdapter;
        contactAdapter.m17029l(m9654B3());
        this.f15492C.m17035i(m9655A3());
        this.f15492C.m17030k0(true);
        this.rvContactList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvContactList.setAdapter(this.f15492C);
        m9653C3();
        m10297o3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: F3 */
    public /* synthetic */ void m9649G3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9639Q3(this.f15493D.m17070D().get(i));
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: H3 */
    public /* synthetic */ void m9647I3(View view) {
        SlTalkClient.m8513r().m8530a().m8460a();
        m8041v2(NewApplyFragment.m9474s3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J3 */
    public /* synthetic */ void m9645K3(View view) {
        m8041v2(MyGroupFragment.m9488J3());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L3 */
    public /* synthetic */ void m9643M3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9639Q3(this.f15492C.m17070D().get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N3 */
    public /* synthetic */ void m9641O3(View view) {
        mo8048o2();
    }

    /* renamed from: P3 */
    public static ContactFragment m9640P3() {
        return new ContactFragment();
    }

    /* renamed from: Q3 */
    private void m9639Q3(ItemAdapterEntity<Object> itemAdapterEntity) {
        if (itemAdapterEntity.getData() instanceof User) {
            UserInfoActivity.m10426N(getContext(), (User) itemAdapterEntity.getData(), 2);
        } else if (itemAdapterEntity.getData() instanceof DeviceModel) {
            ((ContactPresenter) this.f15074B).m9329e0((DeviceModel) itemAdapterEntity.getData());
        }
    }

    /* renamed from: A3 */
    public View m9655A3() {
        View inflate = getLayoutInflater().inflate(R.layout.item_contact_list_footer, (ViewGroup) this.rvContactList.getParent(), false);
        this.f15495F = (TextView) inflate.findViewById(R.id.tv_friend_number);
        return inflate;
    }

    /* renamed from: B3 */
    public View m9654B3() {
        View inflate = getLayoutInflater().inflate(R.layout.item_contact_list_header, (ViewGroup) this.rvContactList.getParent(), false);
        View findViewById = inflate.findViewById(R.id.tv_apply_red_point);
        this.f15494E = findViewById;
        findViewById.setVisibility(SlTalkClient.m8513r().m8530a().m8453h() ? 0 : 8);
        inflate.findViewById(R.id.ll_new_friend).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactFragment.this.m9647I3(view);
            }
        });
        inflate.findViewById(R.id.ll_my_groups).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactFragment.this.m9645K3(view);
            }
        });
        return inflate;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchMvpFragment
    /* renamed from: D3 */
    public ContactPresenter mo9088y3() {
        return new ContactPresenter(getContext());
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        ((ContactPresenter) this.f15074B).m9327h0();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.ContactView
    /* renamed from: J */
    public void mo9215J(User user) {
        UserInfoActivity.m10426N(getContext(), user, 2);
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.ContactView
    /* renamed from: a */
    public void mo9214a(boolean z, String str) {
        if (!z) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_contact_s, str));
        }
        this.f15493D.notifyDataSetChanged();
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.ContactView
    /* renamed from: d */
    public void mo9213d() {
        this.f15492C.notifyDataSetChanged();
        this.f15495F.setText(((ContactPresenter) this.f15074B).m9324y() > 1 ? UIUtils.m8602p(R.string.count_of_contacts, Integer.valueOf(((ContactPresenter) this.f15074B).m9324y() - 1)) : null);
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        EventBus.m174c().m159r(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_contact, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9651E3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.talk.p228d3.ContactView
    /* renamed from: g1 */
    public void mo9212g1() {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        ContactAdapter contactAdapter = new ContactAdapter(this, ((ContactPresenter) this.f15074B).m9344B());
        this.f15493D = contactAdapter;
        contactAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.e
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                ContactFragment.this.m9649G3(baseQuickAdapter, view, i);
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
        return this.f15493D;
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

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        EventBus.m174c().m156u(this);
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEvent(SimpleEvent simpleEvent) {
        switch (simpleEvent.getEvent()) {
            case 20:
            case 21:
                View view = this.f15494E;
                if (view != null) {
                    view.setVisibility(0);
                    return;
                }
                return;
            case 22:
                View view2 = this.f15494E;
                if (view2 != null) {
                    view2.setVisibility(8);
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(String str) {
        ((ContactPresenter) this.f15074B).m9342J(str);
    }
}
