package com.ifengyu.intercom.g.d;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.DiscoverResult;
import okhttp3.Response;

/* compiled from: DiscoverCallback.java */
/* loaded from: classes2.dex */
public abstract class c extends b<DiscoverResult> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public DiscoverResult a(Response response, int i) throws Exception {
        return (DiscoverResult) new Gson().fromJson(response.body().string(), (Class<Object>) DiscoverResult.class);
    }
}
