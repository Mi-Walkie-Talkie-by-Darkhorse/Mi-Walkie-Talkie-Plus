package com.xiaomi.push;

/* renamed from: com.xiaomi.push.ib */
/* loaded from: classes2.dex */
public enum EnumC6244ib {
    MISC_CONFIG(1),
    PLUGIN_CONFIG(2);
    

    /* renamed from: a */
    private final int f22153a;

    EnumC6244ib(int i) {
        this.f22153a = i;
    }

    /* renamed from: a */
    public static EnumC6244ib m2480a(int i) {
        if (i != 1) {
            if (i != 2) {
                return null;
            }
            return PLUGIN_CONFIG;
        }
        return MISC_CONFIG;
    }

    /* renamed from: a */
    public int m2482a() {
        return this.f22153a;
    }
}
