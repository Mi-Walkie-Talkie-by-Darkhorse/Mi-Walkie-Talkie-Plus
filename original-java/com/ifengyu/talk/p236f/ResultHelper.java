package com.ifengyu.talk.p236f;

import com.ifengyu.library.utils.C4971k;
import com.ifengyu.talk.p238h.OnResultListener;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;
import java.util.HashSet;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.f0 */
/* loaded from: classes2.dex */
public class ResultHelper {

    /* renamed from: b */
    private static final String f16617b = "f0";

    /* renamed from: a */
    private final Set<OnResultListener> f16618a = new HashSet();

    public ResultHelper(Account account) {
        EventBus.m174c().m159r(this);
    }

    public void addListener(OnResultListener onResultListener) {
        if (onResultListener != null) {
            this.f16618a.add(onResultListener);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onCreateGroupLimitAccountsEvent(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent) {
        String str = f16617b;
        C4971k.m8654f(str, "onCreateGroupLimitAccountsEvent:" + createGroupLimitAccountsEvent.toString());
        for (OnResultListener onResultListener : this.f16618a) {
            onResultListener.mo8348x(createGroupLimitAccountsEvent);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onInviteGroupAckEvent(InviteGroupAckEvent inviteGroupAckEvent) {
        String str = f16617b;
        C4971k.m8654f(str, "onInviteGroupAckEvent:" + inviteGroupAckEvent.toString());
        for (OnResultListener onResultListener : this.f16618a) {
            onResultListener.mo8349m0(inviteGroupAckEvent);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onRequestResultEvent(RequestResultEvent requestResultEvent) {
        String str = f16617b;
        C4971k.m8654f(str, "onRequestResultEvent:" + requestResultEvent.toString());
        for (OnResultListener onResultListener : this.f16618a) {
            onResultListener.mo8350H0(requestResultEvent);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onResultEvent(ResultEvent resultEvent) {
        String str = f16617b;
        C4971k.m8654f(str, "onResultEvent gid:" + resultEvent.getGid() + " " + resultEvent.toString());
        for (OnResultListener onResultListener : this.f16618a) {
            onResultListener.mo8351B0(resultEvent);
        }
    }

    public void removeListener(OnResultListener onResultListener) {
        if (onResultListener != null) {
            this.f16618a.remove(onResultListener);
        }
    }
}
