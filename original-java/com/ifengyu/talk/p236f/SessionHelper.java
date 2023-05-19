package com.ifengyu.talk.p236f;

import android.annotation.SuppressLint;
import com.ifengyu.library.p229b.Transformer;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.talk.event.NewSessionInviteEvent;
import com.ifengyu.talk.event.NewSessionTimeoutEvent;
import com.ifengyu.talk.p238h.OnSessionListener;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.notice.event.GroupRemovedEvent;
import com.shanlitech.p245et.notice.event.GroupSessionEvent;
import com.shanlitech.p245et.notice.event.StartSessionAckEvent;
import io.reactivex.Observable;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.g0 */
/* loaded from: classes2.dex */
public class SessionHelper {

    /* renamed from: f */
    private static final String f16621f = "g0";

    /* renamed from: a */
    private final Account f16622a;

    /* renamed from: b */
    private final Set<OnSessionListener> f16623b = new HashSet();

    /* renamed from: c */
    private GroupSessionEvent f16624c;

    /* renamed from: d */
    private Disposable f16625d;

    /* renamed from: e */
    private boolean f16626e;

    public SessionHelper(Account account) {
        this.f16622a = account;
        EventBus.m174c().m159r(this);
    }

    /* renamed from: c */
    private void m8384c() {
        Disposable disposable = this.f16625d;
        if (disposable != null) {
            disposable.dispose();
            this.f16625d = null;
        }
    }

    @SuppressLint({"CheckResult"})
    /* renamed from: e */
    private void m8382e(final GroupSessionEvent groupSessionEvent) {
        Integer myResponse = groupSessionEvent.getMyResponse();
        String str = f16621f;
        C4971k.m8654f(str, "handle new session calling MyResponse:" + myResponse);
        if (myResponse == null || myResponse.intValue() == 0) {
            if (groupSessionEvent.isMySession()) {
                for (OnSessionListener onSessionListener : this.f16623b) {
                    onSessionListener.mo8345Z(groupSessionEvent);
                }
            } else {
                EventBus.m174c().m164m(new NewSessionInviteEvent());
            }
            Observable.timer(60L, TimeUnit.SECONDS).doOnSubscribe(new Consumer() { // from class: com.ifengyu.talk.f.y
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    SessionHelper.this.m8380g((Disposable) obj);
                }
            }).compose(Transformer.m8717a()).subscribe(new Consumer() { // from class: com.ifengyu.talk.f.x
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    SessionHelper.this.m8378i(groupSessionEvent, (Long) obj);
                }
            }, C5020z.f16650a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public /* synthetic */ void m8380g(Disposable disposable) throws Exception {
        this.f16625d = disposable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public /* synthetic */ void m8378i(GroupSessionEvent groupSessionEvent, Long l) throws Exception {
        C4971k.m8654f(f16621f, "session calling timeout");
        this.f16625d = null;
        GroupSessionEvent groupSessionEvent2 = this.f16624c;
        if (groupSessionEvent2 != null) {
            if (groupSessionEvent2.isMySession()) {
                if (this.f16624c.getStatus() != 2) {
                    this.f16624c.stop();
                    if (this.f16624c.getGroup() != null) {
                        this.f16624c.getGroup().deleteSession();
                    }
                    this.f16626e = true;
                    return;
                }
                return;
            }
            if (groupSessionEvent.getMyResponse() == null) {
                this.f16624c.refuse(100);
                if (this.f16624c.getGroup() != null) {
                    this.f16624c.getGroup().deleteSession();
                }
                EventBus.m174c().m164m(new NewSessionTimeoutEvent());
            }
            for (OnSessionListener onSessionListener : this.f16623b) {
                onSessionListener.mo8343n0(groupSessionEvent);
            }
        }
    }

    /* renamed from: a */
    public void m8386a() {
        this.f16624c = null;
    }

    public void addListener(OnSessionListener onSessionListener) {
        if (onSessionListener != null) {
            this.f16623b.add(onSessionListener);
        }
    }

    /* renamed from: b */
    public boolean m8385b(String... strArr) {
        return this.f16622a.createSessionGroup(null, true, strArr);
    }

    /* renamed from: d */
    public GroupSessionEvent m8383d() {
        return this.f16624c;
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupRemovedEvent(GroupRemovedEvent groupRemovedEvent) {
        String str = f16621f;
        C4971k.m8654f(str, "onGroupRemovedEvent:" + groupRemovedEvent.toString());
        if (groupRemovedEvent.getGroup() == null || groupRemovedEvent.getGroup().getType() != Group.GROUP_SESSION) {
            return;
        }
        C4971k.m8654f(str, "onGroupRemovedEvent111111:" + groupRemovedEvent.toString());
        if (this.f16624c != null) {
            m8384c();
            if (this.f16624c.getStatus() == 1) {
                this.f16624c.getGroup();
            } else {
                this.f16624c.stop();
                if (this.f16624c.getGroup() != null) {
                    this.f16624c.getGroup().deleteSession();
                }
                this.f16624c = null;
            }
        }
        if (this.f16626e) {
            return;
        }
        for (OnSessionListener onSessionListener : this.f16623b) {
            onSessionListener.mo8347C0(groupRemovedEvent);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupSessionEvent(GroupSessionEvent groupSessionEvent) {
        String str = f16621f;
        C4971k.m8654f(str, "onGroupSessionEvent:" + groupSessionEvent.toString());
        if (groupSessionEvent.isError()) {
            return;
        }
        GroupSessionEvent groupSessionEvent2 = this.f16624c;
        if (groupSessionEvent2 != null) {
            if (groupSessionEvent2.getGroup().getGid() == groupSessionEvent.getGroup().getGid() && this.f16624c.getStatus() == groupSessionEvent.getStatus()) {
                C4971k.m8654f(str, "避免同一个事件重复回调");
                return;
            } else if (this.f16624c.getGroup().getGid() != groupSessionEvent.getGroup().getGid() && (this.f16624c.getStatus() == 1 || this.f16624c.getStatus() == 2)) {
                C4971k.m8654f(str, "收到新的临时对讲，但是自己已经处于一个临时对讲");
                groupSessionEvent.refuse(100);
                if (groupSessionEvent.getGroup() != null) {
                    C4971k.m8654f("SessionHelper", " preSessionEvent.getGroup().deleteSession()");
                    groupSessionEvent.getGroup().deleteSession();
                    return;
                }
                return;
            }
        }
        this.f16624c = groupSessionEvent;
        int status = groupSessionEvent.getStatus();
        if (status == 0) {
            C4971k.m8654f(str, "Session State Change: STATUS_IDLE");
            m8384c();
            this.f16624c.stop();
            if (this.f16624c.getGroup() != null) {
                this.f16624c.getGroup().deleteSession();
            }
            this.f16624c = null;
        } else if (status == 1) {
            C4971k.m8654f(str, "Session State Change: STATUS_CALLING");
            m8384c();
            this.f16626e = false;
            m8382e(groupSessionEvent);
        } else if (status == 2) {
            C4971k.m8654f(str, "Session State Change: STATUS_CONNECTED");
            m8384c();
            this.f16626e = false;
        } else if (status == 3) {
            StringBuilder sb = new StringBuilder();
            sb.append("Session State Change: ");
            sb.append(groupSessionEvent.getStatus() == 3 ? "STATUS_DISCONNECTED" : "STATUS_IDLE");
            C4971k.m8654f(str, sb.toString());
            C4971k.m8654f(str, "myResponse:" + groupSessionEvent.getMyResponse());
            m8384c();
            if (groupSessionEvent.isMySession()) {
                for (OnSessionListener onSessionListener : this.f16623b) {
                    if (this.f16626e) {
                        onSessionListener.mo8344k();
                    } else {
                        onSessionListener.mo8342r1(groupSessionEvent);
                    }
                }
            } else {
                for (OnSessionListener onSessionListener2 : this.f16623b) {
                    onSessionListener2.mo8342r1(groupSessionEvent);
                }
            }
            this.f16624c = null;
        }
        for (OnSessionListener onSessionListener3 : this.f16623b) {
            onSessionListener3.mo8343n0(groupSessionEvent);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onStartSessionAckEvent(StartSessionAckEvent startSessionAckEvent) {
        String str = f16621f;
        C4971k.m8654f(str, "onStartSessionAckEvent:" + startSessionAckEvent.getReason() + " :" + startSessionAckEvent.getGid());
        if (startSessionAckEvent.getGid() == 0) {
            for (OnSessionListener onSessionListener : this.f16623b) {
                onSessionListener.mo8346T(startSessionAckEvent.getReason());
            }
        }
    }

    public void removeListener(OnSessionListener onSessionListener) {
        if (onSessionListener != null) {
            this.f16623b.remove(onSessionListener);
        }
    }
}
