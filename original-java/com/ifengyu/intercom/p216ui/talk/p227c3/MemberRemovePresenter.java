package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.ItemSelectAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.MemberRemoveView;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p238h.OnResultListener;
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

/* renamed from: com.ifengyu.intercom.ui.talk.c3.g0 */
/* loaded from: classes2.dex */
public class MemberRemovePresenter extends BasePresenter<MemberRemoveView> implements OnResultListener {

    /* renamed from: g */
    private static final String f15667g = "g0";

    /* renamed from: c */
    private final Group f15668c;

    /* renamed from: d */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15669d = new ArrayList<>();

    /* renamed from: e */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15670e = new ArrayList<>();

    /* renamed from: f */
    private final ArrayList<ItemSelectAdapterEntity<Member>> f15671f = new ArrayList<>();

    public MemberRemovePresenter(Context context, Group group) {
        this.f15668c = group;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ Boolean m9272M(String str, String str2) throws Exception {
        this.f15670e.clear();
        Iterator<ItemSelectAdapterEntity<Member>> it2 = this.f15669d.iterator();
        while (it2.hasNext()) {
            ItemSelectAdapterEntity<Member> next = it2.next();
            Member data = next.getData();
            if (data.getUser().getAccount().contains(str) || SlTalkClient.m8523h(data).toUpperCase().contains(str) || Pinyin.m21194e(SlTalkClient.m8523h(data), "").toUpperCase().contains(str)) {
                this.f15670e.add(next);
            }
        }
        return Boolean.valueOf(this.f15670e.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: N */
    public /* synthetic */ void m9270O(String str, Boolean bool) throws Exception {
        m10302s().mo9193a(bool.booleanValue(), str);
    }

    /* renamed from: A */
    public ArrayList<ItemSelectAdapterEntity<Member>> m9276A() {
        return this.f15671f;
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: B */
    public void m9275B(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.r
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return MemberRemovePresenter.this.m9272M(str, (String) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MemberRemovePresenter.this.m9270O(str, (Boolean) obj);
            }
        }, C4774p.f15702a);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_RemoveMembersAck) {
            if (requestResultEvent.getRequestResultCode() == ETStatusCode.RequestResultCode.SUCCESS) {
                m10302s().mo9194W();
            } else {
                m10302s().mo9191u1();
            }
        }
    }

    /* renamed from: I */
    public void m9274I() {
        if (this.f15668c == null) {
            return;
        }
        this.f15669d.clear();
        this.f15671f.clear();
        Iterator<Member> it2 = this.f15668c.getMemberList().getAllMembers().iterator();
        while (it2.hasNext()) {
            Member next = it2.next();
            if (next.getUid() != this.f15668c.getCreator()) {
                this.f15669d.add(new ItemSelectAdapterEntity<>(3, next));
            }
        }
        m10302s().mo9192d();
    }

    /* renamed from: R */
    public void m9268R(ItemSelectAdapterEntity<Member> itemSelectAdapterEntity) {
        if (itemSelectAdapterEntity.isEnable()) {
            itemSelectAdapterEntity.setCheck(!itemSelectAdapterEntity.isCheck());
            m10302s().mo9192d();
            if (itemSelectAdapterEntity.isCheck()) {
                this.f15671f.add(itemSelectAdapterEntity);
            } else {
                this.f15671f.remove(itemSelectAdapterEntity);
            }
        }
    }

    /* renamed from: U */
    public void m9267U() {
        String[] strArr = new String[this.f15671f.size()];
        for (int i = 0; i < this.f15671f.size(); i++) {
            strArr[i] = this.f15671f.get(i).getData().getUser().getAccount();
        }
        Group group = this.f15668c;
        if (group == null || !group.removeMember(strArr)) {
            m10302s().mo9191u1();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8521j().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: v */
    public void mo9229n(MemberRemoveView memberRemoveView) {
        super.mo9229n(memberRemoveView);
        SlTalkClient.m8513r().m8521j().addListener(this);
    }

    /* renamed from: w */
    public ArrayList<ItemSelectAdapterEntity<Member>> m9265w() {
        return this.f15669d;
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }

    /* renamed from: y */
    public ArrayList<ItemSelectAdapterEntity<Member>> m9264y() {
        return this.f15670e;
    }
}
