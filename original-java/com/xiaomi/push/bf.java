package com.xiaomi.push;

/* loaded from: classes2.dex */
public class bf implements bh {

    /* renamed from: a  reason: collision with root package name */
    private final String f8773a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8774b;

    public bf(String str, String str2) {
        if (str != null) {
            this.f8773a = str;
            this.f8774b = str2;
            return;
        }
        throw new IllegalArgumentException("Name may not be null");
    }

    @Override // com.xiaomi.push.bh
    public String a() {
        return this.f8773a;
    }

    @Override // com.xiaomi.push.bh
    public String b() {
        return this.f8774b;
    }
}
