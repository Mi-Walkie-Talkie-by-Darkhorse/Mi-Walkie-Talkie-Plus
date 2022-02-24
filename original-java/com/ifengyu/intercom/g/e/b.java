package com.ifengyu.intercom.g.e;

import java.util.Map;
import okhttp3.Request;
import okhttp3.RequestBody;

/* compiled from: GetRequest.java */
/* loaded from: classes2.dex */
public class b extends c {
    public b(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        super(str, obj, map, map2, i);
    }

    @Override // com.ifengyu.intercom.g.e.c
    protected Request a(RequestBody requestBody) {
        return this.f.get().build();
    }

    @Override // com.ifengyu.intercom.g.e.c
    protected RequestBody c() {
        return null;
    }
}
