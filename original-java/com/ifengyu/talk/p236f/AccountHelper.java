package com.ifengyu.talk.p236f;

import android.annotation.SuppressLint;
import com.ifengyu.library.event.SimpleEvent;
import com.ifengyu.library.utils.C4971k;
import com.ifengyu.talk.p238h.OnAccountListener;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.model.ContactInvitation;
import com.shanlitech.p245et.model.ContactList;
import com.shanlitech.p245et.model.GroupInvitation;
import com.shanlitech.p245et.model.User;
import com.shanlitech.p245et.notice.event.ContactInvitationChangedEvent;
import com.shanlitech.p245et.notice.event.GroupInvitationChangedEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.SearchResultEvent;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.a0 */
/* loaded from: classes2.dex */
public class AccountHelper {

    /* renamed from: g */
    private static final String f16590g = "a0";

    /* renamed from: a */
    private final Account f16591a;

    /* renamed from: b */
    private final Set<OnAccountListener> f16592b = new HashSet();

    /* renamed from: c */
    private boolean f16593c;

    /* renamed from: d */
    private ContactInvitationChangedEvent f16594d;

    /* renamed from: e */
    private GroupInvitationChangedEvent f16595e;

    /* renamed from: f */
    private int f16596f;

    public AccountHelper(Account account) {
        this.f16591a = account;
        EventBus.m174c().m159r(this);
    }

    /* renamed from: a */
    public void m8460a() {
        GroupInvitation[] invitations;
        ContactInvitation[] invitations2;
        ContactInvitationChangedEvent contactInvitationChangedEvent = this.f16594d;
        if (contactInvitationChangedEvent != null) {
            for (ContactInvitation contactInvitation : contactInvitationChangedEvent.getInvitations()) {
                if (contactInvitation.unread == 1) {
                    contactInvitation.markRead();
                }
            }
            this.f16594d = null;
        }
        GroupInvitationChangedEvent groupInvitationChangedEvent = this.f16595e;
        if (groupInvitationChangedEvent != null) {
            for (GroupInvitation groupInvitation : groupInvitationChangedEvent.getInvitations()) {
                if (groupInvitation.unread == 1) {
                    groupInvitation.markRead();
                }
            }
            this.f16595e = null;
        }
        this.f16593c = false;
        EventBus.m174c().m164m(new SimpleEvent(22));
    }

    public void addListener(OnAccountListener onAccountListener) {
        if (onAccountListener != null) {
            this.f16592b.add(onAccountListener);
        }
    }

    /* renamed from: b */
    public String m8459b() {
        return this.f16591a.getAccount();
    }

    /* renamed from: c */
    public ContactList m8458c() {
        return this.f16591a.getContactList();
    }

    /* renamed from: d */
    public int m8457d() {
        return this.f16596f;
    }

    /* renamed from: e */
    public User m8456e() {
        return this.f16591a.getCurrentUser();
    }

    /* renamed from: f */
    public long m8455f() {
        return this.f16591a.getUid();
    }

    /* renamed from: g */
    public User m8454g(String str) {
        Iterator<User> it2 = m8458c().iterator();
        while (it2.hasNext()) {
            User next = it2.next();
            if (next.getAccount().equals(str)) {
                return next;
            }
        }
        return null;
    }

    /* renamed from: h */
    public boolean m8453h() {
        return this.f16593c;
    }

    /* renamed from: i */
    public void m8452i(String str, String str2, int i, int i2) {
        this.f16591a.login(str, str2, i, i2);
    }

    /* renamed from: j */
    public void m8451j() {
        this.f16591a.logout();
    }

    /* renamed from: k */
    public boolean m8450k(String str) {
        return ContactList.queryUserByAccount(str);
    }

    /* renamed from: l */
    public boolean m8449l(long j, boolean z) {
        return this.f16591a.responseContact(j, z);
    }

    /* renamed from: m */
    public boolean m8448m(long j, boolean z) {
        return this.f16591a.responseGroup(j, z, z);
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    @SuppressLint({"CheckResult"})
    public void onContactInvitationEvent(ContactInvitationChangedEvent contactInvitationChangedEvent) {
        ContactInvitation[] invitations;
        C4971k.m8654f(f16590g, "Contact onInvitationEvent:" + contactInvitationChangedEvent.toString());
        if (contactInvitationChangedEvent.getInvitations() == null || contactInvitationChangedEvent.getInvitations().length == 0) {
            return;
        }
        this.f16594d = contactInvitationChangedEvent;
        for (ContactInvitation contactInvitation : contactInvitationChangedEvent.getInvitations()) {
            if (contactInvitation.getInvitee() != null && contactInvitation.getInvitee().isMe() && contactInvitation.unread == 1) {
                this.f16593c = true;
                EventBus.m174c().m164m(new SimpleEvent(20));
                return;
            }
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onContactListEvent(ContactList contactList) {
        String str = f16590g;
        C4971k.m8654f(str, "onContactListEvent:" + contactList.toString());
        for (OnAccountListener onAccountListener : this.f16592b) {
            onAccountListener.mo8372j0(contactList);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    @SuppressLint({"CheckResult"})
    public void onGroupInvitationEvent(GroupInvitationChangedEvent groupInvitationChangedEvent) {
        GroupInvitation[] invitations;
        C4971k.m8654f(f16590g, "Group onInvitationEvent:" + groupInvitationChangedEvent.toString());
        if (groupInvitationChangedEvent.getInvitations() == null || groupInvitationChangedEvent.getInvitations().length == 0) {
            return;
        }
        this.f16595e = groupInvitationChangedEvent;
        for (GroupInvitation groupInvitation : groupInvitationChangedEvent.getInvitations()) {
            User user = groupInvitation.confirmer;
            if (user != null && user.isMe() && groupInvitation.unread == 1) {
                this.f16593c = true;
                EventBus.m174c().m164m(new SimpleEvent(21));
                return;
            }
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onSearchResultEvent(SearchResultEvent searchResultEvent) {
        String str = f16590g;
        C4971k.m8654f(str, "onSearchResultEvent:" + searchResultEvent.toString());
        for (OnAccountListener onAccountListener : this.f16592b) {
            onAccountListener.mo8373f0(searchResultEvent);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onlineStatusChangeEvent(OnlineStatusEvent onlineStatusEvent) {
        String str = f16590g;
        C4971k.m8654f(str, "OnlineStatusEvent:" + onlineStatusEvent.toString());
        this.f16596f = (int) onlineStatusEvent.getOnlinestatus();
        for (OnAccountListener onAccountListener : this.f16592b) {
            onAccountListener.onOnlineStatusChange(onlineStatusEvent);
        }
    }

    public void removeListener(OnAccountListener onAccountListener) {
        if (onAccountListener != null) {
            this.f16592b.remove(onAccountListener);
        }
    }
}
