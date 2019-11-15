package com.ifengyu.intercom.node.btle;

public class GattException extends Exception {
    private static final long serialVersionUID = 2358042556323330388L;
    private final int a;
    private final boolean b;

    public GattException(String str) {
        this(str, -1, false);
    }

    public GattException(String str, int i, boolean z) {
        super(str);
        this.a = i;
        this.b = z;
    }

    public GattException(String str, boolean z) {
        this(str, -1, z);
    }

    public int a() {
        return this.a;
    }

    public boolean b() {
        return this.b;
    }
}
