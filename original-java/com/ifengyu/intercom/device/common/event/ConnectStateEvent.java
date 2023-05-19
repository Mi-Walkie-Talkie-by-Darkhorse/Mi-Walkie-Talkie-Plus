package com.ifengyu.intercom.device.common.event;

/* loaded from: classes2.dex */
public class ConnectStateEvent {
    public static int STATE_CONNECTED = 2;
    public static int STATE_DISCONNECTED;
    private int state;

    public ConnectStateEvent(int i) {
        this.state = i;
    }

    public int getState() {
        return this.state;
    }
}
