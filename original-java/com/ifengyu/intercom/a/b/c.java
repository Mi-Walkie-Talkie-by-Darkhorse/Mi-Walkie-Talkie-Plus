package com.ifengyu.intercom.a.b;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.DiscoverResult;
import okhttp3.Response;

/* compiled from: DiscoverCallback */
public abstract class c extends b<DiscoverResult> {
    /* renamed from: a */
    public DiscoverResult b(Response response, int i) throws Exception {
        return (DiscoverResult) new Gson().fromJson(response.body().string(), DiscoverResult.class);
    }
}
