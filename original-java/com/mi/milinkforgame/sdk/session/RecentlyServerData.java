package com.mi.milinkforgame.sdk.session;

import java.io.Serializable;

public class RecentlyServerData extends ServerData implements Serializable {
    private static final long serialVersionUID = -8451531193007968621L;
    private ServerProfile mRecentlyServer = null;

    public void setRecentlyServer(ServerProfile serverProfile) {
        this.mRecentlyServer = serverProfile;
    }

    public ServerProfile getRecentlyServer() {
        return this.mRecentlyServer;
    }

    public String toString() {
        return "[recentlyTcpServerProfile = " + (this.mRecentlyServer != null ? this.mRecentlyServer.toString() : null) + ",timeStamp = " + getTimeStamp() + "]";
    }
}
