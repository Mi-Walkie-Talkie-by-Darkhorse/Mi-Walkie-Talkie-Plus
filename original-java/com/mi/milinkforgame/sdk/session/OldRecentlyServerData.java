package com.mi.milinkforgame.sdk.session;

import java.io.Serializable;

public class OldRecentlyServerData implements Serializable {
    private static final long serialVersionUID = -8491865419698138899L;
    private ServerProfile mRecentlyHttpServerProfile = null;
    private ServerProfile mRecentlyTcpServerProfile = null;
    private long mTimeStamp = 0;

    public void setRecentlyTcpServerProfile(ServerProfile serverProfile) {
        this.mRecentlyTcpServerProfile = serverProfile;
    }

    public void setRecentlyHttpServerProfile(ServerProfile serverProfile) {
        this.mRecentlyHttpServerProfile = serverProfile;
    }

    public void setTimeStamp(long j) {
        this.mTimeStamp = j;
    }

    public ServerProfile getRecentlyTcpServerProfile() {
        return this.mRecentlyTcpServerProfile;
    }

    public ServerProfile getRecentlyHttpServerProfile() {
        return this.mRecentlyHttpServerProfile;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }

    public String toString() {
        return "[recentlyTcpServerProfile = " + this.mRecentlyTcpServerProfile + ",recentlyHttpServerProfile = " + this.mRecentlyHttpServerProfile + ",timeStamp = " + this.mTimeStamp + "]";
    }
}
