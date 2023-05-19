package com.ifengyu.intercom.p208n;

import com.ifengyu.library.p229b.RetrofitClient;

/* renamed from: com.ifengyu.intercom.n.b */
/* loaded from: classes2.dex */
public class AppServiceClient {

    /* renamed from: a */
    private static AppApiService f14391a;

    /* renamed from: a */
    public static AppApiService m11355a() {
        if (f14391a == null) {
            f14391a = (AppApiService) RetrofitClient.m8726d().create(AppApiService.class);
        }
        return f14391a;
    }
}
