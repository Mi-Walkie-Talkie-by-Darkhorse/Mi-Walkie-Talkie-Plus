package com.ifengyu.intercom.g.d;

import com.google.gson.Gson;
import com.ifengyu.intercom.bean.HttpNormalResult;
import com.ifengyu.intercom.i.z;
import okhttp3.Response;

/* compiled from: HttpNormalCallback.java */
/* loaded from: classes2.dex */
public abstract class e extends b<HttpNormalResult> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.ifengyu.intercom.g.d.b
    public HttpNormalResult a(Response response, int i) throws Exception {
        String string = response.body().string();
        z.a("HttpNormalCallback", string);
        return (HttpNormalResult) new Gson().fromJson(string, (Class<Object>) HttpNormalResult.class);
    }
}
