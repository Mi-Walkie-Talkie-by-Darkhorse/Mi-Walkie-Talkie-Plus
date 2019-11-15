package com.ifengyu.intercom.a.b;

import java.io.IOException;
import okhttp3.Response;

/* compiled from: StringCallback */
public abstract class j extends b<String> {
    /* renamed from: a */
    public String b(Response response, int i) throws IOException {
        return response.body().string();
    }
}
