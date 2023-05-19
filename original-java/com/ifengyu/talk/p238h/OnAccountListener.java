package com.ifengyu.talk.p238h;

import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;

/* renamed from: com.ifengyu.talk.h.a */
/* loaded from: classes2.dex */
public interface OnAccountListener {
    /* renamed from: f0 */
    void mo8373f0(SearchResultEvent searchResultEvent);

    /* renamed from: j0 */
    void mo8372j0(ContactList contactList);

    void onOnlineStatusChange(OnlineStatusEvent onlineStatusEvent);
}
