package com.ifengyu.intercom.node;

public enum ConnectionFailedReason {
    TIMEOUT(0),
    DENIED(1),
    VERSION_NOT_SUPPORT(2),
    UNKNOWN(3),
    LOWPOWER(4);
    
    private int f;

    private ConnectionFailedReason(int i) {
        this.f = i;
    }
}
