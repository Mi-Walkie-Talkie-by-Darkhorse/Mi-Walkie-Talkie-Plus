package com.ifengyu.intercom.p216ui.talk;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.p115l.OnItemChildClickListener;
import com.chad.library.adapter.base.p115l.OnItemClickListener;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BaseFragment;
import com.ifengyu.intercom.p216ui.talk.p225b3.NewApplyAdapter;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.p229b.p232f.NewHttpHelper;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.http.entity.MsgListEntity;
import com.ifengyu.talk.http.entity.SystemMsgEntity;
import com.ifengyu.talk.p237g.TalkServiceClient;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnResultListener;
import com.qmuiteam.qmui.util.QMUIViewHelper;
import com.qmuiteam.qmui.widget.QMUITopBarLayout;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;

/* renamed from: com.ifengyu.intercom.ui.talk.NewApplyFragment */
/* loaded from: classes2.dex */
public class NewApplyFragment extends BaseFragment implements OnAccountListener, OnResultListener {

    /* renamed from: A */
    private final ArrayList<SystemMsgEntity> f15560A = new ArrayList<>();

    /* renamed from: B */
    private final HashMap<Long, User> f15561B = new HashMap<>();

    /* renamed from: C */
    private SystemMsgEntity f15562C;
    @BindView(R.id.topbar)
    QMUITopBarLayout mTopbar;
    @BindView(R.id.rvList)
    RecyclerView rvList;

    /* renamed from: z */
    private NewApplyAdapter f15563z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.NewApplyFragment$a */
    /* loaded from: classes2.dex */
    public class C4736a implements OnItemClickListener {
        C4736a(NewApplyFragment newApplyFragment) {
        }

        @Override // com.chad.library.adapter.base.p115l.OnItemClickListener
        /* renamed from: a */
        public void mo9147a(@NonNull BaseQuickAdapter<?, ?> baseQuickAdapter, @NonNull View view, int i) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ifengyu.intercom.ui.talk.NewApplyFragment$b */
    /* loaded from: classes2.dex */
    public class C4737b extends ErrorConsumer {
        C4737b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(((BaseFragment) NewApplyFragment.this).f15047y, "querySystemMessageByType fail");
            NewApplyFragment.this.m10311Y2(NewHttpHelper.m8714a(newApiException.m8703a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j3 */
    public boolean m9483j3(MsgListEntity<SystemMsgEntity> msgListEntity) {
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        if (msgListEntity.getData() != null) {
            ArrayList<SystemMsgEntity> data = msgListEntity.getData();
            for (int i = 0; i < data.size(); i++) {
                SystemMsgEntity systemMsgEntity = data.get(i);
                if (systemMsgEntity.getInviteeId() == SlTalkClient.m8513r().m8530a().m8455f() && (systemMsgEntity.getMsgType() == 1 || systemMsgEntity.getMsgType() == 2)) {
                    if (this.f15561B.get(Long.valueOf(systemMsgEntity.getInviterId())) != null) {
                        systemMsgEntity.setUser(this.f15561B.get(Long.valueOf(systemMsgEntity.getInviterId())));
                    } else {
                        SlTalkClient.m8513r().m8530a().m8450k(String.valueOf(systemMsgEntity.getInviterId()));
                    }
                    if (systemMsgEntity.getMsgType() == 2) {
                        Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(systemMsgEntity.getGid());
                        if (m8429c != null) {
                            systemMsgEntity.setGroup(m8429c);
                            if (systemMsgEntity.getStatus() == 0 && currentTimeMillis - systemMsgEntity.getInviteTime() > 604800) {
                                systemMsgEntity.setStatus(3);
                            }
                            this.f15560A.add(systemMsgEntity);
                        }
                    } else {
                        if (systemMsgEntity.getStatus() == 0 && currentTimeMillis - systemMsgEntity.getInviteTime() > 604800) {
                            systemMsgEntity.setStatus(3);
                        }
                        this.f15560A.add(systemMsgEntity);
                    }
                }
            }
            Collections.sort(this.f15560A);
            return true;
        }
        return false;
    }

    /* renamed from: k3 */
    private void m9482k3() {
        this.mTopbar.setBottomDividerAlpha(0);
        this.mTopbar.m7338p(R.string.new_apply);
        this.mTopbar.m7343k(R.drawable.icon_back, QMUIViewHelper.m7473b()).setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.talk.s1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NewApplyFragment.this.m9479n3(view);
            }
        });
        NewApplyAdapter newApplyAdapter = new NewApplyAdapter(this, R.layout.item_new_apply_list, this.f15560A);
        this.f15563z = newApplyAdapter;
        newApplyAdapter.m17034i0(m9484i3());
        this.rvList.setLayoutManager(new LinearLayoutManager(getContext()));
        this.rvList.setAdapter(this.f15563z);
        this.f15563z.setOnItemClickListener(new C4736a(this));
        this.f15563z.setOnItemChildClickListener(new OnItemChildClickListener() { // from class: com.ifengyu.intercom.ui.talk.u1
            @Override // com.chad.library.adapter.base.p115l.OnItemChildClickListener
            /* renamed from: a */
            public final void mo9159a(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                NewApplyFragment.this.m9477p3(baseQuickAdapter, view, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m3 */
    public /* synthetic */ void m9479n3(View view) {
        mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o3 */
    public /* synthetic */ void m9477p3(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        SystemMsgEntity systemMsgEntity = this.f15560A.get(i);
        this.f15562C = systemMsgEntity;
        if (systemMsgEntity.getMsgType() == 1) {
            if (view.getId() != R.id.btn_accept || SlTalkClient.m8513r().m8530a().m8449l(this.f15562C.getId(), true)) {
                return;
            }
            m10312X2(R.string.handle_fail);
        } else if (this.f15562C.getMsgType() == 2 && view.getId() == R.id.btn_accept && !SlTalkClient.m8513r().m8530a().m8448m(this.f15562C.getId(), true)) {
            m10312X2(R.string.handle_fail);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q3 */
    public /* synthetic */ void m9475r3(Boolean bool) throws Exception {
        C4161y.m11049f(this.f15047y, "querySystemMessageByType success");
        if (bool.booleanValue()) {
            this.f15563z.notifyDataSetChanged();
        }
    }

    /* renamed from: s3 */
    public static NewApplyFragment m9474s3() {
        Bundle bundle = new Bundle();
        NewApplyFragment newApplyFragment = new NewApplyFragment();
        newApplyFragment.setArguments(bundle);
        return newApplyFragment;
    }

    /* renamed from: t3 */
    private void m9473t3() {
        SystemMsgEntity systemMsgEntity = this.f15562C;
        if (systemMsgEntity != null) {
            systemMsgEntity.setStatus(1);
            this.f15563z.notifyDataSetChanged();
        }
    }

    /* renamed from: u3 */
    private void m9472u3(int i) {
        ((ObservableSubscribeProxy) TalkServiceClient.m8374a().m8375c(i, 1, 100000).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.t1
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                boolean m9483j3;
                m9483j3 = NewApplyFragment.this.m9483j3((MsgListEntity) obj);
                return Boolean.valueOf(m9483j3);
            }
        }).m806as(m10300A2(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.v1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                NewApplyFragment.this.m9475r3((Boolean) obj);
            }
        }, new C4737b());
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BaseFragment
    /* renamed from: E2 */
    protected void mo9102E2() {
        m9472u3(1);
        m9472u3(2);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_ResponseContactAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10306d3(R.string.handle_success);
                m9473t3();
                return;
            }
            m10312X2(R.string.handle_fail);
        } else if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_ResponseGroupAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10306d3(R.string.handle_success);
                m9473t3();
            } else if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.LIMIT) {
                m10312X2(R.string.group_member_count_upper_limit);
            } else if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.LIMIT_U_G) {
                m10312X2(R.string.this_member_group_count_upper_limit);
            } else {
                m10312X2(R.string.handle_fail);
            }
        }
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: e2 */
    protected View mo8001e2() {
        SlTalkClient.m8513r().m8530a().addListener(this);
        SlTalkClient.m8513r().m8521j().addListener(this);
        View inflate = LayoutInflater.from(getContext()).inflate(R.layout.fragment_new_apply, (ViewGroup) null);
        ButterKnife.bind(this, inflate);
        m9482k3();
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
        if (searchResultEvent.getUser() != null) {
            this.f15561B.put(Long.valueOf(searchResultEvent.getUser().getUid()), searchResultEvent.getUser());
            Iterator<SystemMsgEntity> it2 = this.f15560A.iterator();
            while (it2.hasNext()) {
                SystemMsgEntity next = it2.next();
                if (next.getInviterId() == searchResultEvent.getUser().getUid()) {
                    next.setUser(searchResultEvent.getUser());
                }
            }
            this.f15563z.notifyDataSetChanged();
        }
    }

    /* renamed from: i3 */
    public View m9484i3() {
        View inflate = getLayoutInflater().inflate(R.layout.empty_list_layout, (ViewGroup) this.rvList.getParent(), false);
        ((ImageView) inflate.findViewById(R.id.empty_image)).setImageResource(R.drawable.application_icon_none);
        ((TextView) inflate.findViewById(R.id.empty_word)).setText(R.string.not_receive_any_apply);
        return inflate;
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        SlTalkClient.m8513r().m8530a().removeListener(this);
        SlTalkClient.m8513r().m8521j().removeListener(this);
        SlTalkClient.m8513r().m8530a().m8460a();
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }
}
