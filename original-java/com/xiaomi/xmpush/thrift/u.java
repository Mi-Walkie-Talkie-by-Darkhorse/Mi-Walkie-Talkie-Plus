package com.xiaomi.xmpush.thrift;

public enum u {
    RegIdExpired(0),
    PackageUnregistered(1),
    Init(2);
    
    private final int d;

    private u(int i) {
        this.d = i;
    }

    public static u a(int i) {
        switch (i) {
            case 0:
                return RegIdExpired;
            case 1:
                return PackageUnregistered;
            case 2:
                return Init;
            default:
                return null;
        }
    }

    public int a() {
        return this.d;
    }
}
