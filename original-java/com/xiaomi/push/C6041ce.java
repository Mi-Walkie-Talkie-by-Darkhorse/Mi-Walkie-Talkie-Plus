package com.xiaomi.push;

import com.xiaomi.push.C6045ci;

/* renamed from: com.xiaomi.push.ce */
/* loaded from: classes2.dex */
public class C6041ce extends C6045ci.C6049d {

    /* renamed from: a */
    protected String f21151a;

    public C6041ce(String str, String str2, String[] strArr, String str3) {
        super(str, str2, strArr);
        this.f21151a = "MessageDeleteJob";
        this.f21151a = str3;
    }

    /* renamed from: a */
    public static C6041ce m3524a(String str) {
        return new C6041ce(str, "status = ?", new String[]{String.valueOf(2)}, "a job build to delete uploaded job");
    }
}
