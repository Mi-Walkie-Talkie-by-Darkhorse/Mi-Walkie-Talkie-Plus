package com.mi.mimsgsdk;

import com.mi.milinkforgame.sdk.client.ClientLog;

public class UserInfo {
    private static final String TAG = UserInfo.class.getSimpleName();
    private static final UserInfo instance = new UserInfo();
    private volatile String channelId;
    private volatile long userId;

    public static UserInfo getInstance() {
        return instance;
    }

    private UserInfo() {
    }

    public long getUserId() {
        return this.userId;
    }

    public void setUserId(long j) {
        this.userId = j;
        ClientLog.w(TAG, "userId:" + this.userId);
    }

    public String getChannelId() {
        return this.channelId;
    }

    public void setChannelId(String str) {
        this.channelId = str;
        ClientLog.w(TAG, "channelId:" + this.channelId);
    }
}
