package com.xiaomi.accountsdk.diagnosis.b;

/* loaded from: classes2.dex */
public enum c {
    VERBOSE("V"),
    DEBUG("D"),
    INFO("I"),
    WARN("W"),
    ERROR("E");
    
    private final String f;

    c(String str) {
        this.f = str;
    }

    public static c a(int i) {
        return i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 6 ? VERBOSE : ERROR : WARN : INFO : DEBUG : VERBOSE;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f;
    }
}
