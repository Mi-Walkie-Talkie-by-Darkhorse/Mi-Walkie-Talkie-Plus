package com.ifengyu.intercom.p209o.p212d;

import java.util.Map;
import okhttp3.Request;
import okhttp3.RequestBody;

/* renamed from: com.ifengyu.intercom.o.d.a */
/* loaded from: classes2.dex */
public class GetRequest extends OkHttpRequest {
    public GetRequest(String str, Object obj, Map<String, String> map, Map<String, String> map2, int i) {
        super(str, obj, map, map2, i);
    }

    @Override // com.ifengyu.intercom.p209o.p212d.OkHttpRequest
    /* renamed from: c */
    protected Request mo11332c(RequestBody requestBody) {
        return this.f14422f.get().build();
    }

    @Override // com.ifengyu.intercom.p209o.p212d.OkHttpRequest
    /* renamed from: d */
    protected RequestBody mo11331d() {
        return null;
    }
}
