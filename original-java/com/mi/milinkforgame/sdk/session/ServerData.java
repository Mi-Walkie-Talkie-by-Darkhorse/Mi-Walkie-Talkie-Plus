package com.mi.milinkforgame.sdk.session;

public abstract class ServerData {
    private long mTimeStamp = 0;

    public void setTimeStamp(long j) {
        this.mTimeStamp = j;
    }

    public long getTimeStamp() {
        return this.mTimeStamp;
    }
}
