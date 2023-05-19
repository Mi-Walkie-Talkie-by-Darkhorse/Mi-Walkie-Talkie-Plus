package com.ifengyu.talk.p236f;

import com.ifengyu.library.utils.C4971k;
import com.ifengyu.talk.p238h.OnGroupListener;
import com.shanlitech.p245et.model.Account;
import com.shanlitech.p245et.model.Group;
import com.shanlitech.p245et.model.GroupList;
import com.shanlitech.p245et.model.GroupTrans;
import com.shanlitech.p245et.model.MemberList;
import com.shanlitech.p245et.notice.event.GroupEvent;
import com.shanlitech.p245et.notice.event.GroupRemovedEvent;
import com.shanlitech.p245et.notice.event.OnlineStatusEvent;
import com.shanlitech.p245et.notice.event.TransferGroupEvent;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* renamed from: com.ifengyu.talk.f.c0 */
/* loaded from: classes2.dex */
public class GroupHelper {

    /* renamed from: d */
    private static final String f16602d = "c0";

    /* renamed from: a */
    private final Account f16603a;

    /* renamed from: b */
    private boolean f16604b = true;

    /* renamed from: c */
    private final Set<OnGroupListener> f16605c = new HashSet();

    public GroupHelper(Account account) {
        this.f16603a = account;
        EventBus.m174c().m159r(this);
    }

    /* renamed from: a */
    public boolean m8431a(long j, String str) {
        return this.f16603a.joinGroup(j, null, 2, str);
    }

    public void addListener(OnGroupListener onGroupListener) {
        if (onGroupListener != null) {
            this.f16605c.add(onGroupListener);
        }
    }

    /* renamed from: b */
    public boolean m8430b(String str, String str2, String... strArr) {
        return this.f16603a.createGroup(str, str2, strArr);
    }

    /* renamed from: c */
    public Group m8429c(long j) {
        return this.f16603a.getGroup(j);
    }

    /* renamed from: d */
    public GroupList m8428d() {
        return this.f16603a.getGroupList();
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupEvent(GroupEvent groupEvent) {
        String str = f16602d;
        C4971k.m8654f(str, "onGroupEvent:" + groupEvent.toString());
        if (groupEvent.getTargetGroup() == null) {
            return;
        }
        if (groupEvent.getType() == GroupEvent.EventType.CURRENT) {
            for (OnGroupListener onGroupListener : this.f16605c) {
                onGroupListener.mo8365V0(groupEvent);
            }
        } else if (groupEvent.getType() == GroupEvent.EventType.ADD) {
            groupEvent.getTargetGroup().requestMemberList();
            for (OnGroupListener onGroupListener2 : this.f16605c) {
                onGroupListener2.mo8367D(groupEvent);
            }
        } else if (groupEvent.getType() == GroupEvent.EventType.LEAVE) {
            for (OnGroupListener onGroupListener3 : this.f16605c) {
                onGroupListener3.mo8363z(groupEvent);
            }
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupListEvent(GroupList groupList) {
        String str = f16602d;
        C4971k.m8654f(str, "onGroupListEvent:" + groupList.toString());
        if (this.f16604b) {
            this.f16604b = false;
            Iterator<Group> it2 = groupList.iterator();
            while (it2.hasNext()) {
                Group next = it2.next();
                if (next.getType() == Group.GROUP_NORMAL) {
                    next.requestMemberList();
                }
            }
        }
        for (OnGroupListener onGroupListener : this.f16605c) {
            onGroupListener.mo8366G(groupList);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupRemovedEvent(GroupRemovedEvent groupRemovedEvent) {
        String str = f16602d;
        C4971k.m8654f(str, "onGroupRemovedEvent:" + groupRemovedEvent.toString());
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onGroupTrans(GroupTrans groupTrans) {
        String str = f16602d;
        C4971k.m8654f(str, "onGroupTrans:" + groupTrans.toString());
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onMemberListEvent(MemberList memberList) {
        String str = f16602d;
        C4971k.m8654f(str, "onMemberListEvent:" + memberList.toString());
        if (memberList.getGroup() == null) {
            return;
        }
        for (OnGroupListener onGroupListener : this.f16605c) {
            onGroupListener.mo8368C(memberList);
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onTransferGroupEvent(TransferGroupEvent transferGroupEvent) {
        String str = f16602d;
        C4971k.m8654f(str, "onTransferGroupEvent gid:" + transferGroupEvent.getGid());
        if (transferGroupEvent.isSuccess()) {
            for (OnGroupListener onGroupListener : this.f16605c) {
                onGroupListener.mo8364W0(transferGroupEvent);
            }
        }
    }

    @Subscribe(sticky = true, threadMode = ThreadMode.MAIN)
    public void onlineStatusChangeEvent(OnlineStatusEvent onlineStatusEvent) {
        if (onlineStatusEvent.getOnlinestatus() != 3) {
            this.f16604b = true;
        }
    }

    public void removeListener(OnGroupListener onGroupListener) {
        if (onGroupListener != null) {
            this.f16605c.remove(onGroupListener);
        }
    }
}
