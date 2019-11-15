package com.ifengyu.intercom.ui.imui.ui.chat;

import com.ifengyu.im.imservice.entity.RecentInfo;

public interface RecentContactsCallback {
    void onItemClick(RecentInfo recentInfo);

    void onRecentContactsLoaded();

    void onUnreadCountChange(int i);
}
