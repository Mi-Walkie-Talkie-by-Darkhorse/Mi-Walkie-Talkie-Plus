package com.xiaomi.push;

/* loaded from: classes2.dex */
public enum ij {
    RegIdExpired(0),
    PackageUnregistered(1),
    Init(2);
    

    /* renamed from: a  reason: collision with other field name */
    private final int f573a;

    ij(int i) {
        this.f573a = i;
    }

    public static ij a(int i) {
        if (i == 0) {
            return RegIdExpired;
        }
        if (i == 1) {
            return PackageUnregistered;
        }
        if (i != 2) {
            return null;
        }
        return Init;
    }

    public int a() {
        return this.f573a;
    }
}
