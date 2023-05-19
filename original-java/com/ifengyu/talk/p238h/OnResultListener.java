package com.ifengyu.talk.p238h;

import com.shanlitech.p245et.notice.event.CreateGroupLimitAccountsEvent;
import com.shanlitech.p245et.notice.event.InviteGroupAckEvent;
import com.shanlitech.p245et.notice.event.RequestResultEvent;
import com.shanlitech.p245et.notice.event.ResultEvent;

/* renamed from: com.ifengyu.talk.h.f */
/* loaded from: classes2.dex */
public interface OnResultListener {
    /* renamed from: B0 */
    void mo8351B0(ResultEvent resultEvent);

    /* renamed from: H0 */
    void mo8350H0(RequestResultEvent requestResultEvent);

    /* renamed from: m0 */
    void mo8349m0(InviteGroupAckEvent inviteGroupAckEvent);

    /* renamed from: x */
    void mo8348x(CreateGroupLimitAccountsEvent createGroupLimitAccountsEvent);
}
