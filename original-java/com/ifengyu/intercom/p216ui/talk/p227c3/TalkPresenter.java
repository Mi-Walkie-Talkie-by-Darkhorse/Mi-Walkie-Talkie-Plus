package com.ifengyu.intercom.p216ui.talk.p227c3;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.lifecycle.Lifecycle;
import com.google.gson.Gson;
import com.ifengyu.intercom.p208n.AppServiceClient;
import com.ifengyu.intercom.p214p.C4161y;
import com.ifengyu.intercom.p216ui.base.BasePresenter;
import com.ifengyu.intercom.p216ui.talk.entity.TalkMessagesAdapterMultipleEntity;
import com.ifengyu.intercom.p216ui.talk.p228d3.TalkView;
import com.ifengyu.library.account.UserCache;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4970j;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.EncoderUtil;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.database.TalkDatabase;
import com.ifengyu.talk.http.entity.MsgListEntity;
import com.ifengyu.talk.http.entity.SpeechMsg;
import com.ifengyu.talk.http.entity.TempGroup;
import com.ifengyu.talk.message.msgBody.SpeechInfoBody;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.OperatorMsgModel;
import com.ifengyu.talk.p235e.MemberComparator;
import com.ifengyu.talk.p237g.TalkServiceClient;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.ifengyu.talk.p238h.OnExternalMsgListener;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.ifengyu.talk.p238h.OnMediaListener;
import com.ifengyu.talk.p238h.OnResultListener;
import com.liulishuo.okdownload.DownloadTask;
import com.liulishuo.okdownload.core.cause.EndCause;
import com.liulishuo.okdownload.core.listener.DownloadListener2;
import com.shanlitech.p245et.ETStatusCode;
import com.shanlitech.p245et.core.p249c.PocHistoryManager;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.Member;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import com.shanlitech.p245et.notice.event.SpeakEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import com.uber.autodispose.ObservableSubscribeProxy;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;

/* renamed from: com.ifengyu.intercom.ui.talk.c3.j0 */
/* loaded from: classes2.dex */
public class TalkPresenter extends BasePresenter<TalkView> implements OnAccountListener, OnGroupListener, OnMediaListener, OnExternalMsgListener, OnResultListener {

    /* renamed from: l */
    private static final String f15681l = "j0";

    /* renamed from: d */
    private Group f15683d;

    /* renamed from: e */
    private TempGroup f15684e;

    /* renamed from: j */
    private TalkMessagesAdapterMultipleEntity f15689j;

    /* renamed from: c */
    private long f15682c = Long.MAX_VALUE;

    /* renamed from: f */
    private final ArrayList<Member> f15685f = new ArrayList<>();

    /* renamed from: g */
    private final ArrayList<TalkMessagesAdapterMultipleEntity> f15686g = new ArrayList<>();

    /* renamed from: h */
    private final ArrayList<TalkMessagesAdapterMultipleEntity> f15687h = new ArrayList<>();

    /* renamed from: i */
    private final HashMap<Long, TalkMessagesAdapterMultipleEntity> f15688i = new HashMap<>();

    /* renamed from: k */
    private final HashMap<Long, Object> f15690k = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TalkPresenter.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.c3.j0$a */
    /* loaded from: classes2.dex */
    public class C4766a extends ErrorConsumer {
        C4766a() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(TalkPresenter.f15681l, "queryHistoryMessage fail");
            newApiException.printStackTrace();
            TalkPresenter.this.m9248A0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TalkPresenter.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.c3.j0$b */
    /* loaded from: classes2.dex */
    public class C4767b extends ErrorConsumer {
        C4767b() {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4161y.m11052c(TalkPresenter.f15681l, "getSpeechMsg fail");
            newApiException.printStackTrace();
            ((TalkView) TalkPresenter.this.m10302s()).mo9172b0();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TalkPresenter.java */
    /* renamed from: com.ifengyu.intercom.ui.talk.c3.j0$c */
    /* loaded from: classes2.dex */
    public class C4768c extends DownloadListener2 {

        /* renamed from: a */
        final /* synthetic */ TalkMessagesAdapterMultipleEntity f15693a;

        C4768c(TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity) {
            this.f15693a = talkMessagesAdapterMultipleEntity;
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskEnd(@NonNull DownloadTask downloadTask, @NonNull EndCause endCause, @Nullable Exception exc) {
            String str = TalkPresenter.f15681l;
            C4161y.m11054a(str, "taskEnd->task: " + downloadTask + ", cause: " + endCause);
            if (endCause != EndCause.COMPLETED || downloadTask.getFile() == null) {
                ((TalkView) TalkPresenter.this.m10302s()).mo9172b0();
                return;
            }
            ((TalkView) TalkPresenter.this.m10302s()).mo9163v1();
            TalkPresenter.this.m9217y0(this.f15693a);
        }

        @Override // com.liulishuo.okdownload.DownloadListener
        public void taskStart(@NonNull DownloadTask downloadTask) {
            String str = TalkPresenter.f15681l;
            C4161y.m11054a(str, "taskStart->task: " + downloadTask);
        }
    }

    public TalkPresenter(Context context, Group group, TempGroup tempGroup) {
        this.f15683d = group;
        this.f15684e = tempGroup;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: A0 */
    public void m9248A0() {
        if (this.f15687h.size() < 50) {
            if (this.f15682c == Long.MAX_VALUE) {
                m10302s().mo9162w();
            } else {
                m10302s().mo9167m1();
            }
        } else {
            m10302s().mo9164r0();
        }
        if (this.f15686g.size() > 0) {
            this.f15682c = this.f15686g.get(0).getHistoryEntity().getId();
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: J */
    private void m9245J(final TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity, SpeechInfoBody speechInfoBody) {
        final long sid = speechInfoBody.getSid();
        final long gid = speechInfoBody.getGid();
        TalkServiceClient.m8374a().m8377a(sid).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.w
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TalkPresenter.this.m9238V(gid, sid, talkMessagesAdapterMultipleEntity, (SpeechMsg) obj);
            }
        }, new C4767b());
    }

    /* renamed from: M */
    private void m9244M(TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity, SpeechInfoBody speechInfoBody) {
        long sid = speechInfoBody.getSid();
        long gid = speechInfoBody.getGid();
        String speechUrl = speechInfoBody.getSpeechUrl();
        new DownloadTask.Builder(speechUrl, SlTalkClient.f16562h + gid + File.separator, String.valueOf(sid)).setAutoCallbackToUIThread(true).build().enqueue(new C4768c(talkMessagesAdapterMultipleEntity));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: U */
    public /* synthetic */ void m9238V(long j, long j2, TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity, SpeechMsg speechMsg) throws Exception {
        C4971k.m8654f(f15681l, "getSpeechMsg success");
        byte[] m8674b = EncoderUtil.m8674b(speechMsg.getBody());
        C4970j.m8660j(m8674b, SlTalkClient.f16562h + j + File.separator, String.valueOf(j2));
        m10302s().mo9163v1();
        m9217y0(talkMessagesAdapterMultipleEntity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: W */
    public /* synthetic */ ObservableSource m9236X(long j) throws Exception {
        return Observable.just(TalkDatabase.m8505D().mo8502C().mo8479a(j, this.f15682c, 50));
    }

    /* renamed from: a0 */
    private /* synthetic */ List m9235a0(List list) throws Exception {
        m9216z0(list);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c0 */
    public /* synthetic */ void m9232e0(List list) throws Exception {
        if (list.size() > 0) {
            if (this.f15682c == Long.MAX_VALUE) {
                m10302s().mo9169h0();
            } else {
                m10302s().mo9165q0(this.f15687h);
            }
        }
        m9221v0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public /* synthetic */ ArrayList m9230h0(MsgListEntity msgListEntity) throws Exception {
        ArrayList<HistoryMsgModel> data = msgListEntity.getData();
        TalkDatabase.m8505D().mo8502C().mo8476d(data);
        m9216z0(data);
        return data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p0 */
    public /* synthetic */ void m9226q0(ArrayList arrayList) throws Exception {
        C4161y.m11049f(f15681l, "queryHistoryMessage success");
        if (this.f15682c == Long.MAX_VALUE) {
            m10302s().mo9169h0();
        } else {
            m10302s().mo9165q0(this.f15687h);
        }
        m9248A0();
    }

    /* renamed from: x0 */
    private TalkMessagesAdapterMultipleEntity m9219x0(HistoryMsgModel historyMsgModel) {
        TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = new TalkMessagesAdapterMultipleEntity();
        if (historyMsgModel.getMsgType() == 3) {
            SpeechInfoBody speechInfoBody = (SpeechInfoBody) new Gson().fromJson(historyMsgModel.getBody(), (Class<Object>) SpeechInfoBody.class);
            historyMsgModel.setBodyParse(speechInfoBody);
            talkMessagesAdapterMultipleEntity.setMsgTime(historyMsgModel.getMsgTime());
            talkMessagesAdapterMultipleEntity.setAudioUid(speechInfoBody.getUid());
            talkMessagesAdapterMultipleEntity.setAudioState(1);
            talkMessagesAdapterMultipleEntity.setAudioDuration(speechInfoBody.getDuration());
            talkMessagesAdapterMultipleEntity.setAudioSid(speechInfoBody.getSid());
            if (speechInfoBody.getUid() == SlTalkClient.m8513r().m8530a().m8455f()) {
                talkMessagesAdapterMultipleEntity.setType(102);
            } else if (String.valueOf(speechInfoBody.getUid()).equals(UserCache.getAccount())) {
                talkMessagesAdapterMultipleEntity.setType(102);
            } else {
                talkMessagesAdapterMultipleEntity.setType(101);
            }
        } else {
            SlTalkClient.m8507x(historyMsgModel);
            talkMessagesAdapterMultipleEntity.setMsgTime(historyMsgModel.getMsgTime());
            talkMessagesAdapterMultipleEntity.setType(103);
        }
        talkMessagesAdapterMultipleEntity.setHistoryEntity(historyMsgModel);
        return talkMessagesAdapterMultipleEntity;
    }

    /* renamed from: z0 */
    private void m9216z0(List<HistoryMsgModel> list) {
        this.f15687h.clear();
        for (HistoryMsgModel historyMsgModel : list) {
            TalkMessagesAdapterMultipleEntity m9219x0 = m9219x0(historyMsgModel);
            this.f15687h.add(m9219x0);
            if (!this.f15686g.contains(m9219x0)) {
                this.f15686g.add(m9219x0);
            }
        }
        Collections.sort(this.f15686g);
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: B0 */
    public void mo8351B0(ResultEvent resultEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: C */
    public void mo8368C(MemberList memberList) {
        if (this.f15683d != null && memberList.getGroup().getGid() == this.f15683d.getGid() && memberList.getGroup().isCurrentGroup()) {
            this.f15685f.clear();
            Iterator<Member> it2 = memberList.getAllMembers().iterator();
            while (it2.hasNext()) {
                Member next = it2.next();
                if (next.inGroup()) {
                    this.f15685f.add(next);
                }
                this.f15690k.put(Long.valueOf(next.getUid()), next);
            }
            Collections.sort(this.f15685f, new MemberComparator(this.f15683d.getCreator()));
            m10302s().mo9176R();
            m10302s().mo9174Y0();
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
        if (currentGroup != null && currentGroup.getType() == Group.GROUP_NORMAL && this.f15683d != null && currentGroup.getGid() == this.f15683d.getGid() && SlTalkClient.m8512s(this.f15683d, currentGroup)) {
            this.f15683d = currentGroup;
            m10302s().mo9171c(currentGroup);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: H0 */
    public void mo8350H0(RequestResultEvent requestResultEvent) {
        if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_JoinGroupAck) {
            if (requestResultEvent.getRequestResultCode() != ETStatusCode.RequestResultCode.SUCCESS) {
                m10302s().mo9179I0();
            }
        } else if (requestResultEvent.getRequest() == ETStatusCode.Request.ET_RR_StopSessionAck) {
            requestResultEvent.getRequestResultCode();
            ETStatusCode.RequestResultCode requestResultCode = ETStatusCode.RequestResultCode.SUCCESS;
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: I */
    public void mo9229n(TalkView talkView) {
        super.mo9229n(talkView);
        SlTalkClient.m8513r().m8530a().addListener(this);
        SlTalkClient.m8513r().m8525f().addListener(this);
        SlTalkClient.m8513r().m8524g().addListener(this);
        SlTalkClient.m8513r().m8529b().addListener(this);
        SlTalkClient.m8513r().m8521j().addListener(this);
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: K */
    public void mo8371K(OperatorMsgModel operatorMsgModel) {
    }

    /* renamed from: N */
    public Object m9243N(long j) {
        Member member;
        Object obj = this.f15690k.get(Long.valueOf(j));
        if (obj != null) {
            return obj;
        }
        Group group = this.f15683d;
        if (group != null && (member = group.getMemberList().getMember(j)) != null) {
            this.f15690k.put(Long.valueOf(j), member);
            return member;
        }
        SlTalkClient.m8513r().m8530a().m8450k(String.valueOf(j));
        return null;
    }

    /* renamed from: O */
    public ArrayList<TalkMessagesAdapterMultipleEntity> m9242O() {
        return this.f15686g;
    }

    /* renamed from: Q */
    public ArrayList<Member> m9241Q() {
        return this.f15685f;
    }

    /* renamed from: R */
    public void m9240R() {
        Group group = this.f15683d;
        if (group != null) {
            if (group.isCurrentGroup()) {
                m10302s().mo9178K0();
                mo8368C(this.f15683d.getMemberList());
                return;
            }
            this.f15683d.join();
            return;
        }
        m10302s().mo9179I0();
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: V0 */
    public void mo8365V0(GroupEvent groupEvent) {
        if (groupEvent.isCurrentGroup() && this.f15683d != null && groupEvent.getTargetGroup().getGid() == this.f15683d.getGid()) {
            m10302s().mo9178K0();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: W0 */
    public void mo8364W0(TransferGroupEvent transferGroupEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: a */
    public void mo8362a(SpeakEvent speakEvent) {
        if (this.f15683d == null || speakEvent.getGroup().getGid() != this.f15683d.getGid()) {
        }
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: b */
    public void mo8370b() {
        m10302s().mo9173b();
    }

    /* renamed from: b0 */
    public /* synthetic */ List m9234b0(List list) {
        m9235a0(list);
        return list;
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: c */
    public void mo8361c(SpeakEvent speakEvent) {
        if (this.f15683d == null || speakEvent.getGroup().getGid() != this.f15683d.getGid() || speakEvent.getSid() == 0) {
            return;
        }
        if (speakEvent.getMember().isMe()) {
            m10302s().mo9170f();
        }
        if (this.f15688i.get(Long.valueOf(speakEvent.getSid())) == null) {
            return;
        }
        if (speakEvent.getDuration() == 0) {
            this.f15686g.remove(this.f15688i.remove(Long.valueOf(speakEvent.getSid())));
            m10302s().mo9166q();
            return;
        }
        TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = this.f15688i.get(Long.valueOf(speakEvent.getSid()));
        if (talkMessagesAdapterMultipleEntity != null) {
            talkMessagesAdapterMultipleEntity.setAudioState(1);
            talkMessagesAdapterMultipleEntity.setAudioDuration(speakEvent.getDuration());
            m10302s().mo9166q();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: d */
    public void mo8360d(SpeakEvent speakEvent) {
        if (this.f15683d == null || speakEvent.getGroup().getGid() != this.f15683d.getGid() || speakEvent.getSid() == 0 || this.f15688i.get(Long.valueOf(speakEvent.getSid())) != null) {
            return;
        }
        for (TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity : this.f15688i.values()) {
            if (talkMessagesAdapterMultipleEntity.getAudioState() == 3) {
                if (talkMessagesAdapterMultipleEntity.getAudioDuration() == 0) {
                    this.f15686g.remove(talkMessagesAdapterMultipleEntity);
                } else {
                    talkMessagesAdapterMultipleEntity.setAudioState(1);
                }
            }
        }
        TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity2 = new TalkMessagesAdapterMultipleEntity();
        if (speakEvent.getMember().isMe()) {
            m10302s().mo9168l();
            talkMessagesAdapterMultipleEntity2.setType(102);
        } else {
            talkMessagesAdapterMultipleEntity2.setType(101);
        }
        talkMessagesAdapterMultipleEntity2.setMsgTime(speakEvent.getEvenTime());
        talkMessagesAdapterMultipleEntity2.setAudioState(3);
        talkMessagesAdapterMultipleEntity2.setAudioUid(speakEvent.getUID());
        talkMessagesAdapterMultipleEntity2.setAudioSid(speakEvent.getSid());
        this.f15688i.put(Long.valueOf(speakEvent.getSid()), talkMessagesAdapterMultipleEntity2);
        this.f15686g.add(talkMessagesAdapterMultipleEntity2);
        m10302s().mo9166q();
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: e */
    public void mo8359e(long j) {
        TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = this.f15689j;
        if (talkMessagesAdapterMultipleEntity != null && ((SpeechInfoBody) talkMessagesAdapterMultipleEntity.getHistoryEntity().getBodyParse()).getSid() == j) {
            this.f15689j.setAudioState(2);
            m10302s().mo9174Y0();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: f */
    public void mo8358f(SpeakEvent speakEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: f0 */
    public void mo8373f0(SearchResultEvent searchResultEvent) {
        if (searchResultEvent.getUser() != null) {
            this.f15690k.put(Long.valueOf(searchResultEvent.getUser().getUid()), searchResultEvent.getUser());
            m10302s().mo9174Y0();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: h */
    public void mo8357h(SpeakEvent speakEvent) {
        if (this.f15683d == null || speakEvent.getGroup().getGid() != this.f15683d.getGid()) {
        }
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: i */
    public void mo8356i(long j) {
        TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = this.f15689j;
        if (talkMessagesAdapterMultipleEntity != null && ((SpeechInfoBody) talkMessagesAdapterMultipleEntity.getHistoryEntity().getBodyParse()).getSid() == j) {
            this.f15689j.setAudioState(1);
            m10302s().mo9174Y0();
            this.f15689j = null;
        }
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    /* renamed from: j0 */
    public void mo8372j0(ContactList contactList) {
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: l */
    public void mo8355l(SpeakEvent speakEvent) {
        if (this.f15683d == null || speakEvent.getGroup().getGid() != this.f15683d.getGid()) {
        }
    }

    @Override // com.ifengyu.talk.p238h.OnMediaListener
    /* renamed from: m */
    public void mo8354m(SpeakEvent speakEvent) {
        if (this.f15683d != null && speakEvent.getGroup().getGid() == this.f15683d.getGid() && speakEvent.getMember().isMe()) {
            m10302s().mo9170f();
        }
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: m0 */
    public void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent) {
    }

    @Override // com.ifengyu.talk.p238h.OnAccountListener
    public void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent) {
        if (onlineStatusEvent.getOnlinestatus() != 3) {
            m10302s().mo9179I0();
        }
    }

    @Override // com.ifengyu.intercom.p216ui.base.BasePresenter
    /* renamed from: q */
    public void mo9227q() {
        super.mo9227q();
        SlTalkClient.m8513r().m8530a().removeListener(this);
        SlTalkClient.m8513r().m8525f().removeListener(this);
        SlTalkClient.m8513r().m8524g().removeListener(this);
        SlTalkClient.m8513r().m8529b().removeListener(this);
        SlTalkClient.m8513r().m8521j().removeListener(this);
    }

    /* renamed from: r0 */
    public void m9225r0() {
        m9223u0();
    }

    /* renamed from: s0 */
    public void m9224s0() {
        m9223u0();
    }

    @Override // com.ifengyu.talk.p238h.OnExternalMsgListener
    /* renamed from: t */
    public void mo8369t(HistoryMsgModel historyMsgModel) {
        if (historyMsgModel == null || historyMsgModel.getBodyParse() == null || this.f15683d == null || historyMsgModel.getReceiver() != this.f15683d.getGid()) {
            return;
        }
        if (historyMsgModel.getMsgType() == 3) {
            SpeechInfoBody speechInfoBody = (SpeechInfoBody) historyMsgModel.getBodyParse();
            TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity = this.f15688i.get(Long.valueOf(speechInfoBody.getSid()));
            if (talkMessagesAdapterMultipleEntity != null) {
                talkMessagesAdapterMultipleEntity.setHistoryEntity(historyMsgModel);
                this.f15688i.remove(Long.valueOf(speechInfoBody.getSid()));
                if (talkMessagesAdapterMultipleEntity.getAudioState() != 1) {
                    talkMessagesAdapterMultipleEntity.setAudioState(1);
                    m10302s().mo9166q();
                    return;
                }
                return;
            }
            return;
        }
        TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity2 = new TalkMessagesAdapterMultipleEntity();
        talkMessagesAdapterMultipleEntity2.setMsgTime(historyMsgModel.getMsgTime());
        talkMessagesAdapterMultipleEntity2.setType(103);
        talkMessagesAdapterMultipleEntity2.setHistoryEntity(historyMsgModel);
        this.f15686g.add(talkMessagesAdapterMultipleEntity2);
        m10302s().mo9166q();
    }

    /* renamed from: u0 */
    public void m9223u0() {
        final long gid;
        Group group = this.f15683d;
        if (group != null) {
            gid = group.getGid();
        } else {
            TempGroup tempGroup = this.f15684e;
            gid = tempGroup != null ? tempGroup.getGid() : 0L;
        }
        ((ObservableSubscribeProxy) Observable.defer(new Callable() { // from class: com.ifengyu.intercom.ui.talk.c3.x
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return TalkPresenter.this.m9236X(gid);
            }
        }).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.z
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                List list = (List) obj;
                TalkPresenter.this.m9234b0(list);
                return list;
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.v
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TalkPresenter.this.m9232e0((List) obj);
            }
        }, C4756b0.f15634a);
    }

    /* renamed from: v0 */
    public void m9221v0() {
        long gid;
        Group group = this.f15683d;
        if (group != null) {
            gid = group.getGid();
        } else {
            TempGroup tempGroup = this.f15684e;
            gid = tempGroup != null ? tempGroup.getGid() : 0L;
        }
        ((ObservableSubscribeProxy) AppServiceClient.m11355a().m11399H(gid, this.f15682c, 50).compose(Transformer.m8717a()).map(new Function() { // from class: com.ifengyu.intercom.ui.talk.c3.y
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return TalkPresenter.this.m9230h0((MsgListEntity) obj);
            }
        }).m806as(m10303o(Lifecycle.Event.ON_DESTROY))).mo5995b(new Consumer() { // from class: com.ifengyu.intercom.ui.talk.c3.a0
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                TalkPresenter.this.m9226q0((ArrayList) obj);
            }
        }, new C4766a());
    }

    @Override // com.ifengyu.talk.p238h.OnResultListener
    /* renamed from: x */
    public void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
    }

    /* renamed from: y0 */
    public void m9217y0(TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity) {
        PocHistoryManager.m6602d().m6599g();
        HistoryMsgModel historyEntity = talkMessagesAdapterMultipleEntity.getHistoryEntity();
        if (historyEntity == null) {
            m10302s().mo9177N();
            return;
        }
        SpeechInfoBody speechInfoBody = (SpeechInfoBody) historyEntity.getBodyParse();
        if (speechInfoBody == null) {
            m10302s().mo9177N();
            return;
        }
        String str = SlTalkClient.f16562h + speechInfoBody.getGid() + File.separator + speechInfoBody.getSid();
        if (new File(str).exists()) {
            TalkMessagesAdapterMultipleEntity talkMessagesAdapterMultipleEntity2 = this.f15689j;
            if (talkMessagesAdapterMultipleEntity2 != null) {
                SpeechInfoBody speechInfoBody2 = (SpeechInfoBody) talkMessagesAdapterMultipleEntity2.getHistoryEntity().getBodyParse();
                if (speechInfoBody2.getSid() == speechInfoBody.getSid()) {
                    mo8356i(speechInfoBody2.getSid());
                    return;
                }
                mo8356i(speechInfoBody2.getSid());
                m9217y0(talkMessagesAdapterMultipleEntity);
                return;
            }
            this.f15689j = talkMessagesAdapterMultipleEntity;
            PocHistoryManager.m6602d().m6600f(str, speechInfoBody.getSid(), speechInfoBody.getPayload());
            return;
        }
        m10302s().mo9175U();
        if (speechInfoBody.getSpeechUrl() == null) {
            m9245J(talkMessagesAdapterMultipleEntity, speechInfoBody);
        } else {
            m9244M(talkMessagesAdapterMultipleEntity, speechInfoBody);
        }
    }

    @Override // com.ifengyu.talk.p238h.OnGroupListener
    /* renamed from: z */
    public void mo8363z(GroupEvent groupEvent) {
        if (this.f15683d == null || groupEvent.getTargetGroup().getGid() != this.f15683d.getGid()) {
            return;
        }
        m10302s().mo9179I0();
    }
}
