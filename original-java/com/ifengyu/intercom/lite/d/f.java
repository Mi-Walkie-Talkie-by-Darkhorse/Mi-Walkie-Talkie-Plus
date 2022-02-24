package com.ifengyu.intercom.lite.d;

import com.ifengyu.intercom.lite.http.entity.HttpResult;
import io.reactivex.ObservableTransformer;

/* compiled from: Transformer.java */
/* loaded from: classes2.dex */
public class f {
    public static <T> ObservableTransformer<HttpResult<T>, T> a() {
        return b.f5367a;
    }

    public static <T> ObservableTransformer<HttpResult<T>, T> b() {
        return c.f5368a;
    }

    public static <T> ObservableTransformer<T, T> c() {
        return a.f5366a;
    }
}
