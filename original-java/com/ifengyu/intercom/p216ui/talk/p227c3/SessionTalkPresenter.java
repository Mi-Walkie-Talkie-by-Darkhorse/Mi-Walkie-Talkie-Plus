package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.content.Context;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.DialogGroupAdapterEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.SessionTalkView;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.OperatorMsgModel;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnExternalMsgListener;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.ifengyu.talk.p238h.OnMediaListener;
import com.ifengyu.talk.p238h.OnSessionListener;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.GroupRemovedEvent;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import com.shanlitech.p245et.notice.event.SpeakEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: com.ifengyu.intercom.ui.talk.c3.i0 */
/* loaded from: classes2.dex */
public class SessionTalkPresenter extends BasePresenter<SessionTalkView> implements OnAccountListener, OnMediaListener, OnGroupListener, OnSessionListener, OnExternalMsgListener {

    /* renamed from: c */
    private GroupSessionEvent f15678c;

    /* renamed from: d */
    private final ArrayList<DialogGroupAdapterEntity> f15679d = new ArrayList<>();

    public SessionTalkPresenter(Context context, GroupSessionEvent groupSessionEvent) {
        this.f15678c = groupSessionEvent;
    }

    /* renamed from: A */
    public void m9253A() {
        if (this.f15678c.getGroup().isCurrentGroup()) {
            this.f15678c.stop();
            this.f15678c.getGroup().deleteSession();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
        if (this.f15678c.getGroup() == null || memberList.getGroup() == null || memberList.getGroup().getGid() != this.f15678c.getGroup().getGid()) {
            return;
        }
        this.f15679d.clear();
        Iterator<Member> it2 = memberList.getAllMembers().iterator();
        while (it2.hasNext()) {
            Member next = it2.next();
            int response = next.getMemberSession().getResponse();
            if (response == 0) {
                this.f15679d.add(new DialogGroupAdapterEntity(2, next));
            } else if (response == 1) {
                this.f15679d.add(new DialogGroupAdapterEntity(1, next));
            }
        }
        m10302s().mo9186Z0();
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: C0 */
    public void mo8347C0(GroupRemovedEvent groupRemovedEvent) {
        if (groupRemovedEvent.getGroup().getGid() == this.f15678c.getGroup().getGid()) {
            m10302s().mo9183g0();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: D */
    public void mo8367D(GroupEvent groupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: G */
    public void mo8366G(GroupList groupList) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: K */
    public void mo8371K(OperatorMsgModel operatorMsgModel) {
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: T */
    public void mo8346T(int i) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
        if (groupEvent.isCurrentGroup() && this.f15678c.getGroup().getGid() == groupEvent.getTargetGroup().getGid()) {
            this.f15678c.getGroup().requestMemberList();
            m10302s().mo9187Q0();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: Z */
    public void mo8345Z(GroupSessionEvent groupSessionEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: a */
    public void mo8362a(SpeakEvent speakEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: b */
    public void mo8370b() {
        m10302s().mo9185b();
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: c */
    public void mo8361c(SpeakEvent speakEvent) {
        if (this.f15678c.getGroup() == null || speakEvent.getGroup().getGid() != this.f15678c.getGroup().getGid()) {
            return;
        }
        if (speakEvent.getMember().isMe()) {
            m10302s().mo9184f();
            m10302s().mo9188I(false, UIUtils.m8602p(R.string.message_type_talk, UIUtils.m8603o(R.string.is_me)));
            return;
        }
        m10302s().mo9188I(false, UIUtils.m8602p(R.string.message_type_talk, speakEvent.getUserName()));
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: d */
    public void mo8360d(SpeakEvent speakEvent) {
        if (this.f15678c.getGroup() == null || speakEvent.getGroup().getGid() != this.f15678c.getGroup().getGid()) {
            return;
        }
        if (speakEvent.getMember().isMe()) {
            m10302s().mo9181l();
            m10302s().mo9188I(true, UIUtils.m8602p(R.string.message_type_is_speaking, UIUtils.m8603o(R.string.is_me)));
            return;
        }
        m10302s().mo9188I(true, UIUtils.m8602p(R.string.message_type_is_speaking, speakEvent.getUserName()));
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: e */
    public void mo8359e(long j) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: f */
    public void mo8358f(SpeakEvent speakEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: h */
    public void mo8357h(SpeakEvent speakEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: i */
    public void mo8356i(long j) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: k */
    public void mo8344k() {
        m10302s().mo9182k();
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: l */
    public void mo8355l(SpeakEvent speakEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: m */
    public void mo8354m(SpeakEvent speakEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: n0 */
    public void mo8343n0(GroupSessionEvent groupSessionEvent) {
        if (groupSessionEvent.getGroup().getGid() == groupSessionEvent.getGroup().getGid()) {
            this.f15678c = groupSessionEvent;
        }
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
        if (onlineStatusEvent.getOnlinestatus() != 3) {
            m10302s().mo9184f();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8530a().removeListener(this);
        SlTalkClient.m8513r().m8524g().removeListener(this);
        SlTalkClient.m8513r().m8525f().removeListener(this);
        SlTalkClient.m8513r().m8520k().removeListener(this);
        SlTalkClient.m8513r().m8529b().removeListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnSessionListener
    /* renamed from: r1 */
    public void mo8342r1(GroupSessionEvent groupSessionEvent) {
        m10302s().mo9183g0();
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: t */
    public void mo8369t(HistoryMsgModel historyMsgModel) {
    }

    /* renamed from: v */
    public void m9252v() {
        if (this.f15678c.isMySession()) {
            this.f15678c.getGroup().join();
        } else if (this.f15678c.accept()) {
        } else {
            m10302s().mo9180u0();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: w */
    public void mo9229n(SessionTalkView sessionTalkView) {
        super.mo9229n(sessionTalkView);
        SlTalkClient.m8513r().m8530a().addListener(this);
        SlTalkClient.m8513r().m8524g().addListener(this);
        SlTalkClient.m8513r().m8525f().addListener(this);
        SlTalkClient.m8513r().m8520k().addListener(this);
        SlTalkClient.m8513r().m8529b().addListener(this);
    }

    /* renamed from: y */
    public ArrayList<DialogGroupAdapterEntity> m9250y() {
        return this.f15679d;
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
    }
}
