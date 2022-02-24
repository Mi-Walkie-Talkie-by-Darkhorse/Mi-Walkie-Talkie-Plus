package com.xiaomi.push;

/* loaded from: classes2.dex */
public enum ib {
    MISC_CONFIG(1),
    PLUGIN_CONFIG(2);
    

    /* renamed from: a  reason: collision with other field name */
    private final int f513a;

    ib(int i) {
        this.f513a = i;
    }

    public static ib a(int i) {
        if (i == 1) {
            return MISC_CONFIG;
        }
        if (i != 2) {
            return null;
        }
        return PLUGIN_CONFIG;
    }

    public int a() {
        return this.f513a;
    }
}
