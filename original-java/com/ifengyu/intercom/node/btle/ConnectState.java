package com.ifengyu.intercom.node.btle;

public enum ConnectState {
    DISCONNECTED(0),
    CONNECTING(1),
    CONNECTED(2);
    
    private int d;

    private ConnectState(int i) {
        this.d = i;
    }
}
