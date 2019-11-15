package com.ifengyu.im.imservice.model;

import java.util.List;

public interface RecentContact {
    List<String> getAvatar();

    String getContent();

    long getLatestMsgId();

    int getLatestMsgType();

    String getName();

    String getSessionId();

    String getSessionKey();

    int getSessionType();

    long getTag();

    long getTime();

    int getUnreadCount();

    void setContent(String str);

    void setLatestMsgId(long j);

    void setLatestMsgType(int i);

    void setName(String str);

    void setSessionId(String str);

    void setSessionKey(String str);

    void setSessionType(int i);

    void setTag(long j);

    void setTime(long j);

    void setUnreadCount(int i);
}
