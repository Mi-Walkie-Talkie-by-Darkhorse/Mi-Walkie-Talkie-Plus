package com.ifengyu.talk.p237g;

import com.ifengyu.library.p229b.RetrofitClient;

/* renamed from: com.ifengyu.talk.g.b */
/* loaded from: classes2.dex */
public class TalkServiceClient {

    /* renamed from: a */
    private static TalkApiService f16651a;

    /* renamed from: a */
    public static TalkApiService m8374a() {
        if (f16651a == null) {
            f16651a = (TalkApiService) RetrofitClient.m8726d().create(TalkApiService.class);
        }
        return f16651a;
    }
}
