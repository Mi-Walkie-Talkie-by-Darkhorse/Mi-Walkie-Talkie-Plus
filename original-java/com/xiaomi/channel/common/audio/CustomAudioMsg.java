package com.xiaomi.channel.common.audio;

public class CustomAudioMsg {
    private long length = 0;
    private String localPath = "";

    public String getLocalPath() {
        return this.localPath;
    }

    public long getLength() {
        return this.length;
    }

    public void setLocalPath(String str) {
        this.localPath = str;
    }

    public void setLength(long j) {
        this.length = j;
    }
}
