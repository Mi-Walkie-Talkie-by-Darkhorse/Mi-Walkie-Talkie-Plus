package com.xiaomi.push;

/* renamed from: com.xiaomi.push.ij */
/* loaded from: classes2.dex */
public enum EnumC6252ij {
    RegIdExpired(0),
    PackageUnregistered(1),
    Init(2);
    

    /* renamed from: a */
    private final int f22323a;

    EnumC6252ij(int i) {
        this.f22323a = i;
    }

    /* renamed from: a */
    public static EnumC6252ij m2360a(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return null;
                }
                return Init;
            }
            return PackageUnregistered;
        }
        return RegIdExpired;
    }

    /* renamed from: a */
    public int m2362a() {
        return this.f22323a;
    }
}
