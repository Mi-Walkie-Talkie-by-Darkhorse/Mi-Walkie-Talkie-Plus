package com.xiaomi.accountsdk.diagnosis.p268b;

/* renamed from: com.xiaomi.accountsdk.diagnosis.b.c */
/* loaded from: classes2.dex */
public enum EnumC5844c {
    VERBOSE("V"),
    DEBUG("D"),
    INFO("I"),
    WARN("W"),
    ERROR("E");
    

    /* renamed from: f */
    private final String f20779f;

    EnumC5844c(String str) {
        this.f20779f = str;
    }

    /* renamed from: a */
    public static EnumC5844c m4220a(int i) {
        return i != 2 ? i != 3 ? i != 4 ? i != 5 ? i != 6 ? VERBOSE : ERROR : WARN : INFO : DEBUG : VERBOSE;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f20779f;
    }
}
