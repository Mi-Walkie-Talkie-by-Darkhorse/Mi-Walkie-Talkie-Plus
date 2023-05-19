package com.ifengyu.library.p229b;

import okhttp3.Interceptor;
import okhttp3.Response;

/* compiled from: lambda */
/* renamed from: com.ifengyu.library.b.a */
/* loaded from: classes2.dex */
public final /* synthetic */ class C4964a implements Interceptor {

    /* renamed from: a */
    public static final /* synthetic */ C4964a f16361a = new C4964a();

    private /* synthetic */ C4964a() {
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) {
        return RetrofitClient.m8721i(chain);
    }
}
