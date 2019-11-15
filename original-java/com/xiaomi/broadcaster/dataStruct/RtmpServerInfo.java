package com.xiaomi.broadcaster.dataStruct;

import com.xiaomi.mipush.sdk.Constants;

public class RtmpServerInfo {
    public String[] ipPortList;
    public String rtmpUrl;
    public int weight;

    public String toString() {
        return "rtmpUrl=" + this.rtmpUrl + Constants.ACCEPT_TIME_SEPARATOR_SP + "weight=" + this.weight + ". Do not output IP Port List.";
    }
}
