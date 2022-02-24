package com.ifengyu.intercom.node.btle;

/* loaded from: classes2.dex */
public enum GattOperation {
    NO_OPERATION("NO_OPERATION"),
    CONNECT("CONNECT"),
    DISCONNECT("DISCONNECT"),
    DISCOVER_SERVICES("DISCOVER_SERVICES"),
    REQUEST_MTU("REQUEST_MTU"),
    WRITE_CHARACTERISTIC("WRITE_CHARACTERISTIC"),
    WRITE_DESCRIPTOR("WRITE_DESCRIPTOR"),
    READ_CHARACTERISTIC("READ_CHARACTERISTIC");
    

    /* renamed from: a  reason: collision with root package name */
    private String f5876a;

    GattOperation(String str) {
        this.f5876a = str;
    }
}
