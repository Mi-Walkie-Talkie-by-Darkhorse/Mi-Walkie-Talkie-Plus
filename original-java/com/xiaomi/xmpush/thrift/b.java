package com.xiaomi.xmpush.thrift;

public enum b {
    START(0),
    BIND(1);
    
    private final int c;

    private b(int i) {
        this.c = i;
    }

    public int a() {
        return this.c;
    }
}
