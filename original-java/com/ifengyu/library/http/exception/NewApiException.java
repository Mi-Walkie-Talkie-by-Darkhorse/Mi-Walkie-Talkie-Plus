package com.ifengyu.library.http.exception;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.ifengyu.library.http.entity.NewHttpResult;
import com.jakewharton.retrofit2.adapter.rxjava2.HttpException;
import java.io.IOException;
import okhttp3.ResponseBody;
import retrofit2.Response;

/* loaded from: classes2.dex */
public class NewApiException extends RuntimeException {

    /* renamed from: a */
    private int f16375a = -1;

    /* renamed from: b */
    private int f16376b = -1;

    /* renamed from: c */
    private String f16377c;

    /* renamed from: b */
    public static NewApiException m8702b(Throwable th) throws IOException {
        if (th instanceof NewApiException) {
            return (NewApiException) th;
        }
        NewApiException newApiException = new NewApiException();
        if (th instanceof HttpException) {
            HttpException httpException = (HttpException) th;
            newApiException.m8699e(httpException.code());
            Response<?> response = httpException.response();
            if (response != null && response.errorBody() != null) {
                ResponseBody errorBody = response.errorBody();
                if ("json".equals(errorBody.contentType().subtype())) {
                    String string = errorBody.string();
                    if (!TextUtils.isEmpty(string)) {
                        NewHttpResult newHttpResult = (NewHttpResult) new Gson().fromJson(string, (Class<Object>) NewHttpResult.class);
                        newApiException.m8701c(newHttpResult.getCode());
                        newApiException.m8700d(newHttpResult.getMessage());
                        return newApiException;
                    }
                }
            }
        }
        newApiException.m8700d(th.getMessage());
        return newApiException;
    }

    /* renamed from: a */
    public int m8703a() {
        return this.f16376b;
    }

    /* renamed from: c */
    public void m8701c(int i) {
        this.f16376b = i;
    }

    /* renamed from: d */
    public void m8700d(String str) {
        this.f16377c = str;
    }

    /* renamed from: e */
    public void m8699e(int i) {
        this.f16375a = i;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "NewApiException{status=" + this.f16375a + ", errCode=" + this.f16376b + ", errMsg='" + this.f16377c + "'}";
    }
}
