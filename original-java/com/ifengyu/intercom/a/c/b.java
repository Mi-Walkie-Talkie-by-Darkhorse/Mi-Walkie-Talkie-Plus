package com.ifengyu.intercom.a.c;

import java.util.Map;
import okhttp3.Request;
import okhttp3.RequestBody;

/* compiled from: GetRequest */
public class b extends c {
    public b(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        super(str, obj, map, map2, i);
    }

    /* access modifiers changed from: protected */
    public RequestBody a() {
        return null;
    }

    /* access modifiers changed from: protected */
    public Request a(RequestBody requestBody) {
        return this.f.get().build();
    }
}
