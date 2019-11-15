package com.ifengyu.intercom.node.btle;

public enum GattOperation {
    NO_OPERATION("NO_OPERATION"),
    CONNECT("CONNECT"),
    DISCONNECT("DISCONNECT"),
    DISCOVER_SERVICES("DISCOVER_SERVICES"),
    REQUEST_MTU("REQUEST_MTU"),
    WRITE_CHARACTERISTIC("WRITE_CHARACTERISTIC"),
    WRITE_DESCRIPTOR("WRITE_DESCRIPTOR"),
    READ_CHARACTERISTIC("READ_CHARACTERISTIC");
    
    private String i;

    private GattOperation(String str) {
        this.i = str;
    }
}
