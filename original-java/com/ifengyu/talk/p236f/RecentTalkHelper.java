package com.ifengyu.talk.p236f;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import android.util.LongSparseArray;
import com.google.gson.Gson;
import com.ifengyu.library.http.exception.NewApiException;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.p229b.p231e.ErrorConsumer;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.library.utils.UIUtils;
import com.ifengyu.talk.R$string;
import com.ifengyu.talk.SlTalkClient;
import com.ifengyu.talk.database.TalkDatabase;
import com.ifengyu.talk.http.entity.LastMsgForGroups;
import com.ifengyu.talk.http.entity.MsgListEntity;
import com.ifengyu.talk.http.entity.SystemMsgEntity;
import com.ifengyu.talk.message.msgBody.SpeechActionBody;
import com.ifengyu.talk.models.HistoryMsgModel;
import com.ifengyu.talk.models.RecentTalkModel;
import com.ifengyu.talk.p237g.TalkServiceClient;
import com.ifengyu.talk.p238h.OnRecentTalkListener;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SpeakEvent;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.e0 */
/* loaded from: classes2.dex */
public class RecentTalkHelper {

    /* renamed from: e */
    private static final String f16611e = "e0";

    /* renamed from: a */
    private final Set<OnRecentTalkListener> f16612a = new HashSet();

    /* renamed from: b */
    private final List<RecentTalkModel> f16613b = new ArrayList();

    /* renamed from: c */
    private final LongSparseArray<RecentTalkModel> f16614c = new LongSparseArray<>();

    /* renamed from: d */
    public SpeakEvent f16615d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RecentTalkHelper.java */
    /* renamed from: com.ifengyu.talk.f.e0$a */
    /* loaded from: classes2.dex */
    public class C4998a extends ErrorConsumer {
        C4998a(RecentTalkHelper recentTalkHelper) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4971k.m8657c(RecentTalkHelper.f16611e, "getLastMsgForEveryGroup fail");
            newApiException.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: RecentTalkHelper.java */
    /* renamed from: com.ifengyu.talk.f.e0$b */
    /* loaded from: classes2.dex */
    public class C4999b extends ErrorConsumer {
        C4999b(RecentTalkHelper recentTalkHelper) {
        }

        @Override // com.ifengyu.library.p229b.p231e.ErrorConsumer
        /* renamed from: a */
        public void mo8387a(NewApiException newApiException) {
            C4971k.m8657c(RecentTalkHelper.f16611e, "querySystemMessageByType fail");
            newApiException.printStackTrace();
        }
    }

    public RecentTalkHelper(Account account) {
        EventBus.m174c().m159r(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: B */
    public /* synthetic */ void m8425C(MsgListEntity msgListEntity) throws Exception {
        RecentTalkModel recentTalkModel;
        Iterator it2 = msgListEntity.getData().iterator();
        while (it2.hasNext()) {
            SystemMsgEntity systemMsgEntity = (SystemMsgEntity) it2.next();
            if (systemMsgEntity.getInviterId() > 0 && systemMsgEntity.getInviteeId() == SlTalkClient.m8513r().m8530a().m8455f() && systemMsgEntity.getMsgType() == 4 && (recentTalkModel = this.f16614c.get(systemMsgEntity.getGid())) != null) {
                long updateTime = systemMsgEntity.getUpdateTime() * 1000;
                if (updateTime > recentTalkModel.getUpdateTime()) {
                    recentTalkModel.setUpdateTime(updateTime);
                    HistoryMsgModel historyMsgModel = new HistoryMsgModel();
                    historyMsgModel.setMsgType(7);
                    historyMsgModel.setMsgTime(updateTime);
                    historyMsgModel.setReceiver(systemMsgEntity.getGid());
                    historyMsgModel.setToWord(UIUtils.m8603o(R$string.message_type_you_are_removed_by_owner));
                    recentTalkModel.setLastMsgModel(historyMsgModel);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public /* synthetic */ void m8423E(MsgListEntity msgListEntity) throws Exception {
        C4971k.m8654f(f16611e, "querySystemMessageByType success");
        m8420H();
    }

    /* renamed from: G */
    private void m8421G() {
        Collections.sort(this.f16613b);
        for (OnRecentTalkListener onRecentTalkListener : this.f16612a) {
            onRecentTalkListener.mo8353g(this.f16613b);
        }
    }

    /* renamed from: H */
    private void m8420H() {
        Collections.sort(this.f16613b);
        for (OnRecentTalkListener onRecentTalkListener : this.f16612a) {
            onRecentTalkListener.mo8352j(this.f16613b);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: J */
    private void m8418J() {
        TalkServiceClient.m8374a().m8376b().map(new Function() { // from class: com.ifengyu.talk.f.t
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                return RecentTalkHelper.this.m8389y((LastMsgForGroups) obj);
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.u
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8427A((ArrayList) obj);
            }
        }, new C4998a(this));
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: K */
    private void m8417K() {
        TalkServiceClient.m8374a().m8375c(4, 1, 100000).doOnNext(new Consumer() { // from class: com.ifengyu.talk.f.h
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8425C((MsgListEntity) obj);
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.q
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8423E((MsgListEntity) obj);
            }
        }, new C4999b(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public void m8416L(List<RecentTalkModel> list) {
        this.f16614c.clear();
        for (RecentTalkModel recentTalkModel : list) {
            Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(recentTalkModel.getGroupId().longValue());
            if (m8429c != null) {
                recentTalkModel.setGroup(m8429c);
            }
            if (!TextUtils.isEmpty(recentTalkModel.getLastMsgJsonStr())) {
                recentTalkModel.setLastMsgModel(SlTalkClient.m8508w(recentTalkModel.getLastMsgJsonStr()));
            }
            this.f16614c.put(recentTalkModel.getGroupId().longValue(), recentTalkModel);
        }
    }

    /* renamed from: M */
    private void m8415M(RecentTalkModel recentTalkModel, Group group) {
        recentTalkModel.setGroup(group);
        recentTalkModel.setGroupName(SlTalkClient.m8526e(group));
        recentTalkModel.setGroupAvatar(m8409e(SlTalkClient.m8528c(group)));
        if (group.getMemberList() == null) {
            group.requestMemberList();
        }
    }

    /* renamed from: N */
    private Long m8414N(HistoryMsgModel historyMsgModel, String str) {
        RecentTalkModel m8410d = m8410d(historyMsgModel.getReceiver());
        Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(m8410d.getGroupId().longValue());
        if (m8429c != null) {
            m8415M(m8410d, m8429c);
        }
        m8410d.setUpdateTime(historyMsgModel.getMsgTime());
        m8410d.setLastMsgJsonStr(str);
        m8410d.setLastMsgModel(historyMsgModel);
        return TalkDatabase.m8505D().mo8501F().mo8468d(m8410d);
    }

    /* renamed from: d */
    private RecentTalkModel m8410d(long j) {
        RecentTalkModel recentTalkModel = this.f16614c.get(j);
        if (recentTalkModel == null) {
            recentTalkModel = new RecentTalkModel();
            this.f16613b.add(recentTalkModel);
            this.f16614c.put(j, recentTalkModel);
        }
        recentTalkModel.setGroupId(Long.valueOf(j));
        return recentTalkModel;
    }

    /* renamed from: e */
    private String m8409e(String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            return "";
        }
        int length = strArr.length - 1;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strArr.length; i++) {
            sb.append(strArr[i]);
            if (i != length) {
                sb.append(RecentTalkModel.GROUP_AVATAR_SPLIT);
            }
        }
        return sb.toString();
    }

    /* renamed from: g */
    private /* synthetic */ RecentTalkModel m8407g(RecentTalkModel recentTalkModel, RecentTalkModel recentTalkModel2) throws Exception {
        TalkDatabase.m8505D().mo8501F().mo8471a(recentTalkModel.getGroupId().longValue());
        this.f16613b.remove(recentTalkModel);
        this.f16614c.remove(recentTalkModel.getGroupId().longValue());
        return recentTalkModel2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public /* synthetic */ void m8404j(RecentTalkModel recentTalkModel) throws Exception {
        C4971k.m8659a(f16611e, "deleteErrorRecentTalkModel success");
        m8420H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public /* synthetic */ void m8400n(List list) throws Exception {
        C4971k.m8654f(f16611e, "onLoadAddRecentFromDBSuccess");
        this.f16613b.clear();
        this.f16613b.addAll(list);
        m8421G();
        m8418J();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static /* synthetic */ void m8399o(Throwable th) throws Exception {
        C4971k.m8657c(f16611e, "onLoadAddRecentFromDBFail");
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public /* synthetic */ ObservableSource m8397q(HistoryMsgModel historyMsgModel, String str) throws Exception {
        return Observable.just(m8414N(historyMsgModel, str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public /* synthetic */ void m8395s(Long l) throws Exception {
        C4971k.m8654f(f16611e, "onOtherExternalMsgEvent success");
        m8420H();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static /* synthetic */ void m8394t(Throwable th) throws Exception {
        C4971k.m8657c(f16611e, "onOtherExternalMsgEvent fail");
        th.printStackTrace();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: v */
    public /* synthetic */ void m8391w(long j, HistoryMsgModel historyMsgModel) throws Exception {
        RecentTalkModel m8410d = m8410d(j);
        m8410d.setUpdateTime(historyMsgModel.getMsgTime());
        m8410d.setLastMsgJsonStr(new Gson().toJson(historyMsgModel));
        SlTalkClient.m8507x(historyMsgModel);
        m8410d.setLastMsgModel(historyMsgModel);
        m8420H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: x */
    public /* synthetic */ ArrayList m8389y(LastMsgForGroups lastMsgForGroups) throws Exception {
        ArrayList<HistoryMsgModel> data = lastMsgForGroups.getData();
        Iterator<HistoryMsgModel> it2 = data.iterator();
        while (it2.hasNext()) {
            HistoryMsgModel next = it2.next();
            Group m8429c = SlTalkClient.m8513r().m8525f().m8429c(next.getReceiver());
            if (m8429c != null) {
                RecentTalkModel m8410d = m8410d(next.getReceiver());
                m8415M(m8410d, m8429c);
                m8410d.setUpdateTime(next.getMsgTime());
                m8410d.setLastMsgJsonStr(new Gson().toJson(next));
                SlTalkClient.m8507x(next);
                m8410d.setLastMsgModel(next);
                TalkDatabase.m8505D().mo8501F().mo8468d(m8410d);
            }
        }
        return data;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: z */
    public /* synthetic */ void m8427A(ArrayList arrayList) throws Exception {
        C4971k.m8654f(f16611e, "getLastMsgForEveryGroup success");
        m8420H();
        m8417K();
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: F */
    public void m8422F() {
        Observable.defer(CallableC5007m.f16635a).doOnNext(new Consumer() { // from class: com.ifengyu.talk.f.n
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8416L((List) obj);
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8400n((List) obj);
            }
        }, C5010p.f16638a);
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: I */
    public void m8419I(final HistoryMsgModel historyMsgModel, final String str) {
        Observable.defer(new Callable() { // from class: com.ifengyu.talk.f.i
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return RecentTalkHelper.this.m8397q(historyMsgModel, str);
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.v
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8395s((Long) obj);
            }
        }, C5013s.f16642a);
    }

    public void addListener(OnRecentTalkListener onRecentTalkListener) {
        if (onRecentTalkListener != null) {
            this.f16612a.add(onRecentTalkListener);
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: b */
    public void m8412b(long j) {
        final RecentTalkModel recentTalkModel = this.f16614c.get(j);
        if (recentTalkModel == null) {
            return;
        }
        Observable.just(recentTalkModel).map(new Function() { // from class: com.ifengyu.talk.f.j
            @Override // io.reactivex.functions.Function
            public final Object apply(Object obj) {
                RecentTalkModel recentTalkModel2 = (RecentTalkModel) obj;
                RecentTalkHelper.this.m8406h(recentTalkModel, recentTalkModel2);
                return recentTalkModel2;
            }
        }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.l
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                RecentTalkHelper.this.m8404j((RecentTalkModel) obj);
            }
        }, C5009o.f16637a);
    }

    /* renamed from: c */
    public List<RecentTalkModel> m8411c() {
        return this.f16613b;
    }

    /* renamed from: h */
    public /* synthetic */ RecentTalkModel m8406h(RecentTalkModel recentTalkModel, RecentTalkModel recentTalkModel2) {
        m8407g(recentTalkModel, recentTalkModel2);
        return recentTalkModel2;
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupEvent(GroupEvent groupEvent) {
        C4971k.m8654f(f16611e, "onGroupEvent");
        if (groupEvent.getTargetGroup() == null) {
            if (groupEvent.getType() == GroupEvent.EventType.CURRENT && this.f16613b.size() > 0 && this.f16613b.get(0).getTalkType() == 1) {
                RecentTalkModel recentTalkModel = this.f16613b.get(0);
                recentTalkModel.setTalkType(0);
                m8420H();
                TalkDatabase.m8505D().mo8501F().mo8468d(recentTalkModel);
            }
        } else if (groupEvent.getTargetGroup().getType() != Group.GROUP_NORMAL) {
        } else {
            Group targetGroup = groupEvent.getTargetGroup();
            if (groupEvent.getType() == GroupEvent.EventType.CURRENT) {
                if (this.f16613b.size() > 0 && this.f16613b.get(0).getTalkType() == 1) {
                    this.f16613b.get(0).setTalkType(0);
                }
                RecentTalkModel m8410d = m8410d(targetGroup.getGid());
                m8415M(m8410d, targetGroup);
                m8410d.setUpdateTime(groupEvent.getEvenTime());
                m8410d.setTalkType(1);
                m8420H();
                TalkDatabase.m8505D().mo8501F().mo8468d(m8410d);
            } else if (groupEvent.getType() == GroupEvent.EventType.ADD) {
            } else {
                groupEvent.getType();
                GroupEvent.EventType eventType = GroupEvent.EventType.LEAVE;
            }
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onMemberListEvent(MemberList memberList) {
        RecentTalkModel recentTalkModel;
        C4971k.m8654f(f16611e, "onMemberListEvent");
        if (memberList.getGroup() == null || memberList.getGroup().getType() != Group.GROUP_NORMAL || (recentTalkModel = this.f16614c.get(memberList.getGid())) == null) {
            return;
        }
        m8415M(recentTalkModel, memberList.getGroup());
        m8420H();
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    @SuppressLint({"CheckResult"})
    public void onSpeakEvent(SpeakEvent speakEvent) {
        if (speakEvent.getGroup() == null || speakEvent.getGroup().getType() != Group.GROUP_NORMAL) {
            return;
        }
        final long gid = speakEvent.getGID();
        if (speakEvent.getSpeakType() == SpeakEvent.SpeakType.MEMBER_STARTED) {
            if (speakEvent.getGroup().isCurrentGroup()) {
                this.f16615d = speakEvent;
                RecentTalkModel m8410d = m8410d(gid);
                m8415M(m8410d, speakEvent.getGroup());
                m8410d.setUpdateTime(speakEvent.getEvenTime());
                HistoryMsgModel historyMsgModel = new HistoryMsgModel();
                historyMsgModel.setMsgType(HistoryMsgModel.MSG_TYPE_SPEECH_ACTION_ING);
                SpeechActionBody speechActionBody = new SpeechActionBody();
                speechActionBody.setUid(speakEvent.getUID());
                speechActionBody.setName(SlTalkClient.m8523h(speakEvent.getMember()));
                historyMsgModel.setBody(new Gson().toJson(speechActionBody));
                m8410d.setLastMsgJsonStr(new Gson().toJson(historyMsgModel));
                SlTalkClient.m8507x(historyMsgModel);
                m8410d.setLastMsgModel(historyMsgModel);
                m8420H();
            }
        } else if (speakEvent.getSpeakType() == SpeakEvent.SpeakType.MEMBER_STOPED) {
            this.f16615d = null;
            if (speakEvent.getDuration() == 0) {
                if (speakEvent.getGroup().isCurrentGroup()) {
                    Observable.defer(CallableC5017w.f16646a).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.r
                        @Override // io.reactivex.functions.Consumer
                        public final void accept(Object obj) {
                            RecentTalkHelper.this.m8391w(gid, (HistoryMsgModel) obj);
                        }
                    }, C5020z.f16650a);
                    return;
                }
                return;
            }
            RecentTalkModel m8410d2 = m8410d(gid);
            m8415M(m8410d2, speakEvent.getGroup());
            m8410d2.setUpdateTime(speakEvent.getEvenTime());
            HistoryMsgModel historyMsgModel2 = new HistoryMsgModel();
            historyMsgModel2.setMsgType(HistoryMsgModel.MSG_TYPE_SPEECH_ACTION_FINISH);
            SpeechActionBody speechActionBody2 = new SpeechActionBody();
            speechActionBody2.setUid(speakEvent.getUID());
            speechActionBody2.setName(SlTalkClient.m8523h(speakEvent.getMember()));
            historyMsgModel2.setBody(new Gson().toJson(speechActionBody2));
            m8410d2.setLastMsgJsonStr(new Gson().toJson(historyMsgModel2));
            SlTalkClient.m8507x(historyMsgModel2);
            m8410d2.setLastMsgModel(historyMsgModel2);
            TalkDatabase.m8505D().mo8501F().mo8468d(m8410d2);
            m8420H();
        } else if (speakEvent.getSpeakType() == SpeakEvent.SpeakType.STOPED) {
            this.f16615d = null;
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onlineStatusChangeEvent(OnlineStatusEvent onlineStatusEvent) {
        this.f16615d = null;
    }

    public void removeListener(OnRecentTalkListener onRecentTalkListener) {
        if (onRecentTalkListener != null) {
            this.f16612a.remove(onRecentTalkListener);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupEvent(Group group) {
        C4971k.m8654f(f16611e, "onGroupEvent");
        RecentTalkModel recentTalkModel = this.f16614c.get(group.getGid());
        if (recentTalkModel == null || recentTalkModel.getGroupAvatar().contains(group.getAvatar())) {
            return;
        }
        m8415M(recentTalkModel, group);
        m8420H();
        TalkDatabase.m8505D().mo8501F().mo8468d(recentTalkModel);
    }
}
