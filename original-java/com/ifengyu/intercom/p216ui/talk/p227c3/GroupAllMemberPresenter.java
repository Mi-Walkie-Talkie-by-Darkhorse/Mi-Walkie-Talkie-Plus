package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.lifecycle.Lifecycle;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.GroupDetailAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.GroupAllMemberView;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.p235e.MemberComparator;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import p048b.p049a.p050a.p051a.Pinyin;

/* renamed from: com.ifengyu.intercom.ui.talk.c3.d0 */
/* loaded from: classes2.dex */
public class GroupAllMemberPresenter extends BasePresenter<GroupAllMemberView> implements OnGroupListener {

    /* renamed from: d */
    private Group f15646d;

    /* renamed from: c */
    private final ArrayList<GroupDetailAdapterMultipleEntity> f15645c = new ArrayList<>();

    /* renamed from: e */
    private final ArrayList<GroupDetailAdapterMultipleEntity> f15647e = new ArrayList<>();

    public GroupAllMemberPresenter(Context context, Group group) {
        this.f15646d = group;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public /* synthetic */ Boolean m9321I(String str, String str2) throws Exception {
        Member member;
        User user;
        this.f15647e.clear();
        Iterator<GroupDetailAdapterMultipleEntity> it2 = this.f15645c.iterator();
        while (it2.hasNext()) {
            GroupDetailAdapterMultipleEntity next = it2.next();
            if (next.getType() == 1001 && (member = next.getMember()) != null && (user = member.getUser()) != null && (user.getAccount().contains(str) || user.getName().toUpperCase().contains(str) || Pinyin.m21194e(user.getName(), "").toUpperCase().contains(str))) {
                this.f15647e.add(next);
            }
        }
        return Boolean.valueOf(this.f15647e.size() > 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: J */
    public /* synthetic */ void m9319M(String str, Boolean bool) throws Exception {
        m10302s().mo9210a(bool.booleanValue(), str);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: A */
    public void m9323A(final String str) {
        ((ObservableSubscribeProxy) Observable.just(str).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.h
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return GroupAllMemberPresenter.this.m9321I(str, (String) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.g
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupAllMemberPresenter.this.m9319M(str, (Boolean) obj);
            }
        }, C4756b0.f15634a);
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
        if (memberList.getGroup().getGid() == this.f15646d.getGid()) {
            m9318N();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: D */
    public void mo8367D(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: G */
    public void mo8366G(GroupList groupList) {
        Group currentGroup = groupList.getCurrentGroup();
        if (currentGroup != null && currentGroup.getType() == Group.GROUP_NORMAL && SlTalkClient.m8512s(this.f15646d, currentGroup)) {
            this.f15646d = currentGroup;
            m10302s().mo9209c(currentGroup);
        }
    }

    /* renamed from: N */
    public void m9318N() {
        this.f15645c.clear();
        ArrayList<Member> allMembers = this.f15646d.getMemberList().getAllMembers();
        Collections.sort(allMembers, new MemberComparator(this.f15646d.getCreator()));
        boolean m8518m = SlTalkClient.m8518m(this.f15646d);
        int size = allMembers.size();
        for (int i = 0; i < size; i++) {
            Member member = allMembers.get(i);
            this.f15645c.add(new GroupDetailAdapterMultipleEntity(1001, SlTalkClient.m8516o(this.f15646d, member.getUid()), member));
        }
        this.f15645c.add(new GroupDetailAdapterMultipleEntity(1002));
        if (m8518m) {
            this.f15645c.add(new GroupDetailAdapterMultipleEntity(1003));
        }
        m10302s().mo9211X();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
        Group group = SlTalkClient.m8513r().m8525f().m8428d().getGroup(this.f15646d.getGid());
        if (group == null || group.getCreator() == this.f15646d.getCreator()) {
            return;
        }
        this.f15646d = group;
        m10302s().mo9209c(this.f15646d);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8525f().removeListener(this);
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: v */
    public void mo9229n(GroupAllMemberView groupAllMemberView) {
        super.mo9229n(groupAllMemberView);
        SlTalkClient.m8513r().m8525f().addListener(this);
    }

    /* renamed from: w */
    public ArrayList<GroupDetailAdapterMultipleEntity> m9316w() {
        return this.f15645c;
    }

    /* renamed from: y */
    public ArrayList<GroupDetailAdapterMultipleEntity> m9315y() {
        return this.f15647e;
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
    }
}
