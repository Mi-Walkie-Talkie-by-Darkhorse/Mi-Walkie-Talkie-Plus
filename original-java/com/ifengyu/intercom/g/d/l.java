package com.ifengyu.intercom.g.d;

import java.io.IOException;
import okhttp3.Response;

/* compiled from: StringCallback.java */
/* loaded from: classes2.dex */
public abstract class l extends b<String> {
    @Override // com.ifengyu.intercom.g.d.b
    public String a(Response response, int i) throws IOException {
        return response.body().string();
    }
}
