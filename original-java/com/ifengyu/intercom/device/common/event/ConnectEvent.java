package com.ifengyu.intercom.device.common.event;

/* loaded from: classes2.dex */
public class ConnectEvent {
    public static final int CONNECT_ALLOW = 1;
    public static final int CONNECT_BUSY = 5;
    public static final int CONNECT_FAILED = 7;
    public static final int CONNECT_LOW_POWER = 4;
    public static final int CONNECT_REFUSE = 2;
    public static final int CONNECT_TIMEOUT = 6;
    public static final int CONNECT_WAIT = 3;
    private int connectStatus;

    public ConnectEvent(int i) {
        this.connectStatus = i;
    }

    public int getConnectStatus() {
        return this.connectStatus;
    }
}
