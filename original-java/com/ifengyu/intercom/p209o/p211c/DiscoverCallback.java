package com.ifengyu.intercom.p209o.p211c;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.DiscoverResult;
import okhttp3.Response;

/* renamed from: com.ifengyu.intercom.o.c.b */
/* loaded from: classes2.dex */
public abstract class DiscoverCallback extends AbstractC4132a<DiscoverResult> {
    @Override // com.ifengyu.intercom.p209o.p211c.AbstractC4132a
    /* renamed from: h */
    public DiscoverResult mo11336f(Response response, int i) throws Exception {
        return (DiscoverResult) new Gson().fromJson(response.body().string(), (Class<Object>) DiscoverResult.class);
    }
}
