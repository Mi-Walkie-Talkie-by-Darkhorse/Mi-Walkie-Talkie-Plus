package com.xiaomi.push;

/* renamed from: com.xiaomi.push.ic */
/* loaded from: classes2.dex */
public enum EnumC6245ic {
    INT(1),
    LONG(2),
    STRING(3),
    BOOLEAN(4);
    

    /* renamed from: a */
    private final int f22159a;

    EnumC6245ic(int i) {
        this.f22159a = i;
    }

    /* renamed from: a */
    public static EnumC6245ic m2478a(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return null;
                    }
                    return BOOLEAN;
                }
                return STRING;
            }
            return LONG;
        }
        return INT;
    }
}
