package com.ifengyu.intercom.lite.http.entity;

import com.ifengyu.intercom.lite.http.exception.ApiException;
import io.reactivex.functions.Function;

/* loaded from: classes2.dex */
public class HttpResultFunction<T> implements Function<HttpResult<T>, T> {
    @Override // io.reactivex.functions.Function
    public /* bridge */ /* synthetic */ Object apply(Object obj) throws Exception {
        return apply((HttpResult) ((HttpResult) obj));
    }

    public T apply(HttpResult<T> httpResult) throws Exception {
        if (httpResult.errno == 0) {
            if (httpResult.data == null) {
                httpResult.data = "";
            }
            return httpResult.data;
        }
        throw new ApiException(httpResult.msg, httpResult.errno);
    }
}
