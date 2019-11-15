package com.xiaomi.broadcaster.dataStruct;

public class ConnectedServerInfo {
    public int bandwidth;
    public String domain;
    public String ip;
    public int port;

    public ConnectedServerInfo(String str, String str2, int i, int i2) {
        this.ip = str;
        this.port = i;
        this.domain = str2;
        this.bandwidth = i2;
    }
}
