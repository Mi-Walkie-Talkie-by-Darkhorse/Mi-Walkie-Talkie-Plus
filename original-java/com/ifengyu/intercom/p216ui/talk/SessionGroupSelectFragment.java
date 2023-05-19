package com.ifengyu.intercom.p216ui.talk;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BaseSearchFragment;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p225b3.DialogGroupSelectAdapter;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnSessionListener;
import com.qmuiteam.qmui.util.QMUIStatusBarHelper;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.qmuiteam.qmui.widget.roundwidget.QMUIRoundButton;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.notice.event.GroupRemovedEvent;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Iterator;
import p048b.p049a.p050a.p051a.Pinyin;

/* renamed from: com.ifengyu.intercom.ui.talk.SessionGroupSelectFragment */
/* loaded from: classes2.dex */
public class SessionGroupSelectFragment extends BaseSearchFragment implements OnSessionListener {

    /* renamed from: B */
    private Group f15566B;

    /* renamed from: C */
    private DialogGroupSelectAdapter f15567C;

    /* renamed from: D */
    private DialogGroupSelectAdapter f15568D;

    /* renamed from: E */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15569E = new ArrayList<>();

    /* renamed from: F */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15570F = new ArrayList<>();

    /* renamed from: G */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15571G = new ArrayList<>();
    @BindView(R.id.btn_bottom)
    QMUIRoundButton btnBottom;
    @BindView(R.id.et_search)
    FixedEditText etSearch;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rv_list)
    RecyclerView rvList;
    @BindView(R.id.rv_search_list)
    RecyclerView rvSearchList;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A3 */
    public /* synthetic */ void m9470B3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9456P3(this.f15571G.get(i));
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: C3 */
    public /* synthetic */ void m9468D3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: E3 */
    public /* synthetic */ void m9466F3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        m9456P3(this.f15569E.get(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G3 */
    public /* synthetic */ void m9464H3(View view) {
        m9455Q3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: I3 */
    public /* synthetic */ Boolean m9462J3(String str, String str2) throws Exception {
        this.f15571G.clear();
        Iterator<ItemSelectAdapterEntity<Member>> it2 = this.f15569E.iterator();
        while (it2.hasNext()) {
            ItemSelectAdapterEntity<Member> next = it2.next();
            Member data = next.getData();
            if (data.getUser().getAccount().contains(str) || SlTalkClient.m8523h(data).toUpperCase().contains(str) || Pinyin.m21194e(SlTalkClient.m8523h(data), "").toUpperCase().contains(str)) {
                this.f15571G.add(next);
            }
        }
        return Boolean.valueOf(this.f15571G.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K3 */
    public /* synthetic */ void m9460L3(String str, Boolean bool) throws Exception {
        if (!bool.booleanValue()) {
            m10290x3(UIUtils.m8602p(R.string.search_can_not_matching_contact_s, str));
        }
        this.f15568D.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: M3 */
    public /* synthetic */ void m9458N3(Throwable th) throws Exception {
        C4971k.m8656d(this.f15047y, "handleSearchKey", th);
    }

    /* renamed from: O3 */
    public static SessionGroupSelectFragment m9457O3(Group group) {
        SessionGroupSelectFragment sessionGroupSelectFragment = new SessionGroupSelectFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable("key_group", group);
        sessionGroupSelectFragment.setArguments(bundle);
        return sessionGroupSelectFragment;
    }

    /* renamed from: P3 */
    private void m9456P3(ItemSelectAdapterEntity<Member> itemSelectAdapterEntity) {
        if (itemSelectAdapterEntity.isEnable()) {
            itemSelectAdapterEntity.setCheck(!itemSelectAdapterEntity.isCheck());
            this.f15567C.notifyDataSetChanged();
            if (itemSelectAdapterEntity.isCheck()) {
                this.f15570F.add(itemSelectAdapterEntity);
            } else {
                this.f15570F.remove(itemSelectAdapterEntity);
            }
        }
        this.btnBottom.setEnabled(this.f15570F.size() > 0);
        if (this.f15570F.size() > 0) {
            this.mTopbar.m7337q(UIUtils.m8602p(R.string.device_dialog_talk_count, Integer.valueOf(this.f15570F.size())));
        } else {
            this.mTopbar.m7337q(UIUtils.m8603o(R.string.device_dialog_talk_title));
        }
    }

    /* renamed from: Q3 */
    private void m9455Q3() {
        m10308b3();
        String[] strArr = new String[this.f15570F.size()];
        for (int i = 0; i < this.f15570F.size(); i++) {
            strArr[i] = this.f15570F.get(i).getData().getUser().getAccount();
        }
        if (SlTalkClient.m8513r().m8520k().m8385b(strArr)) {
            return;
        }
        m9454R3(R.string.device_start_dialog_talk_fail);
    }

    /* renamed from: R3 */
    private void m9454R3(int i) {
        m10312X2(i);
    }

    /* renamed from: z3 */
    private void m9444z3() {
        QMUIStatusBarHelper.m7482l(getActivity());
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7337q(UIUtils.m8603o(R.string.device_dialog_talk_title));
        this.mTopbar.m7343k(R.drawable.common_icon_cannel_white, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.y1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SessionGroupSelectFragment.this.m9468D3(view);
            }
        });
        DialogGroupSelectAdapter dialogGroupSelectAdapter = new DialogGroupSelectAdapter(this, R.layout.item_member_select_list_black, this.f15569E);
        this.f15567C = dialogGroupSelectAdapter;
        dialogGroupSelectAdapter.m17034i0(m9445y3());
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvList.setAdapter(this.f15567C);
        this.btnBottom.setChangeAlphaWhenPress(true);
        this.btnBottom.setChangeAlphaWhenDisable(true);
        this.btnBottom.setEnabled(false);
        this.f15567C.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.a2
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SessionGroupSelectFragment.this.m9466F3(baseQuickAdapter, view, i);
            }
        });
        this.btnBottom.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.w1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SessionGroupSelectFragment.this.m9464H3(view);
            }
        });
        m10297o3();
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: C0 */
    public void mo8347C0(GroupRemovedEvent groupRemovedEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: D2 */
    protected void mo9117D2(Bundle bundle) {
        if (bundle != null) {
            this.f15566B = (Group) bundle.getSerializable("key_group");
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        if (this.f15566B == null) {
            return;
        }
        this.f15569E.clear();
        this.f15570F.clear();
        Iterator<Member> it2 = this.f15566B.getMemberList().getAllMembers().iterator();
        while (it2.hasNext()) {
            Member next = it2.next();
            if (!next.isMe() && next.getUser().online()) {
                this.f15569E.add(new ItemSelectAdapterEntity<>(3, next));
            }
        }
        this.f15567C.notifyDataSetChanged();
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: T */
    public void mo8346T(int i) {
        if (i == 2) {
            m9454R3(R.string.device_start_dialog_talk_fail_because_offline);
        } else {
            m9454R3(R.string.device_start_dialog_talk_fail);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: Z */
    public void mo8345Z(GroupSessionEvent groupSessionEvent) {
        m10329C2();
        SessionTalkActivity.m9443N(getContext(), groupSessionEvent);
        mo8048o2();
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8520k().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_session_group_select, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9444z3();
        return inflate;
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: i3 */
    protected void mo9453i3() {
        DialogGroupSelectAdapter dialogGroupSelectAdapter = new DialogGroupSelectAdapter(this, R.layout.item_member_select_list_black, this.f15571G);
        this.f15568D = dialogGroupSelectAdapter;
        dialogGroupSelectAdapter.setOnItemClickListener(new OnItemClickListener() { // from class: com.ifengyu.intercom.ui.talk.x1
            @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
            /* renamed from: a */
            public final void mo9147a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                SessionGroupSelectFragment.this.m9470B3(baseQuickAdapter, view, i);
            }
        });
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: j3 */
    protected View mo9452j3() {
        return this.rvList;
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: k */
    public void mo8344k() {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: k3 */
    protected BaseQuickAdapter mo9451k3() {
        return this.f15568D;
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

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: n0 */
    public void mo8343n0(GroupSessionEvent groupSessionEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: n3 */
    protected void mo9448n3(String str) {
        if (TextUtils.isEmpty(str)) {
            mo9449m3().setBackgroundColor(UIUtils.m8614d(R.color.transparent));
            mo9451k3().m17034i0(this.f15051A);
            mo9451k3().m17070D().clear();
            mo9451k3().notifyDataSetChanged();
            return;
        }
        mo9449m3().setBackgroundColor(UIUtils.m8614d(R.color.black));
        mo9451k3().m17034i0(this.f15052z);
        mo9446w3(str.toUpperCase());
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment, com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        QMUIStatusBarHelper.m7481m(getActivity());
        SlTalkClient.m8513r().m8520k().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: q3 */
    protected void mo9447q3() {
        super.mo9447q3();
        this.f15052z.setTextColor(UIUtils.m8614d(R.color.white));
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: r1 */
    public void mo8342r1(GroupSessionEvent groupSessionEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseSearchFragment
    /* renamed from: w3 */
    protected void mo9446w3(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.b2
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return SessionGroupSelectFragment.this.m9462J3(str, (String) obj);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.z1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SessionGroupSelectFragment.this.m9460L3(str, (Boolean) obj);
            }
        }, new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                SessionGroupSelectFragment.this.m9458N3((Throwable) obj);
            }
        });
    }

    /* renamed from: y3 */
    public View m9445y3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout, (ViewGroup) this.rvList.getParent(), false);
        TextView textView = (TextView) inflate.findViewById(R.id.empty_word);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.drawable.intercom_icon_group_none);
        textView.setText(R.string.not_any_online_member);
        textView.setTextColor(UIUtils.m8614d(R.color.white));
        return inflate;
    }
}
